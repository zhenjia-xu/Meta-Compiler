package AST.Constant;

import AST.Type.NullType;
import IR.ImmediateOperand;
import IR.Instruction;
import Utility.Utility;

import java.util.List;

public class NullConstant extends Constant{
	public NullConstant(){
		super(NullType.getInstance());
	}
	@Override
	public String toString(){
		return "null constant";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[null constant]\n";
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		operand = new ImmediateOperand(0);
	}
}
