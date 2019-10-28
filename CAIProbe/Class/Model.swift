//
//  Plan.swift
//  CAIProbe
//
//  Created by liyufeng on 2019/10/28.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation

class Plan: NSObject,Codable {
    var type = 0
    var version = ""
    var id = ""
    var classPath = ""
    var selector = ""
    var keyPaths = [KeyPath]()
}

class KeyPath: NSObject,Codable {
    var type = 0
    var version = ""
    var id = ""
    var keyPath = ""
}

class ProbeLog: NSObject {
    var plan : Plan
    var res : [String:Any]
    
    init(plan: Plan, res: [String:Any]) {
        self.plan = plan
        self.res = res
        super.init()
    }
}
