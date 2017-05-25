package AST.Statement;

import AST.Constant.BoolConstant;
import AST.Expression.Expression;
import AST.Type.BoolType;
import IR.*;
import IR.Instruction.*;
import Utility.CompilationError;
import Utility.Utility;

import java.util.List;

public class WhileStatement extends LoopStatement {
	private Expression condition;
	private Statement statement;

	public WhileStatement() {
		this.condition = new BoolConstant(true);
		this.statement = null;
	}

	public void addCondition(Expression condition) {
		if (!(condition.getType() instanceof BoolType)) {
			throw new CompilationError("The condition should be bool type");
		}
		this.condition = condition;
	}

	public void addStatement(Statement statement) {
		this.statement = statement;
	}

	public Expression getCondition() {
		return condition;
	}

	public Statement getStatement() {
		return statement;
	}

	@Override
	public String toString() {
		return "while statement";
	}

	@Override
	public String toString(int indents) {
		return Utility.getIndent(indents) + "[while statement]\n"
				+ condition.toString(indents + 1)
				+ statement.toString(indents + 1);
	}

	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		conditionLabel = new LabelInstruction("loop_condition");
		nextStepLabel = conditionLabel;
		bodyLabel = new LabelInstruction("loop_body");
		exitLabel = new LabelInstruction("loop_exit");
		/*
			%...:
				jump %loop_condition
			%loop_body:
				(statement)
				jump loop_condition
			%loop_condition:
				(condition)
				cmp condition true
				cjump EQ loop_body
				jump loop_exit
			%loop_exit:
				...
		 */
		instructionList.add(new JumpInstruction(conditionLabel));

		instructionList.add(bodyLabel);
		if (statement != null) {
			statement.generateInstruction(instructionList);
		}
		instructionList.add(new JumpInstruction(conditionLabel));

		instructionList.add(conditionLabel);
		condition.generateInstruction(instructionList);
		instructionList.add(new CompareInstruction(condition.operand, new ImmediateOperand(1)));
		instructionList.add(new CjumpInstruction(ProgramIR.ConditionOp.EQ, bodyLabel));
		instructionList.add(new JumpInstruction(exitLabel));

		instructionList.add(exitLabel);
	}
}
