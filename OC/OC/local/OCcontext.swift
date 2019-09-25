//
//  OCcontext.swift
//  OC
//
//  Created by liyufeng on 2019/9/23.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation

class OCProperty {
    open var name = ""
    open var type = ""
    open var options : [String] = []
}

class OCClassFunction {
    open var name = ""
}

class OCFunction {
    open var name = ""
}

class OCClass {
    open var name = ""
    open var superName = ""
//    open var instanceVariables = []
    open var properties : [OCProperty] = []
    open var classFunctions : [OCClassFunction] = []
    open var functions : [OCFunction] = []
}

class OCClassExtention {
    open var name = ""
}
