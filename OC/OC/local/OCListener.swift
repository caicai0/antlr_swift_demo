//
//  OCListener.swift
//  OC
//
//  Created by liyufeng on 2019/9/23.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation
import Antlr4

class OCListener: ObjCListener {
    var path : [String] = []
    
    
    func enterTranslation_unit(_ ctx: ObjCParser.Translation_unitContext) {
        onListener(functionName: #function)
    }
    
    func exitTranslation_unit(_ ctx: ObjCParser.Translation_unitContext) {
        onListener(functionName: #function)
    }
    
    func enterExternal_declaration(_ ctx: ObjCParser.External_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitExternal_declaration(_ ctx: ObjCParser.External_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterPreprocessor_declaration(_ ctx: ObjCParser.Preprocessor_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitPreprocessor_declaration(_ ctx: ObjCParser.Preprocessor_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterClass_interface(_ ctx: ObjCParser.Class_interfaceContext) {
        onListener(functionName: #function)
    }
    
    func exitClass_interface(_ ctx: ObjCParser.Class_interfaceContext) {
        onListener(functionName: #function)
    }
    
    func enterCategory_interface(_ ctx: ObjCParser.Category_interfaceContext) {
        onListener(functionName: #function)
    }
    
    func exitCategory_interface(_ ctx: ObjCParser.Category_interfaceContext) {
        onListener(functionName: #function)
    }
    
    func enterClass_implementation(_ ctx: ObjCParser.Class_implementationContext) {
        onListener(functionName: #function)
    }
    
    func exitClass_implementation(_ ctx: ObjCParser.Class_implementationContext) {
        onListener(functionName: #function)
    }
    
    func enterCategory_implementation(_ ctx: ObjCParser.Category_implementationContext) {
        onListener(functionName: #function)
    }
    
    func exitCategory_implementation(_ ctx: ObjCParser.Category_implementationContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocol_declaration(_ ctx: ObjCParser.Protocol_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocol_declaration(_ ctx: ObjCParser.Protocol_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocol_declaration_list(_ ctx: ObjCParser.Protocol_declaration_listContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocol_declaration_list(_ ctx: ObjCParser.Protocol_declaration_listContext) {
        onListener(functionName: #function)
    }
    
    func enterClass_declaration_list(_ ctx: ObjCParser.Class_declaration_listContext) {
        onListener(functionName: #function)
    }
    
    func exitClass_declaration_list(_ ctx: ObjCParser.Class_declaration_listContext) {
        onListener(functionName: #function)
    }
    
    func enterClass_list(_ ctx: ObjCParser.Class_listContext) {
        onListener(functionName: #function)
    }
    
    func exitClass_list(_ ctx: ObjCParser.Class_listContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocol_reference_list(_ ctx: ObjCParser.Protocol_reference_listContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocol_reference_list(_ ctx: ObjCParser.Protocol_reference_listContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocol_list(_ ctx: ObjCParser.Protocol_listContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocol_list(_ ctx: ObjCParser.Protocol_listContext) {
        onListener(functionName: #function)
    }
    
    func enterProperty_declaration(_ ctx: ObjCParser.Property_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitProperty_declaration(_ ctx: ObjCParser.Property_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterProperty_attributes_declaration(_ ctx: ObjCParser.Property_attributes_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitProperty_attributes_declaration(_ ctx: ObjCParser.Property_attributes_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterProperty_attributes_list(_ ctx: ObjCParser.Property_attributes_listContext) {
        onListener(functionName: #function)
    }
    
    func exitProperty_attributes_list(_ ctx: ObjCParser.Property_attributes_listContext) {
        onListener(functionName: #function)
    }
    
    func enterProperty_attribute(_ ctx: ObjCParser.Property_attributeContext) {
        onListener(functionName: #function)
    }
    
    func exitProperty_attribute(_ ctx: ObjCParser.Property_attributeContext) {
        onListener(functionName: #function)
    }
    
    func enterClass_name(_ ctx: ObjCParser.Class_nameContext) {
        onListener(functionName: #function)
    }
    
    func exitClass_name(_ ctx: ObjCParser.Class_nameContext) {
        onListener(functionName: #function)
    }
    
    func enterSuperclass_name(_ ctx: ObjCParser.Superclass_nameContext) {
        onListener(functionName: #function)
    }
    
    func exitSuperclass_name(_ ctx: ObjCParser.Superclass_nameContext) {
        onListener(functionName: #function)
    }
    
    func enterCategory_name(_ ctx: ObjCParser.Category_nameContext) {
        onListener(functionName: #function)
    }
    
    func exitCategory_name(_ ctx: ObjCParser.Category_nameContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocol_name(_ ctx: ObjCParser.Protocol_nameContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocol_name(_ ctx: ObjCParser.Protocol_nameContext) {
        onListener(functionName: #function)
    }
    
    func enterInstance_variables(_ ctx: ObjCParser.Instance_variablesContext) {
        onListener(functionName: #function)
    }
    
    func exitInstance_variables(_ ctx: ObjCParser.Instance_variablesContext) {
        onListener(functionName: #function)
    }
    
    func enterVisibility_specification(_ ctx: ObjCParser.Visibility_specificationContext) {
        onListener(functionName: #function)
    }
    
    func exitVisibility_specification(_ ctx: ObjCParser.Visibility_specificationContext) {
        onListener(functionName: #function)
    }
    
    func enterInterface_declaration_list(_ ctx: ObjCParser.Interface_declaration_listContext) {
        onListener(functionName: #function)
    }
    
    func exitInterface_declaration_list(_ ctx: ObjCParser.Interface_declaration_listContext) {
        onListener(functionName: #function)
    }
    
    func enterClass_method_declaration(_ ctx: ObjCParser.Class_method_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitClass_method_declaration(_ ctx: ObjCParser.Class_method_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterInstance_method_declaration(_ ctx: ObjCParser.Instance_method_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitInstance_method_declaration(_ ctx: ObjCParser.Instance_method_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterMethod_declaration(_ ctx: ObjCParser.Method_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitMethod_declaration(_ ctx: ObjCParser.Method_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterImplementation_definition_list(_ ctx: ObjCParser.Implementation_definition_listContext) {
        onListener(functionName: #function)
    }
    
    func exitImplementation_definition_list(_ ctx: ObjCParser.Implementation_definition_listContext) {
        onListener(functionName: #function)
    }
    
    func enterClass_method_definition(_ ctx: ObjCParser.Class_method_definitionContext) {
        onListener(functionName: #function)
    }
    
    func exitClass_method_definition(_ ctx: ObjCParser.Class_method_definitionContext) {
        onListener(functionName: #function)
    }
    
    func enterInstance_method_definition(_ ctx: ObjCParser.Instance_method_definitionContext) {
        onListener(functionName: #function)
    }
    
    func exitInstance_method_definition(_ ctx: ObjCParser.Instance_method_definitionContext) {
        onListener(functionName: #function)
    }
    
    func enterMethod_definition(_ ctx: ObjCParser.Method_definitionContext) {
        onListener(functionName: #function)
    }
    
    func exitMethod_definition(_ ctx: ObjCParser.Method_definitionContext) {
        onListener(functionName: #function)
    }
    
    func enterMethod_selector(_ ctx: ObjCParser.Method_selectorContext) {
        onListener(functionName: #function)
    }
    
    func exitMethod_selector(_ ctx: ObjCParser.Method_selectorContext) {
        onListener(functionName: #function)
    }
    
    func enterKeyword_declarator(_ ctx: ObjCParser.Keyword_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitKeyword_declarator(_ ctx: ObjCParser.Keyword_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterSelector(_ ctx: ObjCParser.SelectorContext) {
        onListener(functionName: #function)
    }
    
    func exitSelector(_ ctx: ObjCParser.SelectorContext) {
        onListener(functionName: #function)
    }
    
    func enterMethod_type(_ ctx: ObjCParser.Method_typeContext) {
        onListener(functionName: #function)
    }
    
    func exitMethod_type(_ ctx: ObjCParser.Method_typeContext) {
        onListener(functionName: #function)
    }
    
    func enterProperty_implementation(_ ctx: ObjCParser.Property_implementationContext) {
        onListener(functionName: #function)
    }
    
    func exitProperty_implementation(_ ctx: ObjCParser.Property_implementationContext) {
        onListener(functionName: #function)
    }
    
    func enterProperty_synthesize_list(_ ctx: ObjCParser.Property_synthesize_listContext) {
        onListener(functionName: #function)
    }
    
    func exitProperty_synthesize_list(_ ctx: ObjCParser.Property_synthesize_listContext) {
        onListener(functionName: #function)
    }
    
    func enterProperty_synthesize_item(_ ctx: ObjCParser.Property_synthesize_itemContext) {
        onListener(functionName: #function)
    }
    
    func exitProperty_synthesize_item(_ ctx: ObjCParser.Property_synthesize_itemContext) {
        onListener(functionName: #function)
    }
    
    func enterBlock_type(_ ctx: ObjCParser.Block_typeContext) {
        onListener(functionName: #function)
    }
    
    func exitBlock_type(_ ctx: ObjCParser.Block_typeContext) {
        onListener(functionName: #function)
    }
    
    func enterType_specifier(_ ctx: ObjCParser.Type_specifierContext) {
        onListener(functionName: #function)
    }
    
    func exitType_specifier(_ ctx: ObjCParser.Type_specifierContext) {
        onListener(functionName: #function)
    }
    
    func enterType_qualifier(_ ctx: ObjCParser.Type_qualifierContext) {
        onListener(functionName: #function)
    }
    
    func exitType_qualifier(_ ctx: ObjCParser.Type_qualifierContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocol_qualifier(_ ctx: ObjCParser.Protocol_qualifierContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocol_qualifier(_ ctx: ObjCParser.Protocol_qualifierContext) {
        onListener(functionName: #function)
    }
    
    func enterPrimary_expression(_ ctx: ObjCParser.Primary_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitPrimary_expression(_ ctx: ObjCParser.Primary_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterDictionary_pair(_ ctx: ObjCParser.Dictionary_pairContext) {
        onListener(functionName: #function)
    }
    
    func exitDictionary_pair(_ ctx: ObjCParser.Dictionary_pairContext) {
        onListener(functionName: #function)
    }
    
    func enterDictionary_expression(_ ctx: ObjCParser.Dictionary_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitDictionary_expression(_ ctx: ObjCParser.Dictionary_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterArray_expression(_ ctx: ObjCParser.Array_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitArray_expression(_ ctx: ObjCParser.Array_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterBox_expression(_ ctx: ObjCParser.Box_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitBox_expression(_ ctx: ObjCParser.Box_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterBlock_parameters(_ ctx: ObjCParser.Block_parametersContext) {
        onListener(functionName: #function)
    }
    
    func exitBlock_parameters(_ ctx: ObjCParser.Block_parametersContext) {
        onListener(functionName: #function)
    }
    
    func enterBlock_expression(_ ctx: ObjCParser.Block_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitBlock_expression(_ ctx: ObjCParser.Block_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterMessage_expression(_ ctx: ObjCParser.Message_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitMessage_expression(_ ctx: ObjCParser.Message_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterReceiver(_ ctx: ObjCParser.ReceiverContext) {
        onListener(functionName: #function)
    }
    
    func exitReceiver(_ ctx: ObjCParser.ReceiverContext) {
        onListener(functionName: #function)
    }
    
    func enterMessage_selector(_ ctx: ObjCParser.Message_selectorContext) {
        onListener(functionName: #function)
    }
    
    func exitMessage_selector(_ ctx: ObjCParser.Message_selectorContext) {
        onListener(functionName: #function)
    }
    
    func enterKeyword_argument(_ ctx: ObjCParser.Keyword_argumentContext) {
        onListener(functionName: #function)
    }
    
    func exitKeyword_argument(_ ctx: ObjCParser.Keyword_argumentContext) {
        onListener(functionName: #function)
    }
    
    func enterSelector_expression(_ ctx: ObjCParser.Selector_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitSelector_expression(_ ctx: ObjCParser.Selector_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterSelector_name(_ ctx: ObjCParser.Selector_nameContext) {
        onListener(functionName: #function)
    }
    
    func exitSelector_name(_ ctx: ObjCParser.Selector_nameContext) {
        onListener(functionName: #function)
    }
    
    func enterProtocol_expression(_ ctx: ObjCParser.Protocol_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitProtocol_expression(_ ctx: ObjCParser.Protocol_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterEncode_expression(_ ctx: ObjCParser.Encode_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitEncode_expression(_ ctx: ObjCParser.Encode_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterType_variable_declarator(_ ctx: ObjCParser.Type_variable_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitType_variable_declarator(_ ctx: ObjCParser.Type_variable_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterTry_statement(_ ctx: ObjCParser.Try_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitTry_statement(_ ctx: ObjCParser.Try_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterCatch_statement(_ ctx: ObjCParser.Catch_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitCatch_statement(_ ctx: ObjCParser.Catch_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterFinally_statement(_ ctx: ObjCParser.Finally_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitFinally_statement(_ ctx: ObjCParser.Finally_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterThrow_statement(_ ctx: ObjCParser.Throw_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitThrow_statement(_ ctx: ObjCParser.Throw_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterTry_block(_ ctx: ObjCParser.Try_blockContext) {
        onListener(functionName: #function)
    }
    
    func exitTry_block(_ ctx: ObjCParser.Try_blockContext) {
        onListener(functionName: #function)
    }
    
    func enterSynchronized_statement(_ ctx: ObjCParser.Synchronized_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitSynchronized_statement(_ ctx: ObjCParser.Synchronized_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterAutorelease_statement(_ ctx: ObjCParser.Autorelease_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitAutorelease_statement(_ ctx: ObjCParser.Autorelease_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterFunction_definition(_ ctx: ObjCParser.Function_definitionContext) {
        onListener(functionName: #function)
    }
    
    func exitFunction_definition(_ ctx: ObjCParser.Function_definitionContext) {
        onListener(functionName: #function)
    }
    
    func enterDeclaration(_ ctx: ObjCParser.DeclarationContext) {
        onListener(functionName: #function)
    }
    
    func exitDeclaration(_ ctx: ObjCParser.DeclarationContext) {
        onListener(functionName: #function)
    }
    
    func enterDeclaration_specifiers(_ ctx: ObjCParser.Declaration_specifiersContext) {
        onListener(functionName: #function)
    }
    
    func exitDeclaration_specifiers(_ ctx: ObjCParser.Declaration_specifiersContext) {
        onListener(functionName: #function)
    }
    
    func enterArc_behaviour_specifier(_ ctx: ObjCParser.Arc_behaviour_specifierContext) {
        onListener(functionName: #function)
    }
    
    func exitArc_behaviour_specifier(_ ctx: ObjCParser.Arc_behaviour_specifierContext) {
        onListener(functionName: #function)
    }
    
    func enterStorage_class_specifier(_ ctx: ObjCParser.Storage_class_specifierContext) {
        onListener(functionName: #function)
    }
    
    func exitStorage_class_specifier(_ ctx: ObjCParser.Storage_class_specifierContext) {
        onListener(functionName: #function)
    }
    
    func enterInit_declarator_list(_ ctx: ObjCParser.Init_declarator_listContext) {
        onListener(functionName: #function)
    }
    
    func exitInit_declarator_list(_ ctx: ObjCParser.Init_declarator_listContext) {
        onListener(functionName: #function)
    }
    
    func enterInit_declarator(_ ctx: ObjCParser.Init_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitInit_declarator(_ ctx: ObjCParser.Init_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterStruct_or_union_specifier(_ ctx: ObjCParser.Struct_or_union_specifierContext) {
        onListener(functionName: #function)
    }
    
    func exitStruct_or_union_specifier(_ ctx: ObjCParser.Struct_or_union_specifierContext) {
        onListener(functionName: #function)
    }
    
    func enterStruct_declaration(_ ctx: ObjCParser.Struct_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitStruct_declaration(_ ctx: ObjCParser.Struct_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterSpecifier_qualifier_list(_ ctx: ObjCParser.Specifier_qualifier_listContext) {
        onListener(functionName: #function)
    }
    
    func exitSpecifier_qualifier_list(_ ctx: ObjCParser.Specifier_qualifier_listContext) {
        onListener(functionName: #function)
    }
    
    func enterStruct_declarator_list(_ ctx: ObjCParser.Struct_declarator_listContext) {
        onListener(functionName: #function)
    }
    
    func exitStruct_declarator_list(_ ctx: ObjCParser.Struct_declarator_listContext) {
        onListener(functionName: #function)
    }
    
    func enterStruct_declarator(_ ctx: ObjCParser.Struct_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitStruct_declarator(_ ctx: ObjCParser.Struct_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterEnum_specifier(_ ctx: ObjCParser.Enum_specifierContext) {
        onListener(functionName: #function)
    }
    
    func exitEnum_specifier(_ ctx: ObjCParser.Enum_specifierContext) {
        onListener(functionName: #function)
    }
    
    func enterEnumerator_list(_ ctx: ObjCParser.Enumerator_listContext) {
        onListener(functionName: #function)
    }
    
    func exitEnumerator_list(_ ctx: ObjCParser.Enumerator_listContext) {
        onListener(functionName: #function)
    }
    
    func enterEnumerator(_ ctx: ObjCParser.EnumeratorContext) {
        onListener(functionName: #function)
    }
    
    func exitEnumerator(_ ctx: ObjCParser.EnumeratorContext) {
        onListener(functionName: #function)
    }
    
    func enterPointer(_ ctx: ObjCParser.PointerContext) {
        onListener(functionName: #function)
    }
    
    func exitPointer(_ ctx: ObjCParser.PointerContext) {
        onListener(functionName: #function)
    }
    
    func enterDeclarator(_ ctx: ObjCParser.DeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitDeclarator(_ ctx: ObjCParser.DeclaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterDirect_declarator(_ ctx: ObjCParser.Direct_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitDirect_declarator(_ ctx: ObjCParser.Direct_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterDeclarator_suffix(_ ctx: ObjCParser.Declarator_suffixContext) {
        onListener(functionName: #function)
    }
    
    func exitDeclarator_suffix(_ ctx: ObjCParser.Declarator_suffixContext) {
        onListener(functionName: #function)
    }
    
    func enterParameter_list(_ ctx: ObjCParser.Parameter_listContext) {
        onListener(functionName: #function)
    }
    
    func exitParameter_list(_ ctx: ObjCParser.Parameter_listContext) {
        onListener(functionName: #function)
    }
    
    func enterParameter_declaration(_ ctx: ObjCParser.Parameter_declarationContext) {
        onListener(functionName: #function)
    }
    
    func exitParameter_declaration(_ ctx: ObjCParser.Parameter_declarationContext) {
        onListener(functionName: #function)
    }
    
    func enterInitializer(_ ctx: ObjCParser.InitializerContext) {
        onListener(functionName: #function)
    }
    
    func exitInitializer(_ ctx: ObjCParser.InitializerContext) {
        onListener(functionName: #function)
    }
    
    func enterType_name(_ ctx: ObjCParser.Type_nameContext) {
        onListener(functionName: #function)
    }
    
    func exitType_name(_ ctx: ObjCParser.Type_nameContext) {
        onListener(functionName: #function)
    }
    
    func enterAbstract_declarator(_ ctx: ObjCParser.Abstract_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func exitAbstract_declarator(_ ctx: ObjCParser.Abstract_declaratorContext) {
        onListener(functionName: #function)
    }
    
    func enterAbstract_declarator_suffix(_ ctx: ObjCParser.Abstract_declarator_suffixContext) {
        onListener(functionName: #function)
    }
    
    func exitAbstract_declarator_suffix(_ ctx: ObjCParser.Abstract_declarator_suffixContext) {
        onListener(functionName: #function)
    }
    
    func enterParameter_declaration_list(_ ctx: ObjCParser.Parameter_declaration_listContext) {
        onListener(functionName: #function)
    }
    
    func exitParameter_declaration_list(_ ctx: ObjCParser.Parameter_declaration_listContext) {
        onListener(functionName: #function)
    }
    
    func enterStatement_list(_ ctx: ObjCParser.Statement_listContext) {
        onListener(functionName: #function)
    }
    
    func exitStatement_list(_ ctx: ObjCParser.Statement_listContext) {
        onListener(functionName: #function)
    }
    
    func enterStatement(_ ctx: ObjCParser.StatementContext) {
        onListener(functionName: #function)
    }
    
    func exitStatement(_ ctx: ObjCParser.StatementContext) {
        onListener(functionName: #function)
    }
    
    func enterLabeled_statement(_ ctx: ObjCParser.Labeled_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitLabeled_statement(_ ctx: ObjCParser.Labeled_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterCompound_statement(_ ctx: ObjCParser.Compound_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitCompound_statement(_ ctx: ObjCParser.Compound_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterSelection_statement(_ ctx: ObjCParser.Selection_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitSelection_statement(_ ctx: ObjCParser.Selection_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterFor_in_statement(_ ctx: ObjCParser.For_in_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitFor_in_statement(_ ctx: ObjCParser.For_in_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterFor_statement(_ ctx: ObjCParser.For_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitFor_statement(_ ctx: ObjCParser.For_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterWhile_statement(_ ctx: ObjCParser.While_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitWhile_statement(_ ctx: ObjCParser.While_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterDo_statement(_ ctx: ObjCParser.Do_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitDo_statement(_ ctx: ObjCParser.Do_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterIteration_statement(_ ctx: ObjCParser.Iteration_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitIteration_statement(_ ctx: ObjCParser.Iteration_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterJump_statement(_ ctx: ObjCParser.Jump_statementContext) {
        onListener(functionName: #function)
    }
    
    func exitJump_statement(_ ctx: ObjCParser.Jump_statementContext) {
        onListener(functionName: #function)
    }
    
    func enterExpression(_ ctx: ObjCParser.ExpressionContext) {
        onListener(functionName: #function)
    }
    
    func exitExpression(_ ctx: ObjCParser.ExpressionContext) {
        onListener(functionName: #function)
    }
    
    func enterAssignment_expression(_ ctx: ObjCParser.Assignment_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitAssignment_expression(_ ctx: ObjCParser.Assignment_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterAssignment_operator(_ ctx: ObjCParser.Assignment_operatorContext) {
        onListener(functionName: #function)
    }
    
    func exitAssignment_operator(_ ctx: ObjCParser.Assignment_operatorContext) {
        onListener(functionName: #function)
    }
    
    func enterConditional_expression(_ ctx: ObjCParser.Conditional_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitConditional_expression(_ ctx: ObjCParser.Conditional_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterConstant_expression(_ ctx: ObjCParser.Constant_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitConstant_expression(_ ctx: ObjCParser.Constant_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterLogical_or_expression(_ ctx: ObjCParser.Logical_or_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitLogical_or_expression(_ ctx: ObjCParser.Logical_or_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterLogical_and_expression(_ ctx: ObjCParser.Logical_and_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitLogical_and_expression(_ ctx: ObjCParser.Logical_and_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterInclusive_or_expression(_ ctx: ObjCParser.Inclusive_or_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitInclusive_or_expression(_ ctx: ObjCParser.Inclusive_or_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterExclusive_or_expression(_ ctx: ObjCParser.Exclusive_or_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitExclusive_or_expression(_ ctx: ObjCParser.Exclusive_or_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterAnd_expression(_ ctx: ObjCParser.And_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitAnd_expression(_ ctx: ObjCParser.And_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterEquality_expression(_ ctx: ObjCParser.Equality_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitEquality_expression(_ ctx: ObjCParser.Equality_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterRelational_expression(_ ctx: ObjCParser.Relational_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitRelational_expression(_ ctx: ObjCParser.Relational_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterShift_expression(_ ctx: ObjCParser.Shift_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitShift_expression(_ ctx: ObjCParser.Shift_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterAdditive_expression(_ ctx: ObjCParser.Additive_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitAdditive_expression(_ ctx: ObjCParser.Additive_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterMultiplicative_expression(_ ctx: ObjCParser.Multiplicative_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitMultiplicative_expression(_ ctx: ObjCParser.Multiplicative_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterCast_expression(_ ctx: ObjCParser.Cast_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitCast_expression(_ ctx: ObjCParser.Cast_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterUnary_expression(_ ctx: ObjCParser.Unary_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitUnary_expression(_ ctx: ObjCParser.Unary_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterUnary_operator(_ ctx: ObjCParser.Unary_operatorContext) {
        onListener(functionName: #function)
    }
    
    func exitUnary_operator(_ ctx: ObjCParser.Unary_operatorContext) {
        onListener(functionName: #function)
    }
    
    func enterPostfix_expression(_ ctx: ObjCParser.Postfix_expressionContext) {
        onListener(functionName: #function)
    }
    
    func exitPostfix_expression(_ ctx: ObjCParser.Postfix_expressionContext) {
        onListener(functionName: #function)
    }
    
    func enterArgument_expression_list(_ ctx: ObjCParser.Argument_expression_listContext) {
        onListener(functionName: #function)
    }
    
    func exitArgument_expression_list(_ ctx: ObjCParser.Argument_expression_listContext) {
        onListener(functionName: #function)
    }
    
    func enterIdentifier(_ ctx: ObjCParser.IdentifierContext) {
        onListener(functionName: #function)
    }
    
    func exitIdentifier(_ ctx: ObjCParser.IdentifierContext) {
        onListener(functionName: #function)
    }
    
    func enterConstant(_ ctx: ObjCParser.ConstantContext) {
        onListener(functionName: #function)
    }
    
    func exitConstant(_ ctx: ObjCParser.ConstantContext) {
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
