package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryModulo extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryModulo(Expression leftExpression, Expression rightExpressoin){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpressoin;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpressoin){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpressoin.getType() instanceof IntType)){
			throw new CompilationError("binary modulo needs int");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpressoin).getValue();
			return new IntConstant(leftValue % rightValue);
		}else{
			return new BinaryModulo(leftExpression, rightExpressoin);
		}
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
