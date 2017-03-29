package AST.Expression.BinaryOperation;


import AST.Constant.BoolConstant;
import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryGreater extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryGreater(Expression leftExpression, Expression rightExpression){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary greater needs int");
		}
		return new BinaryGreater(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary greater";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary greater]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}