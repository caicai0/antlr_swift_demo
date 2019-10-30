//
//  CAIProbeAspects.m
//  CAIProbeAspects - A delightful, simple library for CAIProbeAspect oriented programming.
//
//  Copyright (c) 2014 Peter Steinberger. Licensed under the MIT license.
//

#import "CAIProbeAspects.h"
#import <libkern/OSAtomic.h>
#import <objc/runtime.h>
#import <objc/message.h>

#define CAIProbeAspectLog(...)
//#define CAIProbeAspectLog(...) do { NSLog(__VA_ARGS__); }while(0)
#define CAIProbeAspectLogError(...) do { NSLog(__VA_ARGS__); }while(0)

// Block internals.
typedef NS_OPTIONS(int, CAIProbeAspectBlockFlags) {
	CAIProbeAspectBlockFlagsHasCopyDisposeHelpers = (1 << 25),
	CAIProbeAspectBlockFlagsHasSignature          = (1 << 30)
};
typedef struct _CAIProbeAspectBlock {
	__unused Class isa;
	CAIProbeAspectBlockFlags flags;
	__unused int reserved;
	void (__unused *invoke)(struct _CAIProbeAspectBlock *block, ...);
	struct {
		unsigned long int reserved;
		unsigned long int size;
		// requires CAIProbeAspectBlockFlagsHasCopyDisposeHelpers
		void (*copy)(void *dst, const void *src);
		void (*dispose)(const void *);
		// requires CAIProbeAspectBlockFlagsHasSignature
		const char *signature;
		const char *layout;
	} *descriptor;
	// imported variables
} *CAIProbeAspectBlockRef;

@interface CAIProbeAspectInfo : NSObject <CAIProbeAspectInfo>
- (id)initWithInstance:(__unsafe_unretained id)instance invocation:(NSInvocation *)invocation;
@property (nonatomic, unsafe_unretained, readonly) id instance;
@property (nonatomic, strong, readonly) NSArray *arguments;
@property (nonatomic, strong, readonly) NSInvocation *originalInvocation;
@end

// Tracks a single CAIProbeAspect.
@interface CAIProbeAspectIdentifier : NSObject
+ (instancetype)identifierWithSelector:(SEL)selector object:(id)object options:(CAIProbeAspectOptions)options block:(id)block error:(NSError **)error;
- (BOOL)invokeWithInfo:(id<CAIProbeAspectInfo>)info;
@property (nonatomic, assign) SEL selector;
@property (nonatomic, strong) id block;
@property (nonatomic, strong) NSMethodSignature *blockSignature;
@property (nonatomic, weak) id object;
@property (nonatomic, assign) CAIProbeAspectOptions options;
@end

// Tracks all CAIProbeAspects for an object/class.
@interface CAIProbeAspectsContainer : NSObject
- (void)addCAIProbeAspect:(CAIProbeAspectIdentifier *)CAIProbeAspect withOptions:(CAIProbeAspectOptions)injectPosition;
- (BOOL)removeCAIProbeAspect:(id)CAIProbeAspect;
- (BOOL)hasCAIProbeAspects;
@property (atomic, copy) NSArray *beforeCAIProbeAspects;
@property (atomic, copy) NSArray *insteadCAIProbeAspects;
@property (atomic, copy) NSArray *afterCAIProbeAspects;
@end

@interface CAIProbeAspectTracker : NSObject
- (id)initWithTrackedClass:(Class)trackedClass;
@property (nonatomic, strong) Class trackedClass;
@property (nonatomic, readonly) NSString *trackedClassName;
@property (nonatomic, strong) NSMutableSet *selectorNames;
@property (nonatomic, strong) NSMutableDictionary *selectorNamesToSubclassTrackers;
- (void)addSubclassTracker:(CAIProbeAspectTracker *)subclassTracker hookingSelectorName:(NSString *)selectorName;
- (void)removeSubclassTracker:(CAIProbeAspectTracker *)subclassTracker hookingSelectorName:(NSString *)selectorName;
- (BOOL)subclassHasHookedSelectorName:(NSString *)selectorName;
- (NSSet *)subclassTrackersHookingSelectorName:(NSString *)selectorName;
@end

@interface NSInvocation (CAIProbeAspects)
- (NSArray *)CAIProbeAspects_arguments;
@end

#define CAIProbeAspectPositionFilter 0x07

#define CAIProbeAspectError(errorCode, errorDescription) do { \
CAIProbeAspectLogError(@"CAIProbeAspects: %@", errorDescription); \
if (error) { *error = [NSError errorWithDomain:CAIProbeAspectErrorDomain code:errorCode userInfo:@{NSLocalizedDescriptionKey: errorDescription}]; }}while(0)

NSString *const CAIProbeAspectErrorDomain = @"CAIProbeAspectErrorDomain";
static NSString *const CAIProbeAspectsSubclassSuffix = @"_CAIProbeAspects_";
static NSString *const CAIProbeAspectsMessagePrefix = @"CAIProbeAspects_";

@implementation NSObject (CAIProbeAspects)

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Public CAIProbeAspects API

+ (id<CAIProbeAspectToken>)caiProbeAspect_hookSelector:(SEL)selector
                      withOptions:(CAIProbeAspectOptions)options
                       usingBlock:(id)block
                            error:(NSError **)error {
    return CAIProbeAspect_add((id)self, selector, options, block, error);
}

