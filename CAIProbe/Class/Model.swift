//
//  event.swift
//  CAIProbe
//
//  Created by liyufeng on 2019/10/28.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation

class ProbeModel: NSObject {
    var userInfo : [String:AnyObject]? = nil
}

class Plan: ProbeModel,Codable {
    var version = ""
    var onceEventDelayTime = 0.0 //单次事件触发延迟事件
    var apiTimeSpace = 0.0 //接口调用时间间隔
    var events = [Event]()
}

class Event: ProbeModel,Codable {
    var type = 0
    var version = ""
    var id = ""
    var classPath = ""
    var selector = ""
    var keyPaths = [KeyPath]()
    
    func handle(info: AspectInfo){
        for keyPath in keyPaths {
            keyPath.handle(info: info)
        }
    }
}

class KeyPath: ProbeModel,Codable {
    var type = 0
    var version = ""
    var id = ""
    var keyPath = ""
    var value : String? = nil
    
    func handle(info: AspectInfo) {
        
    }
}

class ProbeLog: ProbeModel {
    var event : Event
    var res : [String:Any]?
    
    init(event: Event, res: [String:Any]?) {
        self.event = event
        self.res = res
        super.init()
    }
}
