// Generated from ObjC.g4 by ANTLR 4.7.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link ObjCParser}.
 */
public protocol ObjCListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link ObjCParser#translation_unit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTranslation_unit(_ ctx: ObjCParser.Translation_unitContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#translation_unit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTranslation_unit(_ ctx: ObjCParser.Translation_unitContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#external_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExternal_declaration(_ ctx: ObjCParser.External_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#external_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExternal_declaration(_ ctx: ObjCParser.External_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#preprocessor_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPreprocessor_declaration(_ ctx: ObjCParser.Preprocessor_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#preprocessor_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPreprocessor_declaration(_ ctx: ObjCParser.Preprocessor_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#class_interface}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClass_interface(_ ctx: ObjCParser.Class_interfaceContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#class_interface}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClass_interface(_ ctx: ObjCParser.Class_interfaceContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#category_interface}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCategory_interface(_ ctx: ObjCParser.Category_interfaceContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#category_interface}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCategory_interface(_ ctx: ObjCParser.Category_interfaceContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#class_implementation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClass_implementation(_ ctx: ObjCParser.Class_implementationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#class_implementation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClass_implementation(_ ctx: ObjCParser.Class_implementationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#category_implementation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCategory_implementation(_ ctx: ObjCParser.Category_implementationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#category_implementation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCategory_implementation(_ ctx: ObjCParser.Category_implementationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#protocol_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProtocol_declaration(_ ctx: ObjCParser.Protocol_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#protocol_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProtocol_declaration(_ ctx: ObjCParser.Protocol_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#protocol_declaration_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProtocol_declaration_list(_ ctx: ObjCParser.Protocol_declaration_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#protocol_declaration_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProtocol_declaration_list(_ ctx: ObjCParser.Protocol_declaration_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#class_declaration_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClass_declaration_list(_ ctx: ObjCParser.Class_declaration_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#class_declaration_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClass_declaration_list(_ ctx: ObjCParser.Class_declaration_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#class_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClass_list(_ ctx: ObjCParser.Class_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#class_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClass_list(_ ctx: ObjCParser.Class_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#protocol_reference_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProtocol_reference_list(_ ctx: ObjCParser.Protocol_reference_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#protocol_reference_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProtocol_reference_list(_ ctx: ObjCParser.Protocol_reference_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#protocol_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProtocol_list(_ ctx: ObjCParser.Protocol_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#protocol_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProtocol_list(_ ctx: ObjCParser.Protocol_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#property_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProperty_declaration(_ ctx: ObjCParser.Property_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#property_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProperty_declaration(_ ctx: ObjCParser.Property_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#property_attributes_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProperty_attributes_declaration(_ ctx: ObjCParser.Property_attributes_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#property_attributes_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProperty_attributes_declaration(_ ctx: ObjCParser.Property_attributes_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#property_attributes_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProperty_attributes_list(_ ctx: ObjCParser.Property_attributes_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#property_attributes_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProperty_attributes_list(_ ctx: ObjCParser.Property_attributes_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#property_attribute}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProperty_attribute(_ ctx: ObjCParser.Property_attributeContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#property_attribute}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProperty_attribute(_ ctx: ObjCParser.Property_attributeContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#class_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClass_name(_ ctx: ObjCParser.Class_nameContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#class_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClass_name(_ ctx: ObjCParser.Class_nameContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#superclass_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSuperclass_name(_ ctx: ObjCParser.Superclass_nameContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#superclass_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSuperclass_name(_ ctx: ObjCParser.Superclass_nameContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#category_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCategory_name(_ ctx: ObjCParser.Category_nameContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#category_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCategory_name(_ ctx: ObjCParser.Category_nameContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#protocol_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProtocol_name(_ ctx: ObjCParser.Protocol_nameContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#protocol_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProtocol_name(_ ctx: ObjCParser.Protocol_nameContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#instance_variables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInstance_variables(_ ctx: ObjCParser.Instance_variablesContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#instance_variables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInstance_variables(_ ctx: ObjCParser.Instance_variablesContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#visibility_specification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVisibility_specification(_ ctx: ObjCParser.Visibility_specificationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#visibility_specification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVisibility_specification(_ ctx: ObjCParser.Visibility_specificationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#interface_declaration_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInterface_declaration_list(_ ctx: ObjCParser.Interface_declaration_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#interface_declaration_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInterface_declaration_list(_ ctx: ObjCParser.Interface_declaration_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#class_method_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClass_method_declaration(_ ctx: ObjCParser.Class_method_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#class_method_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClass_method_declaration(_ ctx: ObjCParser.Class_method_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#instance_method_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInstance_method_declaration(_ ctx: ObjCParser.Instance_method_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#instance_method_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInstance_method_declaration(_ ctx: ObjCParser.Instance_method_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#method_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMethod_declaration(_ ctx: ObjCParser.Method_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#method_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMethod_declaration(_ ctx: ObjCParser.Method_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#implementation_definition_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterImplementation_definition_list(_ ctx: ObjCParser.Implementation_definition_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#implementation_definition_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitImplementation_definition_list(_ ctx: ObjCParser.Implementation_definition_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#class_method_definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClass_method_definition(_ ctx: ObjCParser.Class_method_definitionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#class_method_definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClass_method_definition(_ ctx: ObjCParser.Class_method_definitionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#instance_method_definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInstance_method_definition(_ ctx: ObjCParser.Instance_method_definitionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#instance_method_definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInstance_method_definition(_ ctx: ObjCParser.Instance_method_definitionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#method_definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMethod_definition(_ ctx: ObjCParser.Method_definitionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#method_definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMethod_definition(_ ctx: ObjCParser.Method_definitionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#method_selector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMethod_selector(_ ctx: ObjCParser.Method_selectorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#method_selector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMethod_selector(_ ctx: ObjCParser.Method_selectorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#keyword_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterKeyword_declarator(_ ctx: ObjCParser.Keyword_declaratorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#keyword_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitKeyword_declarator(_ ctx: ObjCParser.Keyword_declaratorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#selector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelector(_ ctx: ObjCParser.SelectorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#selector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelector(_ ctx: ObjCParser.SelectorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#method_type}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMethod_type(_ ctx: ObjCParser.Method_typeContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#method_type}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMethod_type(_ ctx: ObjCParser.Method_typeContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#property_implementation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProperty_implementation(_ ctx: ObjCParser.Property_implementationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#property_implementation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProperty_implementation(_ ctx: ObjCParser.Property_implementationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#property_synthesize_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProperty_synthesize_list(_ ctx: ObjCParser.Property_synthesize_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#property_synthesize_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProperty_synthesize_list(_ ctx: ObjCParser.Property_synthesize_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#property_synthesize_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProperty_synthesize_item(_ ctx: ObjCParser.Property_synthesize_itemContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#property_synthesize_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProperty_synthesize_item(_ ctx: ObjCParser.Property_synthesize_itemContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#block_type}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock_type(_ ctx: ObjCParser.Block_typeContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#block_type}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock_type(_ ctx: ObjCParser.Block_typeContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#type_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterType_specifier(_ ctx: ObjCParser.Type_specifierContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#type_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitType_specifier(_ ctx: ObjCParser.Type_specifierContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#type_qualifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterType_qualifier(_ ctx: ObjCParser.Type_qualifierContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#type_qualifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitType_qualifier(_ ctx: ObjCParser.Type_qualifierContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#protocol_qualifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProtocol_qualifier(_ ctx: ObjCParser.Protocol_qualifierContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#protocol_qualifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProtocol_qualifier(_ ctx: ObjCParser.Protocol_qualifierContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#primary_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrimary_expression(_ ctx: ObjCParser.Primary_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#primary_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrimary_expression(_ ctx: ObjCParser.Primary_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#dictionary_pair}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDictionary_pair(_ ctx: ObjCParser.Dictionary_pairContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#dictionary_pair}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDictionary_pair(_ ctx: ObjCParser.Dictionary_pairContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#dictionary_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDictionary_expression(_ ctx: ObjCParser.Dictionary_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#dictionary_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDictionary_expression(_ ctx: ObjCParser.Dictionary_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#array_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArray_expression(_ ctx: ObjCParser.Array_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#array_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArray_expression(_ ctx: ObjCParser.Array_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#box_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBox_expression(_ ctx: ObjCParser.Box_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#box_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBox_expression(_ ctx: ObjCParser.Box_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#block_parameters}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock_parameters(_ ctx: ObjCParser.Block_parametersContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#block_parameters}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock_parameters(_ ctx: ObjCParser.Block_parametersContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#block_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock_expression(_ ctx: ObjCParser.Block_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#block_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock_expression(_ ctx: ObjCParser.Block_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#message_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMessage_expression(_ ctx: ObjCParser.Message_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#message_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMessage_expression(_ ctx: ObjCParser.Message_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#receiver}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReceiver(_ ctx: ObjCParser.ReceiverContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#receiver}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReceiver(_ ctx: ObjCParser.ReceiverContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#message_selector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMessage_selector(_ ctx: ObjCParser.Message_selectorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#message_selector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMessage_selector(_ ctx: ObjCParser.Message_selectorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#keyword_argument}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterKeyword_argument(_ ctx: ObjCParser.Keyword_argumentContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#keyword_argument}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitKeyword_argument(_ ctx: ObjCParser.Keyword_argumentContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#selector_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelector_expression(_ ctx: ObjCParser.Selector_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#selector_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelector_expression(_ ctx: ObjCParser.Selector_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#selector_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelector_name(_ ctx: ObjCParser.Selector_nameContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#selector_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelector_name(_ ctx: ObjCParser.Selector_nameContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#protocol_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProtocol_expression(_ ctx: ObjCParser.Protocol_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#protocol_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProtocol_expression(_ ctx: ObjCParser.Protocol_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#encode_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEncode_expression(_ ctx: ObjCParser.Encode_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#encode_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEncode_expression(_ ctx: ObjCParser.Encode_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#type_variable_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterType_variable_declarator(_ ctx: ObjCParser.Type_variable_declaratorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#type_variable_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitType_variable_declarator(_ ctx: ObjCParser.Type_variable_declaratorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#try_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTry_statement(_ ctx: ObjCParser.Try_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#try_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTry_statement(_ ctx: ObjCParser.Try_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#catch_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCatch_statement(_ ctx: ObjCParser.Catch_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#catch_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCatch_statement(_ ctx: ObjCParser.Catch_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#finally_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFinally_statement(_ ctx: ObjCParser.Finally_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#finally_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFinally_statement(_ ctx: ObjCParser.Finally_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#throw_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterThrow_statement(_ ctx: ObjCParser.Throw_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#throw_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitThrow_statement(_ ctx: ObjCParser.Throw_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#try_block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTry_block(_ ctx: ObjCParser.Try_blockContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#try_block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTry_block(_ ctx: ObjCParser.Try_blockContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#synchronized_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSynchronized_statement(_ ctx: ObjCParser.Synchronized_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#synchronized_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSynchronized_statement(_ ctx: ObjCParser.Synchronized_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#autorelease_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAutorelease_statement(_ ctx: ObjCParser.Autorelease_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#autorelease_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAutorelease_statement(_ ctx: ObjCParser.Autorelease_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#function_definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunction_definition(_ ctx: ObjCParser.Function_definitionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#function_definition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunction_definition(_ ctx: ObjCParser.Function_definitionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclaration(_ ctx: ObjCParser.DeclarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclaration(_ ctx: ObjCParser.DeclarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#declaration_specifiers}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclaration_specifiers(_ ctx: ObjCParser.Declaration_specifiersContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#declaration_specifiers}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclaration_specifiers(_ ctx: ObjCParser.Declaration_specifiersContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#arc_behaviour_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArc_behaviour_specifier(_ ctx: ObjCParser.Arc_behaviour_specifierContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#arc_behaviour_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArc_behaviour_specifier(_ ctx: ObjCParser.Arc_behaviour_specifierContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#storage_class_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStorage_class_specifier(_ ctx: ObjCParser.Storage_class_specifierContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#storage_class_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStorage_class_specifier(_ ctx: ObjCParser.Storage_class_specifierContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#init_declarator_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInit_declarator_list(_ ctx: ObjCParser.Init_declarator_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#init_declarator_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInit_declarator_list(_ ctx: ObjCParser.Init_declarator_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#init_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInit_declarator(_ ctx: ObjCParser.Init_declaratorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#init_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInit_declarator(_ ctx: ObjCParser.Init_declaratorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#struct_or_union_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStruct_or_union_specifier(_ ctx: ObjCParser.Struct_or_union_specifierContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#struct_or_union_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStruct_or_union_specifier(_ ctx: ObjCParser.Struct_or_union_specifierContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#struct_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStruct_declaration(_ ctx: ObjCParser.Struct_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#struct_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStruct_declaration(_ ctx: ObjCParser.Struct_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#specifier_qualifier_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpecifier_qualifier_list(_ ctx: ObjCParser.Specifier_qualifier_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#specifier_qualifier_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpecifier_qualifier_list(_ ctx: ObjCParser.Specifier_qualifier_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#struct_declarator_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStruct_declarator_list(_ ctx: ObjCParser.Struct_declarator_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#struct_declarator_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStruct_declarator_list(_ ctx: ObjCParser.Struct_declarator_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#struct_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStruct_declarator(_ ctx: ObjCParser.Struct_declaratorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#struct_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStruct_declarator(_ ctx: ObjCParser.Struct_declaratorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#enum_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnum_specifier(_ ctx: ObjCParser.Enum_specifierContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#enum_specifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnum_specifier(_ ctx: ObjCParser.Enum_specifierContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#enumerator_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnumerator_list(_ ctx: ObjCParser.Enumerator_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#enumerator_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnumerator_list(_ ctx: ObjCParser.Enumerator_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#enumerator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnumerator(_ ctx: ObjCParser.EnumeratorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#enumerator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnumerator(_ ctx: ObjCParser.EnumeratorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#pointer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPointer(_ ctx: ObjCParser.PointerContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#pointer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPointer(_ ctx: ObjCParser.PointerContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclarator(_ ctx: ObjCParser.DeclaratorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclarator(_ ctx: ObjCParser.DeclaratorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#direct_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDirect_declarator(_ ctx: ObjCParser.Direct_declaratorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#direct_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDirect_declarator(_ ctx: ObjCParser.Direct_declaratorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#declarator_suffix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclarator_suffix(_ ctx: ObjCParser.Declarator_suffixContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#declarator_suffix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclarator_suffix(_ ctx: ObjCParser.Declarator_suffixContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#parameter_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParameter_list(_ ctx: ObjCParser.Parameter_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#parameter_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParameter_list(_ ctx: ObjCParser.Parameter_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#parameter_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParameter_declaration(_ ctx: ObjCParser.Parameter_declarationContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#parameter_declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParameter_declaration(_ ctx: ObjCParser.Parameter_declarationContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#initializer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInitializer(_ ctx: ObjCParser.InitializerContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#initializer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInitializer(_ ctx: ObjCParser.InitializerContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#type_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterType_name(_ ctx: ObjCParser.Type_nameContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#type_name}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitType_name(_ ctx: ObjCParser.Type_nameContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#abstract_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAbstract_declarator(_ ctx: ObjCParser.Abstract_declaratorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#abstract_declarator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAbstract_declarator(_ ctx: ObjCParser.Abstract_declaratorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#abstract_declarator_suffix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAbstract_declarator_suffix(_ ctx: ObjCParser.Abstract_declarator_suffixContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#abstract_declarator_suffix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAbstract_declarator_suffix(_ ctx: ObjCParser.Abstract_declarator_suffixContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#parameter_declaration_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParameter_declaration_list(_ ctx: ObjCParser.Parameter_declaration_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#parameter_declaration_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParameter_declaration_list(_ ctx: ObjCParser.Parameter_declaration_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#statement_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStatement_list(_ ctx: ObjCParser.Statement_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#statement_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStatement_list(_ ctx: ObjCParser.Statement_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStatement(_ ctx: ObjCParser.StatementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStatement(_ ctx: ObjCParser.StatementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#labeled_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLabeled_statement(_ ctx: ObjCParser.Labeled_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#labeled_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLabeled_statement(_ ctx: ObjCParser.Labeled_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#compound_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCompound_statement(_ ctx: ObjCParser.Compound_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#compound_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCompound_statement(_ ctx: ObjCParser.Compound_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#selection_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelection_statement(_ ctx: ObjCParser.Selection_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#selection_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelection_statement(_ ctx: ObjCParser.Selection_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#for_in_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFor_in_statement(_ ctx: ObjCParser.For_in_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#for_in_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFor_in_statement(_ ctx: ObjCParser.For_in_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#for_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFor_statement(_ ctx: ObjCParser.For_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#for_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFor_statement(_ ctx: ObjCParser.For_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#while_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWhile_statement(_ ctx: ObjCParser.While_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#while_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWhile_statement(_ ctx: ObjCParser.While_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#do_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDo_statement(_ ctx: ObjCParser.Do_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#do_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDo_statement(_ ctx: ObjCParser.Do_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#iteration_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIteration_statement(_ ctx: ObjCParser.Iteration_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#iteration_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIteration_statement(_ ctx: ObjCParser.Iteration_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#jump_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJump_statement(_ ctx: ObjCParser.Jump_statementContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#jump_statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJump_statement(_ ctx: ObjCParser.Jump_statementContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpression(_ ctx: ObjCParser.ExpressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpression(_ ctx: ObjCParser.ExpressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#assignment_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssignment_expression(_ ctx: ObjCParser.Assignment_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#assignment_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssignment_expression(_ ctx: ObjCParser.Assignment_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#assignment_operator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssignment_operator(_ ctx: ObjCParser.Assignment_operatorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#assignment_operator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssignment_operator(_ ctx: ObjCParser.Assignment_operatorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#conditional_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConditional_expression(_ ctx: ObjCParser.Conditional_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#conditional_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConditional_expression(_ ctx: ObjCParser.Conditional_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#constant_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstant_expression(_ ctx: ObjCParser.Constant_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#constant_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstant_expression(_ ctx: ObjCParser.Constant_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#logical_or_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLogical_or_expression(_ ctx: ObjCParser.Logical_or_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#logical_or_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLogical_or_expression(_ ctx: ObjCParser.Logical_or_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#logical_and_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLogical_and_expression(_ ctx: ObjCParser.Logical_and_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#logical_and_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLogical_and_expression(_ ctx: ObjCParser.Logical_and_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#inclusive_or_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInclusive_or_expression(_ ctx: ObjCParser.Inclusive_or_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#inclusive_or_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInclusive_or_expression(_ ctx: ObjCParser.Inclusive_or_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#exclusive_or_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExclusive_or_expression(_ ctx: ObjCParser.Exclusive_or_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#exclusive_or_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExclusive_or_expression(_ ctx: ObjCParser.Exclusive_or_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#and_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAnd_expression(_ ctx: ObjCParser.And_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#and_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAnd_expression(_ ctx: ObjCParser.And_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#equality_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEquality_expression(_ ctx: ObjCParser.Equality_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#equality_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEquality_expression(_ ctx: ObjCParser.Equality_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#relational_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRelational_expression(_ ctx: ObjCParser.Relational_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#relational_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRelational_expression(_ ctx: ObjCParser.Relational_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#shift_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShift_expression(_ ctx: ObjCParser.Shift_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#shift_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShift_expression(_ ctx: ObjCParser.Shift_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#additive_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAdditive_expression(_ ctx: ObjCParser.Additive_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#additive_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAdditive_expression(_ ctx: ObjCParser.Additive_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#multiplicative_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMultiplicative_expression(_ ctx: ObjCParser.Multiplicative_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#multiplicative_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMultiplicative_expression(_ ctx: ObjCParser.Multiplicative_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#cast_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCast_expression(_ ctx: ObjCParser.Cast_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#cast_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCast_expression(_ ctx: ObjCParser.Cast_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#unary_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnary_expression(_ ctx: ObjCParser.Unary_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#unary_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnary_expression(_ ctx: ObjCParser.Unary_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#unary_operator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnary_operator(_ ctx: ObjCParser.Unary_operatorContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#unary_operator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnary_operator(_ ctx: ObjCParser.Unary_operatorContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#postfix_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPostfix_expression(_ ctx: ObjCParser.Postfix_expressionContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#postfix_expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPostfix_expression(_ ctx: ObjCParser.Postfix_expressionContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#argument_expression_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArgument_expression_list(_ ctx: ObjCParser.Argument_expression_listContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#argument_expression_list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArgument_expression_list(_ ctx: ObjCParser.Argument_expression_listContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#identifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIdentifier(_ ctx: ObjCParser.IdentifierContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#identifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIdentifier(_ ctx: ObjCParser.IdentifierContext)
	/**
	 * Enter a parse tree produced by {@link ObjCParser#constant}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstant(_ ctx: ObjCParser.ConstantContext)
	/**
	 * Exit a parse tree produced by {@link ObjCParser#constant}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstant(_ ctx: ObjCParser.ConstantContext)
}