/// @return A token which allows to later deregister the CAIProbeAspect.
- (id<CAIProbeAspectToken>)caiProbeAspect_hookSelector:(SEL)selector
                      withOptions:(CAIProbeAspectOptions)options
                       usingBlock:(id)block
                            error:(NSError **)error {
    return CAIProbeAspect_add(self, selector, options, block, error);
}

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Private Helper

static id CAIProbeAspect_add(id self, SEL selector, CAIProbeAspectOptions options, id block, NSError **error) {
    NSCParameterAssert(self);
    NSCParameterAssert(selector);
    NSCParameterAssert(block);

    __block CAIProbeAspectIdentifier *identifier = nil;
    CAIProbeAspect_performLocked(^{
        if (CAIProbeAspect_isSelectorAllowedAndTrack(self, selector, options, error)) {
            CAIProbeAspectsContainer *CAIProbeAspectContainer = CAIProbeAspect_getContainerForObject(self, selector);
            identifier = [CAIProbeAspectIdentifier identifierWithSelector:selector object:self options:options block:block error:error];
            if (identifier) {
                [CAIProbeAspectContainer addCAIProbeAspect:identifier withOptions:options];

                // Modify the class to allow message interception.
                CAIProbeAspect_prepareClassAndHookSelector(self, selector, error);
            }
        }
    });
    return identifier;
}

static BOOL CAIProbeAspect_remove(CAIProbeAspectIdentifier *CAIProbeAspect, NSError **error) {
    NSCAssert([CAIProbeAspect isKindOfClass:CAIProbeAspectIdentifier.class], @"Must have correct type.");

    __block BOOL success = NO;
    CAIProbeAspect_performLocked(^{
        id self = CAIProbeAspect.object; // strongify
        if (self) {
            CAIProbeAspectsContainer *CAIProbeAspectContainer = CAIProbeAspect_getContainerForObject(self, CAIProbeAspect.selector);
            success = [CAIProbeAspectContainer removeCAIProbeAspect:CAIProbeAspect];

            CAIProbeAspect_cleanupHookedClassAndSelector(self, CAIProbeAspect.selector);
            // destroy token
            CAIProbeAspect.object = nil;
            CAIProbeAspect.block = nil;
            CAIProbeAspect.selector = NULL;
        }else {
            NSString *errrorDesc = [NSString stringWithFormat:@"Unable to deregister hook. Object already deallocated: %@", CAIProbeAspect];
            CAIProbeAspectError(CAIProbeAspectErrorRemoveObjectAlreadyDeallocated, errrorDesc);
        }
    });
    return success;
}

static void CAIProbeAspect_performLocked(dispatch_block_t block) {
    static OSSpinLock CAIProbeAspect_lock = OS_SPINLOCK_INIT;
    OSSpinLockLock(&CAIProbeAspect_lock);
    block();
    OSSpinLockUnlock(&CAIProbeAspect_lock);
}

static SEL CAIProbeAspect_aliasForSelector(SEL selector) {
    NSCParameterAssert(selector);
	return NSSelectorFromString([CAIProbeAspectsMessagePrefix stringByAppendingFormat:@"_%@", NSStringFromSelector(selector)]);
}

static NSMethodSignature *CAIProbeAspect_blockMethodSignature(id block, NSError **error) {
    CAIProbeAspectBlockRef layout = (__bridge void *)block;
	if (!(layout->flags & CAIProbeAspectBlockFlagsHasSignature)) {
        NSString *description = [NSString stringWithFormat:@"The block %@ doesn't contain a type signature.", block];
        CAIProbeAspectError(CAIProbeAspectErrorMissingBlockSignature, description);
        return nil;
    }
	void *desc = layout->descriptor;
	desc += 2 * sizeof(unsigned long int);
	if (layout->flags & CAIProbeAspectBlockFlagsHasCopyDisposeHelpers) {
		desc += 2 * sizeof(void *);
    }
	if (!desc) {
        NSString *description = [NSString stringWithFormat:@"The block %@ doesn't has a type signature.", block];
        CAIProbeAspectError(CAIProbeAspectErrorMissingBlockSignature, description);
        return nil;
    }
	const char *signature = (*(const char **)desc);
	return [NSMethodSignature signatureWithObjCTypes:signature];
}

static BOOL CAIProbeAspect_isCompatibleBlockSignature(NSMethodSignature *blockSignature, id object, SEL selector, NSError **error) {
    NSCParameterAssert(blockSignature);
    NSCParameterAssert(object);
    NSCParameterAssert(selector);

    BOOL signaturesMatch = YES;
    NSMethodSignature *methodSignature = [[object class] instanceMethodSignatureForSelector:selector];
    if (blockSignature.numberOfArguments > methodSignature.numberOfArguments) {
        signaturesMatch = NO;
    }else {
        if (blockSignature.numberOfArguments > 1) {
            const char *blockType = [blockSignature getArgumentTypeAtIndex:1];
            if (blockType[0] != '@') {
                signaturesMatch = NO;
            }
        }
        // Argument 0 is self/block, argument 1 is SEL or id<CAIProbeAspectInfo>. We start comparing at argument 2.
        // The block can have less arguments than the method, that's ok.
        if (signaturesMatch) {
            for (NSUInteger idx = 2; idx < blockSignature.numberOfArguments; idx++) {
                const char *methodType = [methodSignature getArgumentTypeAtIndex:idx];
                const char *blockType = [blockSignature getArgumentTypeAtIndex:idx];
                // Only compare parameter, not the optional type data.
                if (!methodType || !blockType || methodType[0] != blockType[0]) {
                    signaturesMatch = NO; break;
                }
            }
        }
    }

    if (!signaturesMatch) {
        NSString *description = [NSString stringWithFormat:@"Block signature %@ doesn't match %@.", blockSignature, methodSignature];
        CAIProbeAspectError(CAIProbeAspectErrorIncompatibleBlockSignature, description);
        return NO;
    }
    return YES;
}

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Class + Selector Preparation

