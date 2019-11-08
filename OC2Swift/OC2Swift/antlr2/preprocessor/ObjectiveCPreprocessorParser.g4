/*
Objective-C Preprocessor grammar.
The MIT License (MIT).
Copyright (c) 2016-2017, Ivan Kochurkin (kvanttt@gmail.com).

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

parser grammar ObjectiveCPreprocessorParser;

options { tokenVocab=ObjectiveCPreprocessorLexer; }

objectiveCDocument
    : text* EOF
    ;

text
    : code                                         #preprocessorCode
    | SHARP directive (NEW_LINE | EOF)             #preprocessorDirective
    ;

code
    : CODE+
    ;

directive
    : (IMPORT | INCLUDE) directive_text             #preprocessorImport 引用或包含预处理文本
    | IF preprocessor_expression                    #preprocessorConditional if 预处理指令
    | ELIF preprocessor_expression                  #preprocessorConditional elif 预处理指令
    | ELSE                                          #preprocessorConditional else
    | ENDIF                                         #preprocessorConditional endif
    | IFDEF CONDITIONAL_SYMBOL                      #preprocessorDef    ifdef
    | IFNDEF CONDITIONAL_SYMBOL                     #preprocessorDef    ifndef
    | UNDEF CONDITIONAL_SYMBOL                      #preprocessorDef    undef
    | PRAGMA directive_text                         #preprocessorPragma PRAGMA
    | ERROR directive_text                          #preprocessorError  错误uyue'ju
    | DEFINE CONDITIONAL_SYMBOL directive_text?     #preprocessorDefine
    ;

directive_text
    : TEXT+
    ;

preprocessor_expression #预处理指令
    : TRUE                                                                   #preprocessorConstant 真
    | FALSE                                                                  #preprocessorConstant 假
    | DECIMAL_LITERAL                                                        #preprocessorConstant 十进制数字
    | DIRECTIVE_STRING                                                       #preprocessorConstant 条件符号
    | CONDITIONAL_SYMBOL (LPAREN preprocessor_expression RPAREN)?            #preprocessorConditionalSymbol 条件语句
    | LPAREN preprocessor_expression RPAREN                                  #preprocessorParenthesis
    | BANG preprocessor_expression                                           #preprocessorNot 否
    | preprocessor_expression op=(EQUAL | NOTEQUAL) preprocessor_expression  #preprocessorBinary 等于或不等于
    | preprocessor_expression op=AND preprocessor_expression                 #preprocessorBinary 并且
    | preprocessor_expression op=OR preprocessor_expression                  #preprocessorBinary 或
    | preprocessor_expression op=(LT | GT | LE | GE) preprocessor_expression #preprocessorBinary < > <= >=
    | DEFINED (CONDITIONAL_SYMBOL | LPAREN CONDITIONAL_SYMBOL RPAREN)        #preprocessorDefined define 添加语句 或 条件语句
    ;
