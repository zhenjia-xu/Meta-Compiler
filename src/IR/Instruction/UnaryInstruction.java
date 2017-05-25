package IR.Instruction;

import IR.*;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;
import Utility.RuntimeError;

public class UnaryInstruction extends Instruction{
	public enum UnaryOp {
		REV, NEG, INC, DEC
	}
	public UnaryOp op;
	public Operand target;

	public UnaryInstruction(UnaryOp op, Operand target){
		if(target instanceof ImmediateOperand){
			throw new RuntimeError("target of unary instruction should be register or address");
		}
		this.op = op;
		this.target = target;
		if(target instanceof VirtualRegister){
			killSet.add((VirtualRegister) target);
			useSet.add((VirtualRegister) target);
		}
		if(target instanceof Address){
			useSet.add(((Address) target).base);
		}
	}

	@Override
	public void Prepare(){
		RegisterManager.RegisterStatistics(target);
	}
	@Override
	public String getInstructionOfNASM(){
		StringBuilder str = new StringBuilder();
		PhysicalOperand physicalTarget = PhysicalOperand.get(str, target);
		switch (op){
			case INC:
				str.append(Translator.getInstruction("add", physicalTarget.toString(), "1"));
				return str.toString();
			case DEC:
				str.append(Translator.getInstruction("sub", physicalTarget.toString(), "1"));
				return str.toString();
			case NEG:
				str.append(Translator.getInstruction("neg", physicalTarget.toString()));
				return str.toString();
			case REV:
				str.append(Translator.getInstruction("not", physicalTarget.toString()));
				return str.toString();
		}
		throw new RuntimeError("UnaryInstruction getInstructionOfNASM ERROR");
	}
	@Override
	public String toString(){
		return String.format("%s %s", op, target);
	}
}