static BOOL CAIProbeAspect_isMsgForwardIMP(IMP impl) {
    return impl == _objc_msgForward
#if !defined(__arm64__)
    || impl == (IMP)_objc_msgForward_stret
#endif
    ;
}

static IMP CAIProbeAspect_getMsgForwardIMP(NSObject *self, SEL selector) {
    IMP msgForwardIMP = _objc_msgForward;
#if !defined(__arm64__)
    // As an ugly internal runtime implementation detail in the 32bit runtime, we need to determine of the method we hook returns a struct or anything larger than id.
    // https://developer.apple.com/library/mac/documentation/DeveloperTools/Conceptual/LowLevelABI/000-Introduction/introduction.html
    // https://github.com/ReactiveCocoa/ReactiveCocoa/issues/783
    // http://infocenter.arm.com/help/topic/com.arm.doc.ihi0042e/IHI0042E_aapcs.pdf (Section 5.4)
    Method method = class_getInstanceMethod(self.class, selector);
    const char *encoding = method_getTypeEncoding(method);
    BOOL methodReturnsStructValue = encoding[0] == _C_STRUCT_B;
    if (methodReturnsStructValue) {
        @try {
            NSUInteger valueSize = 0;
            NSGetSizeAndAlignment(encoding, &valueSize, NULL);

            if (valueSize == 1 || valueSize == 2 || valueSize == 4 || valueSize == 8) {
                methodReturnsStructValue = NO;
            }
        } @catch (__unused NSException *e) {}
    }
    if (methodReturnsStructValue) {
        msgForwardIMP = (IMP)_objc_msgForward_stret;
    }
#endif
    return msgForwardIMP;
}

static void CAIProbeAspect_prepareClassAndHookSelector(NSObject *self, SEL selector, NSError **error) {
    NSCParameterAssert(selector);
    Class klass = CAIProbeAspect_hookClass(self, error);
    Method targetMethod = class_getInstanceMethod(klass, selector);
    IMP targetMethodIMP = method_getImplementation(targetMethod);
    if (!CAIProbeAspect_isMsgForwardIMP(targetMethodIMP)) {
        // Make a method alias for the existing method implementation, it not already copied.
        const char *typeEncoding = method_getTypeEncoding(targetMethod);
        SEL aliasSelector = CAIProbeAspect_aliasForSelector(selector);
        if (![klass instancesRespondToSelector:aliasSelector]) {
            __unused BOOL addedAlias = class_addMethod(klass, aliasSelector, method_getImplementation(targetMethod), typeEncoding);
            NSCAssert(addedAlias, @"Original implementation for %@ is already copied to %@ on %@", NSStringFromSelector(selector), NSStringFromSelector(aliasSelector), klass);
        }

        // We use forwardInvocation to hook in.
        class_replaceMethod(klass, selector, CAIProbeAspect_getMsgForwardIMP(self, selector), typeEncoding);
        CAIProbeAspectLog(@"CAIProbeAspects: Installed hook for -[%@ %@].", klass, NSStringFromSelector(selector));
    }
}

// Will undo the runtime changes made.
static void CAIProbeAspect_cleanupHookedClassAndSelector(NSObject *self, SEL selector) {
    NSCParameterAssert(self);
    NSCParameterAssert(selector);

	Class klass = object_getClass(self);
    BOOL isMetaClass = class_isMetaClass(klass);
    if (isMetaClass) {
        klass = (Class)self;
    }

    // Check if the method is marked as forwarded and undo that.
    Method targetMethod = class_getInstanceMethod(klass, selector);
    IMP targetMethodIMP = method_getImplementation(targetMethod);
    if (CAIProbeAspect_isMsgForwardIMP(targetMethodIMP)) {
        // Restore the original method implementation.
        const char *typeEncoding = method_getTypeEncoding(targetMethod);
        SEL aliasSelector = CAIProbeAspect_aliasForSelector(selector);
        Method originalMethod = class_getInstanceMethod(klass, aliasSelector);
        IMP originalIMP = method_getImplementation(originalMethod);
        NSCAssert(originalMethod, @"Original implementation for %@ not found %@ on %@", NSStringFromSelector(selector), NSStringFromSelector(aliasSelector), klass);

        class_replaceMethod(klass, selector, originalIMP, typeEncoding);
        CAIProbeAspectLog(@"CAIProbeAspects: Removed hook for -[%@ %@].", klass, NSStringFromSelector(selector));
    }

    // Deregister global tracked selector
    CAIProbeAspect_deregisterTrackedSelector(self, selector);

    // Get the CAIProbeAspect container and check if there are any hooks remaining. Clean up if there are not.
    CAIProbeAspectsContainer *container = CAIProbeAspect_getContainerForObject(self, selector);
    if (!container.hasCAIProbeAspects) {
        // Destroy the container
        CAIProbeAspect_destroyContainerForObject(self, selector);

        // Figure out how the class was modified to undo the changes.
        NSString *className = NSStringFromClass(klass);
        if ([className hasSuffix:CAIProbeAspectsSubclassSuffix]) {
            Class originalClass = NSClassFromString([className stringByReplacingOccurrencesOfString:CAIProbeAspectsSubclassSuffix withString:@""]);
            NSCAssert(originalClass != nil, @"Original class must exist");
            object_setClass(self, originalClass);
            CAIProbeAspectLog(@"CAIProbeAspects: %@ has been restored.", NSStringFromClass(originalClass));

            // We can only dispose the class pair if we can ensure that no instances exist using our subclass.
            // Since we don't globally track this, we can't ensure this - but there's also not much overhead in keeping it around.
            //objc_disposeClassPair(object.class);
        }else {
            // Class is most likely swizzled in place. Undo that.
            if (isMetaClass) {
                CAIProbeAspect_undoSwizzleClassInPlace((Class)self);
            }else if (self.class != klass) {
            	CAIProbeAspect_undoSwizzleClassInPlace(klass);
            }
        }
    }
}

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Hook Class

