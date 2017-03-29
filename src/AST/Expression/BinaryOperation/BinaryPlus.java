package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryPlus extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryPlus(Expression leftExpression, Expression rightExpression){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary plus needs int");
		}
		return new BinaryPlus(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary plus";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary plus]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
