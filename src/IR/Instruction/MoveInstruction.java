package IR.Instruction;

import IR.Address;
import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;
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
		if(target instanceof VirtualRegister){
			RegisterManager.getID((VirtualRegister) target);
		}
		if(source instanceof VirtualRegister){
			RegisterManager.getID((VirtualRegister) source);
		}
	}
	@Override
	public String toString(){
		return String.format("%s = move %s",target, source);
	}
}
