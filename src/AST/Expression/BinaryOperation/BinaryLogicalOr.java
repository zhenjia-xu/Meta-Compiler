package AST.Expression.BinaryOperation;


import AST.Constant.BoolConstant;
import AST.Expression.Expression;
import AST.Type.*;
import IR.*;
import Utility.CompilationError;
import Utility.Utility;

import java.util.List;

public class BinaryLogicalOr extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryLogicalOr(Expression leftExpression, Expression rightExpression){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof BoolType) ||
				!(rightExpression.getType() instanceof BoolType)){
			throw new CompilationError("binary logical or needs bool");
		}
		if((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)){
			boolean leftValue = ((BoolConstant) leftExpression).getValue();
			boolean rightValue = ((BoolConstant) rightExpression).getValue();
			return new BoolConstant(leftValue || rightValue);
		}
		return new BinaryLogicalOr(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary logical or";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary logical or]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){
		LabelInstruction trueLabel = new LabelInstruction("logical_true");
		LabelInstruction falseLabel = new LabelInstruction("logical_false");
		LabelInstruction exitLabel = new LabelInstruction("logical_exit");
		/*
			%...:
				(left_expression)
				branch left_expression.operand logical_true logical_false
			%logical_true:
				move operand True
				jump logical_exit
			%logical_false:
				(right_expression)
				move operand right_expression.operand
				jump logical_exit
			%logical_exit:
				...
		 */
		operand = RegisterManager.getTemporaryRegister();
		leftExpression.generateInstruction(instructionList);
		instructionList.add(new BranchInstruction(leftExpression.operand, trueLabel, falseLabel));

		instructionList.add(trueLabel);
		instructionList.add(new MoveInstruction(operand, new ImmediateOperand(1)));
		instructionList.add(new JumpInstruction(exitLabel));

		instructionList.add(falseLabel);
		rightExpression.generateInstruction(instructionList);
		instructionList.add(new MoveInstruction(operand, rightExpression.operand));
		instructionList.add(new JumpInstruction(exitLabel));

		instructionList.add(exitLabel);
	}
}
