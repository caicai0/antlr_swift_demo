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
        //清除原来的
        for token in tokens {
            token.remove()
        }
        self.tokens.removeAll()
        
        for plan in self.plans {
            if plan.type == 0 {
                //一次性统计
            }else if plan.type == 1 || plan.type == 2 {
                if let aclass = NSClassFromString(plan.classPath){
                    let selector = NSSelectorFromString(plan.selector)
                    do{
                        let token = try aclass.aspect_hook(selector, with: [], usingBlock: { (info: AspectInfo) in
                            DispatchQueue.global().async {
                                self.onHook(info: info, plan: plan)
                            }
                        })
                        self.tokens.append(token)
                    }catch{
                        print(error)
                    }
                }
            }
        }
    }
    
    func onHook(info: AspectInfo, plan: Plan) {
        if plan.type == 0 {
            
        }else if plan.type == 1 {
            
        }else if plan.type == 2 {
            
        }
    }
}
