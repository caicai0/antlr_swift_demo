//
//  ViewController.swift
//  AVAudioRecorder
//
//  Created by liyufeng on 2019/9/26.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import UIKit
import AVFoundation

enum RecorderStatus {
    case none
    case record
    case pause
    case finish
}

class ViewController: UIViewController {
    let recorderButton = UIButton(type: .system)
    let finishButton = UIButton(type: .system)
    let deleteButton = UIButton(type: .system)
    var status : RecorderStatus = .none {
        didSet {
            updateUI()
        }
    }
    var audioRecorder : AVAudioRecorder? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        prepareRecorder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(.record)
            try session.setActive(true, options: .notifyOthersOnDeactivation)
        } catch {
            print(error)
        }
    }
    
    func initUI() {
        view.addSubview(recorderButton);
        recorderButton.frame = CGRect(x: 100, y: 100, width: 100, height: 40)
        recorderButton.setTitle("录音", for: .normal)
        recorderButton.addTarget(self, action: #selector(start), for: .touchUpInside)
        
        view.addSubview(finishButton);
        finishButton.frame = CGRect(x: 100, y: recorderButton.frame.origin.y+recorderButton.frame.size.height + 20, width: 100, height: 40)
        finishButton.setTitle("完成", for: .normal)
        finishButton.addTarget(self, action: #selector(stop), for: .touchUpInside)
        
        view.addSubview(deleteButton);
        deleteButton.frame = CGRect(x: 100, y: finishButton.frame.origin.y+finishButton.frame.size.height + 20, width: 100, height: 40)
        deleteButton.setTitle("删除", for: .normal)
        deleteButton.addTarget(self, action: #selector(del), for: .touchUpInside)
    }
    
    func updateUI() {
        if status == .none {
            recorderButton.setTitle("录音", for: .normal)
            finishButton.setTitle("列表", for: .normal)
            deleteButton.setTitle("删除", for: .normal)
            deleteButton.isEnabled = false
        }else if status == .record {
            recorderButton.setTitle("暂停", for: .normal)
            finishButton.setTitle("完成", for: .normal)
            deleteButton.setTitle("删除", for: .normal)
            deleteButton.isEnabled = false
        }else if status == .pause {
            recorderButton.setTitle("录音", for: .normal)
            finishButton.setTitle("完成", for: .normal)
            deleteButton.setTitle("删除", for: .normal)
            deleteButton.isEnabled = false
        }else if status == .finish {
            recorderButton.setTitle("录音", for: .normal)
            finishButton.setTitle("列表", for: .normal)
            deleteButton.setTitle("删除", for: .normal)
            deleteButton.isEnabled = true
        }
    }

    @objc func start() {
        //配置单例
        if let audioRecorder = audioRecorder {
            if !audioRecorder.isRecording {
                if audioRecorder.record() {
                    recorderButton.setTitle("暂停", for: .normal)
                    status = .record
                }
            }else{
                audioRecorder.pause()
                recorderButton.setTitle("录音", for: .normal)
                status = .pause
            }
        }
    }
    
    @objc func stop() {
        if let audioRecorder = audioRecorder {
            if status == .record || status == .pause {
                if audioRecorder.isRecording {
                    audioRecorder.stop()
                    status = .finish
                }
            }else{
                let controller = PlayController()
                navigationController?.pushViewController(controller, animated: true)
            }
        }
    }
    
    @objc func del() {
        if let audioRecorder = audioRecorder {
            if audioRecorder.isRecording {
                audioRecorder.stop()
                status = .finish
            }
            if audioRecorder.deleteRecording() {
                status = .none
            }
        }
    }
    
    func prepareRecorder() {
        var audioSetting : [String:Any]  = [:]
        audioSetting[AVSampleRateKey] = 44100
        audioSetting[AVNumberOfChannelsKey] = 2
        audioSetting[AVFormatIDKey] = kAudioFormatLinearPCM
        
        let path = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).last ?? ""
        let filePath = path + "/1.caf"
        if FileManager.default.fileExists(atPath: filePath) {
            do {
                try FileManager.default.removeItem(atPath: filePath)
            }catch{
                print(error)
            }
        }
        let url = URL(fileURLWithPath: filePath)
        if let audioRecorder = audioRecorder , audioRecorder.isRecording{
            audioRecorder.stop()
        }
        do{
            audioRecorder = try AVAudioRecorder(url: url, settings: audioSetting)
            if let audioRecorder = audioRecorder {
                audioRecorder.delegate = self
                audioRecorder.isMeteringEnabled = true
                if audioRecorder.prepareToRecord() {
                    print("准备好了")
                }
            }
        } catch {
            print(error)
        }
    }
}

extension ViewController : AVAudioRecorderDelegate {
    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error: Error?) {
        print(recorder,error ?? "")
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        print(recorder,flag)
    }
}

