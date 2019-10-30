//
//  AopManager.swift
//  CAIProbe
//
//  Created by liyufeng on 2019/10/28.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation

protocol AopManangerDelegate {
    func afterInvocation(info: CAIProbeAspectInfo,userInfo: Any)
}

class AopManager {
    static let share = AopManager()
    var tokens = [CAIProbeAspectToken]()
    var delegate: AopManangerDelegate? = nil
    
    func removeAllTokens() {
        for token in tokens {
            token.remove()
        }
        tokens.removeAll()
    }
    
    func addAop(cls: String,sel: String, userInfo: Any) {
        if let aclass = NSClassFromString(cls){
            let selector = NSSelectorFromString(sel)
            do{
                let block: @convention(block) (AnyObject) -> Void = {
                    info in
                    if let CAIProbeAspectInfo = info as? CAIProbeAspectInfo {
                        DispatchQueue.global().async {
                            self.afterInvocation(info: CAIProbeAspectInfo, userInfo: userInfo)
                        }
                    }
                }
                let token = try aclass.caiProbeAspect_hook(selector, with: [], usingBlock:block)
                self.tokens.append(token)
            }catch{
                print(error)
            }
        }
    }
    
    func afterInvocation(info: CAIProbeAspectInfo, userInfo: Any) {
        if let delegate = delegate {
            delegate.afterInvocation(info: info, userInfo: userInfo)
        }
    }
}
