package AST.Statement;

import AST.Environment;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class ReturnStatement extends Statement{
	private FunctionType function;
	private Expression returnExpression;

	public ReturnStatement(Expression returnExpression){
		FunctionType function = Environment.symbolTable.getCurrentFunction();
		if(function == null){
			throw new CompilationError("The return statement should be in a function");
		}
		boolean returnError = false;
		if(returnExpression == null && function.getReturnType() != VoidType.getInstance()){
			returnError = true;
		}
		if(returnExpression != null && !returnExpression.getType().compatibleWith(function.getReturnType())){
			returnError = true;
		}
		if(returnError){
			throw new CompilationError("value of return should be the same type as the function");
		}
		this.function = function;
		this.returnExpression = returnExpression;
	}
	public FunctionType getFunction(){
		return function;
	}
	public Expression getReturnExpression(){
		return returnExpression;
	}
	@Override
	public String toString(){
		return "return statement";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[return statement] -> " + function.toString() + "\n");
		if(returnExpression != null){
			str.append(returnExpression.toString(indents + 1));
		}
		return str.toString();
	}
}
