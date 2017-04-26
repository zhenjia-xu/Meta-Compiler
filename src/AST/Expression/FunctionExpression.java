package AST.Expression;

import AST.Symbol.*;
import AST.Type.*;
import IR.Instruction;
import Utility.*;

import java.util.List;

public class FunctionExpression extends Expression{
	private FunctionType function;
	private List<Expression> expressionList;

	private FunctionExpression(FunctionType function, List<Expression> expressionList){
		super(function.getReturnType(), false);
		this.function = function;
		this.expressionList = expressionList;
	}
	public static Expression getExpression(Expression functionExpression, List<Expression> expressionList){
		if(!(functionExpression.getType() instanceof FunctionType)){
			throw new CompilationError("Can't find a function");
		}
		FunctionType function = (FunctionType) functionExpression.getType();
		List<Symbol> parameterList = function.getParameterList();
		if(parameterList.size() != expressionList.size()){
			throw new CompilationError("The number of parameters doesn't match");
		}
		for(int i = 0; i < parameterList.size(); i++){
			Type parameterType = parameterList.get(i).getType();
			Type expressionType = expressionList.get(i).getType();
			if(!parameterType.compatibleWith(expressionType)){
				throw new CompilationError("The type of parameters doesn't match");
			}
		}
		return new FunctionExpression(function, expressionList);
	}
	@Override
	public String toString(){
		return "function call";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[function call] " + function.toString() + "\n");
		expressionList.forEach(expression ->
				str.append(expression.toString(indents + 1)));
		return str.toString();
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {

	}
}
