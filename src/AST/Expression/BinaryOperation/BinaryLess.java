package AST.Expression.BinaryOperation;


import AST.Constant.BoolConstant;
import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryLess extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryLess(Expression leftExpression, Expression rightExpressoin){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpressoin;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpressoin){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpressoin.getType() instanceof IntType)){
			throw new CompilationError("binary less needs int");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpressoin).getValue();
			return new BoolConstant(leftValue < rightValue);
		}else{
			return new BinaryLess(leftExpression, rightExpressoin);
		}
	}
	@Override
	public String toString(){
		return "binary less";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary less]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
