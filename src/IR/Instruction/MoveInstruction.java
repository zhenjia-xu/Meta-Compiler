package IR.Instruction;

import IR.Address;
import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;
import Translation.PhysicalOperand.PhysicalAdd;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;
import Utility.RuntimeError;

public class MoveInstruction extends Instruction{
	public Operand target;
	public Operand source;

	public MoveInstruction(Operand target, Operand source){
		if(target instanceof Address && source instanceof Address){
			throw new RuntimeError("move instruction can't handle two Address");
		}
		this.target = target;
		this.source = source;
	}

	@Override
	public void Prepare(){
		RegisterManager.MemRegisterGetOffset(target);
		RegisterManager.MemRegisterGetOffset(source);
	}
	@Override
	public String getInstructionOfNASM(){
		StringBuilder str = new StringBuilder();
		PhysicalOperand PhysicalSource = PhysicalOperand.get(str, source);
		PhysicalOperand PhysicalTarget = PhysicalOperand.get(str, target);

		if(PhysicalSource instanceof PhysicalAdd && PhysicalTarget instanceof PhysicalAdd){
			str.append(Translator.getInstruction("mov", "r15", PhysicalSource.toString()));
			str.append(Translator.getInstruction("mov", PhysicalTarget.toString(), "r15"));
		}else{
			str.append(Translator.getInstruction("mov", PhysicalTarget.toString(), PhysicalSource.toString()));
		}
		return str.toString();
	}
	@Override
	public String toString(){
		return String.format("%s = move %s",target, source);
	}
}
