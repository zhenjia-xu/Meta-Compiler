package IR.Instruction;

import IR.ProgramIR;

public class CjumpInstruction extends Instruction {
	public ProgramIR.ConditionOp op;
	private LabelInstruction target;

	public CjumpInstruction(ProgramIR.ConditionOp op, LabelInstruction target){
		this.op = op;
		this.target = target;
	}

	@Override
	public void Prepare(){}
	@Override
	public String toString(){
		return String.format("cjump %s %s", op, target);
	}
}
