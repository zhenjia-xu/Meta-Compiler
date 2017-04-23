package AST.Statement;

import AST.Expression.Expression;
import AST.Type.BoolType;
import AST.Constant.BoolConstant;
import IR.BranchInstruction;
import IR.Instruction;
import IR.JumpInstruction;
import IR.LabelInstruction;
import Utility.CompilationError;
import Utility.Utility;

import java.util.List;

public class ForStatement extends LoopStatement{
	private Expression init, condition, increment;
	private Statement statement;

	public ForStatement(){
		this.init = null;
		this.condition = new BoolConstant(true);
		this.increment = null;
		this.statement = null;
	}
	public void addInit(Expression init){
		this.init = init;
	}
	public void addCondition(Expression condition){
		if(!(condition.getType() instanceof BoolType)){
			throw new CompilationError("The condition should be bool type");
		}
		this.condition = condition;
	}
	public void addIncrement(Expression increment){
		this.increment = increment;
	}
	public void addStatement(Statement statement){
		this.statement = statement;
	}
	public Expression getInit(){
		return init;
	}
	public Expression getCondition(){
		return condition;
	}
	public Expression getIncrement(){
		return increment;
	}
	public Statement getStatement(){
		return statement;
	}
	@Override
	public String toString(){
		return "for statement";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[for statement]\n");
		if(init == null){
			str.append(Utility.getIndent(indents + 1) + "no init\n");
		}
		else{
			str.append(init.toString(indents + 1));
		}
		if(condition == null){
			str.append(Utility.getIndent(indents + 1) + "no condition\n");
		}
		else{
			str.append(condition.toString(indents + 1));
		}
		if(increment == null){
			str.append(Utility.getIndent(indents + 1) + "no increment\n");
		}
		else{
			str.append(increment.toString(indents + 1));
		}
		str.append(statement.toString(indents + 1));
		return str.toString();
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){
		conditionLabel = new LabelInstruction("loop_condition");
		bodyLabel = new LabelInstruction("loop_body");
		nextStepLabel = new LabelInstruction("loop_increment");
		exitLabel = new LabelInstruction("loop_exit");
		/*
			%...:
				(init)
				jump %loop_condition
			%loop_condition:
				(condition)
				branch $condition loop_body loop_exit
			%loop_body:
				(statement)
				jump loop_increment
			%loop_increment:
				(increment)
				jump loop_condition
			%loop_exit:
				...
		*/
		if(init != null){
			init.generateInstruction(instructionList);
		}
		instructionList.add(new JumpInstruction(conditionLabel));

		instructionList.add(conditionLabel);
		condition.generateInstruction(instructionList);
		instructionList.add(new BranchInstruction(condition.operand, bodyLabel, exitLabel));

		instructionList.add(bodyLabel);
		if (statement != null){
			statement.generateInstruction(instructionList);
		}
		instructionList.add(new JumpInstruction(nextStepLabel));

		instructionList.add(nextStepLabel);
		if(increment != null){
			increment.generateInstruction(instructionList);
		}
		instructionList.add(new JumpInstruction(conditionLabel));

		instructionList.add(exitLabel);
	}
}
