package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryBitOr extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryBitOr(Expression leftExpression, Expression rightExpression){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary bit or needs int");
		}
		return new BinaryBitOr(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary bit or";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary bit or]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
