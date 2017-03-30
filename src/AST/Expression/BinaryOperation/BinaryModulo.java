package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryModulo extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryModulo(Expression leftExpression, Expression rightExpression){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary modulo needs int");
		}
		return new BinaryModulo(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary modulo";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary modulo]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
