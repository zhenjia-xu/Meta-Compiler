package IR.Instruction;

import AST.Type.FunctionType;
import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;

import java.util.List;

public class FunctionCallInstruction extends Instruction {
	private FunctionType function;
	private VirtualRegister returnValue;
	private List<Operand> parameterList;

	public FunctionCallInstruction(FunctionType function, VirtualRegister returnValue, List<Operand> parameterList){
		this.function = function;
		this.returnValue = returnValue;
		this.parameterList = parameterList;
	}

	@Override
	public void Prepare(){
		RegisterManager.getID(returnValue);
		for(Operand x: parameterList){
			if(x instanceof VirtualRegister){
				RegisterManager.getID((VirtualRegister) x);
			}
		}
	}
	@Override
	public String toString(){
		StringBuilder str = new StringBuilder();
		if(returnValue != null){
			str.append(returnValue + " = ");
		}
		str.append("call " + function.getName());
		for(Operand x: parameterList){
			str.append(" " + x);
		}
		return str.toString();
	}
}
