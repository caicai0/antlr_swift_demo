//
//  CAIProbe.swift
//  CAIProbe
//
//  Created by liyufeng on 2019/10/28.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation

protocol ProbeCollect {
    func on(info : AspectInfo,plan: Plan)
}

//探针
class Probe: NSObject {
    static let share = Probe()
    var onceTime = 1.0
    var plans = [Plan]()
    var tokens = [AspectToken]()
    var delegate : ProbeCollect? = nil
    
    func serializeJson(json: String) -> [Dictionary<String, Any>]? {
        do{
            let data = json.data(using: .utf8)
            let plans = try JSONDecoder().decode([Plan].self, from: data!)
            self.plans.append(contentsOf: plans)
        }catch{
            
        }
        return nil
    }
    
    func analysisAllPlans() {
        AopManager.share.delegate = self
        AopManager.share.removeAllTokens()
        
        for plan in self.plans {
            if plan.type == 0 {
                //一次性统计
            }else if plan.type == 1 || plan.type == 2 {
                AopManager.share.addAop(cls: plan.classPath, sel: plan.selector, userInfo: plan)
            }
        }
    }
}

extension Probe: AopManangerDelegate {
    func afterInvocation(info: AspectInfo, userInfo: Any) {
        if let plan = userInfo as? Plan {
            
        }
    }
}
