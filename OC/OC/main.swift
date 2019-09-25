//
//  main.swift
//  OC
//
//  Created by liyufeng on 2019/9/20.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation
import Antlr4

print("start")

if let fileContent = FileManager.default.contents(atPath: "/Users/liyufeng/git/caiHub/antlr_swift_demo/OC/OC/objc/demo.m") {
    if let str = String(data: fileContent, encoding: .utf8) {
        do {
            let input = ANTLRInputStream(str)
            let lexer = ObjCLexer(input)
            let tokens = CommonTokenStream(lexer)
            let parser = try ObjCParser(tokens)
            let tree = try parser.translation_unit()
            try ParseTreeWalker.DEFAULT.walk(OCListener(), tree)
        } catch {
            print(error)
        }
    }
}
