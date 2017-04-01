package FrontEnd.Listener;

import AST.Environment;
import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Symbol;
import AST.Type.*;
import FrontEnd.Parser.MetaLexer;
import FrontEnd.Parser.MetaParser;
import Utility.CompilationError;
import org.antlr.v4.runtime.tree.ParseTree;

import java.util.ArrayList;
import java.util.List;

public class OtherDeclarationListener extends BaseListener{
	@Override
	public void exitProgram(MetaParser.ProgramContext ctx) {
		for(ParseTree x: ctx.functionDeclaration()){
			FunctionType function = (FunctionType) returnNode.get(x);
			if(function.getName().equals("main")) {
				if (!(function.getReturnType() instanceof IntType)) {
					throw new CompilationError("The return type of main should be int");
				}
				if(function.getParameterList().size() != 0){
					throw new CompilationError("The main function can't have parameters");
				}
			}
			Environment.globalFunctionTable.addFunction(function);
		}

		for(ParseTree x: ctx.variableDeclaration()){
			VariableDeclarationStatement variable = (VariableDeclarationStatement) returnNode.get(x);
			Environment.globalVariableTable.addVariable(variable);
		}
	}
	@Override
	public void enterClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
		ClassType classType = (ClassType)returnNode.get(ctx);
		Environment.symbolTable.enterScope(classType);
	}
	@Override
	public void exitClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
		ClassType classType = (ClassType)returnNode.get(ctx);
		for(ParseTree x: ctx.functionDeclaration()){
			FunctionType function = (FunctionType) returnNode.get(x);
			function.addClassScope(classType);
			if(function.getName() == null) {
				classType.addConstructFunction(function);
			}else{
				classType.addMemberFunction(function);
			}
		}
		for(ParseTree x: ctx.variableDeclaration()){
			VariableDeclarationStatement variable = (VariableDeclarationStatement) returnNode.get(x);
			variable.addClassScope(classType);
			classType.addMemberVariable(variable);
		}
		Environment.symbolTable.exitScope();
	}
	@Override
	public void exitFunctionDeclaration(MetaParser.FunctionDeclarationContext ctx) {
		String functionName = null, name;
		Type returnType = (Type)returnNode.get(ctx.getChild(0));
		int typeStart = 1, identifierStart = 0;
		if(returnType instanceof VoidType){
			typeStart = 0;
		}
		if(ctx.Identifier().size() != ctx.type().size() - typeStart){
			functionName = ctx.Identifier(0).getText();
			identifierStart = 1;
		}
		List<Symbol> parameterList = new ArrayList<>();
		for(int i = 0; i < ctx.type().size() - typeStart; i++){
			Type parameterType = (Type)returnNode.get(ctx.type(i + typeStart));
			String parameterName = ctx.Identifier(i + identifierStart).getText();
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
