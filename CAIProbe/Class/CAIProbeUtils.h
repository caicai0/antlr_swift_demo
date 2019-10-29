//
//  CAIProbeUtils.h
//  CAIProbe
//
//  Created by liyufeng on 2019/10/29.
//  Copyright © 2019 liyufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CAIProbeUtils : NSObject

+ (id)objectForClass:(Class)aclass selector:(SEL)selector keyPath:(NSString *)keyPath;
+ (id)objectForInstance:(id)instance keyPath:(NSString *)keyPath;
+ (NSString *)urlEncodeString:(NSString *)str;
+ (void)createFilePath:(NSString *)path;
+ (NSString*)md5ForPath:(NSString*)path;

@end

NS_ASSUME_NONNULL_END
