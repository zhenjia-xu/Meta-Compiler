package IR.Instruction;

import IR.*;
import Utility.RuntimeError;

public class CsetInstruction extends Instruction {
	public ProgramIR.ConditionOp op;
	public Operand target;

	public CsetInstruction(ProgramIR.ConditionOp op, Operand target){
		this.op = op;
		if(target instanceof ImmediateOperand){
			throw new RuntimeError("target of set instruction should be reg or add");
		}
		this.target = target;
	}

	@Override
	public void Prepare(){
		if(target instanceof VirtualRegister){
			RegisterManager.getID((VirtualRegister) target);
		}
	}
	@Override
	public String toString(){
		return String.format("set %s %s", op, target);
	}
}
