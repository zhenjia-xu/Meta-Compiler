package IR.Instruction;

import IR.*;
import Translation.PhysicalOperand.PhysicalAdd;
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

		if(PhysicalLeft instanceof PhysicalAdd && PhysicalRight instanceof PhysicalAdd){
			str.append(Translator.getInstruction("mov", "r15", PhysicalRight.toString()));
			str.append(Translator.getInstruction("cmp", PhysicalLeft.toString(), "r15"));
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