static Class CAIProbeAspect_hookClass(NSObject *self, NSError **error) {
    NSCParameterAssert(self);
	Class statedClass = self.class;
	Class baseClass = object_getClass(self);
	NSString *className = NSStringFromClass(baseClass);

    // Already subclassed
	if ([className hasSuffix:CAIProbeAspectsSubclassSuffix]) {
		return baseClass;

        // We swizzle a class object, not a single object.
	}else if (class_isMetaClass(baseClass)) {
        return CAIProbeAspect_swizzleClassInPlace((Class)self);
        // Probably a KVO'ed class. Swizzle in place. Also swizzle meta classes in place.
    }else if (statedClass != baseClass) {
        return CAIProbeAspect_swizzleClassInPlace(baseClass);
    }

    // Default case. Create dynamic subclass.
	const char *subclassName = [className stringByAppendingString:CAIProbeAspectsSubclassSuffix].UTF8String;
	Class subclass = objc_getClass(subclassName);

	if (subclass == nil) {
		subclass = objc_allocateClassPair(baseClass, subclassName, 0);
		if (subclass == nil) {
            NSString *errrorDesc = [NSString stringWithFormat:@"objc_allocateClassPair failed to allocate class %s.", subclassName];
            CAIProbeAspectError(CAIProbeAspectErrorFailedToAllocateClassPair, errrorDesc);
            return nil;
        }

		CAIProbeAspect_swizzleForwardInvocation(subclass);
		CAIProbeAspect_hookedGetClass(subclass, statedClass);
		CAIProbeAspect_hookedGetClass(object_getClass(subclass), statedClass);
		objc_registerClassPair(subclass);
	}

	object_setClass(self, subclass);
	return subclass;
}

static NSString *const CAIProbeAspectsForwardInvocationSelectorName = @"__CAIProbeAspects_forwardInvocation:";
static void CAIProbeAspect_swizzleForwardInvocation(Class klass) {
    NSCParameterAssert(klass);
    // If there is no method, replace will act like class_addMethod.
    IMP originalImplementation = class_replaceMethod(klass, @selector(forwardInvocation:), (IMP)__CAIProbeAspectS_ARE_BEING_CALLED__, "v@:@");
    if (originalImplementation) {
        class_addMethod(klass, NSSelectorFromString(CAIProbeAspectsForwardInvocationSelectorName), originalImplementation, "v@:@");
    }
    CAIProbeAspectLog(@"CAIProbeAspects: %@ is now CAIProbeAspect aware.", NSStringFromClass(klass));
}

static void CAIProbeAspect_undoSwizzleForwardInvocation(Class klass) {
    NSCParameterAssert(klass);
    Method originalMethod = class_getInstanceMethod(klass, NSSelectorFromString(CAIProbeAspectsForwardInvocationSelectorName));
    Method objectMethod = class_getInstanceMethod(NSObject.class, @selector(forwardInvocation:));
    // There is no class_removeMethod, so the best we can do is to retore the original implementation, or use a dummy.
    IMP originalImplementation = method_getImplementation(originalMethod ?: objectMethod);
    class_replaceMethod(klass, @selector(forwardInvocation:), originalImplementation, "v@:@");

    CAIProbeAspectLog(@"CAIProbeAspects: %@ has been restored.", NSStringFromClass(klass));
}

static void CAIProbeAspect_hookedGetClass(Class class, Class statedClass) {
    NSCParameterAssert(class);
    NSCParameterAssert(statedClass);
	Method method = class_getInstanceMethod(class, @selector(class));
	IMP newIMP = imp_implementationWithBlock(^(id self) {
		return statedClass;
	});
	class_replaceMethod(class, @selector(class), newIMP, method_getTypeEncoding(method));
}

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Swizzle Class In Place

static void _CAIProbeAspect_modifySwizzledClasses(void (^block)(NSMutableSet *swizzledClasses)) {
    static NSMutableSet *swizzledClasses;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        swizzledClasses = [NSMutableSet new];
    });
    @synchronized(swizzledClasses) {
        block(swizzledClasses);
    }
}

static Class CAIProbeAspect_swizzleClassInPlace(Class klass) {
    NSCParameterAssert(klass);
    NSString *className = NSStringFromClass(klass);

    _CAIProbeAspect_modifySwizzledClasses(^(NSMutableSet *swizzledClasses) {
        if (![swizzledClasses containsObject:className]) {
            CAIProbeAspect_swizzleForwardInvocation(klass);
            [swizzledClasses addObject:className];
        }
    });
    return klass;
}

static void CAIProbeAspect_undoSwizzleClassInPlace(Class klass) {
    NSCParameterAssert(klass);
    NSString *className = NSStringFromClass(klass);

    _CAIProbeAspect_modifySwizzledClasses(^(NSMutableSet *swizzledClasses) {
        if ([swizzledClasses containsObject:className]) {
            CAIProbeAspect_undoSwizzleForwardInvocation(klass);
            [swizzledClasses removeObject:className];
        }
    });
}

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - CAIProbeAspect Invoke Point

