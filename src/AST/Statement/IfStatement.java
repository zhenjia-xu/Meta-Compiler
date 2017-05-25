package AST.Statement;

import AST.Expression.Expression;
import AST.Type.BoolType;
import IR.*;
import IR.Instruction.*;
import Utility.CompilationError;
import Utility.Utility;

import java.util.List;

public class IfStatement extends Statement {
	private Expression condition;
	private Statement trueStatement, falseStatement;

	public IfStatement(Expression condition, Statement trueStatement) {
		if (!(condition.getType() instanceof BoolType)) {
			throw new CompilationError("The condition must be a bool type");
		}
		this.condition = condition;
		this.trueStatement = trueStatement;
		this.falseStatement = null;
	}

	public void addFalseStatement(Statement falseStatement) {
		this.falseStatement = falseStatement;
	}

	public Expression getCondition() {
		return condition;
	}

	public Statement getTrueStatement() {
		return trueStatement;
	}

	public Statement getFalseStatement() {
		return falseStatement;
	}

	@Override
	public String toString() {
		return "if statement";
	}

	@Override
	public String toString(int indents) {
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[if statement]\n");
		str.append(condition.toString(indents + 1));
		str.append(trueStatement.toString(indents + 1));
		if (falseStatement != null) {
			str.append(falseStatement.toString(indents + 1));
		}
		return str.toString();
	}

	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		LabelInstruction trueLabel = new LabelInstruction("if_true");
		LabelInstruction falseLabel = new LabelInstruction("if_false");
		LabelInstruction exitLabel = new LabelInstruction("if_exit");
		/*
			%...:
				(condition)
				cmp condition true
				cjump EQ if_true
				jump if_false
			%if_true:
				(trueStatement)
				jump if_exit
			%if_false:
				(falseStatement)
				jump if_exit
			%if_exit:
				...
		 */
		condition.generateInstruction(instructionList);
		instructionList.add(new CompareInstruction(condition.operand, new ImmediateOperand(1)));
		instructionList.add(new CjumpInstruction(ProgramIR.ConditionOp.EQ, trueLabel));
		instructionList.add(new JumpInstruction(falseLabel));

		instructionList.add(trueLabel);
		trueStatement.generateInstruction(instructionList);
		instructionList.add(new JumpInstruction(exitLabel));

		instructionList.add(falseLabel);
		if (falseStatement != null) {
			falseStatement.generateInstruction(instructionList);
		}
		instructionList.add(new JumpInstruction(exitLabel));

		instructionList.add(exitLabel);
	}
}