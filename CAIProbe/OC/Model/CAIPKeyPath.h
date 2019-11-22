//
//  CAIPKeyPath.h
//  CAIProbe
//
//  Created by 李玉峰 on 2019/11/21.
//  Copyright © 2019 liyufeng. All rights reserved.
//

#import "CAIPModel.h"
#import "CAIPKeyPathParser.h"
#import "Aspects.h"

@interface CAIPKeyPath : CAIPModel

@property(nonatomic, assign)NSInteger type;
@property(nonatomic, strong)NSString * version;
@property(nonatomic, strong)NSString * ID;
@property(nonatomic, strong)NSString * keyPath;
@property(nonatomic, strong)CAIPKeyPathParser * parser;

-(nullable NSString *)valueInfo:(id<AspectInfo>)info;

@end