// This is a macro so we get a cleaner stack trace.
#define CAIProbeAspect_invoke(CAIProbeAspects, info) \
for (CAIProbeAspectIdentifier *CAIProbeAspect in CAIProbeAspects) {\
    [CAIProbeAspect invokeWithInfo:info];\
    if (CAIProbeAspect.options & CAIProbeAspectOptionAutomaticRemoval) { \
        CAIProbeAspectsToRemove = [CAIProbeAspectsToRemove?:@[] arrayByAddingObject:CAIProbeAspect]; \
    } \
}

// This is the swizzled forwardInvocation: method.
static void __CAIProbeAspectS_ARE_BEING_CALLED__(__unsafe_unretained NSObject *self, SEL selector, NSInvocation *invocation) {
    NSCParameterAssert(self);
    NSCParameterAssert(invocation);
    SEL originalSelector = invocation.selector;
	SEL aliasSelector = CAIProbeAspect_aliasForSelector(invocation.selector);
    invocation.selector = aliasSelector;
    CAIProbeAspectsContainer *objectContainer = objc_getAssociatedObject(self, aliasSelector);
    CAIProbeAspectsContainer *classContainer = CAIProbeAspect_getContainerForClass(object_getClass(self), aliasSelector);
    CAIProbeAspectInfo *info = [[CAIProbeAspectInfo alloc] initWithInstance:self invocation:invocation];
    NSArray *CAIProbeAspectsToRemove = nil;

    // Before hooks.
    CAIProbeAspect_invoke(classContainer.beforeCAIProbeAspects, info);
    CAIProbeAspect_invoke(objectContainer.beforeCAIProbeAspects, info);

    // Instead hooks.
    BOOL respondsToAlias = YES;
    if (objectContainer.insteadCAIProbeAspects.count || classContainer.insteadCAIProbeAspects.count) {
        CAIProbeAspect_invoke(classContainer.insteadCAIProbeAspects, info);
        CAIProbeAspect_invoke(objectContainer.insteadCAIProbeAspects, info);
    }else {
        Class klass = object_getClass(invocation.target);
        do {
            if ((respondsToAlias = [klass instancesRespondToSelector:aliasSelector])) {
                [invocation invoke];
                break;
            }
        }while (!respondsToAlias && (klass = class_getSuperclass(klass)));
    }

    // After hooks.
    CAIProbeAspect_invoke(classContainer.afterCAIProbeAspects, info);
    CAIProbeAspect_invoke(objectContainer.afterCAIProbeAspects, info);

    // If no hooks are installed, call original implementation (usually to throw an exception)
    if (!respondsToAlias) {
        invocation.selector = originalSelector;
        SEL originalForwardInvocationSEL = NSSelectorFromString(CAIProbeAspectsForwardInvocationSelectorName);
        if ([self respondsToSelector:originalForwardInvocationSEL]) {
            ((void( *)(id, SEL, NSInvocation *))objc_msgSend)(self, originalForwardInvocationSEL, invocation);
        }else {
            [self doesNotRecognizeSelector:invocation.selector];
        }
    }

    // Remove any hooks that are queued for deregistration.
    [CAIProbeAspectsToRemove makeObjectsPerformSelector:@selector(remove)];
}
#undef CAIProbeAspect_invoke

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - CAIProbeAspect Container Management

// Loads or creates the CAIProbeAspect container.
static CAIProbeAspectsContainer *CAIProbeAspect_getContainerForObject(NSObject *self, SEL selector) {
    NSCParameterAssert(self);
    SEL aliasSelector = CAIProbeAspect_aliasForSelector(selector);
    CAIProbeAspectsContainer *CAIProbeAspectContainer = objc_getAssociatedObject(self, aliasSelector);
    if (!CAIProbeAspectContainer) {
        CAIProbeAspectContainer = [CAIProbeAspectsContainer new];
        objc_setAssociatedObject(self, aliasSelector, CAIProbeAspectContainer, OBJC_ASSOCIATION_RETAIN);
    }
    return CAIProbeAspectContainer;
}

static CAIProbeAspectsContainer *CAIProbeAspect_getContainerForClass(Class klass, SEL selector) {
    NSCParameterAssert(klass);
    CAIProbeAspectsContainer *classContainer = nil;
    do {
        classContainer = objc_getAssociatedObject(klass, selector);
        if (classContainer.hasCAIProbeAspects) break;
    }while ((klass = class_getSuperclass(klass)));

    return classContainer;
}

static void CAIProbeAspect_destroyContainerForObject(id<NSObject> self, SEL selector) {
    NSCParameterAssert(self);
    SEL aliasSelector = CAIProbeAspect_aliasForSelector(selector);
    objc_setAssociatedObject(self, aliasSelector, nil, OBJC_ASSOCIATION_RETAIN);
}

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - Selector Blacklist Checking

static NSMutableDictionary *CAIProbeAspect_getSwizzledClassesDict() {
    static NSMutableDictionary *swizzledClassesDict;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        swizzledClassesDict = [NSMutableDictionary new];
    });
    return swizzledClassesDict;
}

