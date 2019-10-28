//
//  AopManager.swift
//  CAIProbe
//
//  Created by liyufeng on 2019/10/28.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation

protocol AopManangerDelegate {
    func afterInvok(info: AspectInfo,userInfo: Any)
}

class AopManager {
    var tokens = [AspectToken]()
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
                let token = try aclass.aspect_hook(selector, with: [], usingBlock: { (info: AspectInfo) in
                    DispatchQueue.global().async {
                        self.afterInvok(info: info, userInfo: userInfo)
                    }
                })
                self.tokens.append(token)
            }catch{
                print(error)
            }
        }
    }
    
    func addAop(cls: String,csel: String, userInfo: Any) {
        if let aclass = NSClassFromString(cls){
            let selector = NSSelectorFromString(csel)
            do{
                let token = try aclass.aspect_hook(selector, with: [], usingBlock: { (info: AspectInfo) in
                    DispatchQueue.global().async {
                        self.afterInvok(info: info, userInfo: userInfo)
                    }
                })
                self.tokens.append(token)
            }catch{
                print(error)
            }
        }
    }
    
    func afterInvok(info: AspectInfo, userInfo: Any) {
        if let delegate = delegate {
            delegate.afterInvok(info: info, userInfo: userInfo)
        }
    }
}
