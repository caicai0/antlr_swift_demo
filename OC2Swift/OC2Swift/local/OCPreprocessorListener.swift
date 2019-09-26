//
//  OCPreprocessorListener.swift
//  OC2Swift
//
//  Created by liyufeng on 2019/9/26.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation
import Antlr4

class OCPreprocessorListener {
    var path : [String] = []
}

extension OCPreprocessorListener : ObjectiveCPreprocessorParserListener {
    func visitTerminal(_ node: TerminalNode) {
        onListener(functionName: #function)
    }
    
    func visitErrorNode(_ node: ErrorNode) {
        onListener(functionName: #function)
    }
    
    func enterEveryRule(_ ctx: ParserRuleContext) throws {
        onListener(functionName: #function)
    }
    
    func exitEveryRule(_ ctx: ParserRuleContext) throws {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorImport(_ ctx: ObjectiveCPreprocessorParser.PreprocessorImportContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorImport(_ ctx: ObjectiveCPreprocessorParser.PreprocessorImportContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorConditional(_ ctx: ObjectiveCPreprocessorParser.PreprocessorConditionalContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorConditional(_ ctx: ObjectiveCPreprocessorParser.PreprocessorConditionalContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorDef(_ ctx: ObjectiveCPreprocessorParser.PreprocessorDefContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorDef(_ ctx: ObjectiveCPreprocessorParser.PreprocessorDefContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorPragma(_ ctx: ObjectiveCPreprocessorParser.PreprocessorPragmaContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorPragma(_ ctx: ObjectiveCPreprocessorParser.PreprocessorPragmaContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorError(_ ctx: ObjectiveCPreprocessorParser.PreprocessorErrorContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorError(_ ctx: ObjectiveCPreprocessorParser.PreprocessorErrorContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorWarning(_ ctx: ObjectiveCPreprocessorParser.PreprocessorWarningContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorWarning(_ ctx: ObjectiveCPreprocessorParser.PreprocessorWarningContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorDefine(_ ctx: ObjectiveCPreprocessorParser.PreprocessorDefineContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorDefine(_ ctx: ObjectiveCPreprocessorParser.PreprocessorDefineContext) {
        onListener(functionName: #function)
    }
    
    func enterDirectiveText(_ ctx: ObjectiveCPreprocessorParser.DirectiveTextContext) {
        onListener(functionName: #function)
    }
    
    func exitDirectiveText(_ ctx: ObjectiveCPreprocessorParser.DirectiveTextContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorParenthesis(_ ctx: ObjectiveCPreprocessorParser.PreprocessorParenthesisContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorParenthesis(_ ctx: ObjectiveCPreprocessorParser.PreprocessorParenthesisContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorNot(_ ctx: ObjectiveCPreprocessorParser.PreprocessorNotContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorNot(_ ctx: ObjectiveCPreprocessorParser.PreprocessorNotContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorBinary(_ ctx: ObjectiveCPreprocessorParser.PreprocessorBinaryContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorBinary(_ ctx: ObjectiveCPreprocessorParser.PreprocessorBinaryContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorConstant(_ ctx: ObjectiveCPreprocessorParser.PreprocessorConstantContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorConstant(_ ctx: ObjectiveCPreprocessorParser.PreprocessorConstantContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorConditionalSymbol(_ ctx: ObjectiveCPreprocessorParser.PreprocessorConditionalSymbolContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorConditionalSymbol(_ ctx: ObjectiveCPreprocessorParser.PreprocessorConditionalSymbolContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessorDefined(_ ctx: ObjectiveCPreprocessorParser.PreprocessorDefinedContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessorDefined(_ ctx: ObjectiveCPreprocessorParser.PreprocessorDefinedContext) {
        onListener(functionName: #function)
    }
}

extension OCPreprocessorListener {
    func onListener(functionName : String) {
        let index = functionName.index(functionName.endIndex, offsetBy: -4)
        let functionName = String(functionName.prefix(upTo: index))
        if functionName.hasPrefix("enter") {
            let index = functionName.index(functionName.startIndex, offsetBy: 5)
            let name = String(functionName.suffix(from: index))
            enterNode(name: name)
        }else if functionName.hasPrefix("exit"){
            let index = functionName.index(functionName.startIndex, offsetBy: 4)
            let name = String(functionName.suffix(from: index))
            exitNode(name: name)
        }
    }
    
    func enterNode(name : String) {
        path.append(name)
        print(path.joined(separator: "/"))
    }
    
    func exitNode(name : String) {
        var stop = false
        while !stop && (path.count > 0) {
            if let item = path.last, item == name {
                stop = true
            }
            path.removeLast()
            print(path.joined(separator: "/"))
        }
    }
}
