package AST.Expression.BinaryOperation;


import AST.Constant.BoolConstant;
import AST.Expression.Expression;
import AST.Type.*;
import IR.*;
import IR.Instruction.*;
import Utility.CompilationError;
import Utility.Utility;

import java.util.List;

public class BinaryLogicalAnd extends Expression {
	private Expression leftExpression, rightExpression;

	private BinaryLogicalAnd(Expression leftExpression, Expression rightExpression) {
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}

	public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
		if (!(leftExpression.getType() instanceof BoolType) ||
				!(rightExpression.getType() instanceof BoolType)) {
			throw new CompilationError("binary logical and needs bool");
		}
		if ((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)) {
			boolean leftValue = ((BoolConstant) leftExpression).getValue();
			boolean rightValue = ((BoolConstant) rightExpression).getValue();
			return new BoolConstant(leftValue && rightValue);
		}
		return new BinaryLogicalAnd(leftExpression, rightExpression);
	}

	@Override
	public String toString() {
		return "binary logical and";
	}

	@Override
	public String toString(int indents) {
		return Utility.getIndent(indents) + "[binary logical and]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}

	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		LabelInstruction trueLabel = new LabelInstruction("logical_true");
		LabelInstruction falseLabel = new LabelInstruction("logical_false");
		LabelInstruction exitLabel = new LabelInstruction("logical_exit");
		/*
			%...:
				(left_expression)
				cmp left_expression.operand true
				cjump NEQ logical_false
				jump logical_true
			%logical_true:
				(right_expression)
				move operand right_expression.operand
				jump logical_exit
			%logical_false:
				move operand False
				jump logical_exit
			%logical_exit:
				...
		 */
		operand = RegisterManager.getTemporaryRegister();
		leftExpression.generateInstruction(instructionList);
		instructionList.add(new CompareInstruction(leftExpression.operand, new ImmediateOperand(1)));
		instructionList.add(new CjumpInstruction(ProgramIR.ConditionOp.NEQ, falseLabel));
		instructionList.add(new JumpInstruction(trueLabel));

		instructionList.add(trueLabel);
		rightExpression.generateInstruction(instructionList);
		instructionList.add(new MoveInstruction(operand, rightExpression.operand));
		instructionList.add(new JumpInstruction(exitLabel));

		instructionList.add(falseLabel);
		instructionList.add(new MoveInstruction(operand, new ImmediateOperand(0)));
		instructionList.add(new JumpInstruction(exitLabel));


		instructionList.add(exitLabel);
	}
}
