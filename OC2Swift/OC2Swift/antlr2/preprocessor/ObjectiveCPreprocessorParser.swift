// Generated from ObjectiveCPreprocessorParser.g4 by ANTLR 4.7.2
import Antlr4

open class ObjectiveCPreprocessorParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ObjectiveCPreprocessorParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(ObjectiveCPreprocessorParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, SHARP = 1, CODE = 2, IMPORT = 3, INCLUDE = 4, PRAGMA = 5, 
                 DEFINE = 6, DEFINED = 7, IF = 8, ELIF = 9, ELSE = 10, UNDEF = 11, 
                 IFDEF = 12, IFNDEF = 13, ENDIF = 14, TRUE = 15, FALSE = 16, 
                 ERROR = 17, BANG = 18, LPAREN = 19, RPAREN = 20, EQUAL = 21, 
                 NOTEQUAL = 22, AND = 23, OR = 24, LT = 25, GT = 26, LE = 27, 
                 GE = 28, DIRECTIVE_WHITESPACES = 29, DIRECTIVE_STRING = 30, 
                 CONDITIONAL_SYMBOL = 31, DECIMAL_LITERAL = 32, FLOAT = 33, 
                 NEW_LINE = 34, DIRECITVE_COMMENT = 35, DIRECITVE_LINE_COMMENT = 36, 
                 DIRECITVE_NEW_LINE = 37, DIRECITVE_TEXT_NEW_LINE = 38, 
                 TEXT = 39, SLASH = 40
	}

	public
	static let RULE_objectiveCDocument = 0, RULE_text = 1, RULE_code = 2, RULE_directive = 3, 
            RULE_directive_text = 4, RULE_preprocessor_expression = 5

	public
	static let ruleNames: [String] = [
		"objectiveCDocument", "text", "code", "directive", "directive_text", "preprocessor_expression"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'#'", nil, nil, nil, "'pragma'", nil, "'defined'", "'if'", "'elif'", 
		"'else'", "'undef'", "'ifdef'", "'ifndef'", "'endif'", nil, nil, "'error'", 
		"'!'", "'('", "')'", "'=='", "'!='", "'&&'", "'||'", "'<'", "'>'", "'<='", 
		"'>='"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "SHARP", "CODE", "IMPORT", "INCLUDE", "PRAGMA", "DEFINE", "DEFINED", 
		"IF", "ELIF", "ELSE", "UNDEF", "IFDEF", "IFNDEF", "ENDIF", "TRUE", "FALSE", 
		"ERROR", "BANG", "LPAREN", "RPAREN", "EQUAL", "NOTEQUAL", "AND", "OR", 
		"LT", "GT", "LE", "GE", "DIRECTIVE_WHITESPACES", "DIRECTIVE_STRING", "CONDITIONAL_SYMBOL", 
		"DECIMAL_LITERAL", "FLOAT", "NEW_LINE", "DIRECITVE_COMMENT", "DIRECITVE_LINE_COMMENT", 
		"DIRECITVE_NEW_LINE", "DIRECITVE_TEXT_NEW_LINE", "TEXT", "SLASH"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "ObjectiveCPreprocessorParser.g4" }

	override open
	func getRuleNames() -> [String] { return ObjectiveCPreprocessorParser.ruleNames }

	override open
	func getSerializedATN() -> String { return ObjectiveCPreprocessorParser._serializedATN }

	override open
	func getATN() -> ATN { return ObjectiveCPreprocessorParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return ObjectiveCPreprocessorParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,ObjectiveCPreprocessorParser._ATN,ObjectiveCPreprocessorParser._decisionToDFA, ObjectiveCPreprocessorParser._sharedContextCache)
	}


	public class ObjectiveCDocumentContext: ParserRuleContext {
			open
			func EOF() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.EOF.rawValue, 0)
			}
			open
			func text() -> [TextContext] {
				return getRuleContexts(TextContext.self)
			}
			open
			func text(_ i: Int) -> TextContext? {
				return getRuleContext(TextContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjectiveCPreprocessorParser.RULE_objectiveCDocument
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterObjectiveCDocument(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitObjectiveCDocument(self)
			}
		}
	}
	@discardableResult
	 open func objectiveCDocument() throws -> ObjectiveCDocumentContext {
		var _localctx: ObjectiveCDocumentContext = ObjectiveCDocumentContext(_ctx, getState())
		try enterRule(_localctx, 0, ObjectiveCPreprocessorParser.RULE_objectiveCDocument)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(15)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjectiveCPreprocessorParser.Tokens.SHARP.rawValue || _la == ObjectiveCPreprocessorParser.Tokens.CODE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(12)
		 		try text()


		 		setState(17)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(18)
		 	try match(ObjectiveCPreprocessorParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TextContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return ObjectiveCPreprocessorParser.RULE_text
		}
	 
		open
		func copyFrom(_ ctx: TextContext) {
			super.copyFrom(ctx)
		}
	}
	public class PreprocessorDirectiveContext: TextContext {
			open
			func SHARP() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.SHARP.rawValue, 0)
			}
			open
			func directive() -> DirectiveContext? {
				return getRuleContext(DirectiveContext.self, 0)
			}
			open
			func NEW_LINE() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.NEW_LINE.rawValue, 0)
			}
			open
			func EOF() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.EOF.rawValue, 0)
			}

		public
		init(_ ctx: TextContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorDirective(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorDirective(self)
			}
		}
	}
	public class PreprocessorCodeContext: TextContext {
			open
			func code() -> CodeContext? {
				return getRuleContext(CodeContext.self, 0)
			}

		public
		init(_ ctx: TextContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorCode(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorCode(self)
			}
		}
	}
	@discardableResult
	 open func text() throws -> TextContext {
		var _localctx: TextContext = TextContext(_ctx, getState())
		try enterRule(_localctx, 2, ObjectiveCPreprocessorParser.RULE_text)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(25)
		 	try _errHandler.sync(self)
		 	switch (ObjectiveCPreprocessorParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CODE:
		 		_localctx =  PreprocessorCodeContext(_localctx);
		 		try enterOuterAlt(_localctx, 1)
		 		setState(20)
		 		try code()

		 		break

		 	case .SHARP:
		 		_localctx =  PreprocessorDirectiveContext(_localctx);
		 		try enterOuterAlt(_localctx, 2)
		 		setState(21)
		 		try match(ObjectiveCPreprocessorParser.Tokens.SHARP.rawValue)
		 		setState(22)
		 		try directive()
		 		setState(23)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjectiveCPreprocessorParser.Tokens.EOF.rawValue || _la == ObjectiveCPreprocessorParser.Tokens.NEW_LINE.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CodeContext: ParserRuleContext {
			open
			func CODE() -> [TerminalNode] {
				return getTokens(ObjectiveCPreprocessorParser.Tokens.CODE.rawValue)
			}
			open
			func CODE(_ i:Int) -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.CODE.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjectiveCPreprocessorParser.RULE_code
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterCode(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitCode(self)
			}
		}
	}
	@discardableResult
	 open func code() throws -> CodeContext {
		var _localctx: CodeContext = CodeContext(_ctx, getState())
		try enterRule(_localctx, 4, ObjectiveCPreprocessorParser.RULE_code)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(28); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(27)
		 			try match(ObjectiveCPreprocessorParser.Tokens.CODE.rawValue)


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(30); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,2,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DirectiveContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return ObjectiveCPreprocessorParser.RULE_directive
		}
	 
		open
		func copyFrom(_ ctx: DirectiveContext) {
			super.copyFrom(ctx)
		}
	}
	public class PreprocessorDefContext: DirectiveContext {
			open
			func IFDEF() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.IFDEF.rawValue, 0)
			}
			open
			func CONDITIONAL_SYMBOL() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue, 0)
			}
			open
			func IFNDEF() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.IFNDEF.rawValue, 0)
			}
			open
			func UNDEF() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.UNDEF.rawValue, 0)
			}

		public
		init(_ ctx: DirectiveContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorDef(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorDef(self)
			}
		}
	}
	public class PreprocessorErrorContext: DirectiveContext {
			open
			func ERROR() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.ERROR.rawValue, 0)
			}
			open
			func directive_text() -> Directive_textContext? {
				return getRuleContext(Directive_textContext.self, 0)
			}

		public
		init(_ ctx: DirectiveContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorError(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorError(self)
			}
		}
	}
	public class PreprocessorConditionalContext: DirectiveContext {
			open
			func IF() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.IF.rawValue, 0)
			}
			open
			func preprocessor_expression() -> Preprocessor_expressionContext? {
				return getRuleContext(Preprocessor_expressionContext.self, 0)
			}
			open
			func ELIF() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.ELIF.rawValue, 0)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.ELSE.rawValue, 0)
			}
			open
			func ENDIF() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.ENDIF.rawValue, 0)
			}

		public
		init(_ ctx: DirectiveContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorConditional(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorConditional(self)
			}
		}
	}
	public class PreprocessorImportContext: DirectiveContext {
			open
			func directive_text() -> Directive_textContext? {
				return getRuleContext(Directive_textContext.self, 0)
			}
			open
			func IMPORT() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.IMPORT.rawValue, 0)
			}
			open
			func INCLUDE() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.INCLUDE.rawValue, 0)
			}

		public
		init(_ ctx: DirectiveContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorImport(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorImport(self)
			}
		}
	}
	public class PreprocessorPragmaContext: DirectiveContext {
			open
			func PRAGMA() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.PRAGMA.rawValue, 0)
			}
			open
			func directive_text() -> Directive_textContext? {
				return getRuleContext(Directive_textContext.self, 0)
			}

		public
		init(_ ctx: DirectiveContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorPragma(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorPragma(self)
			}
		}
	}
	public class PreprocessorDefineContext: DirectiveContext {
			open
			func DEFINE() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.DEFINE.rawValue, 0)
			}
			open
			func CONDITIONAL_SYMBOL() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue, 0)
			}
			open
			func directive_text() -> Directive_textContext? {
				return getRuleContext(Directive_textContext.self, 0)
			}

		public
		init(_ ctx: DirectiveContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorDefine(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorDefine(self)
			}
		}
	}
	@discardableResult
	 open func directive() throws -> DirectiveContext {
		var _localctx: DirectiveContext = DirectiveContext(_ctx, getState())
		try enterRule(_localctx, 6, ObjectiveCPreprocessorParser.RULE_directive)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(55)
		 	try _errHandler.sync(self)
		 	switch (ObjectiveCPreprocessorParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IMPORT:fallthrough
		 	case .INCLUDE:
		 		_localctx =  PreprocessorImportContext(_localctx);
		 		try enterOuterAlt(_localctx, 1)
		 		setState(32)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjectiveCPreprocessorParser.Tokens.IMPORT.rawValue || _la == ObjectiveCPreprocessorParser.Tokens.INCLUDE.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(33)
		 		try directive_text()

		 		break

		 	case .IF:
		 		_localctx =  PreprocessorConditionalContext(_localctx);
		 		try enterOuterAlt(_localctx, 2)
		 		setState(34)
		 		try match(ObjectiveCPreprocessorParser.Tokens.IF.rawValue)
		 		setState(35)
		 		try preprocessor_expression(0)

		 		break

		 	case .ELIF:
		 		_localctx =  PreprocessorConditionalContext(_localctx);
		 		try enterOuterAlt(_localctx, 3)
		 		setState(36)
		 		try match(ObjectiveCPreprocessorParser.Tokens.ELIF.rawValue)
		 		setState(37)
		 		try preprocessor_expression(0)

		 		break

		 	case .ELSE:
		 		_localctx =  PreprocessorConditionalContext(_localctx);
		 		try enterOuterAlt(_localctx, 4)
		 		setState(38)
		 		try match(ObjectiveCPreprocessorParser.Tokens.ELSE.rawValue)

		 		break

		 	case .ENDIF:
		 		_localctx =  PreprocessorConditionalContext(_localctx);
		 		try enterOuterAlt(_localctx, 5)
		 		setState(39)
		 		try match(ObjectiveCPreprocessorParser.Tokens.ENDIF.rawValue)

		 		break

		 	case .IFDEF:
		 		_localctx =  PreprocessorDefContext(_localctx);
		 		try enterOuterAlt(_localctx, 6)
		 		setState(40)
		 		try match(ObjectiveCPreprocessorParser.Tokens.IFDEF.rawValue)
		 		setState(41)
		 		try match(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue)

		 		break

		 	case .IFNDEF:
		 		_localctx =  PreprocessorDefContext(_localctx);
		 		try enterOuterAlt(_localctx, 7)
		 		setState(42)
		 		try match(ObjectiveCPreprocessorParser.Tokens.IFNDEF.rawValue)
		 		setState(43)
		 		try match(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue)

		 		break

		 	case .UNDEF:
		 		_localctx =  PreprocessorDefContext(_localctx);
		 		try enterOuterAlt(_localctx, 8)
		 		setState(44)
		 		try match(ObjectiveCPreprocessorParser.Tokens.UNDEF.rawValue)
		 		setState(45)
		 		try match(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue)

		 		break

		 	case .PRAGMA:
		 		_localctx =  PreprocessorPragmaContext(_localctx);
		 		try enterOuterAlt(_localctx, 9)
		 		setState(46)
		 		try match(ObjectiveCPreprocessorParser.Tokens.PRAGMA.rawValue)
		 		setState(47)
		 		try directive_text()

		 		break

		 	case .ERROR:
		 		_localctx =  PreprocessorErrorContext(_localctx);
		 		try enterOuterAlt(_localctx, 10)
		 		setState(48)
		 		try match(ObjectiveCPreprocessorParser.Tokens.ERROR.rawValue)
		 		setState(49)
		 		try directive_text()

		 		break

		 	case .DEFINE:
		 		_localctx =  PreprocessorDefineContext(_localctx);
		 		try enterOuterAlt(_localctx, 11)
		 		setState(50)
		 		try match(ObjectiveCPreprocessorParser.Tokens.DEFINE.rawValue)
		 		setState(51)
		 		try match(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue)
		 		setState(53)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjectiveCPreprocessorParser.Tokens.TEXT.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(52)
		 			try directive_text()

		 		}


		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Directive_textContext: ParserRuleContext {
			open
			func TEXT() -> [TerminalNode] {
				return getTokens(ObjectiveCPreprocessorParser.Tokens.TEXT.rawValue)
			}
			open
			func TEXT(_ i:Int) -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.TEXT.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjectiveCPreprocessorParser.RULE_directive_text
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterDirective_text(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitDirective_text(self)
			}
		}
	}
	@discardableResult
	 open func directive_text() throws -> Directive_textContext {
		var _localctx: Directive_textContext = Directive_textContext(_ctx, getState())
		try enterRule(_localctx, 8, ObjectiveCPreprocessorParser.RULE_directive_text)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(58) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(57)
		 		try match(ObjectiveCPreprocessorParser.Tokens.TEXT.rawValue)


		 		setState(60); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjectiveCPreprocessorParser.Tokens.TEXT.rawValue
		 	      return testSet
		 	 }())

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class Preprocessor_expressionContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return ObjectiveCPreprocessorParser.RULE_preprocessor_expression
		}
	 
		open
		func copyFrom(_ ctx: Preprocessor_expressionContext) {
			super.copyFrom(ctx)
		}
	}
	public class PreprocessorParenthesisContext: Preprocessor_expressionContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func preprocessor_expression() -> Preprocessor_expressionContext? {
				return getRuleContext(Preprocessor_expressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.RPAREN.rawValue, 0)
			}

		public
		init(_ ctx: Preprocessor_expressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorParenthesis(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorParenthesis(self)
			}
		}
	}
	public class PreprocessorNotContext: Preprocessor_expressionContext {
			open
			func BANG() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.BANG.rawValue, 0)
			}
			open
			func preprocessor_expression() -> Preprocessor_expressionContext? {
				return getRuleContext(Preprocessor_expressionContext.self, 0)
			}

		public
		init(_ ctx: Preprocessor_expressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorNot(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorNot(self)
			}
		}
	}
	public class PreprocessorBinaryContext: Preprocessor_expressionContext {
		public var op: Token!
			open
			func preprocessor_expression() -> [Preprocessor_expressionContext] {
				return getRuleContexts(Preprocessor_expressionContext.self)
			}
			open
			func preprocessor_expression(_ i: Int) -> Preprocessor_expressionContext? {
				return getRuleContext(Preprocessor_expressionContext.self, i)
			}
			open
			func EQUAL() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.EQUAL.rawValue, 0)
			}
			open
			func NOTEQUAL() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.NOTEQUAL.rawValue, 0)
			}
			open
			func AND() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.AND.rawValue, 0)
			}
			open
			func OR() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.OR.rawValue, 0)
			}
			open
			func LT() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.LT.rawValue, 0)
			}
			open
			func GT() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.GT.rawValue, 0)
			}
			open
			func LE() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.LE.rawValue, 0)
			}
			open
			func GE() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.GE.rawValue, 0)
			}

		public
		init(_ ctx: Preprocessor_expressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorBinary(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorBinary(self)
			}
		}
	}
	public class PreprocessorConstantContext: Preprocessor_expressionContext {
			open
			func TRUE() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.TRUE.rawValue, 0)
			}
			open
			func FALSE() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.FALSE.rawValue, 0)
			}
			open
			func DECIMAL_LITERAL() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.DECIMAL_LITERAL.rawValue, 0)
			}
			open
			func DIRECTIVE_STRING() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.DIRECTIVE_STRING.rawValue, 0)
			}

		public
		init(_ ctx: Preprocessor_expressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorConstant(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorConstant(self)
			}
		}
	}
	public class PreprocessorConditionalSymbolContext: Preprocessor_expressionContext {
			open
			func CONDITIONAL_SYMBOL() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func preprocessor_expression() -> Preprocessor_expressionContext? {
				return getRuleContext(Preprocessor_expressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.RPAREN.rawValue, 0)
			}

		public
		init(_ ctx: Preprocessor_expressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorConditionalSymbol(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorConditionalSymbol(self)
			}
		}
	}
	public class PreprocessorDefinedContext: Preprocessor_expressionContext {
			open
			func DEFINED() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.DEFINED.rawValue, 0)
			}
			open
			func CONDITIONAL_SYMBOL() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjectiveCPreprocessorParser.Tokens.RPAREN.rawValue, 0)
			}

		public
		init(_ ctx: Preprocessor_expressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.enterPreprocessorDefined(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjectiveCPreprocessorParserListener {
				listener.exitPreprocessorDefined(self)
			}
		}
	}

	 public final  func preprocessor_expression( ) throws -> Preprocessor_expressionContext   {
		return try preprocessor_expression(0)
	}
	@discardableResult
	private func preprocessor_expression(_ _p: Int) throws -> Preprocessor_expressionContext   {
		let _parentctx: ParserRuleContext? = _ctx
		var _parentState: Int = getState()
		var _localctx: Preprocessor_expressionContext = Preprocessor_expressionContext(_ctx, _parentState)
		var  _prevctx: Preprocessor_expressionContext = _localctx
		var _startState: Int = 10
		try enterRecursionRule(_localctx, 10, ObjectiveCPreprocessorParser.RULE_preprocessor_expression, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(87)
			try _errHandler.sync(self)
			switch (ObjectiveCPreprocessorParser.Tokens(rawValue: try _input.LA(1))!) {
			case .TRUE:
				_localctx = PreprocessorConstantContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(63)
				try match(ObjectiveCPreprocessorParser.Tokens.TRUE.rawValue)

				break

			case .FALSE:
				_localctx = PreprocessorConstantContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(64)
				try match(ObjectiveCPreprocessorParser.Tokens.FALSE.rawValue)

				break

			case .DECIMAL_LITERAL:
				_localctx = PreprocessorConstantContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(65)
				try match(ObjectiveCPreprocessorParser.Tokens.DECIMAL_LITERAL.rawValue)

				break

			case .DIRECTIVE_STRING:
				_localctx = PreprocessorConstantContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(66)
				try match(ObjectiveCPreprocessorParser.Tokens.DIRECTIVE_STRING.rawValue)

				break

			case .CONDITIONAL_SYMBOL:
				_localctx = PreprocessorConditionalSymbolContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(67)
				try match(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue)
				setState(72)
				try _errHandler.sync(self)
				switch (try getInterpreter().adaptivePredict(_input,6,_ctx)) {
				case 1:
					setState(68)
					try match(ObjectiveCPreprocessorParser.Tokens.LPAREN.rawValue)
					setState(69)
					try preprocessor_expression(0)
					setState(70)
					try match(ObjectiveCPreprocessorParser.Tokens.RPAREN.rawValue)

					break
				default: break
				}

				break

			case .LPAREN:
				_localctx = PreprocessorParenthesisContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(74)
				try match(ObjectiveCPreprocessorParser.Tokens.LPAREN.rawValue)
				setState(75)
				try preprocessor_expression(0)
				setState(76)
				try match(ObjectiveCPreprocessorParser.Tokens.RPAREN.rawValue)

				break

			case .BANG:
				_localctx = PreprocessorNotContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(78)
				try match(ObjectiveCPreprocessorParser.Tokens.BANG.rawValue)
				setState(79)
				try preprocessor_expression(6)

				break

			case .DEFINED:
				_localctx = PreprocessorDefinedContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(80)
				try match(ObjectiveCPreprocessorParser.Tokens.DEFINED.rawValue)
				setState(85)
				try _errHandler.sync(self)
				switch (ObjectiveCPreprocessorParser.Tokens(rawValue: try _input.LA(1))!) {
				case .CONDITIONAL_SYMBOL:
					setState(81)
					try match(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue)

					break

				case .LPAREN:
					setState(82)
					try match(ObjectiveCPreprocessorParser.Tokens.LPAREN.rawValue)
					setState(83)
					try match(ObjectiveCPreprocessorParser.Tokens.CONDITIONAL_SYMBOL.rawValue)
					setState(84)
					try match(ObjectiveCPreprocessorParser.Tokens.RPAREN.rawValue)

					break
				default:
					throw ANTLRException.recognition(e: NoViableAltException(self))
				}

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
			_ctx!.stop = try _input.LT(-1)
			setState(103)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,10,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(101)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,9, _ctx)) {
					case 1:
						_localctx = PreprocessorBinaryContext(  Preprocessor_expressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ObjectiveCPreprocessorParser.RULE_preprocessor_expression)
						setState(89)
						if (!(precpred(_ctx, 5))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 5)"))
						}
						setState(90)
						_localctx.castdown(PreprocessorBinaryContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == ObjectiveCPreprocessorParser.Tokens.EQUAL.rawValue || _la == ObjectiveCPreprocessorParser.Tokens.NOTEQUAL.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(PreprocessorBinaryContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(91)
						try preprocessor_expression(6)

						break
					case 2:
						_localctx = PreprocessorBinaryContext(  Preprocessor_expressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ObjectiveCPreprocessorParser.RULE_preprocessor_expression)
						setState(92)
						if (!(precpred(_ctx, 4))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 4)"))
						}
						setState(93)
						try {
								let assignmentValue = try match(ObjectiveCPreprocessorParser.Tokens.AND.rawValue)
								_localctx.castdown(PreprocessorBinaryContext.self).op = assignmentValue
						     }()

						setState(94)
						try preprocessor_expression(5)

						break
					case 3:
						_localctx = PreprocessorBinaryContext(  Preprocessor_expressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ObjectiveCPreprocessorParser.RULE_preprocessor_expression)
						setState(95)
						if (!(precpred(_ctx, 3))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 3)"))
						}
						setState(96)
						try {
								let assignmentValue = try match(ObjectiveCPreprocessorParser.Tokens.OR.rawValue)
								_localctx.castdown(PreprocessorBinaryContext.self).op = assignmentValue
						     }()

						setState(97)
						try preprocessor_expression(4)

						break
					case 4:
						_localctx = PreprocessorBinaryContext(  Preprocessor_expressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ObjectiveCPreprocessorParser.RULE_preprocessor_expression)
						setState(98)
						if (!(precpred(_ctx, 2))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
						}
						setState(99)
						_localctx.castdown(PreprocessorBinaryContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = {  () -> Bool in
						   let testArray: [Int] = [_la, ObjectiveCPreprocessorParser.Tokens.LT.rawValue,ObjectiveCPreprocessorParser.Tokens.GT.rawValue,ObjectiveCPreprocessorParser.Tokens.LE.rawValue,ObjectiveCPreprocessorParser.Tokens.GE.rawValue]
						    return  Utils.testBitLeftShiftArray(testArray, 0)
						}()
						      return testSet
						 }())) {
							_localctx.castdown(PreprocessorBinaryContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(100)
						try preprocessor_expression(3)

						break
					default: break
					}
			 
				}
				setState(105)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,10,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  5:
			return try preprocessor_expression_sempred(_localctx?.castdown(Preprocessor_expressionContext.self), predIndex)
	    default: return true
		}
	}
	private func preprocessor_expression_sempred(_ _localctx: Preprocessor_expressionContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 5)
		    case 1:return precpred(_ctx, 4)
		    case 2:return precpred(_ctx, 3)
		    case 3:return precpred(_ctx, 2)
		    default: return true
		}
	}


	public
	static let _serializedATN = ObjectiveCPreprocessorParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}