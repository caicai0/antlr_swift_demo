//
//  CAIProbe.swift
//  CAIProbe
//
//  Created by liyufeng on 2019/10/28.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation

protocol ProbeCollect {
    func on(vent: Event)
}

class Probe: NSObject {
    static let share = Probe()
    var onceTime = 1.0
    var plan = Plan()
    var delegate : ProbeCollect? = nil
    
    func addPlanJson(json: String) {
        do{
            let data = json.data(using: .utf8)
            let plan = try JSONDecoder().decode(Plan.self, from: data!)
            self.plan = plan
            analysisAllEvents()
        }catch{
            print(error)
        }
    }
    
    func analysisAllEvents() {
        AopManager.share.delegate = self
        AopManager.share.removeAllTokens()
        
        for event in self.plan.events {
            if event.type == 0 {
                //一次性统计
            }else if event.type == 1 || event.type == 2 {
                AopManager.share.addAop(cls: event.classPath, sel: event.selector, userInfo: event)
            }
        }
    }
}

extension Probe: AopManangerDelegate {
    func afterInvocation(info: AspectInfo, userInfo: Any) {
        if let event = userInfo as? Event
//            ,let delegate = delegate
        {
            event.handle(info: info)
            delegate?.on(vent: event)
        }
    }
}
