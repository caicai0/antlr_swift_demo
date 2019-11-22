//
//  CAIProbe.h
//  CAIProbe
//
//  Created by 李玉峰 on 2019/11/21.
//  Copyright © 2019 liyufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CAIPPlan.h"
#import "CAIProbeDelegate.h"

@interface CAIProbe : NSObject

@property(nonatomic, assign)double onceTime;
@property(nonatomic, strong)CAIPPlan * plan;
@property(nonatomic, weak)id<CAIProbeDelegate> delegate;

+ (instancetype)defaultProbe;

- (void)loadPlanJson:(NSString *)json;

@end
