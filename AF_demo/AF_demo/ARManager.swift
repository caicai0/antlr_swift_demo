//
//  ARManager.swift
//  AF_demo
//
//  Created by liyufeng on 2019/10/8.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import UIKit
import AVFoundation

class ARManager: NSObject {
    var captureSession = AVCaptureSession()
    let audioQueue = DispatchQueue(label: "audioQueue")
    
    var assetWriter:AVAssetWriter? = nil
    var videoURL = URL(string: "")
    let assetWriterVideoInput :AVAssetWriterInput
    let assetWriterAudioInput :AVAssetWriterInput
    
    override init() {
        //写入视频大小
        
        let numPixels = UIScreen.main.bounds.size.width * UIScreen.main.bounds.size.height

        //每像素比特
        let bitsPerPixel: CGFloat = 12.0
        let bitsPerSecond = Int(CGFloat(numPixels) * bitsPerPixel)

        // 码率和帧率设置
        let compressionProperties = [
            AVVideoAverageBitRateKey: NSNumber(value: bitsPerSecond),
            AVVideoExpectedSourceFrameRateKey: NSNumber(value: 15),
            AVVideoMaxKeyFrameIntervalKey: NSNumber(value: 15),
            AVVideoProfileLevelKey: AVVideoProfileLevelH264BaselineAutoLevel
            ] as [String : Any]
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        let videoCompressionSettings = [
            AVVideoCodecKey: AVVideoCodecType.h264,
            AVVideoWidthKey: NSNumber(value: Float(width * 2)),
            AVVideoHeightKey: NSNumber(value: Float(height * 2)),
            AVVideoScalingModeKey: AVVideoScalingModeResizeAspectFill,
            AVVideoCompressionPropertiesKey: compressionProperties
            ] as [String : Any]
        assetWriterVideoInput = AVAssetWriterInput(mediaType: .video, outputSettings: videoCompressionSettings)
        assetWriterVideoInput.expectsMediaDataInRealTime = true
        
        // 音频设置
        let audioCompressionSettings = [
            AVEncoderBitRatePerChannelKey: NSNumber(value: 28000),
            AVFormatIDKey: NSNumber(value: kAudioFormatMPEG4AAC),
            AVNumberOfChannelsKey: NSNumber(value: 1),
            AVSampleRateKey: NSNumber(value: 22050)
        ]
        assetWriterAudioInput = AVAssetWriterInput(mediaType: .audio, outputSettings: audioCompressionSettings)
        assetWriterAudioInput.expectsMediaDataInRealTime = true
        
        super.init()
        
        if let filepath = self.createVideoFilePath() {
            videoURL = URL(fileURLWithPath: filepath)
        }
    }
    
    func prepareForRecord() -> Bool {
        if let audioDevice = AVCaptureDevice.default(for: .audio) {
            do {
                let audioInput = try AVCaptureDeviceInput(device: audioDevice)
                if captureSession.canAddInput(audioInput) {
                    captureSession.addInput(audioInput)
                }
                
                let output = AVCaptureAudioDataOutput()
                if captureSession.canAddOutput(output) {
                    captureSession.addOutput(output)
                }
                
                output.setSampleBufferDelegate(self, queue: audioQueue)
                setupWriter()
            }catch{
                
            }
        }
        return true
    }
    
    func startRecord() {
        captureSession.startRunning()
    }
    
    func setupWriter() {
        do {
            if let videoURL = videoURL {
                self.assetWriter = try AVAssetWriter(url: videoURL, fileType: .caf)
            }
        } catch {
            print(error)
            return
        }
        guard let assetWriter = assetWriter else {
            return
        }
        if assetWriter.canAdd(assetWriterVideoInput) {
            assetWriter.add(assetWriterVideoInput)
        } else {
            print("AssetWriter videoInput append Failed")
        }

        if assetWriter.canAdd(assetWriterAudioInput) {
            assetWriter.add(assetWriterAudioInput)
        } else {
            print("AssetWriter audioInput Append Failed")
        }
        
    }
    
    func stopRecorder() {
        if let assetWriter = assetWriter ,assetWriter.status == .writing {
            assetWriter.finishWriting {
                print("完成")
            }
        }
        captureSession.stopRunning()
    }
    
    func createVideoFilePath() -> String? {
        // 创建视频文件的存储路径
        let filePath = createVideoFolderPath()
        if filePath == nil {
            return nil
        }

        let videoType = ".MP4"
        let videoDestDateString = "sss"
        let videoFileName = videoDestDateString + (videoType)

        var idx = 1
        //We only allow 10000 same file name
        var finalPath = (filePath ?? "")+"/"+videoFileName

        while idx % 10000 != 0 && FileManager.default.fileExists(atPath: finalPath) {
            finalPath = String(format: "%@/%@_(%lu)%@", filePath ?? "", videoDestDateString, UInt(idx), videoType)
            idx += 1
        }

        return finalPath
    }
    
    func createVideoFolderPath() -> String? {
        let fileManager = FileManager.default
        let homePath = NSHomeDirectory()
        var tmpFilePath: String?
        if homePath.count > 0 {
            let documentPath = homePath + ("/Documents")
            if fileManager.fileExists(atPath: documentPath, isDirectory: nil) == true {
                var paths: [String]? = nil
                do {
                    paths = try fileManager.contentsOfDirectory(atPath: documentPath)
                } catch {
                }
                //offline file folder
                tmpFilePath = documentPath + ("/\("video")")

                if paths?.contains("video") == false {
                    do {
                        try fileManager.createDirectory(atPath: tmpFilePath ?? "", withIntermediateDirectories: true, attributes: nil)
                    } catch {
                        tmpFilePath = nil
                    }
                }
                return tmpFilePath
            }
        }
        return nil
    }
}

extension ARManager : AVCaptureAudioDataOutputSampleBufferDelegate {
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        if let assetWriter = assetWriter {
            if assetWriter.status != .writing {
                assetWriter.startWriting()
                assetWriter.startSession(atSourceTime: CMSampleBufferGetPresentationTimeStamp(sampleBuffer))
            }else{
                if !self.assetWriterAudioInput.append(sampleBuffer) {//如果写入失败
                    stopRecorder()
                }
            }
        }
    }
}
