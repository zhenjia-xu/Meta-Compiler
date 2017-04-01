// Generated from /media/xzj/project/Meta-Compiler/src/FrontEnd/Parser/Meta.g4 by ANTLR 4.6
package FrontEnd.Parser;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MetaParser}.
 */
public interface MetaListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MetaParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MetaParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MetaParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#functionDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDeclaration(MetaParser.FunctionDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#functionDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDeclaration(MetaParser.FunctionDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#classDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterClassDeclaration(MetaParser.ClassDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#classDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitClassDeclaration(MetaParser.ClassDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Integer_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void enterInteger_Type(MetaParser.Integer_TypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Integer_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void exitInteger_Type(MetaParser.Integer_TypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Bool_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void enterBool_Type(MetaParser.Bool_TypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Bool_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void exitBool_Type(MetaParser.Bool_TypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Class_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void enterClass_Type(MetaParser.Class_TypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Class_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void exitClass_Type(MetaParser.Class_TypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code String_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void enterString_Type(MetaParser.String_TypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code String_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void exitString_Type(MetaParser.String_TypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Array_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void enterArray_Type(MetaParser.Array_TypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Array_Type}
	 * labeled alternative in {@link MetaParser#type}.
	 * @param ctx the parse tree
	 */
	void exitArray_Type(MetaParser.Array_TypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Void_type}
	 * labeled alternative in {@link MetaParser#voidtype}.
	 * @param ctx the parse tree
	 */
	void enterVoid_type(MetaParser.Void_typeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Void_type}
	 * labeled alternative in {@link MetaParser#voidtype}.
	 * @param ctx the parse tree
	 */
	void exitVoid_type(MetaParser.Void_typeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Null_Constant}
	 * labeled alternative in {@link MetaParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterNull_Constant(MetaParser.Null_ConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Null_Constant}
	 * labeled alternative in {@link MetaParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitNull_Constant(MetaParser.Null_ConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Bool_Constant}
	 * labeled alternative in {@link MetaParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterBool_Constant(MetaParser.Bool_ConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Bool_Constant}
	 * labeled alternative in {@link MetaParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitBool_Constant(MetaParser.Bool_ConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code String_Constant}
	 * labeled alternative in {@link MetaParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterString_Constant(MetaParser.String_ConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code String_Constant}
	 * labeled alternative in {@link MetaParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitString_Constant(MetaParser.String_ConstantContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Integer_Constant}
	 * labeled alternative in {@link MetaParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterInteger_Constant(MetaParser.Integer_ConstantContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Integer_Constant}
	 * labeled alternative in {@link MetaParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitInteger_Constant(MetaParser.Integer_ConstantContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterStatement(MetaParser.StatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitStatement(MetaParser.StatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#blockStatement}.
	 * @param ctx the parse tree
	 */
	void enterBlockStatement(MetaParser.BlockStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#blockStatement}.
	 * @param ctx the parse tree
	 */
	void exitBlockStatement(MetaParser.BlockStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void enterExpressionStatement(MetaParser.ExpressionStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#expressionStatement}.
	 * @param ctx the parse tree
	 */
	void exitExpressionStatement(MetaParser.ExpressionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#variableDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterVariableDeclaration(MetaParser.VariableDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#variableDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitVariableDeclaration(MetaParser.VariableDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#ifStatement}.
	 * @param ctx the parse tree
	 */
	void enterIfStatement(MetaParser.IfStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#ifStatement}.
	 * @param ctx the parse tree
	 */
	void exitIfStatement(MetaParser.IfStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#forStatement}.
	 * @param ctx the parse tree
	 */
	void enterForStatement(MetaParser.ForStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#forStatement}.
	 * @param ctx the parse tree
	 */
	void exitForStatement(MetaParser.ForStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#whileStatement}.
	 * @param ctx the parse tree
	 */
	void enterWhileStatement(MetaParser.WhileStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#whileStatement}.
	 * @param ctx the parse tree
	 */
	void exitWhileStatement(MetaParser.WhileStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#continueStatement}.
	 * @param ctx the parse tree
	 */
	void enterContinueStatement(MetaParser.ContinueStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#continueStatement}.
	 * @param ctx the parse tree
	 */
	void exitContinueStatement(MetaParser.ContinueStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#breakStatement}.
	 * @param ctx the parse tree
	 */
	void enterBreakStatement(MetaParser.BreakStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#breakStatement}.
	 * @param ctx the parse tree
	 */
	void exitBreakStatement(MetaParser.BreakStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#returnStatement}.
	 * @param ctx the parse tree
	 */
	void enterReturnStatement(MetaParser.ReturnStatementContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#returnStatement}.
	 * @param ctx the parse tree
	 */
	void exitReturnStatement(MetaParser.ReturnStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link MetaParser#thisToken}.
	 * @param ctx the parse tree
	 */
	void enterThisToken(MetaParser.ThisTokenContext ctx);
	/**
	 * Exit a parse tree produced by {@link MetaParser#thisToken}.
	 * @param ctx the parse tree
	 */
	void exitThisToken(MetaParser.ThisTokenContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Function_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFunction_Expression(MetaParser.Function_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Function_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFunction_Expression(MetaParser.Function_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Logical_And_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLogical_And_Expression(MetaParser.Logical_And_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Logical_And_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLogical_And_Expression(MetaParser.Logical_And_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Bit_And_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBit_And_Expression(MetaParser.Bit_And_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Bit_And_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBit_And_Expression(MetaParser.Bit_And_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Identifier_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterIdentifier_Expression(MetaParser.Identifier_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Identifier_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitIdentifier_Expression(MetaParser.Identifier_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Class_Creation_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterClass_Creation_Expression(MetaParser.Class_Creation_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Class_Creation_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitClass_Creation_Expression(MetaParser.Class_Creation_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Array_Creation_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterArray_Creation_Expression(MetaParser.Array_Creation_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Array_Creation_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitArray_Creation_Expression(MetaParser.Array_Creation_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Prefix_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPrefix_Expression(MetaParser.Prefix_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Prefix_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPrefix_Expression(MetaParser.Prefix_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Member_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMember_Expression(MetaParser.Member_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Member_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMember_Expression(MetaParser.Member_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Shift_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterShift_Expression(MetaParser.Shift_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Shift_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitShift_Expression(MetaParser.Shift_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Suffix_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterSuffix_Expression(MetaParser.Suffix_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Suffix_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitSuffix_Expression(MetaParser.Suffix_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Mul_Div_Mod_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMul_Div_Mod_Expression(MetaParser.Mul_Div_Mod_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Mul_Div_Mod_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMul_Div_Mod_Expression(MetaParser.Mul_Div_Mod_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Bit_or_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBit_or_Expression(MetaParser.Bit_or_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Bit_or_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBit_or_Expression(MetaParser.Bit_or_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Array_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterArray_Expression(MetaParser.Array_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Array_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitArray_Expression(MetaParser.Array_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code This_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterThis_Expression(MetaParser.This_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code This_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitThis_Expression(MetaParser.This_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Add_Sub_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAdd_Sub_Expression(MetaParser.Add_Sub_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Add_Sub_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAdd_Sub_Expression(MetaParser.Add_Sub_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Bit_Xor_Expreeeion}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBit_Xor_Expreeeion(MetaParser.Bit_Xor_ExpreeeionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Bit_Xor_Expreeeion}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBit_Xor_Expreeeion(MetaParser.Bit_Xor_ExpreeeionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Assignment_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAssignment_Expression(MetaParser.Assignment_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Assignment_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAssignment_Expression(MetaParser.Assignment_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Constant_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterConstant_Expression(MetaParser.Constant_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Constant_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitConstant_Expression(MetaParser.Constant_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Logical_Or_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLogical_Or_Expression(MetaParser.Logical_Or_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Logical_Or_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLogical_Or_Expression(MetaParser.Logical_Or_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Equality_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterEquality_Expression(MetaParser.Equality_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Equality_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitEquality_Expression(MetaParser.Equality_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Subgroup_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterSubgroup_Expression(MetaParser.Subgroup_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Subgroup_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitSubgroup_Expression(MetaParser.Subgroup_ExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Relation_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterRelation_Expression(MetaParser.Relation_ExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Relation_Expression}
	 * labeled alternative in {@link MetaParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitRelation_Expression(MetaParser.Relation_ExpressionContext ctx);
}