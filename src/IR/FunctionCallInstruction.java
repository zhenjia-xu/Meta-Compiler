package IR;

import AST.Type.FunctionType;

import java.util.List;

public class FunctionCallInstruction extends Instruction{
	private FunctionType function;
	private Address returnValue;
	private List<Operand> parameterList;

	public FunctionCallInstruction(FunctionType function, Address returnValue, List<Operand> parameterList){
		this.function = function;
		this.returnValue = returnValue;
		this.parameterList = parameterList;
	}

}
