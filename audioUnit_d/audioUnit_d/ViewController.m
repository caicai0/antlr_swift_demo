//
//  ViewController.m
//  audioUnit_d
//
//  Created by liyufeng on 2019/10/9.
//  Copyright © 2019 liyufeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <NSStreamDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary * attr = [NSFileManager.defaultManager attributesOfItemAtPath:@"/Users/liyufeng/Desktop/shuanglan.pdf" error:nil];
    NSLog(@"%ld",[attr[NSFileSize] integerValue]);
    
    NSInputStream * inputStream = [NSInputStream inputStreamWithFileAtPath:@"/Users/liyufeng/Desktop/shuanglan.pdf"];
    [inputStream setProperty:@(1) forKey:NSStreamFileCurrentOffsetKey];
    [inputStream open];
    
    uint8_t * buffer = malloc(100);
    memset(buffer, 0, 100);
    [inputStream read:buffer maxLength:100];
    [inputStream setDelegate:self];
    NSData * data = [NSData dataWithBytes:buffer length:100];
    NSLog(@"%@",data);
}

- (void)stream:(NSStream *)aStream handleEvent:(NSStreamEvent)eventCode{
    NSLog(@"%lu",(unsigned long)eventCode);
}

@end
