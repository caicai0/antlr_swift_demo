//
//  Test.m
//  ProtocolMW
//
//  Created by liyufeng on 2019/10/25.
//  Copyright © 2019 liyufeng. All rights reserved.
//

#import "Test.h"
#import <objc/runtime.h>

@implementation Test

-(void)run{
    //读取所有的协议并获取名称
    unsigned int protocol_count = 0;
    __unsafe_unretained Protocol **protocol_list = objc_copyProtocolList(&protocol_count);//获取所有的协议和数量
    for (int i = 0; i < protocol_count ; i ++)
    {
        Protocol *protocol = protocol_list[i];
        [self findAllMethods:protocol];
    }
    free(protocol_list);
}

- (void)findAllMethods:(Protocol *)protocol{
    unsigned int count = 0;
    struct objc_method_description * descs = protocol_copyMethodDescriptionList(protocol, false, true, &count);
    for (int i=0; i < count; i++) {
        struct objc_method_description des = descs[i];
        NSLog(@"%@",[NSString stringWithUTF8String:sel_getName(des.name)]);
        NSLog(@"%@",[NSString stringWithUTF8String:des.types]);
    }
    free(descs);
}

@end
