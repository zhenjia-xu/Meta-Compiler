package IR;

import AST.Type.FunctionType;

import java.util.List;

public class FunctionCallInstruction extends Instruction{
	private FunctionType function;
	private VirtualRegister returnValue;
	private List<Operand> parameterList;

	public FunctionCallInstruction(FunctionType function, VirtualRegister returnValue, List<Operand> parameterList){
		this.function = function;
		this.returnValue = returnValue;
		this.parameterList = parameterList;
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
