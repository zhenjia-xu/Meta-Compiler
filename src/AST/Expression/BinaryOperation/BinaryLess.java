package AST.Expression.BinaryOperation;


import AST.Constant.BoolConstant;
import AST.Constant.IntConstant;
import AST.Constant.StringConstant;
import AST.Expression.Expression;
import AST.Expression.FunctionCallExpression;
import AST.Expression.IdentifierExpression;
import AST.Type.*;
import IR.*;
import IR.Instruction.*;
import Utility.CompilationError;
import Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class BinaryLess extends Expression {
	private Expression leftExpression, rightExpression;

	private BinaryLess(Expression leftExpression, Expression rightExpression) {
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}

	public static Expression getExpression(Expression leftExpression, Expression rightExpression) {
		Type leftType = leftExpression.getType();
		Type rightType = rightExpression.getType();
		if (leftType instanceof IntType && rightType instanceof IntType) {
			if ((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)) {
				int leftValue = ((IntConstant) leftExpression).getValue();
				int rightValue = ((IntConstant) rightExpression).getValue();
				return new BoolConstant(leftValue < rightValue);
			} else {
				return new BinaryLess(leftExpression, rightExpression);
			}
		}
		if (leftType instanceof StringType && rightType instanceof StringType) {
			if ((leftExpression instanceof StringConstant) && (rightExpression instanceof StringConstant)) {
				String leftValue = ((StringConstant) leftExpression).getValue();
				String rightValue = ((StringConstant) rightExpression).getValue();
				return new BoolConstant(leftValue.compareTo(rightValue) < 0);
			} else {
				List<Expression> expressionList = new ArrayList<>();
				expressionList.add(leftExpression);
				expressionList.add(rightExpression);
				return FunctionCallExpression.getExpression(
						IdentifierExpression.getExpression("__string_LE"),
						expressionList
				);
			}
		}
		throw new CompilationError("binary less needs int or string");
	}

	@Override
	public String toString() {
		return "binary less";
	}

	@Override
	public String toString(int indents) {
		return Utility.getIndent(indents) + "[binary less]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}

	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		leftExpression.generateInstruction(instructionList);
		rightExpression.generateInstruction(instructionList);
		operand = RegisterManager.getTemporaryRegister();
		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		if (left == right || (left instanceof ImmediateOperand && right instanceof ImmediateOperand && ((ImmediateOperand) left).value == ((ImmediateOperand) right).value)) {
			operand = new ImmediateOperand(0);
			return;
		}
		if (left instanceof Address && right instanceof Address) {
			VirtualRegister tmp = RegisterManager.getTemporaryRegister();
			instructionList.add(new MoveInstruction(tmp, left));
			instructionList.add(new CompareInstruction(tmp, right));
		} else {
			instructionList.add(new CompareInstruction(left, right));
		}
		instructionList.add(new CsetInstruction(ProgramIR.ConditionOp.LE, operand));
	}
}
