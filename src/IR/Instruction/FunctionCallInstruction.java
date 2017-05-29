package IR.Instruction;

import AST.Type.FunctionType;
import IR.*;
import Optimization.RegisterAllocator;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;
import com.sun.org.apache.regexp.internal.RE;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class FunctionCallInstruction extends Instruction {
	public FunctionType function;
	private VirtualRegister returnValue;
	public List<Operand> parameterList;

	public FunctionCallInstruction(FunctionType function, VirtualRegister returnValue, List<Operand> parameterList) {
		this.function = function;
		this.returnValue = returnValue;
		this.parameterList = parameterList;
		if (returnValue != null) {
			killSet.add(returnValue);
		}
		for (Operand operand : parameterList) {
			if (operand instanceof VirtualRegister) {
				useSet.add((VirtualRegister) operand);
			}
			if (operand instanceof Address) {
				useSet.add(((Address) operand).base);
			}
		}
	}

	@Override
	public void Prepare() {
		RegisterManager.RegisterStatistics(returnValue);
		for (Operand x : parameterList) {
			RegisterManager.RegisterStatistics(x);
		}
	}

	@Override
	public String getInstructionOfNASM() {
		StringBuilder str = new StringBuilder();
		Set<String> callerSet = new HashSet<>();
		List<String> callerList = new ArrayList<>();
		for(VirtualRegister reg: liveOut){
			if(Translator.nowFunction.registerMap.containsKey(reg)){
				callerSet.add(Translator.nowFunction.registerMap.get(reg));
			}
		}
		for(String reg: callerSet){
			if(FunctionIR.callerAll.contains(reg)){
				callerList.add(reg);
			}
		}
		str.append(Translator.saveRegister_Caller(callerList));
		int numToMem = parameterList.size();

		boolean flag = false;
		if ((Translator.rsp_offset + numToMem) % 2 == 1) {
			str.append(Translator.getInstruction("sub", "rsp", "8"));
			Translator.rsp_offset++;
			flag = true;
		}
		for (int i = parameterList.size() - 1; i >= 0; i--) {
			PhysicalOperand physicalParameter = PhysicalOperand.get(str, parameterList.get(i));
			str.append(Translator.getInstruction("push", physicalParameter.toString()));
		}
		str.append(Translator.getInstruction("call", function.getName()));

		if (flag) {
			numToMem++;
		}
		Translator.rsp_offset -= numToMem;
		if (numToMem > 0) {
			str.append(Translator.getInstruction("add", "rsp", String.valueOf(numToMem * 8)));
		}
		str.append(Translator.restoreRegister_Caller(callerList));
		return str.toString();
	}

	@Override
	public String toString() {
		StringBuilder str = new StringBuilder();
		str.append("call " + function.getName());
		for (Operand x : parameterList) {
			str.append(" " + x);
		}
		return str.toString();
	}
}
