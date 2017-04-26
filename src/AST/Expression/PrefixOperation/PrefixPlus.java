package AST.Expression.PrefixOperation;

import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import IR.Instruction;
import Utility.*;

import java.util.List;

public class PrefixPlus extends Expression{
	Expression expression;

	private PrefixPlus(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public static Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)){
			throw new CompilationError("prefix plus needs int");
		}
		return new PrefixPlus(expression);
	}
	@Override
	public String toString(){
		return "prefix plus";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[prefix plus]\n"
				+ expression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {

	}
}
