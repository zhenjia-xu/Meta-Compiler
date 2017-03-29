package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryBitAnd extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryBitAnd(Expression leftExpression, Expression rightExpression){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary bit and needs int");
		}
		return new BinaryBitAnd(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary bit and";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary bit and]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}