// Generated from ObjC.g4 by ANTLR 4.7.2
import Antlr4

open class ObjCLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ObjCLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(ObjCLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let AUTORELEASEPOOL=1, CATCH=2, CLASS=3, DYNAMIC=4, ENCODE=5, END=6, 
            FINALLY=7, IMPLEMENTATION=8, INTERFACE=9, PACKAGE=10, PROTOCOL=11, 
            OPTIONAL=12, PRIVATE=13, PROPERTY=14, PROTECTED=15, PUBLIC=16, 
            SELECTOR=17, SYNCHRONIZED=18, SYNTHESIZE=19, THROW=20, TRY=21, 
            SUPER=22, SELF=23, ABSTRACT=24, AUTO=25, BOOLEAN=26, BREAK=27, 
            BYCOPY=28, BYREF=29, CASE=30, CHAR=31, CONST=32, CONTINUE=33, 
            DEFAULT=34, DO=35, DOUBLE=36, ELSE=37, ENUM=38, EXTERN=39, FLOAT=40, 
            FOR=41, ID=42, IF=43, IN=44, INOUT=45, GOTO=46, INT=47, LONG=48, 
            ONEWAY=49, OUT=50, REGISTER=51, RETURN=52, SHORT=53, SIGNED=54, 
            SIZEOF=55, STATIC=56, STRUCT=57, SWITCH=58, TYPEDEF=59, UNION=60, 
            UNSIGNED=61, VOID=62, VOLATILE=63, WHILE=64, NS_OPTIONS=65, 
            NS_ENUM=66, WWEAK=67, WUNSAFE_UNRETAINED=68, LPAREN=69, RPAREN=70, 
            LBRACE=71, RBRACE=72, LBRACK=73, RBRACK=74, SEMI=75, COMMA=76, 
            DOT=77, STRUCTACCESS=78, AT=79, ASSIGN=80, GT=81, LT=82, BANG=83, 
            TILDE=84, QUESTION=85, COLON=86, EQUAL=87, LE=88, GE=89, NOTEQUAL=90, 
            AND=91, OR=92, INC=93, DEC=94, ADD=95, SUB=96, MUL=97, DIV=98, 
            BITAND=99, BITOR=100, CARET=101, MOD=102, SHIFT_R=103, SHIFT_L=104, 
            ADD_ASSIGN=105, SUB_ASSIGN=106, MUL_ASSIGN=107, DIV_ASSIGN=108, 
            AND_ASSIGN=109, OR_ASSIGN=110, XOR_ASSIGN=111, MOD_ASSIGN=112, 
            LSHIFT_ASSIGN=113, RSHIFT_ASSIGN=114, ELIPSIS=115, ASSIGNPA=116, 
            GETTER=117, NONATOMIC=118, SETTER=119, STRONG=120, RETAIN=121, 
            READONLY=122, READWRITE=123, WEAK=124, IDENTIFIER=125, CHARACTER_LITERAL=126, 
            STRING_LITERAL=127, HEX_LITERAL=128, DECIMAL_LITERAL=129, OCTAL_LITERAL=130, 
            FLOATING_POINT_LITERAL=131, IMPORT=132, INCLUDE=133, PRAGMA=134, 
            WS=135, COMMENT=136, LINE_COMMENT=137, HDEFINE=138, HIF=139, 
            HELSE=140, HUNDEF=141, HIFNDEF=142, HENDIF=143

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"AUTORELEASEPOOL", "CATCH", "CLASS", "DYNAMIC", "ENCODE", "END", "FINALLY", 
		"IMPLEMENTATION", "INTERFACE", "PACKAGE", "PROTOCOL", "OPTIONAL", "PRIVATE", 
		"PROPERTY", "PROTECTED", "PUBLIC", "SELECTOR", "SYNCHRONIZED", "SYNTHESIZE", 
		"THROW", "TRY", "SUPER", "SELF", "ABSTRACT", "AUTO", "BOOLEAN", "BREAK", 
		"BYCOPY", "BYREF", "CASE", "CHAR", "CONST", "CONTINUE", "DEFAULT", "DO", 
		"DOUBLE", "ELSE", "ENUM", "EXTERN", "FLOAT", "FOR", "ID", "IF", "IN", 
		"INOUT", "GOTO", "INT", "LONG", "ONEWAY", "OUT", "REGISTER", "RETURN", 
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
		"LETTER", "CHARACTER_LITERAL", "STRING_LITERAL", "STRING", "HEX_LITERAL", 
		"DECIMAL_LITERAL", "OCTAL_LITERAL", "HexDigit", "IntegerTypeSuffix", "FLOATING_POINT_LITERAL", 
		"Exponent", "FloatTypeSuffix", "EscapeSequence", "OctalEscape", "UnicodeEscape", 
		"IMPORT", "INCLUDE", "PRAGMA", "ANGLE_STRING", "WS", "COMMENT", "LINE_COMMENT", 
		"HDEFINE", "HIF", "HELSE", "HUNDEF", "HIFNDEF", "HENDIF"
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
	func getVocabulary() -> Vocabulary {
		return ObjCLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, ObjCLexer._ATN, ObjCLexer._decisionToDFA, ObjCLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "ObjC.g4" }

	override open
	func getRuleNames() -> [String] { return ObjCLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return ObjCLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return ObjCLexer.channelNames }

	override open
	func getModeNames() -> [String] { return ObjCLexer.modeNames }

	override open
	func getATN() -> ATN { return ObjCLexer._ATN }


	public
	static let _serializedATN: String = ObjCLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}