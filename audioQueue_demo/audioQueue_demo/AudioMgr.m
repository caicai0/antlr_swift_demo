//
//  AudioMgr.m
//  audioQueue_demo
//
//  Created by liyufeng on 2019/10/8.
//  Copyright © 2019 liyufeng. All rights reserved.
//

#import "AudioMgr.h"
#import <AudioToolbox/AudioToolbox.h>

@interface AudioMgr() {
    AudioQueueRef audioQRef;       //音频队列对象指针
    AudioStreamBasicDescription recordFormat;   //音频流配置
    AudioQueueBufferRef audioBuffers[3];  //音频流缓冲区对象
}

@property(nonatomic,strong)NSString* recordFileName;  //音频目录
@property(nonatomic,assign)AudioFileID recordFileID;   //音频文件标识  用于关联音频文件
@property(nonatomic,assign)SInt64 recordPacket;  //录音文件的当前包

@end

@implementation AudioMgr

-  (void)initFormat {
    recordFormat.mSampleRate =  22050;  //采样率
    recordFormat.mChannelsPerFrame = 1; //声道数量
    //编码格式
    recordFormat.mFormatID = kAudioFormatLinearPCM;
    recordFormat.mFormatFlags = kLinearPCMFormatFlagIsSignedInteger | kLinearPCMFormatFlagIsPacked;
    //每采样点占用位数
    recordFormat.mBitsPerChannel = 8;
    //每帧的字节数
    recordFormat.mBytesPerFrame = (recordFormat.mBitsPerChannel / 8) * recordFormat.mChannelsPerFrame;
    //每包的字节数
    recordFormat.mBytesPerPacket = recordFormat.mBytesPerFrame;
    //每帧的字节数
    recordFormat.mFramesPerPacket = 1;
}

- (void)initFile {
    self.recordFileName = [YTRecordFileManager cacheFileWidthPath:@"tempRecordPath" Name:@"tempRecord.wav"] ;
    NSLog(@"recordFile:%@",_recordFileName);
}

@end
