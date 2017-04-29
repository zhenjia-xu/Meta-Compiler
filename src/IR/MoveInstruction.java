package IR;

import Utility.RuntimeError;

public class MoveInstruction extends Instruction{
	public Address target;
	public Operand operand;

	public MoveInstruction(Operand target, Operand operand){
		if(!(target instanceof Address)){
			throw new RuntimeError("Type of move instruction ERROR");
		}
		this.target = (Address)target;
		this.operand = operand;
	}

	@Override
	public String toString(){
		return String.format("%s = move %s",target, operand);
	}
}
