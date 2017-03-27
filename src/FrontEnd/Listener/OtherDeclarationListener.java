package FrontEnd.Listener;

import AST.Environment;
import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Symbol;
import AST.Type.*;
import FrontEnd.Parser.MetaParser;

import java.util.ArrayList;
import java.util.List;

public class OtherDeclarationListener extends BaseListener{
	@Override
	public void exitProgram(MetaParser.ProgramContext ctx) {
		ctx.functionDeclaration().forEach(function_ctx ->
			Environment.globalFunctionTable.addFunction((FunctionType) returnNode.get(function_ctx)));
	}
	@Override
	public void enterClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
		ClassType classType = (ClassType)returnNode.get(ctx);
		Environment.symbolTable.enterScope(classType);
	}
	@Override
	public void exitClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
		ClassType classType = (ClassType)returnNode.get(ctx);
		ctx.functionDeclaration().forEach(function_ctx ->
				classType.addMemberFunction((FunctionType) returnNode.get(function_ctx)));
		ctx.variableDeclaration().forEach(variable_ctx ->
				classType.addMemberVariable((VariableDeclarationStatement) returnNode.get(variable_ctx)));
		Environment.symbolTable.exitScope();
	}
	@Override
	public void exitFunctionDeclaration(MetaParser.FunctionDeclarationContext ctx) {
		String functionName = ctx.Identifier(0).getText();
		Type returnType = (Type)returnNode.get(ctx.type(0));
		List<Symbol> parameterList = new ArrayList<>();
		int parameterNum = ctx.type().size() - 1;
		for(int i = 1; i <= parameterNum; i++){
			Type parameterType = (Type)returnNode.get(ctx.type(i));
			String parameterName = ctx.Identifier(i).getText();
			parameterList.add(new Symbol(parameterName, parameterType));
		}
		FunctionType function = new FunctionType(functionName, returnType, parameterList);
		returnNode.put(ctx, function);
	}
	@Override
	public void exitVariableDeclaration(MetaParser.VariableDeclarationContext ctx) {
		String name = ctx.Identifier().getText();
		Type type = (Type) returnNode.get(ctx.type());
		VariableDeclarationStatement statement = new VariableDeclarationStatement(name, type);
		returnNode.put(ctx, statement);
	}
	@Override
	public void exitInteger_Type(MetaParser.Integer_TypeContext ctx) {
		returnNode.put(ctx, IntType.getInstance());
	}
	@Override
	public void exitBool_Type(MetaParser.Bool_TypeContext ctx) {
		returnNode.put(ctx, BoolType.getInstance());
	}
	@Override
	public void exitString_Type(MetaParser.String_TypeContext ctx) {
		returnNode.put(ctx, StringType.getInstance());
	}
	@Override
	public void exitVoid_type(MetaParser.Void_typeContext ctx) {
		returnNode.put(ctx, VoidType.getInstance());
	}
	@Override
	public void exitClass_Type(MetaParser.Class_TypeContext ctx) {
		String className = ctx.Identifier().getText();
		returnNode.put(ctx, Environment.classTable.getClassType(className));
	}
	@Override
	public void exitArray_Type(MetaParser.Array_TypeContext ctx) {
		Type type = (Type) returnNode.get(ctx.type());
		if(type instanceof ArrayType){
			returnNode.put(ctx, new ArrayType(((ArrayType) type).getBaseType(), ((ArrayType) type).getDimension() + 1));
		}
		else{
			returnNode.put(ctx, new ArrayType(type, 1));
		}
	}

}
