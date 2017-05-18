package IR.Instruction;

import IR.*;
import Utility.RuntimeError;

public class BinaryInstruction extends Instruction {
	public enum BinaryOp {
		ADD, SUB, MUL, DIV, MOD,
		SHL, SHR, AND, OR, XOR,
	}
	public BinaryOp op;
	public Operand target, operand;

	public BinaryInstruction(BinaryOp op, Operand target, Operand operand){
		this.op = op;
		if(target instanceof ImmediateOperand){
			throw new RuntimeError("target of binary instruction should be register or address");
		}
		if(target instanceof Address && operand instanceof Address){
			throw new RuntimeError("binary instruction can't handle two address");
		}
		this.target = target;
		this.operand = operand;
	}

	@Override
	public void Prepare(){
		if(target instanceof VirtualRegister){
			RegisterManager.getID((VirtualRegister) target);
		}
		if(operand instanceof VirtualRegister){
			RegisterManager.getID((VirtualRegister) operand);
		}
	}
	@Override
	public String toString(){
		return String.format("%s = %s %s", target, op, operand);
	}
}
