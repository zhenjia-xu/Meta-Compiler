package FrontEnd.Listener;

import AST.ProgramAST;
import AST.Symbol.*;
import AST.Type.*;
import AST.Constant.*;
import AST.Expression.*;
import AST.Expression.BinaryOperation.*;
import AST.Expression.PrefixOperation.*;
import AST.Expression.SuffixOperation.*;
import AST.Statement.*;
import FrontEnd.Parser.MetaParser;
import org.antlr.v4.runtime.tree.ParseTree;

import java.util.ArrayList;
import java.util.List;

public class ASTreeListener extends BaseListener{
    @Override
    public void enterProgram(MetaParser.ProgramContext ctx) {
        ProgramAST.symbolTable.enterScope(new ProgramScope());
        ProgramAST.globalFunctionTable.getFunctionMap().forEach((name, function) ->
                ProgramAST.symbolTable.addSymbol(new Symbol(name, function)));
    }
    @Override
    public void exitProgram(MetaParser.ProgramContext ctx) {
        ProgramAST.symbolTable.exitScope();
    }
    @Override
    public void enterFunctionDeclaration(MetaParser.FunctionDeclarationContext ctx) {
        FunctionType function = (FunctionType) returnNode.get(ctx);
        ProgramAST.symbolTable.enterScope(function);
    }
    @Override
    public void exitFunctionDeclaration(MetaParser.FunctionDeclarationContext ctx) {
        FunctionType function = (FunctionType) returnNode.get(ctx);
        BlockStatement blockStatement = (BlockStatement) returnNode.get(ctx.blockStatement());
        function.addBlockStatement(blockStatement);
        ProgramAST.symbolTable.exitScope();
    }
    @Override
    public void enterClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
        ClassType classType = (ClassType) returnNode.get(ctx);
        ProgramAST.symbolTable.enterScope(classType);
        classType.getMemberFunctionTable().forEach((name, function) ->
                ProgramAST.symbolTable.addSymbol(new Symbol(name, function)));
        classType.getMemberVariableTable().forEach((name, variable) ->
                ProgramAST.symbolTable.addSymbol(variable.getSymbol()));
    }
    @Override
    public void exitClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
        ProgramAST.symbolTable.exitScope();
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
    public void exitNull_Constant(MetaParser.Null_ConstantContext ctx) {
        NullConstant nullConstant = new NullConstant();
        returnNode.put(ctx, nullConstant);
    }
    @Override
    public void enterBool_Constant(MetaParser.Bool_ConstantContext ctx) { }
    @Override
    public void exitBool_Constant(MetaParser.Bool_ConstantContext ctx) {
        boolean bool = ctx.getText().equals("true");
        BoolConstant boolConstant = new BoolConstant(bool);
        returnNode.put(ctx, boolConstant);
    }
    @Override
    public void enterString_Constant(MetaParser.String_ConstantContext ctx) { }
    @Override
    public void exitString_Constant(MetaParser.String_ConstantContext ctx) {
        String string = ctx.getText().substring(1, ctx.getText().length() - 1);
        StringConstant stringConstant = new StringConstant(string);
        returnNode.put(ctx, stringConstant);
    }
    @Override
    public void enterInteger_Constant(MetaParser.Integer_ConstantContext ctx) { }
    @Override
    public void exitInteger_Constant(MetaParser.Integer_ConstantContext ctx) {
        int num = Integer.valueOf(ctx.getText());
        IntConstant intConstant = new IntConstant(num);
        returnNode.put(ctx, intConstant);
    }

    //Very Important!!!
    @Override
    public void enterStatement(MetaParser.StatementContext ctx) {
        if(ctx.getParent() instanceof MetaParser.IfStatementContext){
            ProgramAST.symbolTable.enterScope(new BlockStatement());
        }
    }
    @Override
    public void exitStatement(MetaParser.StatementContext ctx) {
        if(ctx.getParent() instanceof MetaParser.IfStatementContext){
            ProgramAST.symbolTable.exitScope();
        }
        Statement statement = (Statement) returnNode.get(ctx.getChild(0));
        returnNode.put(ctx, statement);
    }
    @Override
    public void enterBlockStatement(MetaParser.BlockStatementContext ctx) {
        BlockStatement blockStatement = new BlockStatement();
        Scope currentScope = ProgramAST.symbolTable.getCurrentScope();
        ProgramAST.symbolTable.enterScope(blockStatement);
        if(currentScope instanceof FunctionType){
            FunctionType function = (FunctionType) currentScope;
            for(Symbol symbol: function.getParameterList()){
                ProgramAST.symbolTable.addSymbol(symbol);
            }
        }
        returnNode.put(ctx, blockStatement);
    }
    @Override
    public void exitBlockStatement(MetaParser.BlockStatementContext ctx) {
        BlockStatement blockStatement = (BlockStatement) returnNode.get(ctx);
        ctx.statement().forEach(statement_ctx ->
                blockStatement.addStatement((Statement) returnNode.get(statement_ctx)));
        ProgramAST.symbolTable.exitScope();
    }
    @Override
    public void enterExpressionStatement(MetaParser.ExpressionStatementContext ctx) { }
    @Override
    public void exitExpressionStatement(MetaParser.ExpressionStatementContext ctx) {
        Expression expression = null;
        if(ctx.expression() != null){
            expression = (Expression) returnNode.get(ctx.expression());
        }
        returnNode.put(ctx, new ExpressionStatement(expression));
    }
    @Override
    public void enterVariableDeclaration(MetaParser.VariableDeclarationContext ctx) { }
    @Override
    public void exitVariableDeclaration(MetaParser.VariableDeclarationContext ctx) {
        VariableDeclarationStatement variableDeclarationStatement = (VariableDeclarationStatement) returnNode.get(ctx);
        if(ctx.expression() != null){
            Expression expression = (Expression) returnNode.get(ctx.expression());
            variableDeclarationStatement.addExpression(expression);
        }
        if(variableDeclarationStatement.getClassScope() == null) {
            ProgramAST.symbolTable.addSymbol(variableDeclarationStatement.getSymbol());
        }
    }
    @Override
    public void enterIfStatement(MetaParser.IfStatementContext ctx) { }
    @Override
    public void exitIfStatement(MetaParser.IfStatementContext ctx) {
        Expression condition = (Expression) returnNode.get(ctx.expression());
        Statement trueStatement = (Statement) returnNode.get(ctx.statement(0));
        IfStatement ifStatement = new IfStatement(condition, trueStatement);
        if(ctx.statement(1) != null){
            Statement falseStatement = (Statement) returnNode.get(ctx.statement(1));
            ifStatement.addFalseStatement(falseStatement);
        }
        returnNode.put(ctx, ifStatement);
    }
    @Override
    public void enterForStatement(MetaParser.ForStatementContext ctx) {
        ForStatement forStatement = new ForStatement();
        ProgramAST.symbolTable.enterScope(forStatement);
        returnNode.put(ctx, forStatement);
    }
    @Override
    public void exitForStatement(MetaParser.ForStatementContext ctx) {
        ForStatement forStatement = (ForStatement) returnNode.get(ctx);
        int flag = 0;
        for(ParseTree x: ctx.children){
            if(x.getText().equals(";")){
                flag++;
            }
            if(x instanceof MetaParser.ExpressionContext){
                Expression expression = (Expression) returnNode.get(x);
                if(flag == 0){
                    forStatement.addInit(expression);
                }
                if(flag == 1){
                    forStatement.addCondition(expression);
                }
                if(flag == 2){
                    forStatement.addIncrement(expression);
                }
            }
        }
        Statement statement = (Statement) returnNode.get(ctx.statement());
        forStatement.addStatement(statement);
        ProgramAST.symbolTable.exitScope();
    }
    @Override
    public void enterWhileStatement(MetaParser.WhileStatementContext ctx) {
        WhileStatement whileStatement = new WhileStatement();
        ProgramAST.symbolTable.enterScope(whileStatement);
        returnNode.put(ctx, whileStatement);
    }
    @Override
    public void exitWhileStatement(MetaParser.WhileStatementContext ctx) {
        WhileStatement whileStatement = (WhileStatement) returnNode.get(ctx);
        if(ctx.expression() != null){
            Expression condition = (Expression) returnNode.get(ctx.expression());
            whileStatement.addCondition(condition);
        }
        Statement statement = (Statement) returnNode.get(ctx.statement());
        whileStatement.addStatement(statement);
        ProgramAST.symbolTable.exitScope();
    }
    @Override
    public void enterContinueStatement(MetaParser.ContinueStatementContext ctx) { }
    @Override
    public void exitContinueStatement(MetaParser.ContinueStatementContext ctx) {
        ContinueStatement continueStatement = new ContinueStatement();
        returnNode.put(ctx, continueStatement);
    }
    @Override
    public void enterBreakStatement(MetaParser.BreakStatementContext ctx) { }
    @Override
    public void exitBreakStatement(MetaParser.BreakStatementContext ctx) {
        BreakStatement breakStatement = new BreakStatement();
        returnNode.put(ctx, breakStatement);
    }
    @Override
    public void enterReturnStatement(MetaParser.ReturnStatementContext ctx) { }
    @Override
    public void exitReturnStatement(MetaParser.ReturnStatementContext ctx) {
        Expression returnExpression = null;
        if(ctx.expression() != null){
            returnExpression = (Expression) returnNode.get(ctx.expression());
        }
        ReturnStatement returnStatement = new ReturnStatement(returnExpression);
        returnNode.put(ctx, returnStatement);
    }


    @Override
    public void enterFunction_Expression(MetaParser.Function_ExpressionContext ctx) { }
    @Override
    public void exitFunction_Expression(MetaParser.Function_ExpressionContext ctx) {
        Expression functionExpression = (Expression) returnNode.get(ctx.expression(0));
        List<Expression> parameterList = new ArrayList<>();
        for(int i = 1; i < ctx.expression().size(); i++){
            Expression parameter = (Expression) returnNode.get(ctx.expression(i));
            parameterList.add(parameter);
        }
        Expression expression = FunctionCallExpression.getExpression(functionExpression, parameterList);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterLogical_And_Expression(MetaParser.Logical_And_ExpressionContext ctx) { }
    @Override
    public void exitLogical_And_Expression(MetaParser.Logical_And_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryLogicalAnd.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterBit_And_Expression(MetaParser.Bit_And_ExpressionContext ctx) { }
    @Override
    public void exitBit_And_Expression(MetaParser.Bit_And_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryBitAnd.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterIdentifier_Expression(MetaParser.Identifier_ExpressionContext ctx) { }
    @Override
    public void exitIdentifier_Expression(MetaParser.Identifier_ExpressionContext ctx) {
        String identifier = ctx.getText();
        Expression expression = IdentifierExpression.getExpression(identifier);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterPrefix_Expression(MetaParser.Prefix_ExpressionContext ctx) { }
    @Override
    public void exitPrefix_Expression(MetaParser.Prefix_ExpressionContext ctx) {
        Expression op_expression = (Expression) returnNode.get(ctx.expression());
        Expression expression = null;
        String op = ctx.op.getText();
        if(op.equals("++")){
            expression = PrefixIncrement.getExpression(op_expression);
        }
        if(op.equals("--")){
            expression = PrefixDecrement.getExpression(op_expression);
        }
        if(op.equals("+")){
            expression = PrefixPlus.getExpression(op_expression);
        }
        if(op.equals("-")){
            expression = PrefixMinus.getExpression(op_expression);
        }
        if(op.equals("!")){
            expression = PrefixNot.getExpression(op_expression);
        }
        if(op.equals("~")){
            expression = PrefixReverse.getExpression(op_expression);
        }
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterMember_Expression(MetaParser.Member_ExpressionContext ctx) { }
    @Override
    public void exitMember_Expression(MetaParser.Member_ExpressionContext ctx) {
        Expression op_expression = (Expression) returnNode.get(ctx.expression());
        String identifier = ctx.Identifier().getText();
        Expression expression = MemberExpression.getExpression(op_expression, identifier);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterShift_Expression(MetaParser.Shift_ExpressionContext ctx) { }
    @Override
    public void exitShift_Expression(MetaParser.Shift_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = null;
        String op = ctx.op.getText();
        if(op.equals("<<")){
            expression = BinaryLeftShift.getExpression(leftExpression, rightExpression);
        }
        if(op.equals(">>")){
            expression = BinaryRightShift.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterSuffix_Expression(MetaParser.Suffix_ExpressionContext ctx) { }
    @Override
    public void exitSuffix_Expression(MetaParser.Suffix_ExpressionContext ctx) {
        Expression op_expression = (Expression) returnNode.get(ctx.expression());
        Expression expression = null;
        String op = ctx.op.getText();
        if(op.equals("++")){
            expression = SuffixIncrement.getExpression(op_expression);
        }
        if(op.equals("--")){
            expression = SuffixDecrement.getExpression(op_expression);
        }
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterMul_Div_Mod_Expression(MetaParser.Mul_Div_Mod_ExpressionContext ctx) { }
    @Override
    public void exitMul_Div_Mod_Expression(MetaParser.Mul_Div_Mod_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = null;
        String op = ctx.op.getText();
        if(op.equals("*")){
            expression = BinaryMultiplication.getExpression(leftExpression, rightExpression);
        }
        if(op.equals("/")){
            expression = BinaryDivision.getExpression(leftExpression, rightExpression);
        }
        if(op.equals("%")){
            expression = BinaryModulo.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterBit_or_Expression(MetaParser.Bit_or_ExpressionContext ctx) { }
    @Override
    public void exitBit_or_Expression(MetaParser.Bit_or_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryBitOr.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterClass_Creation_Expression(MetaParser.Class_Creation_ExpressionContext ctx) { }
    @Override
    public void exitClass_Creation_Expression(MetaParser.Class_Creation_ExpressionContext ctx) {
        Type type = (Type) returnNode.get(ctx.type());
        List<Expression> expressionList = new ArrayList<>();
        Expression expression = CreationExpression.getExpression(type, expressionList);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterArray_Creation_Expression(MetaParser.Array_Creation_ExpressionContext ctx) { }
    @Override
    public void exitArray_Creation_Expression(MetaParser.Array_Creation_ExpressionContext ctx) {
        Type type = (Type) returnNode.get(ctx.type());
        List<Expression> expressionList = new ArrayList<>();
        int childrenNum = ctx.children.size();
        for(int i = 0; i < childrenNum; i++){
            if(ctx.getChild(i).getText().equals("[")){
                if(ctx.getChild(i + 1).getText().equals("]")){
                    expressionList.add(null);
                } else{
                    expressionList.add((Expression) returnNode.get(ctx.getChild(i + 1)));
                }
            }
        }
        Expression expression = CreationExpression.getExpression(type, expressionList);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterArray_Expression(MetaParser.Array_ExpressionContext ctx) { }
    @Override
    public void exitArray_Expression(MetaParser.Array_ExpressionContext ctx) {
        Expression arrayExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression subscriptExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = ArrayExpression.getExpression(arrayExpression, subscriptExpression);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterThis_Expression(MetaParser.This_ExpressionContext ctx) { }
    @Override
    public void exitThis_Expression(MetaParser.This_ExpressionContext ctx) {
        //Expression expression = ThisExpression.getExpression();
        Expression expression = IdentifierExpression.getExpression("this");
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterAdd_Sub_Expression(MetaParser.Add_Sub_ExpressionContext ctx) { }
    @Override
    public void exitAdd_Sub_Expression(MetaParser.Add_Sub_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = null;
        String op = ctx.op.getText();
        if(op.equals("+")){
            expression = BinaryPlus.getExpression(leftExpression, rightExpression);
        }
        if(op.equals("-")){
            expression = BinaryMinus.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterBit_Xor_Expreeeion(MetaParser.Bit_Xor_ExpreeeionContext ctx) { }
    @Override
    public void exitBit_Xor_Expreeeion(MetaParser.Bit_Xor_ExpreeeionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryBitXor.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterAssignment_Expression(MetaParser.Assignment_ExpressionContext ctx) { }
    @Override
    public void exitAssignment_Expression(MetaParser.Assignment_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = AssignmentExpression.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterConstant_Expression(MetaParser.Constant_ExpressionContext ctx) { }
    @Override
    public void exitConstant_Expression(MetaParser.Constant_ExpressionContext ctx) {
        Expression expression = (Expression) returnNode.get(ctx.constant());
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterLogical_Or_Expression(MetaParser.Logical_Or_ExpressionContext ctx) { }
    @Override
    public void exitLogical_Or_Expression(MetaParser.Logical_Or_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = BinaryLogicalOr.getExpression(leftExpression, rightExpression);
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterEquality_Expression(MetaParser.Equality_ExpressionContext ctx) { }
    @Override
    public void exitEquality_Expression(MetaParser.Equality_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = null;
        String op = ctx.op.getText();
        if(op.equals("==")){
            expression = BinaryEqual.getExpression(leftExpression, rightExpression);
        }
        if(op.equals("!=")){
            expression = BinaryNotEqual.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterSubgroup_Expression(MetaParser.Subgroup_ExpressionContext ctx) { }
    @Override
    public void exitSubgroup_Expression(MetaParser.Subgroup_ExpressionContext ctx) {
        Expression expression = (Expression) returnNode.get(ctx.expression());
        returnNode.put(ctx, expression);
    }
    @Override
    public void enterRelation_Expression(MetaParser.Relation_ExpressionContext ctx) { }
    @Override
    public void exitRelation_Expression(MetaParser.Relation_ExpressionContext ctx) {
        Expression leftExpression = (Expression) returnNode.get(ctx.expression(0));
        Expression rightExpression = (Expression) returnNode.get(ctx.expression(1));
        Expression expression = null;
        String op = ctx.op.getText();
        if(op.equals("<")){
            expression = BinaryLess.getExpression(leftExpression, rightExpression);
        }
        if(op.equals(">")){
            expression = BinaryGreater.getExpression(leftExpression, rightExpression);
        }
        if(op.equals("<=")){
            expression = BinaryLessEqual.getExpression(leftExpression, rightExpression);
        }
        if(op.equals(">=")){
            expression = BinaryGreaterEqual.getExpression(leftExpression, rightExpression);
        }
        returnNode.put(ctx, expression);
    }
}
