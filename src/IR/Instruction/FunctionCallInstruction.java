package IR.Instruction;

import AST.Type.FunctionType;
import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;

import java.util.ArrayList;
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
		for(Operand x: parameterList){
			RegisterManager.MemRegisterGetOffset(x);
		}
	}
	//static List<String> parameterReg = new ArrayList<String>("rdi");
	@Override
	public String getInstructionOfNASM(){
		StringBuilder str = new StringBuilder();
		str.append(Translator.saveRegister_Caller());
		for(int i = 0; i < 6 && i < parameterList.size(); i++){
			PhysicalOperand physicalParameter = PhysicalOperand.get(str, parameterList.get(i));
			str.append(Translator.getInstruction("mov", RegisterManager.parameterRegList.get(i), physicalParameter.toString()));
		}
		int numToMem = 0;
		if(parameterList.size() > 6){
			numToMem = parameterList.size() - 6;
		}
		boolean flag = false;
		if((Translator.rsp_offset + numToMem) % 2 == 1){
			str.append(Translator.getInstruction("sub", "rsp", "8"));
			Translator.rsp_offset++;
			flag = true;
		}
		for(int i = parameterList.size() - 1; i >= 6; i--){
			PhysicalOperand physicalParameter = PhysicalOperand.get(str, parameterList.get(i));
			str.append(Translator.getInstruction("push", physicalParameter.toString()));
		}
		str.append(Translator.getInstruction("call", function.getName()));

		if(flag){
			numToMem++;
		}
		Translator.rsp_offset -= numToMem;
		if(numToMem > 0){
			str.append(Translator.getInstruction("add", "rsp", String.valueOf(numToMem * 8)));
		}

		str.append(Translator.getInstruction("pop", "rsi"));
		str.append(Translator.getInstruction("pop", "rdi"));
		return str.toString();
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