static BOOL CAIProbeAspect_isSelectorAllowedAndTrack(NSObject *self, SEL selector, CAIProbeAspectOptions options, NSError **error) {
    static NSSet *disallowedSelectorList;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        disallowedSelectorList = [NSSet setWithObjects:@"retain", @"release", @"autorelease", @"forwardInvocation:", nil];
    });

    // Check against the blacklist.
    NSString *selectorName = NSStringFromSelector(selector);
    if ([disallowedSelectorList containsObject:selectorName]) {
        NSString *errorDescription = [NSString stringWithFormat:@"Selector %@ is blacklisted.", selectorName];
        CAIProbeAspectError(CAIProbeAspectErrorSelectorBlacklisted, errorDescription);
        return NO;
    }

    // Additional checks.
    CAIProbeAspectOptions position = options&CAIProbeAspectPositionFilter;
    if ([selectorName isEqualToString:@"dealloc"] && position != CAIProbeAspectPositionBefore) {
        NSString *errorDesc = @"CAIProbeAspectPositionBefore is the only valid position when hooking dealloc.";
        CAIProbeAspectError(CAIProbeAspectErrorSelectorDeallocPosition, errorDesc);
        return NO;
    }

    if (![self respondsToSelector:selector] && ![self.class instancesRespondToSelector:selector]) {
        NSString *errorDesc = [NSString stringWithFormat:@"Unable to find selector -[%@ %@].", NSStringFromClass(self.class), selectorName];
        CAIProbeAspectError(CAIProbeAspectErrorDoesNotRespondToSelector, errorDesc);
        return NO;
    }

    // Search for the current class and the class hierarchy IF we are modifying a class object
    if (class_isMetaClass(object_getClass(self))) {
        Class klass = [self class];
        NSMutableDictionary *swizzledClassesDict = CAIProbeAspect_getSwizzledClassesDict();
        Class currentClass = [self class];

        CAIProbeAspectTracker *tracker = swizzledClassesDict[currentClass];
        if ([tracker subclassHasHookedSelectorName:selectorName]) {
            NSSet *subclassTracker = [tracker subclassTrackersHookingSelectorName:selectorName];
            NSSet *subclassNames = [subclassTracker valueForKey:@"trackedClassName"];
            NSString *errorDescription = [NSString stringWithFormat:@"Error: %@ already hooked subclasses: %@. A method can only be hooked once per class hierarchy.", selectorName, subclassNames];
            CAIProbeAspectError(CAIProbeAspectErrorSelectorAlreadyHookedInClassHierarchy, errorDescription);
            return NO;
        }

        do {
            tracker = swizzledClassesDict[currentClass];
            if ([tracker.selectorNames containsObject:selectorName]) {
                if (klass == currentClass) {
                    // Already modified and topmost!
                    return YES;
                }
                NSString *errorDescription = [NSString stringWithFormat:@"Error: %@ already hooked in %@. A method can only be hooked once per class hierarchy.", selectorName, NSStringFromClass(currentClass)];
                CAIProbeAspectError(CAIProbeAspectErrorSelectorAlreadyHookedInClassHierarchy, errorDescription);
                return NO;
            }
        } while ((currentClass = class_getSuperclass(currentClass)));

        // Add the selector as being modified.
        currentClass = klass;
        CAIProbeAspectTracker *subclassTracker = nil;
        do {
            tracker = swizzledClassesDict[currentClass];
            if (!tracker) {
                tracker = [[CAIProbeAspectTracker alloc] initWithTrackedClass:currentClass];
                swizzledClassesDict[(id<NSCopying>)currentClass] = tracker;
            }
            if (subclassTracker) {
                [tracker addSubclassTracker:subclassTracker hookingSelectorName:selectorName];
            } else {
                [tracker.selectorNames addObject:selectorName];
            }

            // All superclasses get marked as having a subclass that is modified.
            subclassTracker = tracker;
        }while ((currentClass = class_getSuperclass(currentClass)));
	} else {
		return YES;
	}

    return YES;
}

static void CAIProbeAspect_deregisterTrackedSelector(id self, SEL selector) {
    if (!class_isMetaClass(object_getClass(self))) return;

    NSMutableDictionary *swizzledClassesDict = CAIProbeAspect_getSwizzledClassesDict();
    NSString *selectorName = NSStringFromSelector(selector);
    Class currentClass = [self class];
    CAIProbeAspectTracker *subclassTracker = nil;
    do {
        CAIProbeAspectTracker *tracker = swizzledClassesDict[currentClass];
        if (subclassTracker) {
            [tracker removeSubclassTracker:subclassTracker hookingSelectorName:selectorName];
        } else {
            [tracker.selectorNames removeObject:selectorName];
        }
        if (tracker.selectorNames.count == 0 && tracker.selectorNamesToSubclassTrackers) {
            [swizzledClassesDict removeObjectForKey:currentClass];
        }
        subclassTracker = tracker;
    }while ((currentClass = class_getSuperclass(currentClass)));
}

@end

@implementation CAIProbeAspectTracker

- (id)initWithTrackedClass:(Class)trackedClass {
    if (self = [super init]) {
        _trackedClass = trackedClass;
        _selectorNames = [NSMutableSet new];
        _selectorNamesToSubclassTrackers = [NSMutableDictionary new];
    }
    return self;
}

- (BOOL)subclassHasHookedSelectorName:(NSString *)selectorName {
    return self.selectorNamesToSubclassTrackers[selectorName] != nil;
}

