//
//  ViewController.swift
//  AF_demo
//
//  Created by liyufeng on 2019/10/8.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let mng = ARManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type: .system)
        view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 45)
        button.backgroundColor = UIColor.blue
        button.addTarget(self, action: #selector(click(btn:)), for: .touchUpInside)
    }
    
    @objc func click(btn : UIButton){
        if !btn.isSelected {
            mng.prepareForRecord()
            mng.startRecord()
        }else{
            mng.stopRecorder()
        }
        btn.isSelected = !btn.isSelected
    }
}

