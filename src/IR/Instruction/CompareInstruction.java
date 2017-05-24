package IR.Instruction;

import IR.*;
import Translation.PhysicalOperand.PhysicalAdd;
import Translation.PhysicalOperand.PhysicalImm;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;
import Utility.RuntimeError;

import java.util.concurrent.TransferQueue;

public class CompareInstruction extends Instruction {
	Operand leftOperand, rightOperand;

	public CompareInstruction(Operand leftOperand, Operand rightOperand){
		if(leftOperand instanceof Address && rightOperand instanceof Address){
			throw new RuntimeError("binary instruction can't handle two address");
		}
		this.leftOperand = leftOperand;
		this.rightOperand = rightOperand;
		if(leftOperand instanceof VirtualRegister){
			useSet.add((VirtualRegister) leftOperand);
		}
		if(rightOperand instanceof VirtualRegister){
			useSet.add((VirtualRegister) rightOperand);
		}
	}
	@Override
	public void Prepare(){
		RegisterManager.MemRegisterGetOffset(leftOperand);
		RegisterManager.MemRegisterGetOffset(rightOperand);
	}
	@Override
	public String getInstructionOfNASM(){
		StringBuilder str = new StringBuilder();
		PhysicalOperand PhysicalRight = PhysicalOperand.get(str, rightOperand);
		PhysicalOperand PhysicalLeft = PhysicalOperand.get(str, leftOperand);

		if((PhysicalLeft instanceof PhysicalAdd && PhysicalRight instanceof PhysicalAdd) ||
				(PhysicalLeft instanceof PhysicalImm)){
			str.append(Translator.getInstruction("mov", "rax", PhysicalLeft.toString()));
			str.append(Translator.getInstruction("cmp", "rax", PhysicalRight.toString()));
		}else{
			str.append(Translator.getInstruction("cmp", PhysicalLeft.toString(), PhysicalRight.toString()));
		}
		return str.toString();
	}
	@Override
	public String toString(){
		return String.format("cmp %s %s", leftOperand, rightOperand);
	}
}
