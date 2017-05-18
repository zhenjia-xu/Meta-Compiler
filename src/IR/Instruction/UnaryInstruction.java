package IR.Instruction;

import IR.ImmediateOperand;
import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;
import Utility.RuntimeError;

public class UnaryInstruction extends Instruction{
	public enum UnaryOp {
		REV, NEG, INC, DEC, NOT
	}
	public UnaryOp op;
	public Operand target;

	public UnaryInstruction(UnaryOp op, Operand target){
		if(target instanceof ImmediateOperand){
			throw new RuntimeError("target of unary instruction should be register or address");
		}
		this.op = op;
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
		return String.format("%s %s", op, target);
	}
}
