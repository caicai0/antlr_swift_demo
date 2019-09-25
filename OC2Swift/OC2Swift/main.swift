//
//  main.swift
//  OC2Swift
//
//  Created by liyufeng on 2019/9/25.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation
import Antlr4

print("start")

if let fileContent = FileManager.default.contents(atPath: "/Users/liyufeng/git/caiHub/antlr_swift_demo/OC/OC/objc/demo.m") {
    if let str = String(data: fileContent, encoding: .utf8) {
        do {
            let input = ANTLRInputStream(str)
            let lexer = ObjectiveCLexer(input)
            let tokens = CommonTokenStream(lexer)
            let parser = try ObjectiveCParser(tokens)
            let tree = try parser.translationUnit()
            try ParseTreeWalker.DEFAULT.walk(OCListener(), tree)
        } catch {
            print(error)
        }
    }
}

