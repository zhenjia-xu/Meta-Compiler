package AST.Expression.BinaryOperation;


import AST.Constant.BoolConstant;
import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import IR.Instruction;
import Utility.CompilationError;
import Utility.Utility;
import jdk.nashorn.internal.codegen.types.BooleanType;

import java.util.List;

public class BinaryLogicalAnd extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryLogicalAnd(Expression leftExpression, Expression rightExpression){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof BoolType) ||
				!(rightExpression.getType() instanceof BoolType)){
			throw new CompilationError("binary logical and needs bool");
		}
		if((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)){
			boolean leftValue = ((BoolConstant) leftExpression).getValue();
			boolean rightValue = ((BoolConstant) rightExpression).getValue();
			return new BoolConstant(leftValue && rightValue);
		}
		return new BinaryLogicalAnd(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary logical and";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary logical and]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){

	}
}
