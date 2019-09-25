//
//  OCListener.swift
//  OC
//
//  Created by liyufeng on 2019/9/23.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation
import Antlr4

class OCListener {
    var path : [String] = []
}

extension OCListener : ObjectiveCParserListener {
    func enterSelector(_ ctx: ObjectiveCParser.SelectorContext) {
        onListener(functionName: #function)
    }
    
    func exitSelector(_ ctx: ObjectiveCParser.SelectorContext) {
        onListener(functionName: #function)
    }
    
    func enterReceiver(_ ctx: ObjectiveCParser.ReceiverContext) {
        onListener(functionName: #function)
    }
    
    func exitReceiver(_ ctx: ObjectiveCParser.ReceiverContext) {
        onListener(functionName: #function)
    }
    
    func enterDeclaration(_ ctx: ObjectiveCParser.DeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitDeclaration(_ ctx: ObjectiveCParser.DeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterEnumerator(_ ctx: ObjectiveCParser.EnumeratorContext) {
        onListener(functionName: #function)
    }
    
    func exitEnumerator(_ ctx: ObjectiveCParser.EnumeratorContext) {
        onListener(functionName: #function)
    }
    
    func enterPointer(_ ctx: ObjectiveCParser.PointerContext) {
        onListener(functionName: #function)
    }
    
    func exitPointer(_ ctx: ObjectiveCParser.PointerContext) {
        onListener(functionName: #function)
    }
    
    func enterDeclarator(_ ctx: ObjectiveCParser.DeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitDeclarator(_ ctx: ObjectiveCParser.DeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterStatement(_ ctx: ObjectiveCParser.StatementContext) {
        onListener(functionName: #function)
    }
    
    func exitStatement(_ ctx: ObjectiveCParser.StatementContext) {
        onListener(functionName: #function)
    }
    
    func enterExpression(_ ctx: ObjectiveCParser.ExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitExpression(_ ctx: ObjectiveCParser.ExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterInitializer(_ ctx: ObjectiveCParser.InitializerContext) {
        onListener(functionName: #function)
    }
    
    func exitInitializer(_ ctx: ObjectiveCParser.InitializerContext) {
        onListener(functionName: #function)
    }
    
    func enterConstant(_ ctx: ObjectiveCParser.ConstantContext) {
        onListener(functionName: #function)
    }
    
    func exitConstant(_ ctx: ObjectiveCParser.ConstantContext) {
        onListener(functionName: #function)
    }
    
    func enterIdentifier(_ ctx: ObjectiveCParser.IdentifierContext) {
        onListener(functionName: #function)
    }
    
    func exitIdentifier(_ ctx: ObjectiveCParser.IdentifierContext) {
        onListener(functionName: #function)
    }
    
    func enterTranslationUnit(_ ctx: ObjectiveCParser.TranslationUnitContext) {
        onListener(functionName: #function)
    }
    
    func exitTranslationUnit(_ ctx: ObjectiveCParser.TranslationUnitContext) {
        onListener(functionName: #function)
    }
    
    func enterTopLevelDeclaration(_ ctx: ObjectiveCParser.TopLevelDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitTopLevelDeclaration(_ ctx: ObjectiveCParser.TopLevelDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterImportDeclaration(_ ctx: ObjectiveCParser.ImportDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitImportDeclaration(_ ctx: ObjectiveCParser.ImportDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterClassInterface(_ ctx: ObjectiveCParser.ClassInterfaceContext) {
        onListener(functionName: #function)
    }
    
    func exitClassInterface(_ ctx: ObjectiveCParser.ClassInterfaceContext) {
        onListener(functionName: #function)
    }
    
    func enterCategoryInterface(_ ctx: ObjectiveCParser.CategoryInterfaceContext) {
        onListener(functionName: #function)
    }
    
    func exitCategoryInterface(_ ctx: ObjectiveCParser.CategoryInterfaceContext) {
        onListener(functionName: #function)
    }
    
    func enterClassImplementation(_ ctx: ObjectiveCParser.ClassImplementationContext) {
        onListener(functionName: #function)
    }
    
    func exitClassImplementation(_ ctx: ObjectiveCParser.ClassImplementationContext) {
        onListener(functionName: #function)
    }
    
    func enterCategoryImplementation(_ ctx: ObjectiveCParser.CategoryImplementationContext) {
        onListener(functionName: #function)
    }
    
    func exitCategoryImplementation(_ ctx: ObjectiveCParser.CategoryImplementationContext) {
        onListener(functionName: #function)
    }
    
    func enterGenericTypeSpecifier(_ ctx: ObjectiveCParser.GenericTypeSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func exitGenericTypeSpecifier(_ ctx: ObjectiveCParser.GenericTypeSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocolDeclaration(_ ctx: ObjectiveCParser.ProtocolDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocolDeclaration(_ ctx: ObjectiveCParser.ProtocolDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocolDeclarationSection(_ ctx: ObjectiveCParser.ProtocolDeclarationSectionContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocolDeclarationSection(_ ctx: ObjectiveCParser.ProtocolDeclarationSectionContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocolDeclarationList(_ ctx: ObjectiveCParser.ProtocolDeclarationListContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocolDeclarationList(_ ctx: ObjectiveCParser.ProtocolDeclarationListContext) {
        onListener(functionName: #function)
    }
    
    func enterClassDeclarationList(_ ctx: ObjectiveCParser.ClassDeclarationListContext) {
        onListener(functionName: #function)
    }
    
    func exitClassDeclarationList(_ ctx: ObjectiveCParser.ClassDeclarationListContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocolList(_ ctx: ObjectiveCParser.ProtocolListContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocolList(_ ctx: ObjectiveCParser.ProtocolListContext) {
        onListener(functionName: #function)
    }
    
    func enterPropertyDeclaration(_ ctx: ObjectiveCParser.PropertyDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitPropertyDeclaration(_ ctx: ObjectiveCParser.PropertyDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterPropertyAttributesList(_ ctx: ObjectiveCParser.PropertyAttributesListContext) {
        onListener(functionName: #function)
    }
    
    func exitPropertyAttributesList(_ ctx: ObjectiveCParser.PropertyAttributesListContext) {
        onListener(functionName: #function)
    }
    
    func enterPropertyAttribute(_ ctx: ObjectiveCParser.PropertyAttributeContext) {
        onListener(functionName: #function)
    }
    
    func exitPropertyAttribute(_ ctx: ObjectiveCParser.PropertyAttributeContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocolName(_ ctx: ObjectiveCParser.ProtocolNameContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocolName(_ ctx: ObjectiveCParser.ProtocolNameContext) {
        onListener(functionName: #function)
    }
    
    func enterInstanceVariables(_ ctx: ObjectiveCParser.InstanceVariablesContext) {
        onListener(functionName: #function)
    }
    
    func exitInstanceVariables(_ ctx: ObjectiveCParser.InstanceVariablesContext) {
        onListener(functionName: #function)
    }
    
    func enterVisibilitySection(_ ctx: ObjectiveCParser.VisibilitySectionContext) {
        onListener(functionName: #function)
    }
    
    func exitVisibilitySection(_ ctx: ObjectiveCParser.VisibilitySectionContext) {
        onListener(functionName: #function)
    }
    
    func enterAccessModifier(_ ctx: ObjectiveCParser.AccessModifierContext) {
        onListener(functionName: #function)
    }
    
    func exitAccessModifier(_ ctx: ObjectiveCParser.AccessModifierContext) {
        onListener(functionName: #function)
    }
    
    func enterInterfaceDeclarationList(_ ctx: ObjectiveCParser.InterfaceDeclarationListContext) {
        onListener(functionName: #function)
    }
    
    func exitInterfaceDeclarationList(_ ctx: ObjectiveCParser.InterfaceDeclarationListContext) {
        onListener(functionName: #function)
    }
    
    func enterClassMethodDeclaration(_ ctx: ObjectiveCParser.ClassMethodDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitClassMethodDeclaration(_ ctx: ObjectiveCParser.ClassMethodDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterInstanceMethodDeclaration(_ ctx: ObjectiveCParser.InstanceMethodDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitInstanceMethodDeclaration(_ ctx: ObjectiveCParser.InstanceMethodDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterMethodDeclaration(_ ctx: ObjectiveCParser.MethodDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitMethodDeclaration(_ ctx: ObjectiveCParser.MethodDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterImplementationDefinitionList(_ ctx: ObjectiveCParser.ImplementationDefinitionListContext) {
        onListener(functionName: #function)
    }
    
    func exitImplementationDefinitionList(_ ctx: ObjectiveCParser.ImplementationDefinitionListContext) {
        onListener(functionName: #function)
    }
    
    func enterClassMethodDefinition(_ ctx: ObjectiveCParser.ClassMethodDefinitionContext) {
        onListener(functionName: #function)
    }
    
    func exitClassMethodDefinition(_ ctx: ObjectiveCParser.ClassMethodDefinitionContext) {
        onListener(functionName: #function)
    }
    
    func enterInstanceMethodDefinition(_ ctx: ObjectiveCParser.InstanceMethodDefinitionContext) {
        onListener(functionName: #function)
    }
    
    func exitInstanceMethodDefinition(_ ctx: ObjectiveCParser.InstanceMethodDefinitionContext) {
        onListener(functionName: #function)
    }
    
    func enterMethodDefinition(_ ctx: ObjectiveCParser.MethodDefinitionContext) {
        onListener(functionName: #function)
    }
    
    func exitMethodDefinition(_ ctx: ObjectiveCParser.MethodDefinitionContext) {
        onListener(functionName: #function)
    }
    
    func enterMethodSelector(_ ctx: ObjectiveCParser.MethodSelectorContext) {
        onListener(functionName: #function)
    }
    
    func exitMethodSelector(_ ctx: ObjectiveCParser.MethodSelectorContext) {
        onListener(functionName: #function)
    }
    
    func enterKeywordDeclarator(_ ctx: ObjectiveCParser.KeywordDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitKeywordDeclarator(_ ctx: ObjectiveCParser.KeywordDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterMethodType(_ ctx: ObjectiveCParser.MethodTypeContext) {
        onListener(functionName: #function)
    }
    
    func exitMethodType(_ ctx: ObjectiveCParser.MethodTypeContext) {
        onListener(functionName: #function)
    }
    
    func enterPropertyImplementation(_ ctx: ObjectiveCParser.PropertyImplementationContext) {
        onListener(functionName: #function)
    }
    
    func exitPropertyImplementation(_ ctx: ObjectiveCParser.PropertyImplementationContext) {
        onListener(functionName: #function)
    }
    
    func enterPropertySynthesizeList(_ ctx: ObjectiveCParser.PropertySynthesizeListContext) {
        onListener(functionName: #function)
    }
    
    func exitPropertySynthesizeList(_ ctx: ObjectiveCParser.PropertySynthesizeListContext) {
        onListener(functionName: #function)
    }
    
    func enterPropertySynthesizeItem(_ ctx: ObjectiveCParser.PropertySynthesizeItemContext) {
        onListener(functionName: #function)
    }
    
    func exitPropertySynthesizeItem(_ ctx: ObjectiveCParser.PropertySynthesizeItemContext) {
        onListener(functionName: #function)
    }
    
    func enterBlockType(_ ctx: ObjectiveCParser.BlockTypeContext) {
        onListener(functionName: #function)
    }
    
    func exitBlockType(_ ctx: ObjectiveCParser.BlockTypeContext) {
        onListener(functionName: #function)
    }
    
    func enterGenericsSpecifier(_ ctx: ObjectiveCParser.GenericsSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func exitGenericsSpecifier(_ ctx: ObjectiveCParser.GenericsSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func enterTypeSpecifierWithPrefixes(_ ctx: ObjectiveCParser.TypeSpecifierWithPrefixesContext) {
        onListener(functionName: #function)
    }
    
    func exitTypeSpecifierWithPrefixes(_ ctx: ObjectiveCParser.TypeSpecifierWithPrefixesContext) {
        onListener(functionName: #function)
    }
    
    func enterDictionaryExpression(_ ctx: ObjectiveCParser.DictionaryExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitDictionaryExpression(_ ctx: ObjectiveCParser.DictionaryExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterDictionaryPair(_ ctx: ObjectiveCParser.DictionaryPairContext) {
        onListener(functionName: #function)
    }
    
    func exitDictionaryPair(_ ctx: ObjectiveCParser.DictionaryPairContext) {
        onListener(functionName: #function)
    }
    
    func enterArrayExpression(_ ctx: ObjectiveCParser.ArrayExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitArrayExpression(_ ctx: ObjectiveCParser.ArrayExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterBoxExpression(_ ctx: ObjectiveCParser.BoxExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitBoxExpression(_ ctx: ObjectiveCParser.BoxExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterBlockParameters(_ ctx: ObjectiveCParser.BlockParametersContext) {
        onListener(functionName: #function)
    }
    
    func exitBlockParameters(_ ctx: ObjectiveCParser.BlockParametersContext) {
        onListener(functionName: #function)
    }
    
    func enterTypeVariableDeclaratorOrName(_ ctx: ObjectiveCParser.TypeVariableDeclaratorOrNameContext) {
        onListener(functionName: #function)
    }
    
    func exitTypeVariableDeclaratorOrName(_ ctx: ObjectiveCParser.TypeVariableDeclaratorOrNameContext) {
        onListener(functionName: #function)
    }
    
    func enterBlockExpression(_ ctx: ObjectiveCParser.BlockExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitBlockExpression(_ ctx: ObjectiveCParser.BlockExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterMessageExpression(_ ctx: ObjectiveCParser.MessageExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitMessageExpression(_ ctx: ObjectiveCParser.MessageExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterMessageSelector(_ ctx: ObjectiveCParser.MessageSelectorContext) {
        onListener(functionName: #function)
    }
    
    func exitMessageSelector(_ ctx: ObjectiveCParser.MessageSelectorContext) {
        onListener(functionName: #function)
    }
    
    func enterKeywordArgument(_ ctx: ObjectiveCParser.KeywordArgumentContext) {
        onListener(functionName: #function)
    }
    
    func exitKeywordArgument(_ ctx: ObjectiveCParser.KeywordArgumentContext) {
        onListener(functionName: #function)
    }
    
    func enterKeywordArgumentType(_ ctx: ObjectiveCParser.KeywordArgumentTypeContext) {
        onListener(functionName: #function)
    }
    
    func exitKeywordArgumentType(_ ctx: ObjectiveCParser.KeywordArgumentTypeContext) {
        onListener(functionName: #function)
    }
    
    func enterSelectorExpression(_ ctx: ObjectiveCParser.SelectorExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitSelectorExpression(_ ctx: ObjectiveCParser.SelectorExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterSelectorName(_ ctx: ObjectiveCParser.SelectorNameContext) {
        onListener(functionName: #function)
    }
    
    func exitSelectorName(_ ctx: ObjectiveCParser.SelectorNameContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocolExpression(_ ctx: ObjectiveCParser.ProtocolExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocolExpression(_ ctx: ObjectiveCParser.ProtocolExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterEncodeExpression(_ ctx: ObjectiveCParser.EncodeExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitEncodeExpression(_ ctx: ObjectiveCParser.EncodeExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterTypeVariableDeclarator(_ ctx: ObjectiveCParser.TypeVariableDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitTypeVariableDeclarator(_ ctx: ObjectiveCParser.TypeVariableDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterThrowStatement(_ ctx: ObjectiveCParser.ThrowStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitThrowStatement(_ ctx: ObjectiveCParser.ThrowStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterTryBlock(_ ctx: ObjectiveCParser.TryBlockContext) {
        onListener(functionName: #function)
    }
    
    func exitTryBlock(_ ctx: ObjectiveCParser.TryBlockContext) {
        onListener(functionName: #function)
    }
    
    func enterCatchStatement(_ ctx: ObjectiveCParser.CatchStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitCatchStatement(_ ctx: ObjectiveCParser.CatchStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterSynchronizedStatement(_ ctx: ObjectiveCParser.SynchronizedStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitSynchronizedStatement(_ ctx: ObjectiveCParser.SynchronizedStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterAutoreleaseStatement(_ ctx: ObjectiveCParser.AutoreleaseStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitAutoreleaseStatement(_ ctx: ObjectiveCParser.AutoreleaseStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterFunctionDeclaration(_ ctx: ObjectiveCParser.FunctionDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitFunctionDeclaration(_ ctx: ObjectiveCParser.FunctionDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterFunctionDefinition(_ ctx: ObjectiveCParser.FunctionDefinitionContext) {
        onListener(functionName: #function)
    }
    
    func exitFunctionDefinition(_ ctx: ObjectiveCParser.FunctionDefinitionContext) {
        onListener(functionName: #function)
    }
    
    func enterFunctionSignature(_ ctx: ObjectiveCParser.FunctionSignatureContext) {
        onListener(functionName: #function)
    }
    
    func exitFunctionSignature(_ ctx: ObjectiveCParser.FunctionSignatureContext) {
        onListener(functionName: #function)
    }
    
    func enterAttribute(_ ctx: ObjectiveCParser.AttributeContext) {
        onListener(functionName: #function)
    }
    
    func exitAttribute(_ ctx: ObjectiveCParser.AttributeContext) {
        onListener(functionName: #function)
    }
    
    func enterAttributeName(_ ctx: ObjectiveCParser.AttributeNameContext) {
        onListener(functionName: #function)
    }
    
    func exitAttributeName(_ ctx: ObjectiveCParser.AttributeNameContext) {
        onListener(functionName: #function)
    }
    
    func enterAttributeParameters(_ ctx: ObjectiveCParser.AttributeParametersContext) {
        onListener(functionName: #function)
    }
    
    func exitAttributeParameters(_ ctx: ObjectiveCParser.AttributeParametersContext) {
        onListener(functionName: #function)
    }
    
    func enterAttributeParameterList(_ ctx: ObjectiveCParser.AttributeParameterListContext) {
        onListener(functionName: #function)
    }
    
    func exitAttributeParameterList(_ ctx: ObjectiveCParser.AttributeParameterListContext) {
        onListener(functionName: #function)
    }
    
    func enterAttributeParameter(_ ctx: ObjectiveCParser.AttributeParameterContext) {
        onListener(functionName: #function)
    }
    
    func exitAttributeParameter(_ ctx: ObjectiveCParser.AttributeParameterContext) {
        onListener(functionName: #function)
    }
    
    func enterAttributeParameterAssignment(_ ctx: ObjectiveCParser.AttributeParameterAssignmentContext) {
        onListener(functionName: #function)
    }
    
    func exitAttributeParameterAssignment(_ ctx: ObjectiveCParser.AttributeParameterAssignmentContext) {
        onListener(functionName: #function)
    }
    
    func enterFunctionCallExpression(_ ctx: ObjectiveCParser.FunctionCallExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitFunctionCallExpression(_ ctx: ObjectiveCParser.FunctionCallExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterEnumDeclaration(_ ctx: ObjectiveCParser.EnumDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitEnumDeclaration(_ ctx: ObjectiveCParser.EnumDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterVarDeclaration(_ ctx: ObjectiveCParser.VarDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitVarDeclaration(_ ctx: ObjectiveCParser.VarDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterTypedefDeclaration(_ ctx: ObjectiveCParser.TypedefDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitTypedefDeclaration(_ ctx: ObjectiveCParser.TypedefDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterTypeDeclaratorList(_ ctx: ObjectiveCParser.TypeDeclaratorListContext) {
        onListener(functionName: #function)
    }
    
    func exitTypeDeclaratorList(_ ctx: ObjectiveCParser.TypeDeclaratorListContext) {
        onListener(functionName: #function)
    }
    
    func enterTypeDeclarator(_ ctx: ObjectiveCParser.TypeDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitTypeDeclarator(_ ctx: ObjectiveCParser.TypeDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterDeclarationSpecifiers(_ ctx: ObjectiveCParser.DeclarationSpecifiersContext) {
        onListener(functionName: #function)
    }
    
    func exitDeclarationSpecifiers(_ ctx: ObjectiveCParser.DeclarationSpecifiersContext) {
        onListener(functionName: #function)
    }
    
    func enterAttributeSpecifier(_ ctx: ObjectiveCParser.AttributeSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func exitAttributeSpecifier(_ ctx: ObjectiveCParser.AttributeSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func enterInitDeclaratorList(_ ctx: ObjectiveCParser.InitDeclaratorListContext) {
        onListener(functionName: #function)
    }
    
    func exitInitDeclaratorList(_ ctx: ObjectiveCParser.InitDeclaratorListContext) {
        onListener(functionName: #function)
    }
    
    func enterInitDeclarator(_ ctx: ObjectiveCParser.InitDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitInitDeclarator(_ ctx: ObjectiveCParser.InitDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterStructOrUnionSpecifier(_ ctx: ObjectiveCParser.StructOrUnionSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func exitStructOrUnionSpecifier(_ ctx: ObjectiveCParser.StructOrUnionSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func enterFieldDeclaration(_ ctx: ObjectiveCParser.FieldDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitFieldDeclaration(_ ctx: ObjectiveCParser.FieldDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterSpecifierQualifierList(_ ctx: ObjectiveCParser.SpecifierQualifierListContext) {
        onListener(functionName: #function)
    }
    
    func exitSpecifierQualifierList(_ ctx: ObjectiveCParser.SpecifierQualifierListContext) {
        onListener(functionName: #function)
    }
    
    func enterIbOutletQualifier(_ ctx: ObjectiveCParser.IbOutletQualifierContext) {
        onListener(functionName: #function)
    }
    
    func exitIbOutletQualifier(_ ctx: ObjectiveCParser.IbOutletQualifierContext) {
        onListener(functionName: #function)
    }
    
    func enterArcBehaviourSpecifier(_ ctx: ObjectiveCParser.ArcBehaviourSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func exitArcBehaviourSpecifier(_ ctx: ObjectiveCParser.ArcBehaviourSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func enterNullabilitySpecifier(_ ctx: ObjectiveCParser.NullabilitySpecifierContext) {
        onListener(functionName: #function)
    }
    
    func exitNullabilitySpecifier(_ ctx: ObjectiveCParser.NullabilitySpecifierContext) {
        onListener(functionName: #function)
    }
    
    func enterStorageClassSpecifier(_ ctx: ObjectiveCParser.StorageClassSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func exitStorageClassSpecifier(_ ctx: ObjectiveCParser.StorageClassSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func enterTypePrefix(_ ctx: ObjectiveCParser.TypePrefixContext) {
        onListener(functionName: #function)
    }
    
    func exitTypePrefix(_ ctx: ObjectiveCParser.TypePrefixContext) {
        onListener(functionName: #function)
    }
    
    func enterTypeQualifier(_ ctx: ObjectiveCParser.TypeQualifierContext) {
        onListener(functionName: #function)
    }
    
    func exitTypeQualifier(_ ctx: ObjectiveCParser.TypeQualifierContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocolQualifier(_ ctx: ObjectiveCParser.ProtocolQualifierContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocolQualifier(_ ctx: ObjectiveCParser.ProtocolQualifierContext) {
        onListener(functionName: #function)
    }
    
    func enterTypeSpecifier(_ ctx: ObjectiveCParser.TypeSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func exitTypeSpecifier(_ ctx: ObjectiveCParser.TypeSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func enterTypeofExpression(_ ctx: ObjectiveCParser.TypeofExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitTypeofExpression(_ ctx: ObjectiveCParser.TypeofExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterFieldDeclaratorList(_ ctx: ObjectiveCParser.FieldDeclaratorListContext) {
        onListener(functionName: #function)
    }
    
    func exitFieldDeclaratorList(_ ctx: ObjectiveCParser.FieldDeclaratorListContext) {
        onListener(functionName: #function)
    }
    
    func enterFieldDeclarator(_ ctx: ObjectiveCParser.FieldDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitFieldDeclarator(_ ctx: ObjectiveCParser.FieldDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterEnumSpecifier(_ ctx: ObjectiveCParser.EnumSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func exitEnumSpecifier(_ ctx: ObjectiveCParser.EnumSpecifierContext) {
        onListener(functionName: #function)
    }
    
    func enterEnumeratorList(_ ctx: ObjectiveCParser.EnumeratorListContext) {
        onListener(functionName: #function)
    }
    
    func exitEnumeratorList(_ ctx: ObjectiveCParser.EnumeratorListContext) {
        onListener(functionName: #function)
    }
    
    func enterEnumeratorIdentifier(_ ctx: ObjectiveCParser.EnumeratorIdentifierContext) {
        onListener(functionName: #function)
    }
    
    func exitEnumeratorIdentifier(_ ctx: ObjectiveCParser.EnumeratorIdentifierContext) {
        onListener(functionName: #function)
    }
    
    func enterDirectDeclarator(_ ctx: ObjectiveCParser.DirectDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitDirectDeclarator(_ ctx: ObjectiveCParser.DirectDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterDeclaratorSuffix(_ ctx: ObjectiveCParser.DeclaratorSuffixContext) {
        onListener(functionName: #function)
    }
    
    func exitDeclaratorSuffix(_ ctx: ObjectiveCParser.DeclaratorSuffixContext) {
        onListener(functionName: #function)
    }
    
    func enterParameterList(_ ctx: ObjectiveCParser.ParameterListContext) {
        onListener(functionName: #function)
    }
    
    func exitParameterList(_ ctx: ObjectiveCParser.ParameterListContext) {
        onListener(functionName: #function)
    }
    
    func enterMacro(_ ctx: ObjectiveCParser.MacroContext) {
        onListener(functionName: #function)
    }
    
    func exitMacro(_ ctx: ObjectiveCParser.MacroContext) {
        onListener(functionName: #function)
    }
    
    func enterArrayInitializer(_ ctx: ObjectiveCParser.ArrayInitializerContext) {
        onListener(functionName: #function)
    }
    
    func exitArrayInitializer(_ ctx: ObjectiveCParser.ArrayInitializerContext) {
        onListener(functionName: #function)
    }
    
    func enterStructInitializer(_ ctx: ObjectiveCParser.StructInitializerContext) {
        onListener(functionName: #function)
    }
    
    func exitStructInitializer(_ ctx: ObjectiveCParser.StructInitializerContext) {
        onListener(functionName: #function)
    }
    
    func enterInitializerList(_ ctx: ObjectiveCParser.InitializerListContext) {
        onListener(functionName: #function)
    }
    
    func exitInitializerList(_ ctx: ObjectiveCParser.InitializerListContext) {
        onListener(functionName: #function)
    }
    
    func enterTypeName(_ ctx: ObjectiveCParser.TypeNameContext) {
        onListener(functionName: #function)
    }
    
    func exitTypeName(_ ctx: ObjectiveCParser.TypeNameContext) {
        onListener(functionName: #function)
    }
    
    func enterAbstractDeclarator(_ ctx: ObjectiveCParser.AbstractDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitAbstractDeclarator(_ ctx: ObjectiveCParser.AbstractDeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterAbstractDeclaratorSuffix(_ ctx: ObjectiveCParser.AbstractDeclaratorSuffixContext) {
        onListener(functionName: #function)
    }
    
    func exitAbstractDeclaratorSuffix(_ ctx: ObjectiveCParser.AbstractDeclaratorSuffixContext) {
        onListener(functionName: #function)
    }
    
    func enterParameterDeclarationList(_ ctx: ObjectiveCParser.ParameterDeclarationListContext) {
        onListener(functionName: #function)
    }
    
    func exitParameterDeclarationList(_ ctx: ObjectiveCParser.ParameterDeclarationListContext) {
        onListener(functionName: #function)
    }
    
    func enterParameterDeclaration(_ ctx: ObjectiveCParser.ParameterDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitParameterDeclaration(_ ctx: ObjectiveCParser.ParameterDeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterLabeledStatement(_ ctx: ObjectiveCParser.LabeledStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitLabeledStatement(_ ctx: ObjectiveCParser.LabeledStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterRangeExpression(_ ctx: ObjectiveCParser.RangeExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitRangeExpression(_ ctx: ObjectiveCParser.RangeExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterCompoundStatement(_ ctx: ObjectiveCParser.CompoundStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitCompoundStatement(_ ctx: ObjectiveCParser.CompoundStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterSelectionStatement(_ ctx: ObjectiveCParser.SelectionStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitSelectionStatement(_ ctx: ObjectiveCParser.SelectionStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterSwitchStatement(_ ctx: ObjectiveCParser.SwitchStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitSwitchStatement(_ ctx: ObjectiveCParser.SwitchStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterSwitchBlock(_ ctx: ObjectiveCParser.SwitchBlockContext) {
        onListener(functionName: #function)
    }
    
    func exitSwitchBlock(_ ctx: ObjectiveCParser.SwitchBlockContext) {
        onListener(functionName: #function)
    }
    
    func enterSwitchSection(_ ctx: ObjectiveCParser.SwitchSectionContext) {
        onListener(functionName: #function)
    }
    
    func exitSwitchSection(_ ctx: ObjectiveCParser.SwitchSectionContext) {
        onListener(functionName: #function)
    }
    
    func enterSwitchLabel(_ ctx: ObjectiveCParser.SwitchLabelContext) {
        onListener(functionName: #function)
    }
    
    func exitSwitchLabel(_ ctx: ObjectiveCParser.SwitchLabelContext) {
        onListener(functionName: #function)
    }
    
    func enterIterationStatement(_ ctx: ObjectiveCParser.IterationStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitIterationStatement(_ ctx: ObjectiveCParser.IterationStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterWhileStatement(_ ctx: ObjectiveCParser.WhileStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitWhileStatement(_ ctx: ObjectiveCParser.WhileStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterDoStatement(_ ctx: ObjectiveCParser.DoStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitDoStatement(_ ctx: ObjectiveCParser.DoStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterForStatement(_ ctx: ObjectiveCParser.ForStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitForStatement(_ ctx: ObjectiveCParser.ForStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterForLoopInitializer(_ ctx: ObjectiveCParser.ForLoopInitializerContext) {
        onListener(functionName: #function)
    }
    
    func exitForLoopInitializer(_ ctx: ObjectiveCParser.ForLoopInitializerContext) {
        onListener(functionName: #function)
    }
    
    func enterForInStatement(_ ctx: ObjectiveCParser.ForInStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitForInStatement(_ ctx: ObjectiveCParser.ForInStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterJumpStatement(_ ctx: ObjectiveCParser.JumpStatementContext) {
        onListener(functionName: #function)
    }
    
    func exitJumpStatement(_ ctx: ObjectiveCParser.JumpStatementContext) {
        onListener(functionName: #function)
    }
    
    func enterExpressions(_ ctx: ObjectiveCParser.ExpressionsContext) {
        onListener(functionName: #function)
    }
    
    func exitExpressions(_ ctx: ObjectiveCParser.ExpressionsContext) {
        onListener(functionName: #function)
    }
    
    func enterAssignmentOperator(_ ctx: ObjectiveCParser.AssignmentOperatorContext) {
        onListener(functionName: #function)
    }
    
    func exitAssignmentOperator(_ ctx: ObjectiveCParser.AssignmentOperatorContext) {
        onListener(functionName: #function)
    }
    
    func enterCastExpression(_ ctx: ObjectiveCParser.CastExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitCastExpression(_ ctx: ObjectiveCParser.CastExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterConstantExpression(_ ctx: ObjectiveCParser.ConstantExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitConstantExpression(_ ctx: ObjectiveCParser.ConstantExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterUnaryExpression(_ ctx: ObjectiveCParser.UnaryExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitUnaryExpression(_ ctx: ObjectiveCParser.UnaryExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterUnaryOperator(_ ctx: ObjectiveCParser.UnaryOperatorContext) {
        onListener(functionName: #function)
    }
    
    func exitUnaryOperator(_ ctx: ObjectiveCParser.UnaryOperatorContext) {
        onListener(functionName: #function)
    }
    
    func enterPostfixExpression(_ ctx: ObjectiveCParser.PostfixExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitPostfixExpression(_ ctx: ObjectiveCParser.PostfixExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterPostfix(_ ctx: ObjectiveCParser.PostfixContext) {
        onListener(functionName: #function)
    }
    
    func exitPostfix(_ ctx: ObjectiveCParser.PostfixContext) {
        onListener(functionName: #function)
    }
    
    func enterArgumentExpressionList(_ ctx: ObjectiveCParser.ArgumentExpressionListContext) {
        onListener(functionName: #function)
    }
    
    func exitArgumentExpressionList(_ ctx: ObjectiveCParser.ArgumentExpressionListContext) {
        onListener(functionName: #function)
    }
    
    func enterArgumentExpression(_ ctx: ObjectiveCParser.ArgumentExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitArgumentExpression(_ ctx: ObjectiveCParser.ArgumentExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterPrimaryExpression(_ ctx: ObjectiveCParser.PrimaryExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitPrimaryExpression(_ ctx: ObjectiveCParser.PrimaryExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterStringLiteral(_ ctx: ObjectiveCParser.StringLiteralContext) {
        onListener(functionName: #function)
    }
    
    func exitStringLiteral(_ ctx: ObjectiveCParser.StringLiteralContext) {
        onListener(functionName: #function)
    }
    
    func visitTerminal(_ node: TerminalNode) {
        onListener(functionName: #function)
    }
    
    func visitErrorNode(_ node: ErrorNode) {
        onListener(functionName: #function)
    }
    
    func enterEveryRule(_ ctx: ParserRuleContext) throws {//
        //        onListener(functionName: #function)
    }
    
    func exitEveryRule(_ ctx: ParserRuleContext) throws {
        //        onListener(functionName: #function)
    }
}

extension OCListener {
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
