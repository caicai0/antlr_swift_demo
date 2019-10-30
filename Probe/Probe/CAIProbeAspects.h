//
//  CAIProbeAspects.h
//  CAIProbeAspects - A delightful, simple library for CAIProbeAspect oriented programming.
//
//  Copyright (c) 2014 Peter Steinberger. Licensed under the MIT license.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, CAIProbeAspectOptions) {
    CAIProbeAspectPositionAfter   = 0,            /// Called after the original implementation (default)
    CAIProbeAspectPositionInstead = 1,            /// Will replace the original implementation.
    CAIProbeAspectPositionBefore  = 2,            /// Called before the original implementation.

    CAIProbeAspectOptionAutomaticRemoval = 1 << 3 /// Will remove the hook after the first execution.
};

/// Opaque CAIProbeAspect Token that allows to deregister the hook.
@protocol CAIProbeAspectToken <NSObject>

/// Deregisters an CAIProbeAspect.
/// @return YES if deregistration is successful, otherwise NO.
- (BOOL)remove;

@end

/// The CAIProbeAspectInfo protocol is the first parameter of our block syntax.
@protocol CAIProbeAspectInfo <NSObject>

/// The instance that is currently hooked.
- (id)instance;

/// The original invocation of the hooked method.
- (NSInvocation *)originalInvocation;

/// All method arguments, boxed. This is lazily evaluated.
- (NSArray *)arguments;

@end

/**
 CAIProbeAspects uses Objective-C message forwarding to hook into messages. This will create some overhead. Don't add CAIProbeAspects to methods that are called a lot. CAIProbeAspects is meant for view/controller code that is not called a 1000 times per second.

 Adding CAIProbeAspects returns an opaque token which can be used to deregister again. All calls are thread safe.
 */
@interface NSObject (CAIProbeAspects)

/// Adds a block of code before/instead/after the current `selector` for a specific class.
///
/// @param block CAIProbeAspects replicates the type signature of the method being hooked.
/// The first parameter will be `id<CAIProbeAspectInfo>`, followed by all parameters of the method.
/// These parameters are optional and will be filled to match the block signature.
/// You can even use an empty block, or one that simple gets `id<CAIProbeAspectInfo>`.
///
/// @note Hooking static methods is not supported.
/// @return A token which allows to later deregister the CAIProbeAspect.
+ (id<CAIProbeAspectToken>)caiProbeAspect_hookSelector:(SEL)selector
                           withOptions:(CAIProbeAspectOptions)options
                            usingBlock:(id)block
                                 error:(NSError **)error;

/// Adds a block of code before/instead/after the current `selector` for a specific instance.
- (id<CAIProbeAspectToken>)caiProbeAspect_hookSelector:(SEL)selector
                           withOptions:(CAIProbeAspectOptions)options
                            usingBlock:(id)block
                                 error:(NSError **)error;

@end


typedef NS_ENUM(NSUInteger, CAIProbeAspectErrorCode) {
    CAIProbeAspectErrorSelectorBlacklisted,                   /// Selectors like release, retain, autorelease are blacklisted.
    CAIProbeAspectErrorDoesNotRespondToSelector,              /// Selector could not be found.
    CAIProbeAspectErrorSelectorDeallocPosition,               /// When hooking dealloc, only CAIProbeAspectPositionBefore is allowed.
    CAIProbeAspectErrorSelectorAlreadyHookedInClassHierarchy, /// Statically hooking the same method in subclasses is not allowed.
    CAIProbeAspectErrorFailedToAllocateClassPair,             /// The runtime failed creating a class pair.
    CAIProbeAspectErrorMissingBlockSignature,                 /// The block misses compile time signature info and can't be called.
    CAIProbeAspectErrorIncompatibleBlockSignature,            /// The block signature does not match the method or is too large.

    CAIProbeAspectErrorRemoveObjectAlreadyDeallocated = 100   /// (for removing) The object hooked is already deallocated.
};

extern NSString *const CAIProbeAspectErrorDomain;
