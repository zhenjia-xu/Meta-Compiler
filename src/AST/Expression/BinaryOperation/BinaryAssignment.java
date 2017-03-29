package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryAssignment extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryAssignment(Expression leftExpression, Expression rightExpression){
		super(leftExpression.getType(), true);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getLeftValue())){
			throw new CompilationError("The left expression in Assignment should be left-value");
		}
		if(!(leftExpression.getType().compatibleWith(rightExpression.getType()))){
			throw new CompilationError("Assignment needs two compatible type");
		}
		return new BinaryAssignment(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary assignment";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary assignment]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
