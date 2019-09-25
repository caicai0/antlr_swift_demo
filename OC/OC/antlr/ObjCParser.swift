// Generated from ObjC.g4 by ANTLR 4.7.2
import Antlr4

open class ObjCParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ObjCParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(ObjCParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, AUTORELEASEPOOL = 1, CATCH = 2, CLASS = 3, DYNAMIC = 4, 
                 ENCODE = 5, END = 6, FINALLY = 7, IMPLEMENTATION = 8, INTERFACE = 9, 
                 PACKAGE = 10, PROTOCOL = 11, OPTIONAL = 12, PRIVATE = 13, 
                 PROPERTY = 14, PROTECTED = 15, PUBLIC = 16, SELECTOR = 17, 
                 SYNCHRONIZED = 18, SYNTHESIZE = 19, THROW = 20, TRY = 21, 
                 SUPER = 22, SELF = 23, ABSTRACT = 24, AUTO = 25, BOOLEAN = 26, 
                 BREAK = 27, BYCOPY = 28, BYREF = 29, CASE = 30, CHAR = 31, 
                 CONST = 32, CONTINUE = 33, DEFAULT = 34, DO = 35, DOUBLE = 36, 
                 ELSE = 37, ENUM = 38, EXTERN = 39, FLOAT = 40, FOR = 41, 
                 ID = 42, IF = 43, IN = 44, INOUT = 45, GOTO = 46, INT = 47, 
                 LONG = 48, ONEWAY = 49, OUT = 50, REGISTER = 51, RETURN = 52, 
                 SHORT = 53, SIGNED = 54, SIZEOF = 55, STATIC = 56, STRUCT = 57, 
                 SWITCH = 58, TYPEDEF = 59, UNION = 60, UNSIGNED = 61, VOID = 62, 
                 VOLATILE = 63, WHILE = 64, NS_OPTIONS = 65, NS_ENUM = 66, 
                 WWEAK = 67, WUNSAFE_UNRETAINED = 68, LPAREN = 69, RPAREN = 70, 
                 LBRACE = 71, RBRACE = 72, LBRACK = 73, RBRACK = 74, SEMI = 75, 
                 COMMA = 76, DOT = 77, STRUCTACCESS = 78, AT = 79, ASSIGN = 80, 
                 GT = 81, LT = 82, BANG = 83, TILDE = 84, QUESTION = 85, 
                 COLON = 86, EQUAL = 87, LE = 88, GE = 89, NOTEQUAL = 90, 
                 AND = 91, OR = 92, INC = 93, DEC = 94, ADD = 95, SUB = 96, 
                 MUL = 97, DIV = 98, BITAND = 99, BITOR = 100, CARET = 101, 
                 MOD = 102, SHIFT_R = 103, SHIFT_L = 104, ADD_ASSIGN = 105, 
                 SUB_ASSIGN = 106, MUL_ASSIGN = 107, DIV_ASSIGN = 108, AND_ASSIGN = 109, 
                 OR_ASSIGN = 110, XOR_ASSIGN = 111, MOD_ASSIGN = 112, LSHIFT_ASSIGN = 113, 
                 RSHIFT_ASSIGN = 114, ELIPSIS = 115, ASSIGNPA = 116, GETTER = 117, 
                 NONATOMIC = 118, SETTER = 119, STRONG = 120, RETAIN = 121, 
                 READONLY = 122, READWRITE = 123, WEAK = 124, IDENTIFIER = 125, 
                 CHARACTER_LITERAL = 126, STRING_LITERAL = 127, HEX_LITERAL = 128, 
                 DECIMAL_LITERAL = 129, OCTAL_LITERAL = 130, FLOATING_POINT_LITERAL = 131, 
                 IMPORT = 132, INCLUDE = 133, PRAGMA = 134, WS = 135, COMMENT = 136, 
                 LINE_COMMENT = 137, HDEFINE = 138, HIF = 139, HELSE = 140, 
                 HUNDEF = 141, HIFNDEF = 142, HENDIF = 143
	}

	public
	static let RULE_translation_unit = 0, RULE_external_declaration = 1, RULE_preprocessor_declaration = 2, 
            RULE_class_interface = 3, RULE_category_interface = 4, RULE_class_implementation = 5, 
            RULE_category_implementation = 6, RULE_protocol_declaration = 7, 
            RULE_protocol_declaration_list = 8, RULE_class_declaration_list = 9, 
            RULE_class_list = 10, RULE_protocol_reference_list = 11, RULE_protocol_list = 12, 
            RULE_property_declaration = 13, RULE_property_attributes_declaration = 14, 
            RULE_property_attributes_list = 15, RULE_property_attribute = 16, 
            RULE_class_name = 17, RULE_superclass_name = 18, RULE_category_name = 19, 
            RULE_protocol_name = 20, RULE_instance_variables = 21, RULE_visibility_specification = 22, 
            RULE_interface_declaration_list = 23, RULE_class_method_declaration = 24, 
            RULE_instance_method_declaration = 25, RULE_method_declaration = 26, 
            RULE_implementation_definition_list = 27, RULE_class_method_definition = 28, 
            RULE_instance_method_definition = 29, RULE_method_definition = 30, 
            RULE_method_selector = 31, RULE_keyword_declarator = 32, RULE_selector = 33, 
            RULE_method_type = 34, RULE_property_implementation = 35, RULE_property_synthesize_list = 36, 
            RULE_property_synthesize_item = 37, RULE_block_type = 38, RULE_type_specifier = 39, 
            RULE_type_qualifier = 40, RULE_protocol_qualifier = 41, RULE_primary_expression = 42, 
            RULE_dictionary_pair = 43, RULE_dictionary_expression = 44, 
            RULE_array_expression = 45, RULE_box_expression = 46, RULE_block_parameters = 47, 
            RULE_block_expression = 48, RULE_message_expression = 49, RULE_receiver = 50, 
            RULE_message_selector = 51, RULE_keyword_argument = 52, RULE_selector_expression = 53, 
            RULE_selector_name = 54, RULE_protocol_expression = 55, RULE_encode_expression = 56, 
            RULE_type_variable_declarator = 57, RULE_try_statement = 58, 
            RULE_catch_statement = 59, RULE_finally_statement = 60, RULE_throw_statement = 61, 
            RULE_try_block = 62, RULE_synchronized_statement = 63, RULE_autorelease_statement = 64, 
            RULE_function_definition = 65, RULE_declaration = 66, RULE_declaration_specifiers = 67, 
            RULE_arc_behaviour_specifier = 68, RULE_storage_class_specifier = 69, 
            RULE_init_declarator_list = 70, RULE_init_declarator = 71, RULE_struct_or_union_specifier = 72, 
            RULE_struct_declaration = 73, RULE_specifier_qualifier_list = 74, 
            RULE_struct_declarator_list = 75, RULE_struct_declarator = 76, 
            RULE_enum_specifier = 77, RULE_enumerator_list = 78, RULE_enumerator = 79, 
            RULE_pointer = 80, RULE_declarator = 81, RULE_direct_declarator = 82, 
            RULE_declarator_suffix = 83, RULE_parameter_list = 84, RULE_parameter_declaration = 85, 
            RULE_initializer = 86, RULE_type_name = 87, RULE_abstract_declarator = 88, 
            RULE_abstract_declarator_suffix = 89, RULE_parameter_declaration_list = 90, 
            RULE_statement_list = 91, RULE_statement = 92, RULE_labeled_statement = 93, 
            RULE_compound_statement = 94, RULE_selection_statement = 95, 
            RULE_for_in_statement = 96, RULE_for_statement = 97, RULE_while_statement = 98, 
            RULE_do_statement = 99, RULE_iteration_statement = 100, RULE_jump_statement = 101, 
            RULE_expression = 102, RULE_assignment_expression = 103, RULE_assignment_operator = 104, 
            RULE_conditional_expression = 105, RULE_constant_expression = 106, 
            RULE_logical_or_expression = 107, RULE_logical_and_expression = 108, 
            RULE_inclusive_or_expression = 109, RULE_exclusive_or_expression = 110, 
            RULE_and_expression = 111, RULE_equality_expression = 112, RULE_relational_expression = 113, 
            RULE_shift_expression = 114, RULE_additive_expression = 115, 
            RULE_multiplicative_expression = 116, RULE_cast_expression = 117, 
            RULE_unary_expression = 118, RULE_unary_operator = 119, RULE_postfix_expression = 120, 
            RULE_argument_expression_list = 121, RULE_identifier = 122, 
            RULE_constant = 123

	public
	static let ruleNames: [String] = [
		"translation_unit", "external_declaration", "preprocessor_declaration", 
		"class_interface", "category_interface", "class_implementation", "category_implementation", 
		"protocol_declaration", "protocol_declaration_list", "class_declaration_list", 
		"class_list", "protocol_reference_list", "protocol_list", "property_declaration", 
		"property_attributes_declaration", "property_attributes_list", "property_attribute", 
		"class_name", "superclass_name", "category_name", "protocol_name", "instance_variables", 
		"visibility_specification", "interface_declaration_list", "class_method_declaration", 
		"instance_method_declaration", "method_declaration", "implementation_definition_list", 
		"class_method_definition", "instance_method_definition", "method_definition", 
		"method_selector", "keyword_declarator", "selector", "method_type", "property_implementation", 
		"property_synthesize_list", "property_synthesize_item", "block_type", 
		"type_specifier", "type_qualifier", "protocol_qualifier", "primary_expression", 
		"dictionary_pair", "dictionary_expression", "array_expression", "box_expression", 
		"block_parameters", "block_expression", "message_expression", "receiver", 
		"message_selector", "keyword_argument", "selector_expression", "selector_name", 
		"protocol_expression", "encode_expression", "type_variable_declarator", 
		"try_statement", "catch_statement", "finally_statement", "throw_statement", 
		"try_block", "synchronized_statement", "autorelease_statement", "function_definition", 
		"declaration", "declaration_specifiers", "arc_behaviour_specifier", "storage_class_specifier", 
		"init_declarator_list", "init_declarator", "struct_or_union_specifier", 
		"struct_declaration", "specifier_qualifier_list", "struct_declarator_list", 
		"struct_declarator", "enum_specifier", "enumerator_list", "enumerator", 
		"pointer", "declarator", "direct_declarator", "declarator_suffix", "parameter_list", 
		"parameter_declaration", "initializer", "type_name", "abstract_declarator", 
		"abstract_declarator_suffix", "parameter_declaration_list", "statement_list", 
		"statement", "labeled_statement", "compound_statement", "selection_statement", 
		"for_in_statement", "for_statement", "while_statement", "do_statement", 
		"iteration_statement", "jump_statement", "expression", "assignment_expression", 
		"assignment_operator", "conditional_expression", "constant_expression", 
		"logical_or_expression", "logical_and_expression", "inclusive_or_expression", 
		"exclusive_or_expression", "and_expression", "equality_expression", "relational_expression", 
		"shift_expression", "additive_expression", "multiplicative_expression", 
		"cast_expression", "unary_expression", "unary_operator", "postfix_expression", 
		"argument_expression_list", "identifier", "constant"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'@autoreleasepool'", "'@catch'", "'@class'", "'@dynamic'", "'@encode'", 
		"'@end'", "'@finally'", "'@implementation'", "'@interface'", "'@package'", 
		"'@protocol'", "'@optional'", "'@private'", "'@property'", "'@protected'", 
		"'@public'", "'@selector'", "'@synchronized'", "'@synthesize'", "'@throw'", 
		"'@try'", "'super'", "'self'", "'abstract'", "'auto'", "'boolean'", "'break'", 
		"'bycopy'", "'byref'", "'case'", "'char'", "'const'", "'continue'", "'default'", 
		"'do'", "'double'", "'else'", "'enum'", "'extern'", "'float'", "'for'", 
		"'id'", "'if'", "'in'", "'inout'", "'goto'", "'int'", "'long'", "'oneway'", 
		"'out'", "'register'", "'return'", "'short'", "'signed'", "'sizeof'", 
		"'static'", "'struct'", "'switch'", "'typedef'", "'union'", "'unsigned'", 
		"'void'", "'volatile'", "'while'", "'NS_OPTIONS'", "'NS_ENUM'", "'__weak'", 
		"'__unsafe_unretained'", "'('", "')'", "'{'", "'}'", "'['", "']'", "';'", 
		"','", "'.'", "'->'", "'@'", "'='", "'>'", "'<'", "'!'", "'~'", "'?'", 
		"':'", "'=='", "'<='", "'>='", "'!='", "'&&'", "'||'", "'++'", "'--'", 
		"'+'", "'-'", "'*'", "'/'", "'&'", "'|'", "'^'", "'%'", "'>>'", "'<<'", 
		"'+='", "'-='", "'*='", "'/='", "'&='", "'|='", "'^='", "'%='", "'<<='", 
		"'>>='", "'...'", "'assign'", "'getter'", "'nonatomic'", "'setter'", "'strong'", 
		"'retain'", "'readonly'", "'readwrite'", "'weak'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "AUTORELEASEPOOL", "CATCH", "CLASS", "DYNAMIC", "ENCODE", "END", 
		"FINALLY", "IMPLEMENTATION", "INTERFACE", "PACKAGE", "PROTOCOL", "OPTIONAL", 
		"PRIVATE", "PROPERTY", "PROTECTED", "PUBLIC", "SELECTOR", "SYNCHRONIZED", 
		"SYNTHESIZE", "THROW", "TRY", "SUPER", "SELF", "ABSTRACT", "AUTO", "BOOLEAN", 
		"BREAK", "BYCOPY", "BYREF", "CASE", "CHAR", "CONST", "CONTINUE", "DEFAULT", 
		"DO", "DOUBLE", "ELSE", "ENUM", "EXTERN", "FLOAT", "FOR", "ID", "IF", 
		"IN", "INOUT", "GOTO", "INT", "LONG", "ONEWAY", "OUT", "REGISTER", "RETURN", 
		"SHORT", "SIGNED", "SIZEOF", "STATIC", "STRUCT", "SWITCH", "TYPEDEF", 
		"UNION", "UNSIGNED", "VOID", "VOLATILE", "WHILE", "NS_OPTIONS", "NS_ENUM", 
		"WWEAK", "WUNSAFE_UNRETAINED", "LPAREN", "RPAREN", "LBRACE", "RBRACE", 
		"LBRACK", "RBRACK", "SEMI", "COMMA", "DOT", "STRUCTACCESS", "AT", "ASSIGN", 
		"GT", "LT", "BANG", "TILDE", "QUESTION", "COLON", "EQUAL", "LE", "GE", 
		"NOTEQUAL", "AND", "OR", "INC", "DEC", "ADD", "SUB", "MUL", "DIV", "BITAND", 
		"BITOR", "CARET", "MOD", "SHIFT_R", "SHIFT_L", "ADD_ASSIGN", "SUB_ASSIGN", 
		"MUL_ASSIGN", "DIV_ASSIGN", "AND_ASSIGN", "OR_ASSIGN", "XOR_ASSIGN", "MOD_ASSIGN", 
		"LSHIFT_ASSIGN", "RSHIFT_ASSIGN", "ELIPSIS", "ASSIGNPA", "GETTER", "NONATOMIC", 
		"SETTER", "STRONG", "RETAIN", "READONLY", "READWRITE", "WEAK", "IDENTIFIER", 
		"CHARACTER_LITERAL", "STRING_LITERAL", "HEX_LITERAL", "DECIMAL_LITERAL", 
		"OCTAL_LITERAL", "FLOATING_POINT_LITERAL", "IMPORT", "INCLUDE", "PRAGMA", 
		"WS", "COMMENT", "LINE_COMMENT", "HDEFINE", "HIF", "HELSE", "HUNDEF", 
		"HIFNDEF", "HENDIF"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "ObjC.g4" }

	override open
	func getRuleNames() -> [String] { return ObjCParser.ruleNames }

	override open
	func getSerializedATN() -> String { return ObjCParser._serializedATN }

	override open
	func getATN() -> ATN { return ObjCParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return ObjCParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,ObjCParser._ATN,ObjCParser._decisionToDFA, ObjCParser._sharedContextCache)
	}


	public class Translation_unitContext: ParserRuleContext {
			open
			func EOF() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.EOF.rawValue, 0)
			}
			open
			func external_declaration() -> [External_declarationContext] {
				return getRuleContexts(External_declarationContext.self)
			}
			open
			func external_declaration(_ i: Int) -> External_declarationContext? {
				return getRuleContext(External_declarationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_translation_unit
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterTranslation_unit(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitTranslation_unit(self)
			}
		}
	}
	@discardableResult
	 open func translation_unit() throws -> Translation_unitContext {
		var _localctx: Translation_unitContext = Translation_unitContext(_ctx, getState())
		try enterRule(_localctx, 0, ObjCParser.RULE_translation_unit)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(249) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(248)
		 		try external_declaration()


		 		setState(251); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.CLASS.rawValue,ObjCParser.Tokens.IMPLEMENTATION.rawValue,ObjCParser.Tokens.INTERFACE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 65)
		 	          }()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.IMPORT.rawValue,ObjCParser.Tokens.INCLUDE.rawValue,ObjCParser.Tokens.COMMENT.rawValue,ObjCParser.Tokens.LINE_COMMENT.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 132)
		 	          }()
		 	      return testSet
		 	 }())
		 	setState(253)
		 	try match(ObjCParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class External_declarationContext: ParserRuleContext {
			open
			func COMMENT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMENT.rawValue, 0)
			}
			open
			func LINE_COMMENT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LINE_COMMENT.rawValue, 0)
			}
			open
			func preprocessor_declaration() -> Preprocessor_declarationContext? {
				return getRuleContext(Preprocessor_declarationContext.self, 0)
			}
			open
			func function_definition() -> Function_definitionContext? {
				return getRuleContext(Function_definitionContext.self, 0)
			}
			open
			func declaration() -> DeclarationContext? {
				return getRuleContext(DeclarationContext.self, 0)
			}
			open
			func class_interface() -> Class_interfaceContext? {
				return getRuleContext(Class_interfaceContext.self, 0)
			}
			open
			func class_implementation() -> Class_implementationContext? {
				return getRuleContext(Class_implementationContext.self, 0)
			}
			open
			func category_interface() -> Category_interfaceContext? {
				return getRuleContext(Category_interfaceContext.self, 0)
			}
			open
			func category_implementation() -> Category_implementationContext? {
				return getRuleContext(Category_implementationContext.self, 0)
			}
			open
			func protocol_declaration() -> Protocol_declarationContext? {
				return getRuleContext(Protocol_declarationContext.self, 0)
			}
			open
			func protocol_declaration_list() -> Protocol_declaration_listContext? {
				return getRuleContext(Protocol_declaration_listContext.self, 0)
			}
			open
			func class_declaration_list() -> Class_declaration_listContext? {
				return getRuleContext(Class_declaration_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_external_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterExternal_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitExternal_declaration(self)
			}
		}
	}
	@discardableResult
	 open func external_declaration() throws -> External_declarationContext {
		var _localctx: External_declarationContext = External_declarationContext(_ctx, getState())
		try enterRule(_localctx, 2, ObjCParser.RULE_external_declaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(267)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,1, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(255)
		 		try match(ObjCParser.Tokens.COMMENT.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(256)
		 		try match(ObjCParser.Tokens.LINE_COMMENT.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(257)
		 		try preprocessor_declaration()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(258)
		 		try function_definition()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(259)
		 		try declaration()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(260)
		 		try class_interface()

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(261)
		 		try class_implementation()

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(262)
		 		try category_interface()

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(263)
		 		try category_implementation()

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(264)
		 		try protocol_declaration()

		 		break
		 	case 11:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(265)
		 		try protocol_declaration_list()

		 		break
		 	case 12:
		 		try enterOuterAlt(_localctx, 12)
		 		setState(266)
		 		try class_declaration_list()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Preprocessor_declarationContext: ParserRuleContext {
			open
			func IMPORT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IMPORT.rawValue, 0)
			}
			open
			func INCLUDE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.INCLUDE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_preprocessor_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterPreprocessor_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitPreprocessor_declaration(self)
			}
		}
	}
	@discardableResult
	 open func preprocessor_declaration() throws -> Preprocessor_declarationContext {
		var _localctx: Preprocessor_declarationContext = Preprocessor_declarationContext(_ctx, getState())
		try enterRule(_localctx, 4, ObjCParser.RULE_preprocessor_declaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(269)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.IMPORT.rawValue || _la == ObjCParser.Tokens.INCLUDE.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Class_interfaceContext: ParserRuleContext {
			open
			func INTERFACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.INTERFACE.rawValue, 0)
			}
			open
			func class_name() -> Class_nameContext? {
				return getRuleContext(Class_nameContext.self, 0)
			}
			open
			func END() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.END.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
			open
			func superclass_name() -> Superclass_nameContext? {
				return getRuleContext(Superclass_nameContext.self, 0)
			}
			open
			func protocol_reference_list() -> Protocol_reference_listContext? {
				return getRuleContext(Protocol_reference_listContext.self, 0)
			}
			open
			func instance_variables() -> Instance_variablesContext? {
				return getRuleContext(Instance_variablesContext.self, 0)
			}
			open
			func interface_declaration_list() -> Interface_declaration_listContext? {
				return getRuleContext(Interface_declaration_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_class_interface
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterClass_interface(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitClass_interface(self)
			}
		}
	}
	@discardableResult
	 open func class_interface() throws -> Class_interfaceContext {
		var _localctx: Class_interfaceContext = Class_interfaceContext(_ctx, getState())
		try enterRule(_localctx, 6, ObjCParser.RULE_class_interface)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(271)
		 	try match(ObjCParser.Tokens.INTERFACE.rawValue)
		 	setState(272)
		 	try class_name()
		 	setState(275)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COLON.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(273)
		 		try match(ObjCParser.Tokens.COLON.rawValue)
		 		setState(274)
		 		try superclass_name()

		 	}

		 	setState(278)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LT.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(277)
		 		try protocol_reference_list()

		 	}

		 	setState(281)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LBRACE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(280)
		 		try instance_variables()

		 	}

		 	setState(284)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.PROPERTY.rawValue,ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.ADD.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 65)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(283)
		 		try interface_declaration_list()

		 	}

		 	setState(286)
		 	try match(ObjCParser.Tokens.END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Category_interfaceContext: ParserRuleContext {
			open
			func INTERFACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.INTERFACE.rawValue, 0)
			}
			open
			func class_name() -> Class_nameContext? {
				return getRuleContext(Class_nameContext.self, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func END() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.END.rawValue, 0)
			}
			open
			func category_name() -> Category_nameContext? {
				return getRuleContext(Category_nameContext.self, 0)
			}
			open
			func protocol_reference_list() -> Protocol_reference_listContext? {
				return getRuleContext(Protocol_reference_listContext.self, 0)
			}
			open
			func instance_variables() -> Instance_variablesContext? {
				return getRuleContext(Instance_variablesContext.self, 0)
			}
			open
			func interface_declaration_list() -> Interface_declaration_listContext? {
				return getRuleContext(Interface_declaration_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_category_interface
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterCategory_interface(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitCategory_interface(self)
			}
		}
	}
	@discardableResult
	 open func category_interface() throws -> Category_interfaceContext {
		var _localctx: Category_interfaceContext = Category_interfaceContext(_ctx, getState())
		try enterRule(_localctx, 8, ObjCParser.RULE_category_interface)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(288)
		 	try match(ObjCParser.Tokens.INTERFACE.rawValue)
		 	setState(289)
		 	try class_name()
		 	setState(290)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(292)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.IDENTIFIER.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(291)
		 		try category_name()

		 	}

		 	setState(294)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)
		 	setState(296)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LT.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(295)
		 		try protocol_reference_list()

		 	}

		 	setState(299)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LBRACE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(298)
		 		try instance_variables()

		 	}

		 	setState(302)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.PROPERTY.rawValue,ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.ADD.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 65)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(301)
		 		try interface_declaration_list()

		 	}

		 	setState(304)
		 	try match(ObjCParser.Tokens.END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Class_implementationContext: ParserRuleContext {
			open
			func IMPLEMENTATION() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IMPLEMENTATION.rawValue, 0)
			}
			open
			func END() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.END.rawValue, 0)
			}
			open
			func class_name() -> Class_nameContext? {
				return getRuleContext(Class_nameContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
			open
			func superclass_name() -> Superclass_nameContext? {
				return getRuleContext(Superclass_nameContext.self, 0)
			}
			open
			func instance_variables() -> Instance_variablesContext? {
				return getRuleContext(Instance_variablesContext.self, 0)
			}
			open
			func implementation_definition_list() -> Implementation_definition_listContext? {
				return getRuleContext(Implementation_definition_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_class_implementation
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterClass_implementation(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitClass_implementation(self)
			}
		}
	}
	@discardableResult
	 open func class_implementation() throws -> Class_implementationContext {
		var _localctx: Class_implementationContext = Class_implementationContext(_ctx, getState())
		try enterRule(_localctx, 10, ObjCParser.RULE_class_implementation)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(306)
		 	try match(ObjCParser.Tokens.IMPLEMENTATION.rawValue)

		 	setState(307)
		 	try class_name()
		 	setState(310)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COLON.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(308)
		 		try match(ObjCParser.Tokens.COLON.rawValue)
		 		setState(309)
		 		try superclass_name()

		 	}

		 	setState(313)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LBRACE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(312)
		 		try instance_variables()

		 	}

		 	setState(316)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.DYNAMIC.rawValue,ObjCParser.Tokens.SYNTHESIZE.rawValue,ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.ADD.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 65)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(315)
		 		try implementation_definition_list()

		 	}


		 	setState(318)
		 	try match(ObjCParser.Tokens.END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Category_implementationContext: ParserRuleContext {
			open
			func IMPLEMENTATION() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IMPLEMENTATION.rawValue, 0)
			}
			open
			func END() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.END.rawValue, 0)
			}
			open
			func class_name() -> Class_nameContext? {
				return getRuleContext(Class_nameContext.self, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func category_name() -> Category_nameContext? {
				return getRuleContext(Category_nameContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func implementation_definition_list() -> Implementation_definition_listContext? {
				return getRuleContext(Implementation_definition_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_category_implementation
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterCategory_implementation(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitCategory_implementation(self)
			}
		}
	}
	@discardableResult
	 open func category_implementation() throws -> Category_implementationContext {
		var _localctx: Category_implementationContext = Category_implementationContext(_ctx, getState())
		try enterRule(_localctx, 12, ObjCParser.RULE_category_implementation)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(320)
		 	try match(ObjCParser.Tokens.IMPLEMENTATION.rawValue)

		 	setState(321)
		 	try class_name()
		 	setState(322)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(323)
		 	try category_name()
		 	setState(324)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)
		 	setState(326)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.DYNAMIC.rawValue,ObjCParser.Tokens.SYNTHESIZE.rawValue,ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.ADD.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 65)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(325)
		 		try implementation_definition_list()

		 	}


		 	setState(328)
		 	try match(ObjCParser.Tokens.END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Protocol_declarationContext: ParserRuleContext {
			open
			func PROTOCOL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.PROTOCOL.rawValue, 0)
			}
			open
			func END() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.END.rawValue, 0)
			}
			open
			func protocol_name() -> Protocol_nameContext? {
				return getRuleContext(Protocol_nameContext.self, 0)
			}
			open
			func protocol_reference_list() -> Protocol_reference_listContext? {
				return getRuleContext(Protocol_reference_listContext.self, 0)
			}
			open
			func interface_declaration_list() -> [Interface_declaration_listContext] {
				return getRuleContexts(Interface_declaration_listContext.self)
			}
			open
			func interface_declaration_list(_ i: Int) -> Interface_declaration_listContext? {
				return getRuleContext(Interface_declaration_listContext.self, i)
			}
			open
			func OPTIONAL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.OPTIONAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_protocol_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProtocol_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProtocol_declaration(self)
			}
		}
	}
	@discardableResult
	 open func protocol_declaration() throws -> Protocol_declarationContext {
		var _localctx: Protocol_declarationContext = Protocol_declarationContext(_ctx, getState())
		try enterRule(_localctx, 14, ObjCParser.RULE_protocol_declaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(330)
		 	try match(ObjCParser.Tokens.PROTOCOL.rawValue)

		 	setState(331)
		 	try protocol_name()
		 	setState(333)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LT.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(332)
		 		try protocol_reference_list()

		 	}

		 	setState(336)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,15,_ctx)) {
		 	case 1:
		 		setState(335)
		 		try interface_declaration_list()

		 		break
		 	default: break
		 	}
		 	setState(339)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.OPTIONAL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(338)
		 		try match(ObjCParser.Tokens.OPTIONAL.rawValue)

		 	}

		 	setState(342)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.PROPERTY.rawValue,ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.ADD.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 65)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(341)
		 		try interface_declaration_list()

		 	}


		 	setState(344)
		 	try match(ObjCParser.Tokens.END.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Protocol_declaration_listContext: ParserRuleContext {
			open
			func PROTOCOL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.PROTOCOL.rawValue, 0)
			}
			open
			func protocol_list() -> Protocol_listContext? {
				return getRuleContext(Protocol_listContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_protocol_declaration_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProtocol_declaration_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProtocol_declaration_list(self)
			}
		}
	}
	@discardableResult
	 open func protocol_declaration_list() throws -> Protocol_declaration_listContext {
		var _localctx: Protocol_declaration_listContext = Protocol_declaration_listContext(_ctx, getState())
		try enterRule(_localctx, 16, ObjCParser.RULE_protocol_declaration_list)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(346)
		 	try match(ObjCParser.Tokens.PROTOCOL.rawValue)
		 	setState(347)
		 	try protocol_list()
		 	setState(348)
		 	try match(ObjCParser.Tokens.SEMI.rawValue)


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Class_declaration_listContext: ParserRuleContext {
			open
			func CLASS() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CLASS.rawValue, 0)
			}
			open
			func class_list() -> Class_listContext? {
				return getRuleContext(Class_listContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_class_declaration_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterClass_declaration_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitClass_declaration_list(self)
			}
		}
	}
	@discardableResult
	 open func class_declaration_list() throws -> Class_declaration_listContext {
		var _localctx: Class_declaration_listContext = Class_declaration_listContext(_ctx, getState())
		try enterRule(_localctx, 18, ObjCParser.RULE_class_declaration_list)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(350)
		 	try match(ObjCParser.Tokens.CLASS.rawValue)
		 	setState(351)
		 	try class_list()
		 	setState(352)
		 	try match(ObjCParser.Tokens.SEMI.rawValue)


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Class_listContext: ParserRuleContext {
			open
			func class_name() -> [Class_nameContext] {
				return getRuleContexts(Class_nameContext.self)
			}
			open
			func class_name(_ i: Int) -> Class_nameContext? {
				return getRuleContext(Class_nameContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_class_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterClass_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitClass_list(self)
			}
		}
	}
	@discardableResult
	 open func class_list() throws -> Class_listContext {
		var _localctx: Class_listContext = Class_listContext(_ctx, getState())
		try enterRule(_localctx, 20, ObjCParser.RULE_class_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(354)
		 	try class_name()
		 	setState(359)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(355)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(356)
		 		try class_name()


		 		setState(361)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Protocol_reference_listContext: ParserRuleContext {
			open
			func LT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LT.rawValue, 0)
			}
			open
			func protocol_list() -> Protocol_listContext? {
				return getRuleContext(Protocol_listContext.self, 0)
			}
			open
			func GT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.GT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_protocol_reference_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProtocol_reference_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProtocol_reference_list(self)
			}
		}
	}
	@discardableResult
	 open func protocol_reference_list() throws -> Protocol_reference_listContext {
		var _localctx: Protocol_reference_listContext = Protocol_reference_listContext(_ctx, getState())
		try enterRule(_localctx, 22, ObjCParser.RULE_protocol_reference_list)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(362)
		 	try match(ObjCParser.Tokens.LT.rawValue)
		 	setState(363)
		 	try protocol_list()
		 	setState(364)
		 	try match(ObjCParser.Tokens.GT.rawValue)


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Protocol_listContext: ParserRuleContext {
			open
			func protocol_name() -> [Protocol_nameContext] {
				return getRuleContexts(Protocol_nameContext.self)
			}
			open
			func protocol_name(_ i: Int) -> Protocol_nameContext? {
				return getRuleContext(Protocol_nameContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_protocol_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProtocol_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProtocol_list(self)
			}
		}
	}
	@discardableResult
	 open func protocol_list() throws -> Protocol_listContext {
		var _localctx: Protocol_listContext = Protocol_listContext(_ctx, getState())
		try enterRule(_localctx, 24, ObjCParser.RULE_protocol_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(366)
		 	try protocol_name()
		 	setState(371)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(367)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(368)
		 		try protocol_name()


		 		setState(373)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Property_declarationContext: ParserRuleContext {
			open
			func PROPERTY() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.PROPERTY.rawValue, 0)
			}
			open
			func struct_declaration() -> Struct_declarationContext? {
				return getRuleContext(Struct_declarationContext.self, 0)
			}
			open
			func property_attributes_declaration() -> Property_attributes_declarationContext? {
				return getRuleContext(Property_attributes_declarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_property_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProperty_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProperty_declaration(self)
			}
		}
	}
	@discardableResult
	 open func property_declaration() throws -> Property_declarationContext {
		var _localctx: Property_declarationContext = Property_declarationContext(_ctx, getState())
		try enterRule(_localctx, 26, ObjCParser.RULE_property_declaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(374)
		 	try match(ObjCParser.Tokens.PROPERTY.rawValue)
		 	setState(376)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LPAREN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(375)
		 		try property_attributes_declaration()

		 	}

		 	setState(378)
		 	try struct_declaration()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Property_attributes_declarationContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func property_attributes_list() -> Property_attributes_listContext? {
				return getRuleContext(Property_attributes_listContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_property_attributes_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProperty_attributes_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProperty_attributes_declaration(self)
			}
		}
	}
	@discardableResult
	 open func property_attributes_declaration() throws -> Property_attributes_declarationContext {
		var _localctx: Property_attributes_declarationContext = Property_attributes_declarationContext(_ctx, getState())
		try enterRule(_localctx, 28, ObjCParser.RULE_property_attributes_declaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(380)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(381)
		 	try property_attributes_list()
		 	setState(382)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Property_attributes_listContext: ParserRuleContext {
			open
			func property_attribute() -> [Property_attributeContext] {
				return getRuleContexts(Property_attributeContext.self)
			}
			open
			func property_attribute(_ i: Int) -> Property_attributeContext? {
				return getRuleContext(Property_attributeContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_property_attributes_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProperty_attributes_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProperty_attributes_list(self)
			}
		}
	}
	@discardableResult
	 open func property_attributes_list() throws -> Property_attributes_listContext {
		var _localctx: Property_attributes_listContext = Property_attributes_listContext(_ctx, getState())
		try enterRule(_localctx, 30, ObjCParser.RULE_property_attributes_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(384)
		 	try property_attribute()
		 	setState(389)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(385)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(386)
		 		try property_attribute()


		 		setState(391)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Property_attributeContext: ParserRuleContext {
			open
			func NONATOMIC() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.NONATOMIC.rawValue, 0)
			}
			open
			func ASSIGNPA() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ASSIGNPA.rawValue, 0)
			}
			open
			func WEAK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.WEAK.rawValue, 0)
			}
			open
			func STRONG() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.STRONG.rawValue, 0)
			}
			open
			func RETAIN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RETAIN.rawValue, 0)
			}
			open
			func READONLY() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.READONLY.rawValue, 0)
			}
			open
			func READWRITE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.READWRITE.rawValue, 0)
			}
			open
			func GETTER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.GETTER.rawValue, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func SETTER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SETTER.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_property_attribute
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProperty_attribute(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProperty_attribute(self)
			}
		}
	}
	@discardableResult
	 open func property_attribute() throws -> Property_attributeContext {
		var _localctx: Property_attributeContext = Property_attributeContext(_ctx, getState())
		try enterRule(_localctx, 32, ObjCParser.RULE_property_attribute)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(408)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .NONATOMIC:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(392)
		 		try match(ObjCParser.Tokens.NONATOMIC.rawValue)

		 		break

		 	case .ASSIGNPA:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(393)
		 		try match(ObjCParser.Tokens.ASSIGNPA.rawValue)

		 		break

		 	case .WEAK:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(394)
		 		try match(ObjCParser.Tokens.WEAK.rawValue)

		 		break

		 	case .STRONG:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(395)
		 		try match(ObjCParser.Tokens.STRONG.rawValue)

		 		break

		 	case .RETAIN:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(396)
		 		try match(ObjCParser.Tokens.RETAIN.rawValue)

		 		break

		 	case .READONLY:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(397)
		 		try match(ObjCParser.Tokens.READONLY.rawValue)

		 		break

		 	case .READWRITE:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(398)
		 		try match(ObjCParser.Tokens.READWRITE.rawValue)

		 		break
		 	case .RPAREN:fallthrough
		 	case .COMMA:
		 		try enterOuterAlt(_localctx, 8)

		 		break

		 	case .GETTER:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(400)
		 		try match(ObjCParser.Tokens.GETTER.rawValue)
		 		setState(401)
		 		try match(ObjCParser.Tokens.ASSIGN.rawValue)
		 		setState(402)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		 		break

		 	case .SETTER:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(403)
		 		try match(ObjCParser.Tokens.SETTER.rawValue)
		 		setState(404)
		 		try match(ObjCParser.Tokens.ASSIGN.rawValue)
		 		setState(405)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)
		 		setState(406)
		 		try match(ObjCParser.Tokens.COLON.rawValue)

		 		break

		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(407)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

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

	public class Class_nameContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_class_name
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterClass_name(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitClass_name(self)
			}
		}
	}
	@discardableResult
	 open func class_name() throws -> Class_nameContext {
		var _localctx: Class_nameContext = Class_nameContext(_ctx, getState())
		try enterRule(_localctx, 34, ObjCParser.RULE_class_name)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(410)
		 	try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Superclass_nameContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_superclass_name
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterSuperclass_name(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitSuperclass_name(self)
			}
		}
	}
	@discardableResult
	 open func superclass_name() throws -> Superclass_nameContext {
		var _localctx: Superclass_nameContext = Superclass_nameContext(_ctx, getState())
		try enterRule(_localctx, 36, ObjCParser.RULE_superclass_name)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(412)
		 	try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Category_nameContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_category_name
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterCategory_name(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitCategory_name(self)
			}
		}
	}
	@discardableResult
	 open func category_name() throws -> Category_nameContext {
		var _localctx: Category_nameContext = Category_nameContext(_ctx, getState())
		try enterRule(_localctx, 38, ObjCParser.RULE_category_name)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(414)
		 	try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Protocol_nameContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_protocol_name
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProtocol_name(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProtocol_name(self)
			}
		}
	}
	@discardableResult
	 open func protocol_name() throws -> Protocol_nameContext {
		var _localctx: Protocol_nameContext = Protocol_nameContext(_ctx, getState())
		try enterRule(_localctx, 40, ObjCParser.RULE_protocol_name)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(416)
		 	try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Instance_variablesContext: ParserRuleContext {
			open
			func LBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func struct_declaration() -> [Struct_declarationContext] {
				return getRuleContexts(Struct_declarationContext.self)
			}
			open
			func struct_declaration(_ i: Int) -> Struct_declarationContext? {
				return getRuleContext(Struct_declarationContext.self, i)
			}
			open
			func visibility_specification() -> Visibility_specificationContext? {
				return getRuleContext(Visibility_specificationContext.self, 0)
			}
			open
			func instance_variables() -> Instance_variablesContext? {
				return getRuleContext(Instance_variablesContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_instance_variables
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterInstance_variables(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitInstance_variables(self)
			}
		}
	}
	@discardableResult
	 open func instance_variables() throws -> Instance_variablesContext {
		var _localctx: Instance_variablesContext = Instance_variablesContext(_ctx, getState())
		try enterRule(_localctx, 42, ObjCParser.RULE_instance_variables)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(454)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,27, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(418)
		 		try match(ObjCParser.Tokens.LBRACE.rawValue)
		 		setState(422)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 65)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(419)
		 			try struct_declaration()


		 			setState(424)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(425)
		 		try match(ObjCParser.Tokens.RBRACE.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(426)
		 		try match(ObjCParser.Tokens.LBRACE.rawValue)
		 		setState(427)
		 		try visibility_specification()
		 		setState(429) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(428)
		 			try struct_declaration()


		 			setState(431); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 65)
		 		          }()
		 		      return testSet
		 		 }())
		 		setState(433)
		 		try match(ObjCParser.Tokens.RBRACE.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(435)
		 		try match(ObjCParser.Tokens.LBRACE.rawValue)
		 		setState(437) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(436)
		 			try struct_declaration()


		 			setState(439); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 65)
		 		          }()
		 		      return testSet
		 		 }())
		 		setState(441)
		 		try instance_variables()
		 		setState(442)
		 		try match(ObjCParser.Tokens.RBRACE.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(444)
		 		try match(ObjCParser.Tokens.LBRACE.rawValue)
		 		setState(445)
		 		try visibility_specification()
		 		setState(447) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(446)
		 			try struct_declaration()


		 			setState(449); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 65)
		 		          }()
		 		      return testSet
		 		 }())
		 		setState(451)
		 		try instance_variables()
		 		setState(452)
		 		try match(ObjCParser.Tokens.RBRACE.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Visibility_specificationContext: ParserRuleContext {
			open
			func PRIVATE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.PRIVATE.rawValue, 0)
			}
			open
			func PROTECTED() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.PROTECTED.rawValue, 0)
			}
			open
			func PACKAGE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.PACKAGE.rawValue, 0)
			}
			open
			func PUBLIC() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.PUBLIC.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_visibility_specification
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterVisibility_specification(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitVisibility_specification(self)
			}
		}
	}
	@discardableResult
	 open func visibility_specification() throws -> Visibility_specificationContext {
		var _localctx: Visibility_specificationContext = Visibility_specificationContext(_ctx, getState())
		try enterRule(_localctx, 44, ObjCParser.RULE_visibility_specification)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(456)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.PACKAGE.rawValue,ObjCParser.Tokens.PRIVATE.rawValue,ObjCParser.Tokens.PROTECTED.rawValue,ObjCParser.Tokens.PUBLIC.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Interface_declaration_listContext: ParserRuleContext {
			open
			func declaration() -> [DeclarationContext] {
				return getRuleContexts(DeclarationContext.self)
			}
			open
			func declaration(_ i: Int) -> DeclarationContext? {
				return getRuleContext(DeclarationContext.self, i)
			}
			open
			func class_method_declaration() -> [Class_method_declarationContext] {
				return getRuleContexts(Class_method_declarationContext.self)
			}
			open
			func class_method_declaration(_ i: Int) -> Class_method_declarationContext? {
				return getRuleContext(Class_method_declarationContext.self, i)
			}
			open
			func instance_method_declaration() -> [Instance_method_declarationContext] {
				return getRuleContexts(Instance_method_declarationContext.self)
			}
			open
			func instance_method_declaration(_ i: Int) -> Instance_method_declarationContext? {
				return getRuleContext(Instance_method_declarationContext.self, i)
			}
			open
			func property_declaration() -> [Property_declarationContext] {
				return getRuleContexts(Property_declarationContext.self)
			}
			open
			func property_declaration(_ i: Int) -> Property_declarationContext? {
				return getRuleContext(Property_declarationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_interface_declaration_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterInterface_declaration_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitInterface_declaration_list(self)
			}
		}
	}
	@discardableResult
	 open func interface_declaration_list() throws -> Interface_declaration_listContext {
		var _localctx: Interface_declaration_listContext = Interface_declaration_listContext(_ctx, getState())
		try enterRule(_localctx, 46, ObjCParser.RULE_interface_declaration_list)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(462); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(462)
		 			try _errHandler.sync(self)
		 			switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 			case .AUTO:fallthrough
		 			case .BYCOPY:fallthrough
		 			case .BYREF:fallthrough
		 			case .CHAR:fallthrough
		 			case .CONST:fallthrough
		 			case .DOUBLE:fallthrough
		 			case .ENUM:fallthrough
		 			case .EXTERN:fallthrough
		 			case .FLOAT:fallthrough
		 			case .ID:fallthrough
		 			case .IN:fallthrough
		 			case .INOUT:fallthrough
		 			case .INT:fallthrough
		 			case .LONG:fallthrough
		 			case .ONEWAY:fallthrough
		 			case .OUT:fallthrough
		 			case .REGISTER:fallthrough
		 			case .SHORT:fallthrough
		 			case .SIGNED:fallthrough
		 			case .STATIC:fallthrough
		 			case .STRUCT:fallthrough
		 			case .TYPEDEF:fallthrough
		 			case .UNION:fallthrough
		 			case .UNSIGNED:fallthrough
		 			case .VOID:fallthrough
		 			case .VOLATILE:fallthrough
		 			case .NS_OPTIONS:fallthrough
		 			case .NS_ENUM:fallthrough
		 			case .WWEAK:fallthrough
		 			case .WUNSAFE_UNRETAINED:fallthrough
		 			case .IDENTIFIER:
		 				setState(458)
		 				try declaration()

		 				break

		 			case .ADD:
		 				setState(459)
		 				try class_method_declaration()

		 				break

		 			case .SUB:
		 				setState(460)
		 				try instance_method_declaration()

		 				break

		 			case .PROPERTY:
		 				setState(461)
		 				try property_declaration()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(464); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,29,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Class_method_declarationContext: ParserRuleContext {
			open
			func ADD() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ADD.rawValue, 0)
			}
			open
			func method_declaration() -> Method_declarationContext? {
				return getRuleContext(Method_declarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_class_method_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterClass_method_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitClass_method_declaration(self)
			}
		}
	}
	@discardableResult
	 open func class_method_declaration() throws -> Class_method_declarationContext {
		var _localctx: Class_method_declarationContext = Class_method_declarationContext(_ctx, getState())
		try enterRule(_localctx, 48, ObjCParser.RULE_class_method_declaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(466)
		 	try match(ObjCParser.Tokens.ADD.rawValue)
		 	setState(467)
		 	try method_declaration()


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Instance_method_declarationContext: ParserRuleContext {
			open
			func SUB() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SUB.rawValue, 0)
			}
			open
			func method_declaration() -> Method_declarationContext? {
				return getRuleContext(Method_declarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_instance_method_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterInstance_method_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitInstance_method_declaration(self)
			}
		}
	}
	@discardableResult
	 open func instance_method_declaration() throws -> Instance_method_declarationContext {
		var _localctx: Instance_method_declarationContext = Instance_method_declarationContext(_ctx, getState())
		try enterRule(_localctx, 50, ObjCParser.RULE_instance_method_declaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(469)
		 	try match(ObjCParser.Tokens.SUB.rawValue)
		 	setState(470)
		 	try method_declaration()


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Method_declarationContext: ParserRuleContext {
			open
			func method_selector() -> Method_selectorContext? {
				return getRuleContext(Method_selectorContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func method_type() -> Method_typeContext? {
				return getRuleContext(Method_typeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_method_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterMethod_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitMethod_declaration(self)
			}
		}
	}
	@discardableResult
	 open func method_declaration() throws -> Method_declarationContext {
		var _localctx: Method_declarationContext = Method_declarationContext(_ctx, getState())
		try enterRule(_localctx, 52, ObjCParser.RULE_method_declaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(473)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LPAREN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(472)
		 		try method_type()

		 	}

		 	setState(475)
		 	try method_selector()
		 	setState(476)
		 	try match(ObjCParser.Tokens.SEMI.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Implementation_definition_listContext: ParserRuleContext {
			open
			func function_definition() -> [Function_definitionContext] {
				return getRuleContexts(Function_definitionContext.self)
			}
			open
			func function_definition(_ i: Int) -> Function_definitionContext? {
				return getRuleContext(Function_definitionContext.self, i)
			}
			open
			func declaration() -> [DeclarationContext] {
				return getRuleContexts(DeclarationContext.self)
			}
			open
			func declaration(_ i: Int) -> DeclarationContext? {
				return getRuleContext(DeclarationContext.self, i)
			}
			open
			func class_method_definition() -> [Class_method_definitionContext] {
				return getRuleContexts(Class_method_definitionContext.self)
			}
			open
			func class_method_definition(_ i: Int) -> Class_method_definitionContext? {
				return getRuleContext(Class_method_definitionContext.self, i)
			}
			open
			func instance_method_definition() -> [Instance_method_definitionContext] {
				return getRuleContexts(Instance_method_definitionContext.self)
			}
			open
			func instance_method_definition(_ i: Int) -> Instance_method_definitionContext? {
				return getRuleContext(Instance_method_definitionContext.self, i)
			}
			open
			func property_implementation() -> [Property_implementationContext] {
				return getRuleContexts(Property_implementationContext.self)
			}
			open
			func property_implementation(_ i: Int) -> Property_implementationContext? {
				return getRuleContext(Property_implementationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_implementation_definition_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterImplementation_definition_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitImplementation_definition_list(self)
			}
		}
	}
	@discardableResult
	 open func implementation_definition_list() throws -> Implementation_definition_listContext {
		var _localctx: Implementation_definition_listContext = Implementation_definition_listContext(_ctx, getState())
		try enterRule(_localctx, 54, ObjCParser.RULE_implementation_definition_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(483) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(483)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,31, _ctx)) {
		 		case 1:
		 			setState(478)
		 			try function_definition()

		 			break
		 		case 2:
		 			setState(479)
		 			try declaration()

		 			break
		 		case 3:
		 			setState(480)
		 			try class_method_definition()

		 			break
		 		case 4:
		 			setState(481)
		 			try instance_method_definition()

		 			break
		 		case 5:
		 			setState(482)
		 			try property_implementation()

		 			break
		 		default: break
		 		}

		 		setState(485); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.DYNAMIC.rawValue,ObjCParser.Tokens.SYNTHESIZE.rawValue,ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.ADD.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 65)
		 	          }()
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

	public class Class_method_definitionContext: ParserRuleContext {
			open
			func ADD() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ADD.rawValue, 0)
			}
			open
			func method_definition() -> Method_definitionContext? {
				return getRuleContext(Method_definitionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_class_method_definition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterClass_method_definition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitClass_method_definition(self)
			}
		}
	}
	@discardableResult
	 open func class_method_definition() throws -> Class_method_definitionContext {
		var _localctx: Class_method_definitionContext = Class_method_definitionContext(_ctx, getState())
		try enterRule(_localctx, 56, ObjCParser.RULE_class_method_definition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(487)
		 	try match(ObjCParser.Tokens.ADD.rawValue)
		 	setState(488)
		 	try method_definition()


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Instance_method_definitionContext: ParserRuleContext {
			open
			func SUB() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SUB.rawValue, 0)
			}
			open
			func method_definition() -> Method_definitionContext? {
				return getRuleContext(Method_definitionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_instance_method_definition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterInstance_method_definition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitInstance_method_definition(self)
			}
		}
	}
	@discardableResult
	 open func instance_method_definition() throws -> Instance_method_definitionContext {
		var _localctx: Instance_method_definitionContext = Instance_method_definitionContext(_ctx, getState())
		try enterRule(_localctx, 58, ObjCParser.RULE_instance_method_definition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(490)
		 	try match(ObjCParser.Tokens.SUB.rawValue)
		 	setState(491)
		 	try method_definition()


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Method_definitionContext: ParserRuleContext {
			open
			func method_selector() -> Method_selectorContext? {
				return getRuleContext(Method_selectorContext.self, 0)
			}
			open
			func compound_statement() -> Compound_statementContext? {
				return getRuleContext(Compound_statementContext.self, 0)
			}
			open
			func method_type() -> Method_typeContext? {
				return getRuleContext(Method_typeContext.self, 0)
			}
			open
			func init_declarator_list() -> Init_declarator_listContext? {
				return getRuleContext(Init_declarator_listContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_method_definition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterMethod_definition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitMethod_definition(self)
			}
		}
	}
	@discardableResult
	 open func method_definition() throws -> Method_definitionContext {
		var _localctx: Method_definitionContext = Method_definitionContext(_ctx, getState())
		try enterRule(_localctx, 60, ObjCParser.RULE_method_definition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(494)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LPAREN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(493)
		 		try method_type()

		 	}

		 	setState(496)
		 	try method_selector()
		 	setState(498)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 69)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(497)
		 		try init_declarator_list()

		 	}

		 	setState(501)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.SEMI.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(500)
		 		try match(ObjCParser.Tokens.SEMI.rawValue)

		 	}

		 	setState(503)
		 	try compound_statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Method_selectorContext: ParserRuleContext {
			open
			func selector() -> SelectorContext? {
				return getRuleContext(SelectorContext.self, 0)
			}
			open
			func keyword_declarator() -> [Keyword_declaratorContext] {
				return getRuleContexts(Keyword_declaratorContext.self)
			}
			open
			func keyword_declarator(_ i: Int) -> Keyword_declaratorContext? {
				return getRuleContext(Keyword_declaratorContext.self, i)
			}
			open
			func parameter_list() -> Parameter_listContext? {
				return getRuleContext(Parameter_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_method_selector
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterMethod_selector(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitMethod_selector(self)
			}
		}
	}
	@discardableResult
	 open func method_selector() throws -> Method_selectorContext {
		var _localctx: Method_selectorContext = Method_selectorContext(_ctx, getState())
		try enterRule(_localctx, 62, ObjCParser.RULE_method_selector)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(514)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,38, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(505)
		 		try selector()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(507); 
		 		try _errHandler.sync(self)
		 		_alt = 1;
		 		repeat {
		 			switch (_alt) {
		 			case 1:
		 				setState(506)
		 				try keyword_declarator()


		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}
		 			setState(509); 
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,36,_ctx)
		 		} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)
		 		setState(512)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,37,_ctx)) {
		 		case 1:
		 			setState(511)
		 			try parameter_list()

		 			break
		 		default: break
		 		}


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Keyword_declaratorContext: ParserRuleContext {
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func selector() -> SelectorContext? {
				return getRuleContext(SelectorContext.self, 0)
			}
			open
			func method_type() -> [Method_typeContext] {
				return getRuleContexts(Method_typeContext.self)
			}
			open
			func method_type(_ i: Int) -> Method_typeContext? {
				return getRuleContext(Method_typeContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_keyword_declarator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterKeyword_declarator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitKeyword_declarator(self)
			}
		}
	}
	@discardableResult
	 open func keyword_declarator() throws -> Keyword_declaratorContext {
		var _localctx: Keyword_declaratorContext = Keyword_declaratorContext(_ctx, getState())
		try enterRule(_localctx, 64, ObjCParser.RULE_keyword_declarator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(517)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.IDENTIFIER.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(516)
		 		try selector()

		 	}

		 	setState(519)
		 	try match(ObjCParser.Tokens.COLON.rawValue)
		 	setState(523)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LPAREN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(520)
		 		try method_type()


		 		setState(525)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(526)
		 	try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SelectorContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_selector
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterSelector(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitSelector(self)
			}
		}
	}
	@discardableResult
	 open func selector() throws -> SelectorContext {
		var _localctx: SelectorContext = SelectorContext(_ctx, getState())
		try enterRule(_localctx, 66, ObjCParser.RULE_selector)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(528)
		 	try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Method_typeContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func type_name() -> Type_nameContext? {
				return getRuleContext(Type_nameContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_method_type
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterMethod_type(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitMethod_type(self)
			}
		}
	}
	@discardableResult
	 open func method_type() throws -> Method_typeContext {
		var _localctx: Method_typeContext = Method_typeContext(_ctx, getState())
		try enterRule(_localctx, 68, ObjCParser.RULE_method_type)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(530)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(531)
		 	try type_name()
		 	setState(532)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Property_implementationContext: ParserRuleContext {
			open
			func SYNTHESIZE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SYNTHESIZE.rawValue, 0)
			}
			open
			func property_synthesize_list() -> Property_synthesize_listContext? {
				return getRuleContext(Property_synthesize_listContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func DYNAMIC() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DYNAMIC.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_property_implementation
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProperty_implementation(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProperty_implementation(self)
			}
		}
	}
	@discardableResult
	 open func property_implementation() throws -> Property_implementationContext {
		var _localctx: Property_implementationContext = Property_implementationContext(_ctx, getState())
		try enterRule(_localctx, 70, ObjCParser.RULE_property_implementation)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(542)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .SYNTHESIZE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(534)
		 		try match(ObjCParser.Tokens.SYNTHESIZE.rawValue)
		 		setState(535)
		 		try property_synthesize_list()
		 		setState(536)
		 		try match(ObjCParser.Tokens.SEMI.rawValue)

		 		break

		 	case .DYNAMIC:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(538)
		 		try match(ObjCParser.Tokens.DYNAMIC.rawValue)
		 		setState(539)
		 		try property_synthesize_list()
		 		setState(540)
		 		try match(ObjCParser.Tokens.SEMI.rawValue)

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

	public class Property_synthesize_listContext: ParserRuleContext {
			open
			func property_synthesize_item() -> [Property_synthesize_itemContext] {
				return getRuleContexts(Property_synthesize_itemContext.self)
			}
			open
			func property_synthesize_item(_ i: Int) -> Property_synthesize_itemContext? {
				return getRuleContext(Property_synthesize_itemContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_property_synthesize_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProperty_synthesize_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProperty_synthesize_list(self)
			}
		}
	}
	@discardableResult
	 open func property_synthesize_list() throws -> Property_synthesize_listContext {
		var _localctx: Property_synthesize_listContext = Property_synthesize_listContext(_ctx, getState())
		try enterRule(_localctx, 72, ObjCParser.RULE_property_synthesize_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(544)
		 	try property_synthesize_item()
		 	setState(549)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(545)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(546)
		 		try property_synthesize_item()


		 		setState(551)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Property_synthesize_itemContext: ParserRuleContext {
			open
			func IDENTIFIER() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.IDENTIFIER.rawValue)
			}
			open
			func IDENTIFIER(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, i)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ASSIGN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_property_synthesize_item
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProperty_synthesize_item(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProperty_synthesize_item(self)
			}
		}
	}
	@discardableResult
	 open func property_synthesize_item() throws -> Property_synthesize_itemContext {
		var _localctx: Property_synthesize_itemContext = Property_synthesize_itemContext(_ctx, getState())
		try enterRule(_localctx, 74, ObjCParser.RULE_property_synthesize_item)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(556)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,43, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(552)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(553)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)
		 		setState(554)
		 		try match(ObjCParser.Tokens.ASSIGN.rawValue)
		 		setState(555)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Block_typeContext: ParserRuleContext {
			open
			func type_specifier() -> [Type_specifierContext] {
				return getRuleContexts(Type_specifierContext.self)
			}
			open
			func type_specifier(_ i: Int) -> Type_specifierContext? {
				return getRuleContext(Type_specifierContext.self, i)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func CARET() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CARET.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func block_parameters() -> Block_parametersContext? {
				return getRuleContext(Block_parametersContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_block_type
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterBlock_type(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitBlock_type(self)
			}
		}
	}
	@discardableResult
	 open func block_type() throws -> Block_typeContext {
		var _localctx: Block_typeContext = Block_typeContext(_ctx, getState())
		try enterRule(_localctx, 76, ObjCParser.RULE_block_type)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(558)
		 	try type_specifier()
		 	setState(559)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(560)
		 	try match(ObjCParser.Tokens.CARET.rawValue)
		 	setState(562)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 65)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(561)
		 		try type_specifier()

		 	}

		 	setState(564)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)
		 	setState(566)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LPAREN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(565)
		 		try block_parameters()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Type_specifierContext: ParserRuleContext {
			open
			func VOID() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.VOID.rawValue, 0)
			}
			open
			func CHAR() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CHAR.rawValue, 0)
			}
			open
			func SHORT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SHORT.rawValue, 0)
			}
			open
			func INT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.INT.rawValue, 0)
			}
			open
			func LONG() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LONG.rawValue, 0)
			}
			open
			func FLOAT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.FLOAT.rawValue, 0)
			}
			open
			func DOUBLE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DOUBLE.rawValue, 0)
			}
			open
			func SIGNED() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SIGNED.rawValue, 0)
			}
			open
			func UNSIGNED() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.UNSIGNED.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ID.rawValue, 0)
			}
			open
			func protocol_reference_list() -> Protocol_reference_listContext? {
				return getRuleContext(Protocol_reference_listContext.self, 0)
			}
			open
			func class_name() -> Class_nameContext? {
				return getRuleContext(Class_nameContext.self, 0)
			}
			open
			func struct_or_union_specifier() -> Struct_or_union_specifierContext? {
				return getRuleContext(Struct_or_union_specifierContext.self, 0)
			}
			open
			func enum_specifier() -> Enum_specifierContext? {
				return getRuleContext(Enum_specifierContext.self, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func pointer() -> PointerContext? {
				return getRuleContext(PointerContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_type_specifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterType_specifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitType_specifier(self)
			}
		}
	}
	@discardableResult
	 open func type_specifier() throws -> Type_specifierContext {
		var _localctx: Type_specifierContext = Type_specifierContext(_ctx, getState())
		try enterRule(_localctx, 78, ObjCParser.RULE_type_specifier)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(590)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,48, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(568)
		 		try match(ObjCParser.Tokens.VOID.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(569)
		 		try match(ObjCParser.Tokens.CHAR.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(570)
		 		try match(ObjCParser.Tokens.SHORT.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(571)
		 		try match(ObjCParser.Tokens.INT.rawValue)

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(572)
		 		try match(ObjCParser.Tokens.LONG.rawValue)

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(573)
		 		try match(ObjCParser.Tokens.FLOAT.rawValue)

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(574)
		 		try match(ObjCParser.Tokens.DOUBLE.rawValue)

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(575)
		 		try match(ObjCParser.Tokens.SIGNED.rawValue)

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(576)
		 		try match(ObjCParser.Tokens.UNSIGNED.rawValue)

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(577)
		 		try match(ObjCParser.Tokens.ID.rawValue)
		 		setState(579)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.LT.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(578)
		 			try protocol_reference_list()

		 		}



		 		break
		 	case 11:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(581)
		 		try class_name()
		 		setState(583)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.LT.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(582)
		 			try protocol_reference_list()

		 		}



		 		break
		 	case 12:
		 		try enterOuterAlt(_localctx, 12)
		 		setState(585)
		 		try struct_or_union_specifier()

		 		break
		 	case 13:
		 		try enterOuterAlt(_localctx, 13)
		 		setState(586)
		 		try enum_specifier()

		 		break
		 	case 14:
		 		try enterOuterAlt(_localctx, 14)
		 		setState(587)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	case 15:
		 		try enterOuterAlt(_localctx, 15)
		 		setState(588)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)
		 		setState(589)
		 		try pointer()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Type_qualifierContext: ParserRuleContext {
			open
			func CONST() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CONST.rawValue, 0)
			}
			open
			func VOLATILE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.VOLATILE.rawValue, 0)
			}
			open
			func protocol_qualifier() -> Protocol_qualifierContext? {
				return getRuleContext(Protocol_qualifierContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_type_qualifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterType_qualifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitType_qualifier(self)
			}
		}
	}
	@discardableResult
	 open func type_qualifier() throws -> Type_qualifierContext {
		var _localctx: Type_qualifierContext = Type_qualifierContext(_ctx, getState())
		try enterRule(_localctx, 80, ObjCParser.RULE_type_qualifier)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(595)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CONST:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(592)
		 		try match(ObjCParser.Tokens.CONST.rawValue)

		 		break

		 	case .VOLATILE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(593)
		 		try match(ObjCParser.Tokens.VOLATILE.rawValue)

		 		break
		 	case .BYCOPY:fallthrough
		 	case .BYREF:fallthrough
		 	case .IN:fallthrough
		 	case .INOUT:fallthrough
		 	case .ONEWAY:fallthrough
		 	case .OUT:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(594)
		 		try protocol_qualifier()

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

	public class Protocol_qualifierContext: ParserRuleContext {
			open
			func IN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IN.rawValue, 0)
			}
			open
			func OUT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.OUT.rawValue, 0)
			}
			open
			func INOUT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.INOUT.rawValue, 0)
			}
			open
			func BYCOPY() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.BYCOPY.rawValue, 0)
			}
			open
			func BYREF() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.BYREF.rawValue, 0)
			}
			open
			func ONEWAY() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ONEWAY.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_protocol_qualifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProtocol_qualifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProtocol_qualifier(self)
			}
		}
	}
	@discardableResult
	 open func protocol_qualifier() throws -> Protocol_qualifierContext {
		var _localctx: Protocol_qualifierContext = Protocol_qualifierContext(_ctx, getState())
		try enterRule(_localctx, 82, ObjCParser.RULE_protocol_qualifier)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(597)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Primary_expressionContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func constant() -> ConstantContext? {
				return getRuleContext(ConstantContext.self, 0)
			}
			open
			func STRING_LITERAL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.STRING_LITERAL.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func SELF() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SELF.rawValue, 0)
			}
			open
			func SUPER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SUPER.rawValue, 0)
			}
			open
			func message_expression() -> Message_expressionContext? {
				return getRuleContext(Message_expressionContext.self, 0)
			}
			open
			func selector_expression() -> Selector_expressionContext? {
				return getRuleContext(Selector_expressionContext.self, 0)
			}
			open
			func protocol_expression() -> Protocol_expressionContext? {
				return getRuleContext(Protocol_expressionContext.self, 0)
			}
			open
			func encode_expression() -> Encode_expressionContext? {
				return getRuleContext(Encode_expressionContext.self, 0)
			}
			open
			func dictionary_expression() -> Dictionary_expressionContext? {
				return getRuleContext(Dictionary_expressionContext.self, 0)
			}
			open
			func array_expression() -> Array_expressionContext? {
				return getRuleContext(Array_expressionContext.self, 0)
			}
			open
			func box_expression() -> Box_expressionContext? {
				return getRuleContext(Box_expressionContext.self, 0)
			}
			open
			func block_expression() -> Block_expressionContext? {
				return getRuleContext(Block_expressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_primary_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterPrimary_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitPrimary_expression(self)
			}
		}
	}
	@discardableResult
	 open func primary_expression() throws -> Primary_expressionContext {
		var _localctx: Primary_expressionContext = Primary_expressionContext(_ctx, getState())
		try enterRule(_localctx, 84, ObjCParser.RULE_primary_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(616)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,50, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(599)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(600)
		 		try constant()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(601)
		 		try match(ObjCParser.Tokens.STRING_LITERAL.rawValue)

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(602)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(603)
		 		try expression()
		 		setState(604)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)


		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(606)
		 		try match(ObjCParser.Tokens.SELF.rawValue)

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(607)
		 		try match(ObjCParser.Tokens.SUPER.rawValue)

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(608)
		 		try message_expression()

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(609)
		 		try selector_expression()

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(610)
		 		try protocol_expression()

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(611)
		 		try encode_expression()

		 		break
		 	case 11:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(612)
		 		try dictionary_expression()

		 		break
		 	case 12:
		 		try enterOuterAlt(_localctx, 12)
		 		setState(613)
		 		try array_expression()

		 		break
		 	case 13:
		 		try enterOuterAlt(_localctx, 13)
		 		setState(614)
		 		try box_expression()

		 		break
		 	case 14:
		 		try enterOuterAlt(_localctx, 14)
		 		setState(615)
		 		try block_expression()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Dictionary_pairContext: ParserRuleContext {
			open
			func postfix_expression() -> [Postfix_expressionContext] {
				return getRuleContexts(Postfix_expressionContext.self)
			}
			open
			func postfix_expression(_ i: Int) -> Postfix_expressionContext? {
				return getRuleContext(Postfix_expressionContext.self, i)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_dictionary_pair
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterDictionary_pair(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitDictionary_pair(self)
			}
		}
	}
	@discardableResult
	 open func dictionary_pair() throws -> Dictionary_pairContext {
		var _localctx: Dictionary_pairContext = Dictionary_pairContext(_ctx, getState())
		try enterRule(_localctx, 86, ObjCParser.RULE_dictionary_pair)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(618)
		 	try postfix_expression()
		 	setState(619)
		 	try match(ObjCParser.Tokens.COLON.rawValue)
		 	setState(620)
		 	try postfix_expression()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Dictionary_expressionContext: ParserRuleContext {
			open
			func AT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.AT.rawValue, 0)
			}
			open
			func LBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func dictionary_pair() -> [Dictionary_pairContext] {
				return getRuleContexts(Dictionary_pairContext.self)
			}
			open
			func dictionary_pair(_ i: Int) -> Dictionary_pairContext? {
				return getRuleContext(Dictionary_pairContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_dictionary_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterDictionary_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitDictionary_expression(self)
			}
		}
	}
	@discardableResult
	 open func dictionary_expression() throws -> Dictionary_expressionContext {
		var _localctx: Dictionary_expressionContext = Dictionary_expressionContext(_ctx, getState())
		try enterRule(_localctx, 88, ObjCParser.RULE_dictionary_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(622)
		 	try match(ObjCParser.Tokens.AT.rawValue)
		 	setState(623)
		 	try match(ObjCParser.Tokens.LBRACE.rawValue)
		 	setState(625)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 69)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(624)
		 		try dictionary_pair()

		 	}

		 	setState(631)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,52,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(627)
		 			try match(ObjCParser.Tokens.COMMA.rawValue)
		 			setState(628)
		 			try dictionary_pair()

		 	 
		 		}
		 		setState(633)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,52,_ctx)
		 	}
		 	setState(635)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(634)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)

		 	}

		 	setState(637)
		 	try match(ObjCParser.Tokens.RBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Array_expressionContext: ParserRuleContext {
			open
			func AT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.AT.rawValue, 0)
			}
			open
			func LBRACK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACK.rawValue, 0)
			}
			open
			func RBRACK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACK.rawValue, 0)
			}
			open
			func postfix_expression() -> [Postfix_expressionContext] {
				return getRuleContexts(Postfix_expressionContext.self)
			}
			open
			func postfix_expression(_ i: Int) -> Postfix_expressionContext? {
				return getRuleContext(Postfix_expressionContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_array_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterArray_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitArray_expression(self)
			}
		}
	}
	@discardableResult
	 open func array_expression() throws -> Array_expressionContext {
		var _localctx: Array_expressionContext = Array_expressionContext(_ctx, getState())
		try enterRule(_localctx, 90, ObjCParser.RULE_array_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(639)
		 	try match(ObjCParser.Tokens.AT.rawValue)
		 	setState(640)
		 	try match(ObjCParser.Tokens.LBRACK.rawValue)
		 	setState(642)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 69)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(641)
		 		try postfix_expression()

		 	}

		 	setState(648)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,55,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(644)
		 			try match(ObjCParser.Tokens.COMMA.rawValue)
		 			setState(645)
		 			try postfix_expression()

		 	 
		 		}
		 		setState(650)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,55,_ctx)
		 	}
		 	setState(652)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(651)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)

		 	}

		 	setState(654)
		 	try match(ObjCParser.Tokens.RBRACK.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Box_expressionContext: ParserRuleContext {
			open
			func AT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.AT.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func postfix_expression() -> Postfix_expressionContext? {
				return getRuleContext(Postfix_expressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func constant() -> ConstantContext? {
				return getRuleContext(ConstantContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_box_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterBox_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitBox_expression(self)
			}
		}
	}
	@discardableResult
	 open func box_expression() throws -> Box_expressionContext {
		var _localctx: Box_expressionContext = Box_expressionContext(_ctx, getState())
		try enterRule(_localctx, 92, ObjCParser.RULE_box_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(663)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,57, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(656)
		 		try match(ObjCParser.Tokens.AT.rawValue)
		 		setState(657)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(658)
		 		try postfix_expression()
		 		setState(659)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(661)
		 		try match(ObjCParser.Tokens.AT.rawValue)
		 		setState(662)
		 		try constant()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Block_parametersContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func type_variable_declarator() -> [Type_variable_declaratorContext] {
				return getRuleContexts(Type_variable_declaratorContext.self)
			}
			open
			func type_variable_declarator(_ i: Int) -> Type_variable_declaratorContext? {
				return getRuleContext(Type_variable_declaratorContext.self, i)
			}
			open
			func VOID() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.VOID.rawValue, 0)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_block_parameters
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterBlock_parameters(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitBlock_parameters(self)
			}
		}
	}
	@discardableResult
	 open func block_parameters() throws -> Block_parametersContext {
		var _localctx: Block_parametersContext = Block_parametersContext(_ctx, getState())
		try enterRule(_localctx, 94, ObjCParser.RULE_block_parameters)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(665)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(668)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,58,_ctx)) {
		 	case 1:
		 		setState(666)
		 		try type_variable_declarator()

		 		break
		 	case 2:
		 		setState(667)
		 		try match(ObjCParser.Tokens.VOID.rawValue)

		 		break
		 	default: break
		 	}
		 	setState(674)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(670)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(671)
		 		try type_variable_declarator()


		 		setState(676)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(677)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Block_expressionContext: ParserRuleContext {
			open
			func CARET() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CARET.rawValue, 0)
			}
			open
			func compound_statement() -> Compound_statementContext? {
				return getRuleContext(Compound_statementContext.self, 0)
			}
			open
			func type_specifier() -> Type_specifierContext? {
				return getRuleContext(Type_specifierContext.self, 0)
			}
			open
			func block_parameters() -> Block_parametersContext? {
				return getRuleContext(Block_parametersContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_block_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterBlock_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitBlock_expression(self)
			}
		}
	}
	@discardableResult
	 open func block_expression() throws -> Block_expressionContext {
		var _localctx: Block_expressionContext = Block_expressionContext(_ctx, getState())
		try enterRule(_localctx, 96, ObjCParser.RULE_block_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(679)
		 	try match(ObjCParser.Tokens.CARET.rawValue)
		 	setState(681)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 65)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(680)
		 		try type_specifier()

		 	}

		 	setState(684)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.LPAREN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(683)
		 		try block_parameters()

		 	}

		 	setState(686)
		 	try compound_statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Message_expressionContext: ParserRuleContext {
			open
			func LBRACK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACK.rawValue, 0)
			}
			open
			func receiver() -> ReceiverContext? {
				return getRuleContext(ReceiverContext.self, 0)
			}
			open
			func message_selector() -> Message_selectorContext? {
				return getRuleContext(Message_selectorContext.self, 0)
			}
			open
			func RBRACK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACK.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_message_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterMessage_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitMessage_expression(self)
			}
		}
	}
	@discardableResult
	 open func message_expression() throws -> Message_expressionContext {
		var _localctx: Message_expressionContext = Message_expressionContext(_ctx, getState())
		try enterRule(_localctx, 98, ObjCParser.RULE_message_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(688)
		 	try match(ObjCParser.Tokens.LBRACK.rawValue)
		 	setState(689)
		 	try receiver()
		 	setState(690)
		 	try message_selector()
		 	setState(691)
		 	try match(ObjCParser.Tokens.RBRACK.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ReceiverContext: ParserRuleContext {
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func class_name() -> Class_nameContext? {
				return getRuleContext(Class_nameContext.self, 0)
			}
			open
			func SUPER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SUPER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_receiver
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterReceiver(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitReceiver(self)
			}
		}
	}
	@discardableResult
	 open func receiver() throws -> ReceiverContext {
		var _localctx: ReceiverContext = ReceiverContext(_ctx, getState())
		try enterRule(_localctx, 100, ObjCParser.RULE_receiver)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(696)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,62, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(693)
		 		try expression()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(694)
		 		try class_name()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(695)
		 		try match(ObjCParser.Tokens.SUPER.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Message_selectorContext: ParserRuleContext {
			open
			func selector() -> SelectorContext? {
				return getRuleContext(SelectorContext.self, 0)
			}
			open
			func keyword_argument() -> [Keyword_argumentContext] {
				return getRuleContexts(Keyword_argumentContext.self)
			}
			open
			func keyword_argument(_ i: Int) -> Keyword_argumentContext? {
				return getRuleContext(Keyword_argumentContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_message_selector
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterMessage_selector(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitMessage_selector(self)
			}
		}
	}
	@discardableResult
	 open func message_selector() throws -> Message_selectorContext {
		var _localctx: Message_selectorContext = Message_selectorContext(_ctx, getState())
		try enterRule(_localctx, 102, ObjCParser.RULE_message_selector)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(704)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,64, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(698)
		 		try selector()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(700) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(699)
		 			try keyword_argument()


		 			setState(702); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.COLON.rawValue || _la == ObjCParser.Tokens.IDENTIFIER.rawValue
		 		      return testSet
		 		 }())

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Keyword_argumentContext: ParserRuleContext {
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func selector() -> SelectorContext? {
				return getRuleContext(SelectorContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_keyword_argument
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterKeyword_argument(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitKeyword_argument(self)
			}
		}
	}
	@discardableResult
	 open func keyword_argument() throws -> Keyword_argumentContext {
		var _localctx: Keyword_argumentContext = Keyword_argumentContext(_ctx, getState())
		try enterRule(_localctx, 104, ObjCParser.RULE_keyword_argument)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(707)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.IDENTIFIER.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(706)
		 		try selector()

		 	}

		 	setState(709)
		 	try match(ObjCParser.Tokens.COLON.rawValue)
		 	setState(710)
		 	try expression()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Selector_expressionContext: ParserRuleContext {
			open
			func SELECTOR() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SELECTOR.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func selector_name() -> Selector_nameContext? {
				return getRuleContext(Selector_nameContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_selector_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterSelector_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitSelector_expression(self)
			}
		}
	}
	@discardableResult
	 open func selector_expression() throws -> Selector_expressionContext {
		var _localctx: Selector_expressionContext = Selector_expressionContext(_ctx, getState())
		try enterRule(_localctx, 106, ObjCParser.RULE_selector_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(712)
		 	try match(ObjCParser.Tokens.SELECTOR.rawValue)
		 	setState(713)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(714)
		 	try selector_name()
		 	setState(715)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Selector_nameContext: ParserRuleContext {
			open
			func selector() -> [SelectorContext] {
				return getRuleContexts(SelectorContext.self)
			}
			open
			func selector(_ i: Int) -> SelectorContext? {
				return getRuleContext(SelectorContext.self, i)
			}
			open
			func COLON() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COLON.rawValue)
			}
			open
			func COLON(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_selector_name
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterSelector_name(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitSelector_name(self)
			}
		}
	}
	@discardableResult
	 open func selector_name() throws -> Selector_nameContext {
		var _localctx: Selector_nameContext = Selector_nameContext(_ctx, getState())
		try enterRule(_localctx, 108, ObjCParser.RULE_selector_name)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(726)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,68, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(717)
		 		try selector()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(722) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(719)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = _la == ObjCParser.Tokens.IDENTIFIER.rawValue
		 			      return testSet
		 			 }()) {
		 				setState(718)
		 				try selector()

		 			}

		 			setState(721)
		 			try match(ObjCParser.Tokens.COLON.rawValue)


		 			setState(724); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.COLON.rawValue || _la == ObjCParser.Tokens.IDENTIFIER.rawValue
		 		      return testSet
		 		 }())

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Protocol_expressionContext: ParserRuleContext {
			open
			func PROTOCOL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.PROTOCOL.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func protocol_name() -> Protocol_nameContext? {
				return getRuleContext(Protocol_nameContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_protocol_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterProtocol_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitProtocol_expression(self)
			}
		}
	}
	@discardableResult
	 open func protocol_expression() throws -> Protocol_expressionContext {
		var _localctx: Protocol_expressionContext = Protocol_expressionContext(_ctx, getState())
		try enterRule(_localctx, 110, ObjCParser.RULE_protocol_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(728)
		 	try match(ObjCParser.Tokens.PROTOCOL.rawValue)
		 	setState(729)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(730)
		 	try protocol_name()
		 	setState(731)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Encode_expressionContext: ParserRuleContext {
			open
			func ENCODE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ENCODE.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func type_name() -> Type_nameContext? {
				return getRuleContext(Type_nameContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_encode_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterEncode_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitEncode_expression(self)
			}
		}
	}
	@discardableResult
	 open func encode_expression() throws -> Encode_expressionContext {
		var _localctx: Encode_expressionContext = Encode_expressionContext(_ctx, getState())
		try enterRule(_localctx, 112, ObjCParser.RULE_encode_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(733)
		 	try match(ObjCParser.Tokens.ENCODE.rawValue)
		 	setState(734)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(735)
		 	try type_name()
		 	setState(736)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Type_variable_declaratorContext: ParserRuleContext {
			open
			func declaration_specifiers() -> Declaration_specifiersContext? {
				return getRuleContext(Declaration_specifiersContext.self, 0)
			}
			open
			func declarator() -> DeclaratorContext? {
				return getRuleContext(DeclaratorContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_type_variable_declarator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterType_variable_declarator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitType_variable_declarator(self)
			}
		}
	}
	@discardableResult
	 open func type_variable_declarator() throws -> Type_variable_declaratorContext {
		var _localctx: Type_variable_declaratorContext = Type_variable_declaratorContext(_ctx, getState())
		try enterRule(_localctx, 114, ObjCParser.RULE_type_variable_declarator)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(738)
		 	try declaration_specifiers()
		 	setState(739)
		 	try declarator()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Try_statementContext: ParserRuleContext {
			open
			func TRY() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.TRY.rawValue, 0)
			}
			open
			func compound_statement() -> Compound_statementContext? {
				return getRuleContext(Compound_statementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_try_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterTry_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitTry_statement(self)
			}
		}
	}
	@discardableResult
	 open func try_statement() throws -> Try_statementContext {
		var _localctx: Try_statementContext = Try_statementContext(_ctx, getState())
		try enterRule(_localctx, 116, ObjCParser.RULE_try_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(741)
		 	try match(ObjCParser.Tokens.TRY.rawValue)
		 	setState(742)
		 	try compound_statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Catch_statementContext: ParserRuleContext {
			open
			func CATCH() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CATCH.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func type_variable_declarator() -> Type_variable_declaratorContext? {
				return getRuleContext(Type_variable_declaratorContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func compound_statement() -> Compound_statementContext? {
				return getRuleContext(Compound_statementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_catch_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterCatch_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitCatch_statement(self)
			}
		}
	}
	@discardableResult
	 open func catch_statement() throws -> Catch_statementContext {
		var _localctx: Catch_statementContext = Catch_statementContext(_ctx, getState())
		try enterRule(_localctx, 118, ObjCParser.RULE_catch_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(744)
		 	try match(ObjCParser.Tokens.CATCH.rawValue)
		 	setState(745)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(746)
		 	try type_variable_declarator()
		 	setState(747)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)
		 	setState(748)
		 	try compound_statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Finally_statementContext: ParserRuleContext {
			open
			func FINALLY() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.FINALLY.rawValue, 0)
			}
			open
			func compound_statement() -> Compound_statementContext? {
				return getRuleContext(Compound_statementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_finally_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterFinally_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitFinally_statement(self)
			}
		}
	}
	@discardableResult
	 open func finally_statement() throws -> Finally_statementContext {
		var _localctx: Finally_statementContext = Finally_statementContext(_ctx, getState())
		try enterRule(_localctx, 120, ObjCParser.RULE_finally_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(750)
		 	try match(ObjCParser.Tokens.FINALLY.rawValue)
		 	setState(751)
		 	try compound_statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Throw_statementContext: ParserRuleContext {
			open
			func THROW() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.THROW.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_throw_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterThrow_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitThrow_statement(self)
			}
		}
	}
	@discardableResult
	 open func throw_statement() throws -> Throw_statementContext {
		var _localctx: Throw_statementContext = Throw_statementContext(_ctx, getState())
		try enterRule(_localctx, 122, ObjCParser.RULE_throw_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(753)
		 	try match(ObjCParser.Tokens.THROW.rawValue)
		 	setState(754)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(755)
		 	try match(ObjCParser.Tokens.IDENTIFIER.rawValue)
		 	setState(756)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Try_blockContext: ParserRuleContext {
			open
			func try_statement() -> Try_statementContext? {
				return getRuleContext(Try_statementContext.self, 0)
			}
			open
			func catch_statement() -> [Catch_statementContext] {
				return getRuleContexts(Catch_statementContext.self)
			}
			open
			func catch_statement(_ i: Int) -> Catch_statementContext? {
				return getRuleContext(Catch_statementContext.self, i)
			}
			open
			func finally_statement() -> Finally_statementContext? {
				return getRuleContext(Finally_statementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_try_block
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterTry_block(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitTry_block(self)
			}
		}
	}
	@discardableResult
	 open func try_block() throws -> Try_blockContext {
		var _localctx: Try_blockContext = Try_blockContext(_ctx, getState())
		try enterRule(_localctx, 124, ObjCParser.RULE_try_block)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(758)
		 	try try_statement()
		 	setState(762)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.CATCH.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(759)
		 		try catch_statement()


		 		setState(764)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(766)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.FINALLY.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(765)
		 		try finally_statement()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Synchronized_statementContext: ParserRuleContext {
			open
			func SYNCHRONIZED() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SYNCHRONIZED.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func primary_expression() -> Primary_expressionContext? {
				return getRuleContext(Primary_expressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func compound_statement() -> Compound_statementContext? {
				return getRuleContext(Compound_statementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_synchronized_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterSynchronized_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitSynchronized_statement(self)
			}
		}
	}
	@discardableResult
	 open func synchronized_statement() throws -> Synchronized_statementContext {
		var _localctx: Synchronized_statementContext = Synchronized_statementContext(_ctx, getState())
		try enterRule(_localctx, 126, ObjCParser.RULE_synchronized_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(768)
		 	try match(ObjCParser.Tokens.SYNCHRONIZED.rawValue)
		 	setState(769)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(770)
		 	try primary_expression()
		 	setState(771)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)
		 	setState(772)
		 	try compound_statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Autorelease_statementContext: ParserRuleContext {
			open
			func AUTORELEASEPOOL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.AUTORELEASEPOOL.rawValue, 0)
			}
			open
			func compound_statement() -> Compound_statementContext? {
				return getRuleContext(Compound_statementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_autorelease_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterAutorelease_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitAutorelease_statement(self)
			}
		}
	}
	@discardableResult
	 open func autorelease_statement() throws -> Autorelease_statementContext {
		var _localctx: Autorelease_statementContext = Autorelease_statementContext(_ctx, getState())
		try enterRule(_localctx, 128, ObjCParser.RULE_autorelease_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(774)
		 	try match(ObjCParser.Tokens.AUTORELEASEPOOL.rawValue)
		 	setState(775)
		 	try compound_statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Function_definitionContext: ParserRuleContext {
			open
			func declarator() -> DeclaratorContext? {
				return getRuleContext(DeclaratorContext.self, 0)
			}
			open
			func compound_statement() -> Compound_statementContext? {
				return getRuleContext(Compound_statementContext.self, 0)
			}
			open
			func declaration_specifiers() -> Declaration_specifiersContext? {
				return getRuleContext(Declaration_specifiersContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_function_definition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterFunction_definition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitFunction_definition(self)
			}
		}
	}
	@discardableResult
	 open func function_definition() throws -> Function_definitionContext {
		var _localctx: Function_definitionContext = Function_definitionContext(_ctx, getState())
		try enterRule(_localctx, 130, ObjCParser.RULE_function_definition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(778)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,71,_ctx)) {
		 	case 1:
		 		setState(777)
		 		try declaration_specifiers()

		 		break
		 	default: break
		 	}
		 	setState(780)
		 	try declarator()
		 	setState(781)
		 	try compound_statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DeclarationContext: ParserRuleContext {
			open
			func declaration_specifiers() -> Declaration_specifiersContext? {
				return getRuleContext(Declaration_specifiersContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func init_declarator_list() -> Init_declarator_listContext? {
				return getRuleContext(Init_declarator_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitDeclaration(self)
			}
		}
	}
	@discardableResult
	 open func declaration() throws -> DeclarationContext {
		var _localctx: DeclarationContext = DeclarationContext(_ctx, getState())
		try enterRule(_localctx, 132, ObjCParser.RULE_declaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(783)
		 	try declaration_specifiers()
		 	setState(785)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 69)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(784)
		 		try init_declarator_list()

		 	}

		 	setState(787)
		 	try match(ObjCParser.Tokens.SEMI.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Declaration_specifiersContext: ParserRuleContext {
			open
			func arc_behaviour_specifier() -> [Arc_behaviour_specifierContext] {
				return getRuleContexts(Arc_behaviour_specifierContext.self)
			}
			open
			func arc_behaviour_specifier(_ i: Int) -> Arc_behaviour_specifierContext? {
				return getRuleContext(Arc_behaviour_specifierContext.self, i)
			}
			open
			func storage_class_specifier() -> [Storage_class_specifierContext] {
				return getRuleContexts(Storage_class_specifierContext.self)
			}
			open
			func storage_class_specifier(_ i: Int) -> Storage_class_specifierContext? {
				return getRuleContext(Storage_class_specifierContext.self, i)
			}
			open
			func type_specifier() -> [Type_specifierContext] {
				return getRuleContexts(Type_specifierContext.self)
			}
			open
			func type_specifier(_ i: Int) -> Type_specifierContext? {
				return getRuleContext(Type_specifierContext.self, i)
			}
			open
			func type_qualifier() -> [Type_qualifierContext] {
				return getRuleContexts(Type_qualifierContext.self)
			}
			open
			func type_qualifier(_ i: Int) -> Type_qualifierContext? {
				return getRuleContext(Type_qualifierContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_declaration_specifiers
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterDeclaration_specifiers(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitDeclaration_specifiers(self)
			}
		}
	}
	@discardableResult
	 open func declaration_specifiers() throws -> Declaration_specifiersContext {
		var _localctx: Declaration_specifiersContext = Declaration_specifiersContext(_ctx, getState())
		try enterRule(_localctx, 134, ObjCParser.RULE_declaration_specifiers)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(793); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(793)
		 			try _errHandler.sync(self)
		 			switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 			case .WWEAK:fallthrough
		 			case .WUNSAFE_UNRETAINED:
		 				setState(789)
		 				try arc_behaviour_specifier()

		 				break
		 			case .AUTO:fallthrough
		 			case .EXTERN:fallthrough
		 			case .REGISTER:fallthrough
		 			case .STATIC:fallthrough
		 			case .TYPEDEF:
		 				setState(790)
		 				try storage_class_specifier()

		 				break
		 			case .CHAR:fallthrough
		 			case .DOUBLE:fallthrough
		 			case .ENUM:fallthrough
		 			case .FLOAT:fallthrough
		 			case .ID:fallthrough
		 			case .INT:fallthrough
		 			case .LONG:fallthrough
		 			case .SHORT:fallthrough
		 			case .SIGNED:fallthrough
		 			case .STRUCT:fallthrough
		 			case .UNION:fallthrough
		 			case .UNSIGNED:fallthrough
		 			case .VOID:fallthrough
		 			case .NS_OPTIONS:fallthrough
		 			case .NS_ENUM:fallthrough
		 			case .IDENTIFIER:
		 				setState(791)
		 				try type_specifier()

		 				break
		 			case .BYCOPY:fallthrough
		 			case .BYREF:fallthrough
		 			case .CONST:fallthrough
		 			case .IN:fallthrough
		 			case .INOUT:fallthrough
		 			case .ONEWAY:fallthrough
		 			case .OUT:fallthrough
		 			case .VOLATILE:
		 				setState(792)
		 				try type_qualifier()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(795); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,74,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Arc_behaviour_specifierContext: ParserRuleContext {
			open
			func WUNSAFE_UNRETAINED() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue, 0)
			}
			open
			func WWEAK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.WWEAK.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_arc_behaviour_specifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterArc_behaviour_specifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitArc_behaviour_specifier(self)
			}
		}
	}
	@discardableResult
	 open func arc_behaviour_specifier() throws -> Arc_behaviour_specifierContext {
		var _localctx: Arc_behaviour_specifierContext = Arc_behaviour_specifierContext(_ctx, getState())
		try enterRule(_localctx, 136, ObjCParser.RULE_arc_behaviour_specifier)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(797)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.WWEAK.rawValue || _la == ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Storage_class_specifierContext: ParserRuleContext {
			open
			func AUTO() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.AUTO.rawValue, 0)
			}
			open
			func REGISTER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.REGISTER.rawValue, 0)
			}
			open
			func STATIC() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.STATIC.rawValue, 0)
			}
			open
			func EXTERN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.EXTERN.rawValue, 0)
			}
			open
			func TYPEDEF() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.TYPEDEF.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_storage_class_specifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterStorage_class_specifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitStorage_class_specifier(self)
			}
		}
	}
	@discardableResult
	 open func storage_class_specifier() throws -> Storage_class_specifierContext {
		var _localctx: Storage_class_specifierContext = Storage_class_specifierContext(_ctx, getState())
		try enterRule(_localctx, 138, ObjCParser.RULE_storage_class_specifier)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(799)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Init_declarator_listContext: ParserRuleContext {
			open
			func init_declarator() -> [Init_declaratorContext] {
				return getRuleContexts(Init_declaratorContext.self)
			}
			open
			func init_declarator(_ i: Int) -> Init_declaratorContext? {
				return getRuleContext(Init_declaratorContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_init_declarator_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterInit_declarator_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitInit_declarator_list(self)
			}
		}
	}
	@discardableResult
	 open func init_declarator_list() throws -> Init_declarator_listContext {
		var _localctx: Init_declarator_listContext = Init_declarator_listContext(_ctx, getState())
		try enterRule(_localctx, 140, ObjCParser.RULE_init_declarator_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(801)
		 	try init_declarator()
		 	setState(806)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(802)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(803)
		 		try init_declarator()


		 		setState(808)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Init_declaratorContext: ParserRuleContext {
			open
			func declarator() -> DeclaratorContext? {
				return getRuleContext(DeclaratorContext.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func initializer() -> InitializerContext? {
				return getRuleContext(InitializerContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_init_declarator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterInit_declarator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitInit_declarator(self)
			}
		}
	}
	@discardableResult
	 open func init_declarator() throws -> Init_declaratorContext {
		var _localctx: Init_declaratorContext = Init_declaratorContext(_ctx, getState())
		try enterRule(_localctx, 142, ObjCParser.RULE_init_declarator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(809)
		 	try declarator()
		 	setState(812)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.ASSIGN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(810)
		 		try match(ObjCParser.Tokens.ASSIGN.rawValue)
		 		setState(811)
		 		try initializer()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Struct_or_union_specifierContext: ParserRuleContext {
			open
			func STRUCT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.STRUCT.rawValue, 0)
			}
			open
			func UNION() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.UNION.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func LBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func struct_declaration() -> [Struct_declarationContext] {
				return getRuleContexts(Struct_declarationContext.self)
			}
			open
			func struct_declaration(_ i: Int) -> Struct_declarationContext? {
				return getRuleContext(Struct_declarationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_struct_or_union_specifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterStruct_or_union_specifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitStruct_or_union_specifier(self)
			}
		}
	}
	@discardableResult
	 open func struct_or_union_specifier() throws -> Struct_or_union_specifierContext {
		var _localctx: Struct_or_union_specifierContext = Struct_or_union_specifierContext(_ctx, getState())
		try enterRule(_localctx, 144, ObjCParser.RULE_struct_or_union_specifier)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(814)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.STRUCT.rawValue || _la == ObjCParser.Tokens.UNION.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(827)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,79, _ctx)) {
		 	case 1:
		 		setState(815)
		 		try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	case 2:
		 		setState(817)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.IDENTIFIER.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(816)
		 			try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		 		}

		 		setState(819)
		 		try match(ObjCParser.Tokens.LBRACE.rawValue)
		 		setState(821) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(820)
		 			try struct_declaration()


		 			setState(823); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 65)
		 		          }()
		 		      return testSet
		 		 }())
		 		setState(825)
		 		try match(ObjCParser.Tokens.RBRACE.rawValue)

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Struct_declarationContext: ParserRuleContext {
			open
			func specifier_qualifier_list() -> Specifier_qualifier_listContext? {
				return getRuleContext(Specifier_qualifier_listContext.self, 0)
			}
			open
			func struct_declarator_list() -> Struct_declarator_listContext? {
				return getRuleContext(Struct_declarator_listContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_struct_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterStruct_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitStruct_declaration(self)
			}
		}
	}
	@discardableResult
	 open func struct_declaration() throws -> Struct_declarationContext {
		var _localctx: Struct_declarationContext = Struct_declarationContext(_ctx, getState())
		try enterRule(_localctx, 146, ObjCParser.RULE_struct_declaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(829)
		 	try specifier_qualifier_list()
		 	setState(830)
		 	try struct_declarator_list()
		 	setState(831)
		 	try match(ObjCParser.Tokens.SEMI.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Specifier_qualifier_listContext: ParserRuleContext {
			open
			func arc_behaviour_specifier() -> [Arc_behaviour_specifierContext] {
				return getRuleContexts(Arc_behaviour_specifierContext.self)
			}
			open
			func arc_behaviour_specifier(_ i: Int) -> Arc_behaviour_specifierContext? {
				return getRuleContext(Arc_behaviour_specifierContext.self, i)
			}
			open
			func type_specifier() -> [Type_specifierContext] {
				return getRuleContexts(Type_specifierContext.self)
			}
			open
			func type_specifier(_ i: Int) -> Type_specifierContext? {
				return getRuleContext(Type_specifierContext.self, i)
			}
			open
			func type_qualifier() -> [Type_qualifierContext] {
				return getRuleContexts(Type_qualifierContext.self)
			}
			open
			func type_qualifier(_ i: Int) -> Type_qualifierContext? {
				return getRuleContext(Type_qualifierContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_specifier_qualifier_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterSpecifier_qualifier_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitSpecifier_qualifier_list(self)
			}
		}
	}
	@discardableResult
	 open func specifier_qualifier_list() throws -> Specifier_qualifier_listContext {
		var _localctx: Specifier_qualifier_listContext = Specifier_qualifier_listContext(_ctx, getState())
		try enterRule(_localctx, 148, ObjCParser.RULE_specifier_qualifier_list)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(836); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(836)
		 			try _errHandler.sync(self)
		 			switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 			case .WWEAK:fallthrough
		 			case .WUNSAFE_UNRETAINED:
		 				setState(833)
		 				try arc_behaviour_specifier()

		 				break
		 			case .CHAR:fallthrough
		 			case .DOUBLE:fallthrough
		 			case .ENUM:fallthrough
		 			case .FLOAT:fallthrough
		 			case .ID:fallthrough
		 			case .INT:fallthrough
		 			case .LONG:fallthrough
		 			case .SHORT:fallthrough
		 			case .SIGNED:fallthrough
		 			case .STRUCT:fallthrough
		 			case .UNION:fallthrough
		 			case .UNSIGNED:fallthrough
		 			case .VOID:fallthrough
		 			case .NS_OPTIONS:fallthrough
		 			case .NS_ENUM:fallthrough
		 			case .IDENTIFIER:
		 				setState(834)
		 				try type_specifier()

		 				break
		 			case .BYCOPY:fallthrough
		 			case .BYREF:fallthrough
		 			case .CONST:fallthrough
		 			case .IN:fallthrough
		 			case .INOUT:fallthrough
		 			case .ONEWAY:fallthrough
		 			case .OUT:fallthrough
		 			case .VOLATILE:
		 				setState(835)
		 				try type_qualifier()

		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(838); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,81,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Struct_declarator_listContext: ParserRuleContext {
			open
			func struct_declarator() -> [Struct_declaratorContext] {
				return getRuleContexts(Struct_declaratorContext.self)
			}
			open
			func struct_declarator(_ i: Int) -> Struct_declaratorContext? {
				return getRuleContext(Struct_declaratorContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_struct_declarator_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterStruct_declarator_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitStruct_declarator_list(self)
			}
		}
	}
	@discardableResult
	 open func struct_declarator_list() throws -> Struct_declarator_listContext {
		var _localctx: Struct_declarator_listContext = Struct_declarator_listContext(_ctx, getState())
		try enterRule(_localctx, 150, ObjCParser.RULE_struct_declarator_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(840)
		 	try struct_declarator()
		 	setState(845)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(841)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(842)
		 		try struct_declarator()


		 		setState(847)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Struct_declaratorContext: ParserRuleContext {
			open
			func declarator() -> DeclaratorContext? {
				return getRuleContext(DeclaratorContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
			open
			func constant() -> ConstantContext? {
				return getRuleContext(ConstantContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_struct_declarator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterStruct_declarator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitStruct_declarator(self)
			}
		}
	}
	@discardableResult
	 open func struct_declarator() throws -> Struct_declaratorContext {
		var _localctx: Struct_declaratorContext = Struct_declaratorContext(_ctx, getState())
		try enterRule(_localctx, 152, ObjCParser.RULE_struct_declarator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(854)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,84, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(848)
		 		try declarator()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(850)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 69)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(849)
		 			try declarator()

		 		}

		 		setState(852)
		 		try match(ObjCParser.Tokens.COLON.rawValue)
		 		setState(853)
		 		try constant()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Enum_specifierContext: ParserRuleContext {
			open
			func ENUM() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ENUM.rawValue, 0)
			}
			open
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			open
			func LBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func enumerator_list() -> Enumerator_listContext? {
				return getRuleContext(Enumerator_listContext.self, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
			open
			func type_name() -> Type_nameContext? {
				return getRuleContext(Type_nameContext.self, 0)
			}
			open
			func NS_OPTIONS() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.NS_OPTIONS.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func NS_ENUM() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.NS_ENUM.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_enum_specifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterEnum_specifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitEnum_specifier(self)
			}
		}
	}
	@discardableResult
	 open func enum_specifier() throws -> Enum_specifierContext {
		var _localctx: Enum_specifierContext = Enum_specifierContext(_ctx, getState())
		try enterRule(_localctx, 154, ObjCParser.RULE_enum_specifier)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(894)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .ENUM:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(856)
		 		try match(ObjCParser.Tokens.ENUM.rawValue)
		 		setState(859)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.COLON.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(857)
		 			try match(ObjCParser.Tokens.COLON.rawValue)
		 			setState(858)
		 			try type_name()

		 		}

		 		setState(872)
		 		try _errHandler.sync(self)
		 		switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 		case .IDENTIFIER:
		 			setState(861)
		 			try identifier()
		 			setState(866)
		 			try _errHandler.sync(self)
		 			switch (try getInterpreter().adaptivePredict(_input,86,_ctx)) {
		 			case 1:
		 				setState(862)
		 				try match(ObjCParser.Tokens.LBRACE.rawValue)
		 				setState(863)
		 				try enumerator_list()
		 				setState(864)
		 				try match(ObjCParser.Tokens.RBRACE.rawValue)

		 				break
		 			default: break
		 			}

		 			break

		 		case .LBRACE:
		 			setState(868)
		 			try match(ObjCParser.Tokens.LBRACE.rawValue)
		 			setState(869)
		 			try enumerator_list()
		 			setState(870)
		 			try match(ObjCParser.Tokens.RBRACE.rawValue)

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 		break

		 	case .NS_OPTIONS:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(874)
		 		try match(ObjCParser.Tokens.NS_OPTIONS.rawValue)
		 		setState(875)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(876)
		 		try type_name()
		 		setState(877)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(878)
		 		try identifier()
		 		setState(879)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)
		 		setState(880)
		 		try match(ObjCParser.Tokens.LBRACE.rawValue)
		 		setState(881)
		 		try enumerator_list()
		 		setState(882)
		 		try match(ObjCParser.Tokens.RBRACE.rawValue)

		 		break

		 	case .NS_ENUM:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(884)
		 		try match(ObjCParser.Tokens.NS_ENUM.rawValue)
		 		setState(885)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(886)
		 		try type_name()
		 		setState(887)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(888)
		 		try identifier()
		 		setState(889)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)
		 		setState(890)
		 		try match(ObjCParser.Tokens.LBRACE.rawValue)
		 		setState(891)
		 		try enumerator_list()
		 		setState(892)
		 		try match(ObjCParser.Tokens.RBRACE.rawValue)

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

	public class Enumerator_listContext: ParserRuleContext {
			open
			func enumerator() -> [EnumeratorContext] {
				return getRuleContexts(EnumeratorContext.self)
			}
			open
			func enumerator(_ i: Int) -> EnumeratorContext? {
				return getRuleContext(EnumeratorContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_enumerator_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterEnumerator_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitEnumerator_list(self)
			}
		}
	}
	@discardableResult
	 open func enumerator_list() throws -> Enumerator_listContext {
		var _localctx: Enumerator_listContext = Enumerator_listContext(_ctx, getState())
		try enterRule(_localctx, 156, ObjCParser.RULE_enumerator_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(896)
		 	try enumerator()
		 	setState(901)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,89,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(897)
		 			try match(ObjCParser.Tokens.COMMA.rawValue)
		 			setState(898)
		 			try enumerator()

		 	 
		 		}
		 		setState(903)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,89,_ctx)
		 	}
		 	setState(905)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(904)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EnumeratorContext: ParserRuleContext {
			open
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func constant_expression() -> Constant_expressionContext? {
				return getRuleContext(Constant_expressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_enumerator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterEnumerator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitEnumerator(self)
			}
		}
	}
	@discardableResult
	 open func enumerator() throws -> EnumeratorContext {
		var _localctx: EnumeratorContext = EnumeratorContext(_ctx, getState())
		try enterRule(_localctx, 158, ObjCParser.RULE_enumerator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(907)
		 	try identifier()
		 	setState(910)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.ASSIGN.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(908)
		 		try match(ObjCParser.Tokens.ASSIGN.rawValue)
		 		setState(909)
		 		try constant_expression()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PointerContext: ParserRuleContext {
			open
			func MUL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.MUL.rawValue, 0)
			}
			open
			func declaration_specifiers() -> Declaration_specifiersContext? {
				return getRuleContext(Declaration_specifiersContext.self, 0)
			}
			open
			func pointer() -> PointerContext? {
				return getRuleContext(PointerContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_pointer
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterPointer(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitPointer(self)
			}
		}
	}
	@discardableResult
	 open func pointer() throws -> PointerContext {
		var _localctx: PointerContext = PointerContext(_ctx, getState())
		try enterRule(_localctx, 160, ObjCParser.RULE_pointer)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(921)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,94, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(912)
		 		try match(ObjCParser.Tokens.MUL.rawValue)
		 		setState(914)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,92,_ctx)) {
		 		case 1:
		 			setState(913)
		 			try declaration_specifiers()

		 			break
		 		default: break
		 		}

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(916)
		 		try match(ObjCParser.Tokens.MUL.rawValue)
		 		setState(918)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 65)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(917)
		 			try declaration_specifiers()

		 		}

		 		setState(920)
		 		try pointer()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DeclaratorContext: ParserRuleContext {
			open
			func direct_declarator() -> Direct_declaratorContext? {
				return getRuleContext(Direct_declaratorContext.self, 0)
			}
			open
			func pointer() -> PointerContext? {
				return getRuleContext(PointerContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_declarator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterDeclarator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitDeclarator(self)
			}
		}
	}
	@discardableResult
	 open func declarator() throws -> DeclaratorContext {
		var _localctx: DeclaratorContext = DeclaratorContext(_ctx, getState())
		try enterRule(_localctx, 162, ObjCParser.RULE_declarator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(924)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.MUL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(923)
		 		try pointer()

		 	}

		 	setState(926)
		 	try direct_declarator()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Direct_declaratorContext: ParserRuleContext {
			open
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			open
			func declarator_suffix() -> [Declarator_suffixContext] {
				return getRuleContexts(Declarator_suffixContext.self)
			}
			open
			func declarator_suffix(_ i: Int) -> Declarator_suffixContext? {
				return getRuleContext(Declarator_suffixContext.self, i)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func declarator() -> DeclaratorContext? {
				return getRuleContext(DeclaratorContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func CARET() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CARET.rawValue, 0)
			}
			open
			func block_parameters() -> Block_parametersContext? {
				return getRuleContext(Block_parametersContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_direct_declarator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterDirect_declarator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitDirect_declarator(self)
			}
		}
	}
	@discardableResult
	 open func direct_declarator() throws -> Direct_declaratorContext {
		var _localctx: Direct_declaratorContext = Direct_declaratorContext(_ctx, getState())
		try enterRule(_localctx, 164, ObjCParser.RULE_direct_declarator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(951)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,99, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(928)
		 		try identifier()
		 		setState(932)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,96,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(929)
		 				try declarator_suffix()

		 		 
		 			}
		 			setState(934)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,96,_ctx)
		 		}

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(935)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(936)
		 		try declarator()
		 		setState(937)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)
		 		setState(941)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,97,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(938)
		 				try declarator_suffix()

		 		 
		 			}
		 			setState(943)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,97,_ctx)
		 		}

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(944)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(945)
		 		try match(ObjCParser.Tokens.CARET.rawValue)
		 		setState(947)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.IDENTIFIER.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(946)
		 			try identifier()

		 		}

		 		setState(949)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)
		 		setState(950)
		 		try block_parameters()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Declarator_suffixContext: ParserRuleContext {
			open
			func LBRACK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACK.rawValue, 0)
			}
			open
			func RBRACK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACK.rawValue, 0)
			}
			open
			func constant_expression() -> Constant_expressionContext? {
				return getRuleContext(Constant_expressionContext.self, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func parameter_list() -> Parameter_listContext? {
				return getRuleContext(Parameter_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_declarator_suffix
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterDeclarator_suffix(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitDeclarator_suffix(self)
			}
		}
	}
	@discardableResult
	 open func declarator_suffix() throws -> Declarator_suffixContext {
		var _localctx: Declarator_suffixContext = Declarator_suffixContext(_ctx, getState())
		try enterRule(_localctx, 166, ObjCParser.RULE_declarator_suffix)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(963)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LBRACK:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(953)
		 		try match(ObjCParser.Tokens.LBRACK.rawValue)
		 		setState(955)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue,ObjCParser.Tokens.SIZEOF.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 69)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(954)
		 			try constant_expression()

		 		}

		 		setState(957)
		 		try match(ObjCParser.Tokens.RBRACK.rawValue)

		 		break

		 	case .LPAREN:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(958)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(960)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 65)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(959)
		 			try parameter_list()

		 		}

		 		setState(962)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)

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

	public class Parameter_listContext: ParserRuleContext {
			open
			func parameter_declaration_list() -> Parameter_declaration_listContext? {
				return getRuleContext(Parameter_declaration_listContext.self, 0)
			}
			open
			func COMMA() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, 0)
			}
			open
			func ELIPSIS() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ELIPSIS.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_parameter_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterParameter_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitParameter_list(self)
			}
		}
	}
	@discardableResult
	 open func parameter_list() throws -> Parameter_listContext {
		var _localctx: Parameter_listContext = Parameter_listContext(_ctx, getState())
		try enterRule(_localctx, 168, ObjCParser.RULE_parameter_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(965)
		 	try parameter_declaration_list()
		 	setState(968)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(966)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(967)
		 		try match(ObjCParser.Tokens.ELIPSIS.rawValue)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Parameter_declarationContext: ParserRuleContext {
			open
			func declaration_specifiers() -> Declaration_specifiersContext? {
				return getRuleContext(Declaration_specifiersContext.self, 0)
			}
			open
			func abstract_declarator() -> Abstract_declaratorContext? {
				return getRuleContext(Abstract_declaratorContext.self, 0)
			}
			open
			func declarator() -> DeclaratorContext? {
				return getRuleContext(DeclaratorContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_parameter_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterParameter_declaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitParameter_declaration(self)
			}
		}
	}
	@discardableResult
	 open func parameter_declaration() throws -> Parameter_declarationContext {
		var _localctx: Parameter_declarationContext = Parameter_declarationContext(_ctx, getState())
		try enterRule(_localctx, 170, ObjCParser.RULE_parameter_declaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(970)
		 	try declaration_specifiers()
		 	setState(975)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,105, _ctx)) {
		 	case 1:
		 		setState(972)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,104,_ctx)) {
		 		case 1:
		 			setState(971)
		 			try declarator()

		 			break
		 		default: break
		 		}

		 		break
		 	case 2:
		 		setState(974)
		 		try abstract_declarator()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class InitializerContext: ParserRuleContext {
			open
			func assignment_expression() -> Assignment_expressionContext? {
				return getRuleContext(Assignment_expressionContext.self, 0)
			}
			open
			func LBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func initializer() -> [InitializerContext] {
				return getRuleContexts(InitializerContext.self)
			}
			open
			func initializer(_ i: Int) -> InitializerContext? {
				return getRuleContext(InitializerContext.self, i)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_initializer
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterInitializer(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitInitializer(self)
			}
		}
	}
	@discardableResult
	 open func initializer() throws -> InitializerContext {
		var _localctx: InitializerContext = InitializerContext(_ctx, getState())
		try enterRule(_localctx, 172, ObjCParser.RULE_initializer)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(992)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .ENCODE:fallthrough
		 	case .PROTOCOL:fallthrough
		 	case .SELECTOR:fallthrough
		 	case .SUPER:fallthrough
		 	case .SELF:fallthrough
		 	case .SIZEOF:fallthrough
		 	case .LPAREN:fallthrough
		 	case .LBRACK:fallthrough
		 	case .AT:fallthrough
		 	case .BANG:fallthrough
		 	case .TILDE:fallthrough
		 	case .INC:fallthrough
		 	case .DEC:fallthrough
		 	case .SUB:fallthrough
		 	case .MUL:fallthrough
		 	case .BITAND:fallthrough
		 	case .CARET:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .CHARACTER_LITERAL:fallthrough
		 	case .STRING_LITERAL:fallthrough
		 	case .HEX_LITERAL:fallthrough
		 	case .DECIMAL_LITERAL:fallthrough
		 	case .OCTAL_LITERAL:fallthrough
		 	case .FLOATING_POINT_LITERAL:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(977)
		 		try assignment_expression()

		 		break

		 	case .LBRACE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(978)
		 		try match(ObjCParser.Tokens.LBRACE.rawValue)
		 		setState(979)
		 		try initializer()
		 		setState(984)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,106,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(980)
		 				try match(ObjCParser.Tokens.COMMA.rawValue)
		 				setState(981)
		 				try initializer()

		 		 
		 			}
		 			setState(986)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,106,_ctx)
		 		}
		 		setState(988)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(987)
		 			try match(ObjCParser.Tokens.COMMA.rawValue)

		 		}

		 		setState(990)
		 		try match(ObjCParser.Tokens.RBRACE.rawValue)

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

	public class Type_nameContext: ParserRuleContext {
			open
			func specifier_qualifier_list() -> Specifier_qualifier_listContext? {
				return getRuleContext(Specifier_qualifier_listContext.self, 0)
			}
			open
			func abstract_declarator() -> Abstract_declaratorContext? {
				return getRuleContext(Abstract_declaratorContext.self, 0)
			}
			open
			func block_type() -> Block_typeContext? {
				return getRuleContext(Block_typeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_type_name
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterType_name(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitType_name(self)
			}
		}
	}
	@discardableResult
	 open func type_name() throws -> Type_nameContext {
		var _localctx: Type_nameContext = Type_nameContext(_ctx, getState())
		try enterRule(_localctx, 174, ObjCParser.RULE_type_name)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(998)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,109, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(994)
		 		try specifier_qualifier_list()
		 		setState(995)
		 		try abstract_declarator()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(997)
		 		try block_type()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Abstract_declaratorContext: ParserRuleContext {
			open
			func pointer() -> PointerContext? {
				return getRuleContext(PointerContext.self, 0)
			}
			open
			func abstract_declarator() -> Abstract_declaratorContext? {
				return getRuleContext(Abstract_declaratorContext.self, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func abstract_declarator_suffix() -> [Abstract_declarator_suffixContext] {
				return getRuleContexts(Abstract_declarator_suffixContext.self)
			}
			open
			func abstract_declarator_suffix(_ i: Int) -> Abstract_declarator_suffixContext? {
				return getRuleContext(Abstract_declarator_suffixContext.self, i)
			}
			open
			func LBRACK() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.LBRACK.rawValue)
			}
			open
			func LBRACK(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACK.rawValue, i)
			}
			open
			func RBRACK() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.RBRACK.rawValue)
			}
			open
			func RBRACK(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACK.rawValue, i)
			}
			open
			func constant_expression() -> [Constant_expressionContext] {
				return getRuleContexts(Constant_expressionContext.self)
			}
			open
			func constant_expression(_ i: Int) -> Constant_expressionContext? {
				return getRuleContext(Constant_expressionContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_abstract_declarator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterAbstract_declarator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitAbstract_declarator(self)
			}
		}
	}
	@discardableResult
	 open func abstract_declarator() throws -> Abstract_declaratorContext {
		var _localctx: Abstract_declaratorContext = Abstract_declaratorContext(_ctx, getState())
		try enterRule(_localctx, 176, ObjCParser.RULE_abstract_declarator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(1021)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,113, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1000)
		 		try pointer()
		 		setState(1001)
		 		try abstract_declarator()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1003)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(1004)
		 		try abstract_declarator()
		 		setState(1005)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)
		 		setState(1007); 
		 		try _errHandler.sync(self)
		 		_alt = 1;
		 		repeat {
		 			switch (_alt) {
		 			case 1:
		 				setState(1006)
		 				try abstract_declarator_suffix()


		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}
		 			setState(1009); 
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,110,_ctx)
		 		} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(1016) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(1011)
		 			try match(ObjCParser.Tokens.LBRACK.rawValue)
		 			setState(1013)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (//closure
		 			 { () -> Bool in
		 			      var testSet: Bool = {  () -> Bool in
		 			   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue,ObjCParser.Tokens.SIZEOF.rawValue]
		 			    return  Utils.testBitLeftShiftArray(testArray, 0)
		 			}()
		 			          testSet = testSet || {  () -> Bool in
		 			             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 			              return  Utils.testBitLeftShiftArray(testArray, 69)
		 			          }()
		 			      return testSet
		 			 }()) {
		 				setState(1012)
		 				try constant_expression()

		 			}

		 			setState(1015)
		 			try match(ObjCParser.Tokens.RBRACK.rawValue)


		 			setState(1018); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.LBRACK.rawValue
		 		      return testSet
		 		 }())

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Abstract_declarator_suffixContext: ParserRuleContext {
			open
			func LBRACK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACK.rawValue, 0)
			}
			open
			func RBRACK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACK.rawValue, 0)
			}
			open
			func constant_expression() -> Constant_expressionContext? {
				return getRuleContext(Constant_expressionContext.self, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func parameter_declaration_list() -> Parameter_declaration_listContext? {
				return getRuleContext(Parameter_declaration_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_abstract_declarator_suffix
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterAbstract_declarator_suffix(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitAbstract_declarator_suffix(self)
			}
		}
	}
	@discardableResult
	 open func abstract_declarator_suffix() throws -> Abstract_declarator_suffixContext {
		var _localctx: Abstract_declarator_suffixContext = Abstract_declarator_suffixContext(_ctx, getState())
		try enterRule(_localctx, 178, ObjCParser.RULE_abstract_declarator_suffix)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1033)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LBRACK:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1023)
		 		try match(ObjCParser.Tokens.LBRACK.rawValue)
		 		setState(1025)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue,ObjCParser.Tokens.SIZEOF.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 69)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(1024)
		 			try constant_expression()

		 		}

		 		setState(1027)
		 		try match(ObjCParser.Tokens.RBRACK.rawValue)

		 		break

		 	case .LPAREN:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1028)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(1030)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 65)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(1029)
		 			try parameter_declaration_list()

		 		}

		 		setState(1032)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)

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

	public class Parameter_declaration_listContext: ParserRuleContext {
			open
			func parameter_declaration() -> [Parameter_declarationContext] {
				return getRuleContexts(Parameter_declarationContext.self)
			}
			open
			func parameter_declaration(_ i: Int) -> Parameter_declarationContext? {
				return getRuleContext(Parameter_declarationContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_parameter_declaration_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterParameter_declaration_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitParameter_declaration_list(self)
			}
		}
	}
	@discardableResult
	 open func parameter_declaration_list() throws -> Parameter_declaration_listContext {
		var _localctx: Parameter_declaration_listContext = Parameter_declaration_listContext(_ctx, getState())
		try enterRule(_localctx, 180, ObjCParser.RULE_parameter_declaration_list)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1035)
		 	try parameter_declaration()
		 	setState(1040)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,117,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(1036)
		 			try match(ObjCParser.Tokens.COMMA.rawValue)
		 			setState(1037)
		 			try parameter_declaration()

		 	 
		 		}
		 		setState(1042)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,117,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Statement_listContext: ParserRuleContext {
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_statement_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterStatement_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitStatement_list(self)
			}
		}
	}
	@discardableResult
	 open func statement_list() throws -> Statement_listContext {
		var _localctx: Statement_listContext = Statement_listContext(_ctx, getState())
		try enterRule(_localctx, 182, ObjCParser.RULE_statement_list)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1044); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(1043)
		 			try statement()


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(1046); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,118,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatementContext: ParserRuleContext {
			open
			func labeled_statement() -> Labeled_statementContext? {
				return getRuleContext(Labeled_statementContext.self, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func compound_statement() -> Compound_statementContext? {
				return getRuleContext(Compound_statementContext.self, 0)
			}
			open
			func selection_statement() -> Selection_statementContext? {
				return getRuleContext(Selection_statementContext.self, 0)
			}
			open
			func iteration_statement() -> Iteration_statementContext? {
				return getRuleContext(Iteration_statementContext.self, 0)
			}
			open
			func jump_statement() -> Jump_statementContext? {
				return getRuleContext(Jump_statementContext.self, 0)
			}
			open
			func synchronized_statement() -> Synchronized_statementContext? {
				return getRuleContext(Synchronized_statementContext.self, 0)
			}
			open
			func autorelease_statement() -> Autorelease_statementContext? {
				return getRuleContext(Autorelease_statementContext.self, 0)
			}
			open
			func try_block() -> Try_blockContext? {
				return getRuleContext(Try_blockContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitStatement(self)
			}
		}
	}
	@discardableResult
	 open func statement() throws -> StatementContext {
		var _localctx: StatementContext = StatementContext(_ctx, getState())
		try enterRule(_localctx, 184, ObjCParser.RULE_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1060)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,119, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1048)
		 		try labeled_statement()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1049)
		 		try expression()
		 		setState(1050)
		 		try match(ObjCParser.Tokens.SEMI.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(1052)
		 		try compound_statement()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(1053)
		 		try selection_statement()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(1054)
		 		try iteration_statement()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(1055)
		 		try jump_statement()

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(1056)
		 		try synchronized_statement()

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(1057)
		 		try autorelease_statement()

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(1058)
		 		try try_block()

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(1059)
		 		try match(ObjCParser.Tokens.SEMI.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Labeled_statementContext: ParserRuleContext {
			open
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
			open
			func statement() -> StatementContext? {
				return getRuleContext(StatementContext.self, 0)
			}
			open
			func CASE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CASE.rawValue, 0)
			}
			open
			func constant_expression() -> Constant_expressionContext? {
				return getRuleContext(Constant_expressionContext.self, 0)
			}
			open
			func DEFAULT() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DEFAULT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_labeled_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterLabeled_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitLabeled_statement(self)
			}
		}
	}
	@discardableResult
	 open func labeled_statement() throws -> Labeled_statementContext {
		var _localctx: Labeled_statementContext = Labeled_statementContext(_ctx, getState())
		try enterRule(_localctx, 186, ObjCParser.RULE_labeled_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1074)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1062)
		 		try identifier()
		 		setState(1063)
		 		try match(ObjCParser.Tokens.COLON.rawValue)
		 		setState(1064)
		 		try statement()

		 		break

		 	case .CASE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1066)
		 		try match(ObjCParser.Tokens.CASE.rawValue)
		 		setState(1067)
		 		try constant_expression()
		 		setState(1068)
		 		try match(ObjCParser.Tokens.COLON.rawValue)
		 		setState(1069)
		 		try statement()

		 		break

		 	case .DEFAULT:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(1071)
		 		try match(ObjCParser.Tokens.DEFAULT.rawValue)
		 		setState(1072)
		 		try match(ObjCParser.Tokens.COLON.rawValue)
		 		setState(1073)
		 		try statement()

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

	public class Compound_statementContext: ParserRuleContext {
			open
			func LBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func declaration() -> [DeclarationContext] {
				return getRuleContexts(DeclarationContext.self)
			}
			open
			func declaration(_ i: Int) -> DeclarationContext? {
				return getRuleContext(DeclarationContext.self, i)
			}
			open
			func statement_list() -> [Statement_listContext] {
				return getRuleContexts(Statement_listContext.self)
			}
			open
			func statement_list(_ i: Int) -> Statement_listContext? {
				return getRuleContext(Statement_listContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_compound_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterCompound_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitCompound_statement(self)
			}
		}
	}
	@discardableResult
	 open func compound_statement() throws -> Compound_statementContext {
		var _localctx: Compound_statementContext = Compound_statementContext(_ctx, getState())
		try enterRule(_localctx, 188, ObjCParser.RULE_compound_statement)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1076)
		 	try match(ObjCParser.Tokens.LBRACE.rawValue)
		 	setState(1081)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.AUTORELEASEPOOL.rawValue,ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SYNCHRONIZED.rawValue,ObjCParser.Tokens.TRY.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue,ObjCParser.Tokens.AUTO.rawValue,ObjCParser.Tokens.BREAK.rawValue,ObjCParser.Tokens.BYCOPY.rawValue,ObjCParser.Tokens.BYREF.rawValue,ObjCParser.Tokens.CASE.rawValue,ObjCParser.Tokens.CHAR.rawValue,ObjCParser.Tokens.CONST.rawValue,ObjCParser.Tokens.CONTINUE.rawValue,ObjCParser.Tokens.DEFAULT.rawValue,ObjCParser.Tokens.DO.rawValue,ObjCParser.Tokens.DOUBLE.rawValue,ObjCParser.Tokens.ENUM.rawValue,ObjCParser.Tokens.EXTERN.rawValue,ObjCParser.Tokens.FLOAT.rawValue,ObjCParser.Tokens.FOR.rawValue,ObjCParser.Tokens.ID.rawValue,ObjCParser.Tokens.IF.rawValue,ObjCParser.Tokens.IN.rawValue,ObjCParser.Tokens.INOUT.rawValue,ObjCParser.Tokens.GOTO.rawValue,ObjCParser.Tokens.INT.rawValue,ObjCParser.Tokens.LONG.rawValue,ObjCParser.Tokens.ONEWAY.rawValue,ObjCParser.Tokens.OUT.rawValue,ObjCParser.Tokens.REGISTER.rawValue,ObjCParser.Tokens.RETURN.rawValue,ObjCParser.Tokens.SHORT.rawValue,ObjCParser.Tokens.SIGNED.rawValue,ObjCParser.Tokens.SIZEOF.rawValue,ObjCParser.Tokens.STATIC.rawValue,ObjCParser.Tokens.STRUCT.rawValue,ObjCParser.Tokens.SWITCH.rawValue,ObjCParser.Tokens.TYPEDEF.rawValue,ObjCParser.Tokens.UNION.rawValue,ObjCParser.Tokens.UNSIGNED.rawValue,ObjCParser.Tokens.VOID.rawValue,ObjCParser.Tokens.VOLATILE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.WHILE.rawValue,ObjCParser.Tokens.NS_OPTIONS.rawValue,ObjCParser.Tokens.NS_ENUM.rawValue,ObjCParser.Tokens.WWEAK.rawValue,ObjCParser.Tokens.WUNSAFE_UNRETAINED.rawValue,ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACE.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.SEMI.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 64)
		 	          }()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 128)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(1079)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,121, _ctx)) {
		 		case 1:
		 			setState(1077)
		 			try declaration()

		 			break
		 		case 2:
		 			setState(1078)
		 			try statement_list()

		 			break
		 		default: break
		 		}

		 		setState(1083)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(1084)
		 	try match(ObjCParser.Tokens.RBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Selection_statementContext: ParserRuleContext {
			open
			func IF() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IF.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ELSE.rawValue, 0)
			}
			open
			func SWITCH() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SWITCH.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_selection_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterSelection_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitSelection_statement(self)
			}
		}
	}
	@discardableResult
	 open func selection_statement() throws -> Selection_statementContext {
		var _localctx: Selection_statementContext = Selection_statementContext(_ctx, getState())
		try enterRule(_localctx, 190, ObjCParser.RULE_selection_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1101)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IF:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1086)
		 		try match(ObjCParser.Tokens.IF.rawValue)
		 		setState(1087)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(1088)
		 		try expression()
		 		setState(1089)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)
		 		setState(1090)
		 		try statement()
		 		setState(1093)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,123,_ctx)) {
		 		case 1:
		 			setState(1091)
		 			try match(ObjCParser.Tokens.ELSE.rawValue)
		 			setState(1092)
		 			try statement()

		 			break
		 		default: break
		 		}

		 		break

		 	case .SWITCH:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1095)
		 		try match(ObjCParser.Tokens.SWITCH.rawValue)
		 		setState(1096)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(1097)
		 		try expression()
		 		setState(1098)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)
		 		setState(1099)
		 		try statement()

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

	public class For_in_statementContext: ParserRuleContext {
			open
			func FOR() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.FOR.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func type_variable_declarator() -> Type_variable_declaratorContext? {
				return getRuleContext(Type_variable_declaratorContext.self, 0)
			}
			open
			func IN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func statement() -> StatementContext? {
				return getRuleContext(StatementContext.self, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_for_in_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterFor_in_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitFor_in_statement(self)
			}
		}
	}
	@discardableResult
	 open func for_in_statement() throws -> For_in_statementContext {
		var _localctx: For_in_statementContext = For_in_statementContext(_ctx, getState())
		try enterRule(_localctx, 192, ObjCParser.RULE_for_in_statement)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1103)
		 	try match(ObjCParser.Tokens.FOR.rawValue)
		 	setState(1104)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(1105)
		 	try type_variable_declarator()
		 	setState(1106)
		 	try match(ObjCParser.Tokens.IN.rawValue)
		 	setState(1108)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue,ObjCParser.Tokens.SIZEOF.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 69)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(1107)
		 		try expression()

		 	}

		 	setState(1110)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)
		 	setState(1111)
		 	try statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class For_statementContext: ParserRuleContext {
			open
			func FOR() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.FOR.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func SEMI() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.SEMI.rawValue)
			}
			open
			func SEMI(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, i)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func statement() -> StatementContext? {
				return getRuleContext(StatementContext.self, 0)
			}
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func declaration_specifiers() -> Declaration_specifiersContext? {
				return getRuleContext(Declaration_specifiersContext.self, 0)
			}
			open
			func init_declarator_list() -> Init_declarator_listContext? {
				return getRuleContext(Init_declarator_listContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_for_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterFor_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitFor_statement(self)
			}
		}
	}
	@discardableResult
	 open func for_statement() throws -> For_statementContext {
		var _localctx: For_statementContext = For_statementContext(_ctx, getState())
		try enterRule(_localctx, 194, ObjCParser.RULE_for_statement)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1113)
		 	try match(ObjCParser.Tokens.FOR.rawValue)
		 	setState(1114)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(1119)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,126,_ctx)) {
		 	case 1:
		 		setState(1115)
		 		try declaration_specifiers()
		 		setState(1116)
		 		try init_declarator_list()


		 		break
		 	case 2:
		 		setState(1118)
		 		try expression()

		 		break
		 	default: break
		 	}
		 	setState(1121)
		 	try match(ObjCParser.Tokens.SEMI.rawValue)
		 	setState(1123)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue,ObjCParser.Tokens.SIZEOF.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 69)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(1122)
		 		try expression()

		 	}

		 	setState(1125)
		 	try match(ObjCParser.Tokens.SEMI.rawValue)
		 	setState(1127)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      var testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue,ObjCParser.Tokens.SIZEOF.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	          testSet = testSet || {  () -> Bool in
		 	             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 	              return  Utils.testBitLeftShiftArray(testArray, 69)
		 	          }()
		 	      return testSet
		 	 }()) {
		 		setState(1126)
		 		try expression()

		 	}

		 	setState(1129)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)
		 	setState(1130)
		 	try statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class While_statementContext: ParserRuleContext {
			open
			func WHILE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.WHILE.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func statement() -> StatementContext? {
				return getRuleContext(StatementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_while_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterWhile_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitWhile_statement(self)
			}
		}
	}
	@discardableResult
	 open func while_statement() throws -> While_statementContext {
		var _localctx: While_statementContext = While_statementContext(_ctx, getState())
		try enterRule(_localctx, 196, ObjCParser.RULE_while_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1132)
		 	try match(ObjCParser.Tokens.WHILE.rawValue)
		 	setState(1133)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(1134)
		 	try expression()
		 	setState(1135)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)
		 	setState(1136)
		 	try statement()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Do_statementContext: ParserRuleContext {
			open
			func DO() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DO.rawValue, 0)
			}
			open
			func statement() -> StatementContext? {
				return getRuleContext(StatementContext.self, 0)
			}
			open
			func WHILE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.WHILE.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_do_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterDo_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitDo_statement(self)
			}
		}
	}
	@discardableResult
	 open func do_statement() throws -> Do_statementContext {
		var _localctx: Do_statementContext = Do_statementContext(_ctx, getState())
		try enterRule(_localctx, 198, ObjCParser.RULE_do_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1138)
		 	try match(ObjCParser.Tokens.DO.rawValue)
		 	setState(1139)
		 	try statement()
		 	setState(1140)
		 	try match(ObjCParser.Tokens.WHILE.rawValue)
		 	setState(1141)
		 	try match(ObjCParser.Tokens.LPAREN.rawValue)
		 	setState(1142)
		 	try expression()
		 	setState(1143)
		 	try match(ObjCParser.Tokens.RPAREN.rawValue)
		 	setState(1144)
		 	try match(ObjCParser.Tokens.SEMI.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Iteration_statementContext: ParserRuleContext {
			open
			func while_statement() -> While_statementContext? {
				return getRuleContext(While_statementContext.self, 0)
			}
			open
			func do_statement() -> Do_statementContext? {
				return getRuleContext(Do_statementContext.self, 0)
			}
			open
			func for_statement() -> For_statementContext? {
				return getRuleContext(For_statementContext.self, 0)
			}
			open
			func for_in_statement() -> For_in_statementContext? {
				return getRuleContext(For_in_statementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_iteration_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterIteration_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitIteration_statement(self)
			}
		}
	}
	@discardableResult
	 open func iteration_statement() throws -> Iteration_statementContext {
		var _localctx: Iteration_statementContext = Iteration_statementContext(_ctx, getState())
		try enterRule(_localctx, 200, ObjCParser.RULE_iteration_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1150)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,129, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1146)
		 		try while_statement()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1147)
		 		try do_statement()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(1148)
		 		try for_statement()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(1149)
		 		try for_in_statement()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Jump_statementContext: ParserRuleContext {
			open
			func GOTO() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.GOTO.rawValue, 0)
			}
			open
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func CONTINUE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CONTINUE.rawValue, 0)
			}
			open
			func BREAK() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.BREAK.rawValue, 0)
			}
			open
			func RETURN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RETURN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_jump_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterJump_statement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitJump_statement(self)
			}
		}
	}
	@discardableResult
	 open func jump_statement() throws -> Jump_statementContext {
		var _localctx: Jump_statementContext = Jump_statementContext(_ctx, getState())
		try enterRule(_localctx, 202, ObjCParser.RULE_jump_statement)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1165)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .GOTO:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1152)
		 		try match(ObjCParser.Tokens.GOTO.rawValue)
		 		setState(1153)
		 		try identifier()
		 		setState(1154)
		 		try match(ObjCParser.Tokens.SEMI.rawValue)

		 		break

		 	case .CONTINUE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1156)
		 		try match(ObjCParser.Tokens.CONTINUE.rawValue)
		 		setState(1157)
		 		try match(ObjCParser.Tokens.SEMI.rawValue)

		 		break

		 	case .BREAK:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(1158)
		 		try match(ObjCParser.Tokens.BREAK.rawValue)
		 		setState(1159)
		 		try match(ObjCParser.Tokens.SEMI.rawValue)

		 		break

		 	case .RETURN:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(1160)
		 		try match(ObjCParser.Tokens.RETURN.rawValue)
		 		setState(1162)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      var testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue,ObjCParser.Tokens.SIZEOF.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		          testSet = testSet || {  () -> Bool in
		 		             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 		              return  Utils.testBitLeftShiftArray(testArray, 69)
		 		          }()
		 		      return testSet
		 		 }()) {
		 			setState(1161)
		 			try expression()

		 		}

		 		setState(1164)
		 		try match(ObjCParser.Tokens.SEMI.rawValue)

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

	public class ExpressionContext: ParserRuleContext {
			open
			func assignment_expression() -> [Assignment_expressionContext] {
				return getRuleContexts(Assignment_expressionContext.self)
			}
			open
			func assignment_expression(_ i: Int) -> Assignment_expressionContext? {
				return getRuleContext(Assignment_expressionContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitExpression(self)
			}
		}
	}
	@discardableResult
	 open func expression() throws -> ExpressionContext {
		var _localctx: ExpressionContext = ExpressionContext(_ctx, getState())
		try enterRule(_localctx, 204, ObjCParser.RULE_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1167)
		 	try assignment_expression()
		 	setState(1172)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1168)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(1169)
		 		try assignment_expression()


		 		setState(1174)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Assignment_expressionContext: ParserRuleContext {
			open
			func conditional_expression() -> Conditional_expressionContext? {
				return getRuleContext(Conditional_expressionContext.self, 0)
			}
			open
			func unary_expression() -> Unary_expressionContext? {
				return getRuleContext(Unary_expressionContext.self, 0)
			}
			open
			func assignment_operator() -> Assignment_operatorContext? {
				return getRuleContext(Assignment_operatorContext.self, 0)
			}
			open
			func assignment_expression() -> Assignment_expressionContext? {
				return getRuleContext(Assignment_expressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_assignment_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterAssignment_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitAssignment_expression(self)
			}
		}
	}
	@discardableResult
	 open func assignment_expression() throws -> Assignment_expressionContext {
		var _localctx: Assignment_expressionContext = Assignment_expressionContext(_ctx, getState())
		try enterRule(_localctx, 206, ObjCParser.RULE_assignment_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1180)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,133, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1175)
		 		try conditional_expression()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1176)
		 		try unary_expression()
		 		setState(1177)
		 		try assignment_operator()
		 		setState(1178)
		 		try assignment_expression()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Assignment_operatorContext: ParserRuleContext {
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func MUL_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.MUL_ASSIGN.rawValue, 0)
			}
			open
			func DIV_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DIV_ASSIGN.rawValue, 0)
			}
			open
			func MOD_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.MOD_ASSIGN.rawValue, 0)
			}
			open
			func ADD_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ADD_ASSIGN.rawValue, 0)
			}
			open
			func SUB_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SUB_ASSIGN.rawValue, 0)
			}
			open
			func LSHIFT_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LSHIFT_ASSIGN.rawValue, 0)
			}
			open
			func RSHIFT_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RSHIFT_ASSIGN.rawValue, 0)
			}
			open
			func AND_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.AND_ASSIGN.rawValue, 0)
			}
			open
			func XOR_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.XOR_ASSIGN.rawValue, 0)
			}
			open
			func OR_ASSIGN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.OR_ASSIGN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_assignment_operator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterAssignment_operator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitAssignment_operator(self)
			}
		}
	}
	@discardableResult
	 open func assignment_operator() throws -> Assignment_operatorContext {
		var _localctx: Assignment_operatorContext = Assignment_operatorContext(_ctx, getState())
		try enterRule(_localctx, 208, ObjCParser.RULE_assignment_operator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1182)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.ASSIGN.rawValue,ObjCParser.Tokens.ADD_ASSIGN.rawValue,ObjCParser.Tokens.SUB_ASSIGN.rawValue,ObjCParser.Tokens.MUL_ASSIGN.rawValue,ObjCParser.Tokens.DIV_ASSIGN.rawValue,ObjCParser.Tokens.AND_ASSIGN.rawValue,ObjCParser.Tokens.OR_ASSIGN.rawValue,ObjCParser.Tokens.XOR_ASSIGN.rawValue,ObjCParser.Tokens.MOD_ASSIGN.rawValue,ObjCParser.Tokens.LSHIFT_ASSIGN.rawValue,ObjCParser.Tokens.RSHIFT_ASSIGN.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 80)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Conditional_expressionContext: ParserRuleContext {
			open
			func logical_or_expression() -> Logical_or_expressionContext? {
				return getRuleContext(Logical_or_expressionContext.self, 0)
			}
			open
			func QUESTION() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.QUESTION.rawValue, 0)
			}
			open
			func conditional_expression() -> [Conditional_expressionContext] {
				return getRuleContexts(Conditional_expressionContext.self)
			}
			open
			func conditional_expression(_ i: Int) -> Conditional_expressionContext? {
				return getRuleContext(Conditional_expressionContext.self, i)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_conditional_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterConditional_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitConditional_expression(self)
			}
		}
	}
	@discardableResult
	 open func conditional_expression() throws -> Conditional_expressionContext {
		var _localctx: Conditional_expressionContext = Conditional_expressionContext(_ctx, getState())
		try enterRule(_localctx, 210, ObjCParser.RULE_conditional_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1184)
		 	try logical_or_expression()
		 	setState(1190)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.QUESTION.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1185)
		 		try match(ObjCParser.Tokens.QUESTION.rawValue)
		 		setState(1186)
		 		try conditional_expression()
		 		setState(1187)
		 		try match(ObjCParser.Tokens.COLON.rawValue)
		 		setState(1188)
		 		try conditional_expression()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Constant_expressionContext: ParserRuleContext {
			open
			func conditional_expression() -> Conditional_expressionContext? {
				return getRuleContext(Conditional_expressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_constant_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterConstant_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitConstant_expression(self)
			}
		}
	}
	@discardableResult
	 open func constant_expression() throws -> Constant_expressionContext {
		var _localctx: Constant_expressionContext = Constant_expressionContext(_ctx, getState())
		try enterRule(_localctx, 212, ObjCParser.RULE_constant_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1192)
		 	try conditional_expression()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Logical_or_expressionContext: ParserRuleContext {
			open
			func logical_and_expression() -> [Logical_and_expressionContext] {
				return getRuleContexts(Logical_and_expressionContext.self)
			}
			open
			func logical_and_expression(_ i: Int) -> Logical_and_expressionContext? {
				return getRuleContext(Logical_and_expressionContext.self, i)
			}
			open
			func OR() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.OR.rawValue)
			}
			open
			func OR(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.OR.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_logical_or_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterLogical_or_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitLogical_or_expression(self)
			}
		}
	}
	@discardableResult
	 open func logical_or_expression() throws -> Logical_or_expressionContext {
		var _localctx: Logical_or_expressionContext = Logical_or_expressionContext(_ctx, getState())
		try enterRule(_localctx, 214, ObjCParser.RULE_logical_or_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1194)
		 	try logical_and_expression()
		 	setState(1199)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.OR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1195)
		 		try match(ObjCParser.Tokens.OR.rawValue)
		 		setState(1196)
		 		try logical_and_expression()


		 		setState(1201)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Logical_and_expressionContext: ParserRuleContext {
			open
			func inclusive_or_expression() -> [Inclusive_or_expressionContext] {
				return getRuleContexts(Inclusive_or_expressionContext.self)
			}
			open
			func inclusive_or_expression(_ i: Int) -> Inclusive_or_expressionContext? {
				return getRuleContext(Inclusive_or_expressionContext.self, i)
			}
			open
			func AND() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.AND.rawValue)
			}
			open
			func AND(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.AND.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_logical_and_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterLogical_and_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitLogical_and_expression(self)
			}
		}
	}
	@discardableResult
	 open func logical_and_expression() throws -> Logical_and_expressionContext {
		var _localctx: Logical_and_expressionContext = Logical_and_expressionContext(_ctx, getState())
		try enterRule(_localctx, 216, ObjCParser.RULE_logical_and_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1202)
		 	try inclusive_or_expression()
		 	setState(1207)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.AND.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1203)
		 		try match(ObjCParser.Tokens.AND.rawValue)
		 		setState(1204)
		 		try inclusive_or_expression()


		 		setState(1209)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Inclusive_or_expressionContext: ParserRuleContext {
			open
			func exclusive_or_expression() -> [Exclusive_or_expressionContext] {
				return getRuleContexts(Exclusive_or_expressionContext.self)
			}
			open
			func exclusive_or_expression(_ i: Int) -> Exclusive_or_expressionContext? {
				return getRuleContext(Exclusive_or_expressionContext.self, i)
			}
			open
			func BITOR() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.BITOR.rawValue)
			}
			open
			func BITOR(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.BITOR.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_inclusive_or_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterInclusive_or_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitInclusive_or_expression(self)
			}
		}
	}
	@discardableResult
	 open func inclusive_or_expression() throws -> Inclusive_or_expressionContext {
		var _localctx: Inclusive_or_expressionContext = Inclusive_or_expressionContext(_ctx, getState())
		try enterRule(_localctx, 218, ObjCParser.RULE_inclusive_or_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1210)
		 	try exclusive_or_expression()
		 	setState(1215)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.BITOR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1211)
		 		try match(ObjCParser.Tokens.BITOR.rawValue)
		 		setState(1212)
		 		try exclusive_or_expression()


		 		setState(1217)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Exclusive_or_expressionContext: ParserRuleContext {
			open
			func and_expression() -> [And_expressionContext] {
				return getRuleContexts(And_expressionContext.self)
			}
			open
			func and_expression(_ i: Int) -> And_expressionContext? {
				return getRuleContext(And_expressionContext.self, i)
			}
			open
			func CARET() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.CARET.rawValue)
			}
			open
			func CARET(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CARET.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_exclusive_or_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterExclusive_or_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitExclusive_or_expression(self)
			}
		}
	}
	@discardableResult
	 open func exclusive_or_expression() throws -> Exclusive_or_expressionContext {
		var _localctx: Exclusive_or_expressionContext = Exclusive_or_expressionContext(_ctx, getState())
		try enterRule(_localctx, 220, ObjCParser.RULE_exclusive_or_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1218)
		 	try and_expression()
		 	setState(1223)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.CARET.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1219)
		 		try match(ObjCParser.Tokens.CARET.rawValue)
		 		setState(1220)
		 		try and_expression()


		 		setState(1225)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class And_expressionContext: ParserRuleContext {
			open
			func equality_expression() -> [Equality_expressionContext] {
				return getRuleContexts(Equality_expressionContext.self)
			}
			open
			func equality_expression(_ i: Int) -> Equality_expressionContext? {
				return getRuleContext(Equality_expressionContext.self, i)
			}
			open
			func BITAND() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.BITAND.rawValue)
			}
			open
			func BITAND(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.BITAND.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_and_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterAnd_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitAnd_expression(self)
			}
		}
	}
	@discardableResult
	 open func and_expression() throws -> And_expressionContext {
		var _localctx: And_expressionContext = And_expressionContext(_ctx, getState())
		try enterRule(_localctx, 222, ObjCParser.RULE_and_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1226)
		 	try equality_expression()
		 	setState(1231)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.BITAND.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1227)
		 		try match(ObjCParser.Tokens.BITAND.rawValue)
		 		setState(1228)
		 		try equality_expression()


		 		setState(1233)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Equality_expressionContext: ParserRuleContext {
			open
			func relational_expression() -> [Relational_expressionContext] {
				return getRuleContexts(Relational_expressionContext.self)
			}
			open
			func relational_expression(_ i: Int) -> Relational_expressionContext? {
				return getRuleContext(Relational_expressionContext.self, i)
			}
			open
			func NOTEQUAL() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.NOTEQUAL.rawValue)
			}
			open
			func NOTEQUAL(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.NOTEQUAL.rawValue, i)
			}
			open
			func EQUAL() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.EQUAL.rawValue)
			}
			open
			func EQUAL(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.EQUAL.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_equality_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterEquality_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitEquality_expression(self)
			}
		}
	}
	@discardableResult
	 open func equality_expression() throws -> Equality_expressionContext {
		var _localctx: Equality_expressionContext = Equality_expressionContext(_ctx, getState())
		try enterRule(_localctx, 224, ObjCParser.RULE_equality_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1234)
		 	try relational_expression()
		 	setState(1239)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.EQUAL.rawValue || _la == ObjCParser.Tokens.NOTEQUAL.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1235)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.EQUAL.rawValue || _la == ObjCParser.Tokens.NOTEQUAL.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(1236)
		 		try relational_expression()


		 		setState(1241)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Relational_expressionContext: ParserRuleContext {
			open
			func shift_expression() -> [Shift_expressionContext] {
				return getRuleContexts(Shift_expressionContext.self)
			}
			open
			func shift_expression(_ i: Int) -> Shift_expressionContext? {
				return getRuleContext(Shift_expressionContext.self, i)
			}
			open
			func LT() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.LT.rawValue)
			}
			open
			func LT(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LT.rawValue, i)
			}
			open
			func GT() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.GT.rawValue)
			}
			open
			func GT(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.GT.rawValue, i)
			}
			open
			func LE() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.LE.rawValue)
			}
			open
			func LE(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LE.rawValue, i)
			}
			open
			func GE() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.GE.rawValue)
			}
			open
			func GE(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.GE.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_relational_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterRelational_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitRelational_expression(self)
			}
		}
	}
	@discardableResult
	 open func relational_expression() throws -> Relational_expressionContext {
		var _localctx: Relational_expressionContext = Relational_expressionContext(_ctx, getState())
		try enterRule(_localctx, 226, ObjCParser.RULE_relational_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1242)
		 	try shift_expression()
		 	setState(1247)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.GT.rawValue,ObjCParser.Tokens.LT.rawValue,ObjCParser.Tokens.LE.rawValue,ObjCParser.Tokens.GE.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 81)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(1243)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.GT.rawValue,ObjCParser.Tokens.LT.rawValue,ObjCParser.Tokens.LE.rawValue,ObjCParser.Tokens.GE.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 81)
		 		}()
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(1244)
		 		try shift_expression()


		 		setState(1249)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Shift_expressionContext: ParserRuleContext {
			open
			func additive_expression() -> [Additive_expressionContext] {
				return getRuleContexts(Additive_expressionContext.self)
			}
			open
			func additive_expression(_ i: Int) -> Additive_expressionContext? {
				return getRuleContext(Additive_expressionContext.self, i)
			}
			open
			func SHIFT_L() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.SHIFT_L.rawValue)
			}
			open
			func SHIFT_L(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SHIFT_L.rawValue, i)
			}
			open
			func SHIFT_R() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.SHIFT_R.rawValue)
			}
			open
			func SHIFT_R(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SHIFT_R.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_shift_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterShift_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitShift_expression(self)
			}
		}
	}
	@discardableResult
	 open func shift_expression() throws -> Shift_expressionContext {
		var _localctx: Shift_expressionContext = Shift_expressionContext(_ctx, getState())
		try enterRule(_localctx, 228, ObjCParser.RULE_shift_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1250)
		 	try additive_expression()
		 	setState(1255)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.SHIFT_R.rawValue || _la == ObjCParser.Tokens.SHIFT_L.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1251)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.SHIFT_R.rawValue || _la == ObjCParser.Tokens.SHIFT_L.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(1252)
		 		try additive_expression()


		 		setState(1257)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Additive_expressionContext: ParserRuleContext {
			open
			func multiplicative_expression() -> [Multiplicative_expressionContext] {
				return getRuleContexts(Multiplicative_expressionContext.self)
			}
			open
			func multiplicative_expression(_ i: Int) -> Multiplicative_expressionContext? {
				return getRuleContext(Multiplicative_expressionContext.self, i)
			}
			open
			func ADD() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.ADD.rawValue)
			}
			open
			func ADD(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.ADD.rawValue, i)
			}
			open
			func SUB() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.SUB.rawValue)
			}
			open
			func SUB(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SUB.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_additive_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterAdditive_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitAdditive_expression(self)
			}
		}
	}
	@discardableResult
	 open func additive_expression() throws -> Additive_expressionContext {
		var _localctx: Additive_expressionContext = Additive_expressionContext(_ctx, getState())
		try enterRule(_localctx, 230, ObjCParser.RULE_additive_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1258)
		 	try multiplicative_expression()
		 	setState(1263)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.ADD.rawValue || _la == ObjCParser.Tokens.SUB.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1259)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == ObjCParser.Tokens.ADD.rawValue || _la == ObjCParser.Tokens.SUB.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(1260)
		 		try multiplicative_expression()


		 		setState(1265)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Multiplicative_expressionContext: ParserRuleContext {
			open
			func cast_expression() -> [Cast_expressionContext] {
				return getRuleContexts(Cast_expressionContext.self)
			}
			open
			func cast_expression(_ i: Int) -> Cast_expressionContext? {
				return getRuleContext(Cast_expressionContext.self, i)
			}
			open
			func MUL() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.MUL.rawValue)
			}
			open
			func MUL(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.MUL.rawValue, i)
			}
			open
			func DIV() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.DIV.rawValue)
			}
			open
			func DIV(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DIV.rawValue, i)
			}
			open
			func MOD() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.MOD.rawValue)
			}
			open
			func MOD(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.MOD.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_multiplicative_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterMultiplicative_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitMultiplicative_expression(self)
			}
		}
	}
	@discardableResult
	 open func multiplicative_expression() throws -> Multiplicative_expressionContext {
		var _localctx: Multiplicative_expressionContext = Multiplicative_expressionContext(_ctx, getState())
		try enterRule(_localctx, 232, ObjCParser.RULE_multiplicative_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1266)
		 	try cast_expression()
		 	setState(1271)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.DIV.rawValue,ObjCParser.Tokens.MOD.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 97)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(1267)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.DIV.rawValue,ObjCParser.Tokens.MOD.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 97)
		 		}()
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(1268)
		 		try cast_expression()


		 		setState(1273)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Cast_expressionContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func type_name() -> Type_nameContext? {
				return getRuleContext(Type_nameContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func cast_expression() -> Cast_expressionContext? {
				return getRuleContext(Cast_expressionContext.self, 0)
			}
			open
			func unary_expression() -> Unary_expressionContext? {
				return getRuleContext(Unary_expressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_cast_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterCast_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitCast_expression(self)
			}
		}
	}
	@discardableResult
	 open func cast_expression() throws -> Cast_expressionContext {
		var _localctx: Cast_expressionContext = Cast_expressionContext(_ctx, getState())
		try enterRule(_localctx, 234, ObjCParser.RULE_cast_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1280)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,145, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1274)
		 		try match(ObjCParser.Tokens.LPAREN.rawValue)
		 		setState(1275)
		 		try type_name()
		 		setState(1276)
		 		try match(ObjCParser.Tokens.RPAREN.rawValue)
		 		setState(1277)
		 		try cast_expression()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1279)
		 		try unary_expression()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Unary_expressionContext: ParserRuleContext {
			open
			func postfix_expression() -> Postfix_expressionContext? {
				return getRuleContext(Postfix_expressionContext.self, 0)
			}
			open
			func INC() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.INC.rawValue, 0)
			}
			open
			func unary_expression() -> Unary_expressionContext? {
				return getRuleContext(Unary_expressionContext.self, 0)
			}
			open
			func DEC() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DEC.rawValue, 0)
			}
			open
			func unary_operator() -> Unary_operatorContext? {
				return getRuleContext(Unary_operatorContext.self, 0)
			}
			open
			func cast_expression() -> Cast_expressionContext? {
				return getRuleContext(Cast_expressionContext.self, 0)
			}
			open
			func SIZEOF() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SIZEOF.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func type_name() -> Type_nameContext? {
				return getRuleContext(Type_nameContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_unary_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterUnary_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitUnary_expression(self)
			}
		}
	}
	@discardableResult
	 open func unary_expression() throws -> Unary_expressionContext {
		var _localctx: Unary_expressionContext = Unary_expressionContext(_ctx, getState())
		try enterRule(_localctx, 236, ObjCParser.RULE_unary_expression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(1298)
		 	try _errHandler.sync(self)
		 	switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .ENCODE:fallthrough
		 	case .PROTOCOL:fallthrough
		 	case .SELECTOR:fallthrough
		 	case .SUPER:fallthrough
		 	case .SELF:fallthrough
		 	case .LPAREN:fallthrough
		 	case .LBRACK:fallthrough
		 	case .AT:fallthrough
		 	case .CARET:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .CHARACTER_LITERAL:fallthrough
		 	case .STRING_LITERAL:fallthrough
		 	case .HEX_LITERAL:fallthrough
		 	case .DECIMAL_LITERAL:fallthrough
		 	case .OCTAL_LITERAL:fallthrough
		 	case .FLOATING_POINT_LITERAL:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(1282)
		 		try postfix_expression()

		 		break

		 	case .INC:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(1283)
		 		try match(ObjCParser.Tokens.INC.rawValue)
		 		setState(1284)
		 		try unary_expression()

		 		break

		 	case .DEC:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(1285)
		 		try match(ObjCParser.Tokens.DEC.rawValue)
		 		setState(1286)
		 		try unary_expression()

		 		break
		 	case .BANG:fallthrough
		 	case .TILDE:fallthrough
		 	case .SUB:fallthrough
		 	case .MUL:fallthrough
		 	case .BITAND:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(1287)
		 		try unary_operator()
		 		setState(1288)
		 		try cast_expression()

		 		break

		 	case .SIZEOF:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(1290)
		 		try match(ObjCParser.Tokens.SIZEOF.rawValue)
		 		setState(1296)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,146, _ctx)) {
		 		case 1:
		 			setState(1291)
		 			try match(ObjCParser.Tokens.LPAREN.rawValue)
		 			setState(1292)
		 			try type_name()
		 			setState(1293)
		 			try match(ObjCParser.Tokens.RPAREN.rawValue)

		 			break
		 		case 2:
		 			setState(1295)
		 			try unary_expression()

		 			break
		 		default: break
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

	public class Unary_operatorContext: ParserRuleContext {
			open
			func BITAND() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.BITAND.rawValue, 0)
			}
			open
			func MUL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.MUL.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.SUB.rawValue, 0)
			}
			open
			func TILDE() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.TILDE.rawValue, 0)
			}
			open
			func BANG() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.BANG.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_unary_operator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterUnary_operator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitUnary_operator(self)
			}
		}
	}
	@discardableResult
	 open func unary_operator() throws -> Unary_operatorContext {
		var _localctx: Unary_operatorContext = Unary_operatorContext(_ctx, getState())
		try enterRule(_localctx, 238, ObjCParser.RULE_unary_operator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1300)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 83)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Postfix_expressionContext: ParserRuleContext {
			open
			func primary_expression() -> Primary_expressionContext? {
				return getRuleContext(Primary_expressionContext.self, 0)
			}
			open
			func LBRACK() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.LBRACK.rawValue)
			}
			open
			func LBRACK(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LBRACK.rawValue, i)
			}
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func RBRACK() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.RBRACK.rawValue)
			}
			open
			func RBRACK(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RBRACK.rawValue, i)
			}
			open
			func LPAREN() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.LPAREN.rawValue)
			}
			open
			func LPAREN(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.LPAREN.rawValue, i)
			}
			open
			func RPAREN() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.RPAREN.rawValue)
			}
			open
			func RPAREN(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.RPAREN.rawValue, i)
			}
			open
			func DOT() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.DOT.rawValue)
			}
			open
			func DOT(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DOT.rawValue, i)
			}
			open
			func identifier() -> [IdentifierContext] {
				return getRuleContexts(IdentifierContext.self)
			}
			open
			func identifier(_ i: Int) -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, i)
			}
			open
			func STRUCTACCESS() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.STRUCTACCESS.rawValue)
			}
			open
			func STRUCTACCESS(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.STRUCTACCESS.rawValue, i)
			}
			open
			func INC() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.INC.rawValue)
			}
			open
			func INC(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.INC.rawValue, i)
			}
			open
			func DEC() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.DEC.rawValue)
			}
			open
			func DEC(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DEC.rawValue, i)
			}
			open
			func argument_expression_list() -> [Argument_expression_listContext] {
				return getRuleContexts(Argument_expression_listContext.self)
			}
			open
			func argument_expression_list(_ i: Int) -> Argument_expression_listContext? {
				return getRuleContext(Argument_expression_listContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_postfix_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterPostfix_expression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitPostfix_expression(self)
			}
		}
	}
	@discardableResult
	 open func postfix_expression() throws -> Postfix_expressionContext {
		var _localctx: Postfix_expressionContext = Postfix_expressionContext(_ctx, getState())
		try enterRule(_localctx, 240, ObjCParser.RULE_postfix_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1302)
		 	try primary_expression()
		 	setState(1320)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.DOT.rawValue,ObjCParser.Tokens.STRUCTACCESS.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 69)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(1318)
		 		try _errHandler.sync(self)
		 		switch (ObjCParser.Tokens(rawValue: try _input.LA(1))!) {
		 		case .LBRACK:
		 			setState(1303)
		 			try match(ObjCParser.Tokens.LBRACK.rawValue)
		 			setState(1304)
		 			try expression()
		 			setState(1305)
		 			try match(ObjCParser.Tokens.RBRACK.rawValue)

		 			break

		 		case .LPAREN:
		 			setState(1307)
		 			try match(ObjCParser.Tokens.LPAREN.rawValue)
		 			setState(1309)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (//closure
		 			 { () -> Bool in
		 			      var testSet: Bool = {  () -> Bool in
		 			   let testArray: [Int] = [_la, ObjCParser.Tokens.ENCODE.rawValue,ObjCParser.Tokens.PROTOCOL.rawValue,ObjCParser.Tokens.SELECTOR.rawValue,ObjCParser.Tokens.SUPER.rawValue,ObjCParser.Tokens.SELF.rawValue,ObjCParser.Tokens.SIZEOF.rawValue]
		 			    return  Utils.testBitLeftShiftArray(testArray, 0)
		 			}()
		 			          testSet = testSet || {  () -> Bool in
		 			             let testArray: [Int] = [_la, ObjCParser.Tokens.LPAREN.rawValue,ObjCParser.Tokens.LBRACK.rawValue,ObjCParser.Tokens.AT.rawValue,ObjCParser.Tokens.BANG.rawValue,ObjCParser.Tokens.TILDE.rawValue,ObjCParser.Tokens.INC.rawValue,ObjCParser.Tokens.DEC.rawValue,ObjCParser.Tokens.SUB.rawValue,ObjCParser.Tokens.MUL.rawValue,ObjCParser.Tokens.BITAND.rawValue,ObjCParser.Tokens.CARET.rawValue,ObjCParser.Tokens.IDENTIFIER.rawValue,ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.STRING_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 			              return  Utils.testBitLeftShiftArray(testArray, 69)
		 			          }()
		 			      return testSet
		 			 }()) {
		 				setState(1308)
		 				try argument_expression_list()

		 			}

		 			setState(1311)
		 			try match(ObjCParser.Tokens.RPAREN.rawValue)

		 			break

		 		case .DOT:
		 			setState(1312)
		 			try match(ObjCParser.Tokens.DOT.rawValue)
		 			setState(1313)
		 			try identifier()

		 			break

		 		case .STRUCTACCESS:
		 			setState(1314)
		 			try match(ObjCParser.Tokens.STRUCTACCESS.rawValue)
		 			setState(1315)
		 			try identifier()

		 			break

		 		case .INC:
		 			setState(1316)
		 			try match(ObjCParser.Tokens.INC.rawValue)

		 			break

		 		case .DEC:
		 			setState(1317)
		 			try match(ObjCParser.Tokens.DEC.rawValue)

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 		setState(1322)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Argument_expression_listContext: ParserRuleContext {
			open
			func assignment_expression() -> [Assignment_expressionContext] {
				return getRuleContexts(Assignment_expressionContext.self)
			}
			open
			func assignment_expression(_ i: Int) -> Assignment_expressionContext? {
				return getRuleContext(Assignment_expressionContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(ObjCParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(ObjCParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_argument_expression_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterArgument_expression_list(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitArgument_expression_list(self)
			}
		}
	}
	@discardableResult
	 open func argument_expression_list() throws -> Argument_expression_listContext {
		var _localctx: Argument_expression_listContext = Argument_expression_listContext(_ctx, getState())
		try enterRule(_localctx, 242, ObjCParser.RULE_argument_expression_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1323)
		 	try assignment_expression()
		 	setState(1328)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ObjCParser.Tokens.COMMA.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(1324)
		 		try match(ObjCParser.Tokens.COMMA.rawValue)
		 		setState(1325)
		 		try assignment_expression()


		 		setState(1330)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IdentifierContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_identifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterIdentifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitIdentifier(self)
			}
		}
	}
	@discardableResult
	 open func identifier() throws -> IdentifierContext {
		var _localctx: IdentifierContext = IdentifierContext(_ctx, getState())
		try enterRule(_localctx, 244, ObjCParser.RULE_identifier)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1331)
		 	try match(ObjCParser.Tokens.IDENTIFIER.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ConstantContext: ParserRuleContext {
			open
			func DECIMAL_LITERAL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.DECIMAL_LITERAL.rawValue, 0)
			}
			open
			func HEX_LITERAL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.HEX_LITERAL.rawValue, 0)
			}
			open
			func OCTAL_LITERAL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.OCTAL_LITERAL.rawValue, 0)
			}
			open
			func CHARACTER_LITERAL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.CHARACTER_LITERAL.rawValue, 0)
			}
			open
			func FLOATING_POINT_LITERAL() -> TerminalNode? {
				return getToken(ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ObjCParser.RULE_constant
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.enterConstant(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? ObjCListener {
				listener.exitConstant(self)
			}
		}
	}
	@discardableResult
	 open func constant() throws -> ConstantContext {
		var _localctx: ConstantContext = ConstantContext(_ctx, getState())
		try enterRule(_localctx, 246, ObjCParser.RULE_constant)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(1333)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ObjCParser.Tokens.CHARACTER_LITERAL.rawValue,ObjCParser.Tokens.HEX_LITERAL.rawValue,ObjCParser.Tokens.DECIMAL_LITERAL.rawValue,ObjCParser.Tokens.OCTAL_LITERAL.rawValue,ObjCParser.Tokens.FLOATING_POINT_LITERAL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 126)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public
	static let _serializedATN = ObjCParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}