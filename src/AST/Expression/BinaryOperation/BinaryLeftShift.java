package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryLeftShift extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryLeftShift(Expression leftExpression, Expression rightExpression){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary left shift needs int");
		}
		return new BinaryLeftShift(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary left shift";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary left shift]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
