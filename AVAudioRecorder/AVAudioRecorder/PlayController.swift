//
//  PlayController.swift
//  AVAudioRecorder
//
//  Created by liyufeng on 2019/9/26.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class PlayController : UIViewController {
    let playButton = UIButton(type: .system)
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(.playback)
            try session.setActive(true, options: .notifyOthersOnDeactivation)
        } catch {
            print(error)
        }
    }
    
    func initUI() {
        view.backgroundColor = UIColor.white
        view.addSubview(playButton)
        playButton.setTitle("播放", for: .normal)
        playButton.addTarget(self, action: #selector(play), for: .touchUpInside)
        playButton.frame = CGRect(x: 0, y: 100, width: view.bounds.size.width, height: 40)
    }
    
    @objc func play() {
        let path = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).last ?? ""
        let filePath = path + "/1.caf"
        let url = URL(fileURLWithPath: filePath)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        }catch{
            print(error)
        }
    }
}
