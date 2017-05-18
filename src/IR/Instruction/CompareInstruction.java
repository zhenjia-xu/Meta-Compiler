package IR.Instruction;

import IR.*;
import Utility.RuntimeError;

public class CompareInstruction extends Instruction {
	Operand leftOperand, rightOperand;

	public CompareInstruction(Operand leftOperand, Operand rightOperand){
		if(leftOperand instanceof Address && rightOperand instanceof Address){
			throw new RuntimeError("binary instruction can't handle two address");
		}
		this.leftOperand = leftOperand;
		this.rightOperand = rightOperand;
	}

	@Override
	public void Prepare(){
		if(leftOperand instanceof VirtualRegister){
			RegisterManager.getID((VirtualRegister) leftOperand);
		}
		if(rightOperand instanceof VirtualRegister){
			RegisterManager.getID((VirtualRegister) rightOperand);
		}
	}
	@Override
	public String toString(){
		return String.format("cmp %s %s", leftOperand, rightOperand);
	}
}