- (void)addSubclassTracker:(CAIProbeAspectTracker *)subclassTracker hookingSelectorName:(NSString *)selectorName {
    NSMutableSet *trackerSet = self.selectorNamesToSubclassTrackers[selectorName];
    if (!trackerSet) {
        trackerSet = [NSMutableSet new];
        self.selectorNamesToSubclassTrackers[selectorName] = trackerSet;
    }
    [trackerSet addObject:subclassTracker];
}
- (void)removeSubclassTracker:(CAIProbeAspectTracker *)subclassTracker hookingSelectorName:(NSString *)selectorName {
    NSMutableSet *trackerSet = self.selectorNamesToSubclassTrackers[selectorName];
    [trackerSet removeObject:subclassTracker];
    if (trackerSet.count == 0) {
        [self.selectorNamesToSubclassTrackers removeObjectForKey:selectorName];
    }
}
- (NSSet *)subclassTrackersHookingSelectorName:(NSString *)selectorName {
    NSMutableSet *hookingSubclassTrackers = [NSMutableSet new];
    for (CAIProbeAspectTracker *tracker in self.selectorNamesToSubclassTrackers[selectorName]) {
        if ([tracker.selectorNames containsObject:selectorName]) {
            [hookingSubclassTrackers addObject:tracker];
        }
        [hookingSubclassTrackers unionSet:[tracker subclassTrackersHookingSelectorName:selectorName]];
    }
    return hookingSubclassTrackers;
}
- (NSString *)trackedClassName {
    return NSStringFromClass(self.trackedClass);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %@, trackedClass: %@, selectorNames:%@, subclass selector names: %@>", self.class, self, NSStringFromClass(self.trackedClass), self.selectorNames, self.selectorNamesToSubclassTrackers.allKeys];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - NSInvocation (CAIProbeAspects)

@implementation NSInvocation (CAIProbeAspects)

// Thanks to the ReactiveCocoa team for providing a generic solution for this.
- (id)CAIProbeAspect_argumentAtIndex:(NSUInteger)index {
	const char *argType = [self.methodSignature getArgumentTypeAtIndex:index];
	// Skip const type qualifier.
	if (argType[0] == _C_CONST) argType++;

#define WRAP_AND_RETURN(type) do { type val = 0; [self getArgument:&val atIndex:(NSInteger)index]; return @(val); } while (0)
	if (strcmp(argType, @encode(id)) == 0 || strcmp(argType, @encode(Class)) == 0) {
		__autoreleasing id returnObj;
		[self getArgument:&returnObj atIndex:(NSInteger)index];
		return returnObj;
	} else if (strcmp(argType, @encode(SEL)) == 0) {
        SEL selector = 0;
        [self getArgument:&selector atIndex:(NSInteger)index];
        return NSStringFromSelector(selector);
    } else if (strcmp(argType, @encode(Class)) == 0) {
        __autoreleasing Class theClass = Nil;
        [self getArgument:&theClass atIndex:(NSInteger)index];
        return theClass;
        // Using this list will box the number with the appropriate constructor, instead of the generic NSValue.
	} else if (strcmp(argType, @encode(char)) == 0) {
		WRAP_AND_RETURN(char);
	} else if (strcmp(argType, @encode(int)) == 0) {
		WRAP_AND_RETURN(int);
	} else if (strcmp(argType, @encode(short)) == 0) {
		WRAP_AND_RETURN(short);
	} else if (strcmp(argType, @encode(long)) == 0) {
		WRAP_AND_RETURN(long);
	} else if (strcmp(argType, @encode(long long)) == 0) {
		WRAP_AND_RETURN(long long);
	} else if (strcmp(argType, @encode(unsigned char)) == 0) {
		WRAP_AND_RETURN(unsigned char);
	} else if (strcmp(argType, @encode(unsigned int)) == 0) {
		WRAP_AND_RETURN(unsigned int);
	} else if (strcmp(argType, @encode(unsigned short)) == 0) {
		WRAP_AND_RETURN(unsigned short);
	} else if (strcmp(argType, @encode(unsigned long)) == 0) {
		WRAP_AND_RETURN(unsigned long);
	} else if (strcmp(argType, @encode(unsigned long long)) == 0) {
		WRAP_AND_RETURN(unsigned long long);
	} else if (strcmp(argType, @encode(float)) == 0) {
		WRAP_AND_RETURN(float);
	} else if (strcmp(argType, @encode(double)) == 0) {
		WRAP_AND_RETURN(double);
	} else if (strcmp(argType, @encode(BOOL)) == 0) {
		WRAP_AND_RETURN(BOOL);
	} else if (strcmp(argType, @encode(bool)) == 0) {
		WRAP_AND_RETURN(BOOL);
	} else if (strcmp(argType, @encode(char *)) == 0) {
		WRAP_AND_RETURN(const char *);
	} else if (strcmp(argType, @encode(void (^)(void))) == 0) {
		__unsafe_unretained id block = nil;
		[self getArgument:&block atIndex:(NSInteger)index];
		return [block copy];
	} else {
		NSUInteger valueSize = 0;
		NSGetSizeAndAlignment(argType, &valueSize, NULL);

		unsigned char valueBytes[valueSize];
		[self getArgument:valueBytes atIndex:(NSInteger)index];

		return [NSValue valueWithBytes:valueBytes objCType:argType];
	}
	return nil;
#undef WRAP_AND_RETURN
}

- (NSArray *)CAIProbeAspects_arguments {
	NSMutableArray *argumentsArray = [NSMutableArray array];
	for (NSUInteger idx = 2; idx < self.methodSignature.numberOfArguments; idx++) {
		[argumentsArray addObject:[self CAIProbeAspect_argumentAtIndex:idx] ?: NSNull.null];
	}
	return [argumentsArray copy];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - CAIProbeAspectIdentifier

@implementation CAIProbeAspectIdentifier

+ (instancetype)identifierWithSelector:(SEL)selector object:(id)object options:(CAIProbeAspectOptions)options block:(id)block error:(NSError **)error {
    NSCParameterAssert(block);
    NSCParameterAssert(selector);
    NSMethodSignature *blockSignature = CAIProbeAspect_blockMethodSignature(block, error); // TODO: check signature compatibility, etc.
    if (!CAIProbeAspect_isCompatibleBlockSignature(blockSignature, object, selector, error)) {
        return nil;
    }

    CAIProbeAspectIdentifier *identifier = nil;
    if (blockSignature) {
        identifier = [CAIProbeAspectIdentifier new];
        identifier.selector = selector;
        identifier.block = block;
        identifier.blockSignature = blockSignature;
        identifier.options = options;
        identifier.object = object; // weak
    }
    return identifier;
}

- (BOOL)invokeWithInfo:(id<CAIProbeAspectInfo>)info {
    NSInvocation *blockInvocation = [NSInvocation invocationWithMethodSignature:self.blockSignature];
    NSInvocation *originalInvocation = info.originalInvocation;
    NSUInteger numberOfArguments = self.blockSignature.numberOfArguments;

    // Be extra paranoid. We already check that on hook registration.
    if (numberOfArguments > originalInvocation.methodSignature.numberOfArguments) {
        CAIProbeAspectLogError(@"Block has too many arguments. Not calling %@", info);
        return NO;
    }

    // The `self` of the block will be the CAIProbeAspectInfo. Optional.
    if (numberOfArguments > 1) {
        [blockInvocation setArgument:&info atIndex:1];
    }
    
	void *argBuf = NULL;
    for (NSUInteger idx = 2; idx < numberOfArguments; idx++) {
        const char *type = [originalInvocation.methodSignature getArgumentTypeAtIndex:idx];
		NSUInteger argSize;
		NSGetSizeAndAlignment(type, &argSize, NULL);
        
		if (!(argBuf = reallocf(argBuf, argSize))) {
            CAIProbeAspectLogError(@"Failed to allocate memory for block invocation.");
			return NO;
		}
        
		[originalInvocation getArgument:argBuf atIndex:idx];
		[blockInvocation setArgument:argBuf atIndex:idx];
    }
    
    [blockInvocation invokeWithTarget:self.block];
    
    if (argBuf != NULL) {
        free(argBuf);
    }
    return YES;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, SEL:%@ object:%@ options:%tu block:%@ (#%tu args)>", self.class, self, NSStringFromSelector(self.selector), self.object, self.options, self.block, self.blockSignature.numberOfArguments];
}

- (BOOL)remove {
    return CAIProbeAspect_remove(self, NULL);
}

@end

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - CAIProbeAspectsContainer

@implementation CAIProbeAspectsContainer

- (BOOL)hasCAIProbeAspects {
    return self.beforeCAIProbeAspects.count > 0 || self.insteadCAIProbeAspects.count > 0 || self.afterCAIProbeAspects.count > 0;
}

- (void)addCAIProbeAspect:(CAIProbeAspectIdentifier *)CAIProbeAspect withOptions:(CAIProbeAspectOptions)options {
    NSParameterAssert(CAIProbeAspect);
    NSUInteger position = options&CAIProbeAspectPositionFilter;
    switch (position) {
        case CAIProbeAspectPositionBefore:  self.beforeCAIProbeAspects  = [(self.beforeCAIProbeAspects ?:@[]) arrayByAddingObject:CAIProbeAspect]; break;
        case CAIProbeAspectPositionInstead: self.insteadCAIProbeAspects = [(self.insteadCAIProbeAspects?:@[]) arrayByAddingObject:CAIProbeAspect]; break;
        case CAIProbeAspectPositionAfter:   self.afterCAIProbeAspects   = [(self.afterCAIProbeAspects  ?:@[]) arrayByAddingObject:CAIProbeAspect]; break;
    }
}

- (BOOL)removeCAIProbeAspect:(id)CAIProbeAspect {
    for (NSString *CAIProbeAspectArrayName in @[NSStringFromSelector(@selector(beforeCAIProbeAspects)),
                                        NSStringFromSelector(@selector(insteadCAIProbeAspects)),
                                        NSStringFromSelector(@selector(afterCAIProbeAspects))]) {
        NSArray *array = [self valueForKey:CAIProbeAspectArrayName];
        NSUInteger index = [array indexOfObjectIdenticalTo:CAIProbeAspect];
        if (array && index != NSNotFound) {
            NSMutableArray *newArray = [NSMutableArray arrayWithArray:array];
            [newArray removeObjectAtIndex:index];
            [self setValue:newArray forKey:CAIProbeAspectArrayName];
            return YES;
        }
    }
    return NO;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, before:%@, instead:%@, after:%@>", self.class, self, self.beforeCAIProbeAspects, self.insteadCAIProbeAspects, self.afterCAIProbeAspects];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - CAIProbeAspectInfo

@implementation CAIProbeAspectInfo

@synthesize arguments = _arguments;

- (id)initWithInstance:(__unsafe_unretained id)instance invocation:(NSInvocation *)invocation {
    NSCParameterAssert(instance);
    NSCParameterAssert(invocation);
    if (self = [super init]) {
        _instance = instance;
        _originalInvocation = invocation;
    }
    return self;
}

- (NSArray *)arguments {
    // Lazily evaluate arguments, boxing is expensive.
    if (!_arguments) {
        _arguments = self.originalInvocation.CAIProbeAspects_arguments;
    }
    return _arguments;
}

@end
