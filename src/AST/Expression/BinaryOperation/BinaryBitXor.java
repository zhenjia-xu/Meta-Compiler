package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryBitXor extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryBitXor(Expression leftExpression, Expression rightExpression){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary bit xor needs int");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpression).getValue();
			return new IntConstant(leftValue ^ rightValue);
		}
		return new BinaryBitXor(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary bit xor";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary bit xor]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
