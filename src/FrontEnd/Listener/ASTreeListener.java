package FrontEnd.Listener;

import AST.Environment;
import AST.Symbol.Symbol;
import AST.Type.*;
import AST.Expression.*;
import AST.Statement.*;
import FrontEnd.Parser.MetaParser;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import FrontEnd.Listener.BaseListener;

public class ASTreeListener extends BaseListener{
    @Override
    public void enterProgram(MetaParser.ProgramContext ctx) { }
    @Override
    public void exitProgram(MetaParser.ProgramContext ctx) { }
    @Override
    public void enterFunctionDeclaration(MetaParser.FunctionDeclarationContext ctx) {
        FunctionType function = (FunctionType) returnNode.get(ctx);
        Environment.symbolTable.enterScope(function);
    }
    @Override
    public void exitFunctionDeclaration(MetaParser.FunctionDeclarationContext ctx) {
        FunctionType function = (FunctionType) returnNode.get(ctx);
        BlockStatement blockStatement = (BlockStatement) returnNode.get(ctx.blockStatement());
        function.addBlockStatement(blockStatement);
        Environment.symbolTable.exitScope();
        function.getParameterList().forEach(x ->
                Environment.symbolTable.addSymbol(x));
    }
    @Override
    public void enterClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
        ClassType classType = (ClassType) returnNode.get(ctx);
        Environment.symbolTable.enterScope(classType);
        classType.getMemberFunctionTable().forEach((name, function) ->
                Environment.symbolTable.addSymbol(new Symbol(name, function)));
        classType.getMemberVariableTable().forEach((name, variable) ->
                Environment.symbolTable.addSymbol(new Symbol(name, variable.getType())));

    }
    @Override
    public void exitClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
        Environment.symbolTable.exitScope();
    }
    @Override
    public void enterInteger_Type(MetaParser.Integer_TypeContext ctx) { }
    @Override
    public void exitInteger_Type(MetaParser.Integer_TypeContext ctx) { }
    @Override
    public void enterBool_Type(MetaParser.Bool_TypeContext ctx) { }
    @Override
    public void exitBool_Type(MetaParser.Bool_TypeContext ctx) { }
    @Override
    public void enterClass_Type(MetaParser.Class_TypeContext ctx) { }
    @Override
    public void exitClass_Type(MetaParser.Class_TypeContext ctx) { }
    @Override
    public void enterString_Type(MetaParser.String_TypeContext ctx) { }
    @Override
    public void exitString_Type(MetaParser.String_TypeContext ctx) { }
    @Override
    public void enterArray_Type(MetaParser.Array_TypeContext ctx) { }
    @Override
    public void exitArray_Type(MetaParser.Array_TypeContext ctx) { }
    @Override
    public void enterVoid_type(MetaParser.Void_typeContext ctx) { }
    @Override
    public void exitVoid_type(MetaParser.Void_typeContext ctx) { }


    @Override
    public void enterNull_Constant(MetaParser.Null_ConstantContext ctx) { }
    @Override
    public void exitNull_Constant(MetaParser.Null_ConstantContext ctx) { }
    @Override
    public void enterBool_Constant(MetaParser.Bool_ConstantContext ctx) { }
    @Override
    public void exitBool_Constant(MetaParser.Bool_ConstantContext ctx) { }
    @Override
    public void enterString_Constant(MetaParser.String_ConstantContext ctx) { }
    @Override
    public void exitString_Constant(MetaParser.String_ConstantContext ctx) { }
    @Override
    public void enterInteger_Constant(MetaParser.Integer_ConstantContext ctx) { }
    @Override
    public void exitInteger_Constant(MetaParser.Integer_ConstantContext ctx) { }


    @Override
    public void enterStatement(MetaParser.StatementContext ctx) { }
    @Override
    public void exitStatement(MetaParser.StatementContext ctx) { }
    @Override
    public void enterBlockStatement(MetaParser.BlockStatementContext ctx) { }
    @Override
    public void exitBlockStatement(MetaParser.BlockStatementContext ctx) { }
    @Override
    public void enterExpressionStatement(MetaParser.ExpressionStatementContext ctx) { }
    @Override
    public void exitExpressionStatement(MetaParser.ExpressionStatementContext ctx) { }
    @Override
    public void enterVariableDeclaration(MetaParser.VariableDeclarationContext ctx) { }
    @Override
    public void exitVariableDeclaration(MetaParser.VariableDeclarationContext ctx) { }
    @Override
    public void enterIfStatement(MetaParser.IfStatementContext ctx) { }
    @Override
    public void exitIfStatement(MetaParser.IfStatementContext ctx) { }
    @Override
    public void enterForStatement(MetaParser.ForStatementContext ctx) { }
    @Override
    public void exitForStatement(MetaParser.ForStatementContext ctx) { }
    @Override
    public void enterWhileStatement(MetaParser.WhileStatementContext ctx) { }
    @Override
    public void exitWhileStatement(MetaParser.WhileStatementContext ctx) { }
    @Override
    public void enterContinueStatement(MetaParser.ContinueStatementContext ctx) { }
    @Override
    public void exitContinueStatement(MetaParser.ContinueStatementContext ctx) { }
    @Override
    public void enterBreakStatement(MetaParser.BreakStatementContext ctx) { }
    @Override
    public void exitBreakStatement(MetaParser.BreakStatementContext ctx) { }
    @Override
    public void enterReturnStatement(MetaParser.ReturnStatementContext ctx) { }
    @Override
    public void exitReturnStatement(MetaParser.ReturnStatementContext ctx) { }


    @Override
    public void enterFunction_Expression(MetaParser.Function_ExpressionContext ctx) { }
    @Override
    public void exitFunction_Expression(MetaParser.Function_ExpressionContext ctx) { }
    @Override
    public void enterLogical_And_Expression(MetaParser.Logical_And_ExpressionContext ctx) { }
    @Override
    public void exitLogical_And_Expression(MetaParser.Logical_And_ExpressionContext ctx) { }
    @Override
    public void enterBit_And_Expression(MetaParser.Bit_And_ExpressionContext ctx) { }
    @Override
    public void exitBit_And_Expression(MetaParser.Bit_And_ExpressionContext ctx) { }
    @Override
    public void enterIdentifier_Expression(MetaParser.Identifier_ExpressionContext ctx) { }
    @Override
    public void exitIdentifier_Expression(MetaParser.Identifier_ExpressionContext ctx) { }
    @Override
    public void enterPrefix_Expression(MetaParser.Prefix_ExpressionContext ctx) { }
    @Override
    public void exitPrefix_Expression(MetaParser.Prefix_ExpressionContext ctx) { }
    @Override
    public void enterMember_Expression(MetaParser.Member_ExpressionContext ctx) { }
    @Override
    public void exitMember_Expression(MetaParser.Member_ExpressionContext ctx) { }
    @Override
    public void enterShift_Expression(MetaParser.Shift_ExpressionContext ctx) { }
    @Override
    public void exitShift_Expression(MetaParser.Shift_ExpressionContext ctx) { }
    @Override
    public void enterSuffix_Expression(MetaParser.Suffix_ExpressionContext ctx) { }
    @Override
    public void exitSuffix_Expression(MetaParser.Suffix_ExpressionContext ctx) { }
    @Override
    public void enterMul_Div_Mod_Expression(MetaParser.Mul_Div_Mod_ExpressionContext ctx) { }
    @Override
    public void exitMul_Div_Mod_Expression(MetaParser.Mul_Div_Mod_ExpressionContext ctx) { }
    @Override
    public void enterBit_or_Expression(MetaParser.Bit_or_ExpressionContext ctx) { }
    @Override
    public void exitBit_or_Expression(MetaParser.Bit_or_ExpressionContext ctx) { }
    @Override
    public void enterCreation_Expression(MetaParser.Creation_ExpressionContext ctx) { }
    @Override
    public void exitCreation_Expression(MetaParser.Creation_ExpressionContext ctx) { }
    @Override
    public void enterArray_Expression(MetaParser.Array_ExpressionContext ctx) { }
    @Override
    public void exitArray_Expression(MetaParser.Array_ExpressionContext ctx) { }
    @Override
    public void enterAdd_Sub_Expression(MetaParser.Add_Sub_ExpressionContext ctx) { }
    @Override
    public void exitAdd_Sub_Expression(MetaParser.Add_Sub_ExpressionContext ctx) { }
    @Override
    public void enterBit_Xor_Expreeeion(MetaParser.Bit_Xor_ExpreeeionContext ctx) { }
    @Override
    public void exitBit_Xor_Expreeeion(MetaParser.Bit_Xor_ExpreeeionContext ctx) { }
    @Override
    public void enterAssignment_Expression(MetaParser.Assignment_ExpressionContext ctx) { }
    @Override
    public void exitAssignment_Expression(MetaParser.Assignment_ExpressionContext ctx) { }
    @Override
    public void enterConstant_Expression(MetaParser.Constant_ExpressionContext ctx) { }
    @Override
    public void exitConstant_Expression(MetaParser.Constant_ExpressionContext ctx) { }
    @Override
    public void enterLogical_Or_Expression(MetaParser.Logical_Or_ExpressionContext ctx) { }
    @Override
    public void exitLogical_Or_Expression(MetaParser.Logical_Or_ExpressionContext ctx) { }
    @Override
    public void enterEquality_Expression(MetaParser.Equality_ExpressionContext ctx) { }
    @Override
    public void exitEquality_Expression(MetaParser.Equality_ExpressionContext ctx) { }
    @Override
    public void enterSubgroup_Expression(MetaParser.Subgroup_ExpressionContext ctx) { }
    @Override
    public void exitSubgroup_Expression(MetaParser.Subgroup_ExpressionContext ctx) { }
    @Override
    public void enterRelation_Expression(MetaParser.Relation_ExpressionContext ctx) { }
    @Override
    public void exitRelation_Expression(MetaParser.Relation_ExpressionContext ctx) { }

    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    @Override public void enterEveryRule(ParserRuleContext ctx) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    @Override public void exitEveryRule(ParserRuleContext ctx) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    @Override public void visitTerminal(TerminalNode node) { }
    /**
     * {@inheritDoc}
     *
     * <p>The default implementation does nothing.</p>
     */
    @Override public void visitErrorNode(ErrorNode node) { }
}
