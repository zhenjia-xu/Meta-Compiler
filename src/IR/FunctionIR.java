package IR;

import AST.Symbol.Symbol;
import AST.Type.FunctionType;
import AST.Type.VoidType;
import IR.Instruction.LabelInstruction;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import Translation.Translator;
import Utility.Utility;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FunctionIR {
	public FunctionType function;
	private List<VirtualRegister> parameterList;
	public List<Block> blockList;
	public LabelInstruction enterBlock, exitBlock;
	public static List<String> callerRegisterList;
	public static List<String> calleeRegisterList;
	public Map<VirtualRegister, String> registerMap;
	public Map<VirtualRegister, Integer> idMap;
	public static List<String> callerAll = new ArrayList<String>() {{
		add("rdx");
		add("rsi");
		add("rdi");
		add("r8");
		add("r9");
		add("r10");
		add("r11");
	}};
	public static List<String> calleeAll = new ArrayList<String>() {{
		add("rbx");
		add("r12");
		add("r13");
		add("r14");
		add("r15");
	}};

	public FunctionIR(FunctionType function) {
		this.function = function;
		this.registerMap = new HashMap<>();
		this.idMap = new HashMap<>();
		parameterList = new ArrayList<>();
		for (Symbol x : function.getParameterList()) {
			parameterList.add(x.virtualRegister);
		}
		buildGraph();
	}

	public String getName() {
		return function.getName();
	}

	private void buildGraph() {
		enterBlock = new LabelInstruction("enter");
		exitBlock = new LabelInstruction("exit");
		function.enterLabel = enterBlock;
		function.exitLabel = exitBlock;

		List<Instruction> instructionList = new ArrayList<>();
		instructionList.add(enterBlock);
		for (int i = 0; i < parameterList.size(); i++) {
			if (i < 6) {
				VirtualRegister tmp = RegisterManager.getTemporaryRegister();
				tmp.systemReg = RegisterManager.parameterRegList.get(i);
				instructionList.add(new MoveInstruction(parameterList.get(i), tmp));
			} else {
				idMap.put(parameterList.get(i), new Integer(4 - i));
			}
		}
		function.getBlockStatement().generateInstruction(instructionList);
		instructionList.add(exitBlock);

		blockList = new ArrayList<>();
		for (int i = 0, j; i < instructionList.size(); i = j) {
			LabelInstruction label = (LabelInstruction) instructionList.get(i);
			Block block = new Block(this, label.getName(), blockList.size(), label);
			for (j = i + 1; j < instructionList.size(); j++) {
				Instruction instruction = instructionList.get(j);
				if (instruction instanceof LabelInstruction) break;
				block.add(instruction);
			}
			label.block = block;
			blockList.add(block);
		}
	}

	public String toNASM() {
		StringBuilder str = new StringBuilder();
		str.append(getName() + ":\n");
		RegisterManager.initialize();
		for (Block block : blockList) {
			for (Instruction instruction : block.instructionList) {
				instruction.Prepare();
			}
		}
		calculateSavingMessage();

		Translator.rsp_offset = 1;
		//save register
		str.append(Translator.getInstruction("push", "rbp"));
		str.append(Translator.getInstruction("mov", "rbp", "rsp"));
		if (getName().equals("main")) {
			str.append(Translator.getInstruction("call", "@GlobalDeclaration"));
		}
		str.append(Translator.saveRegister_Callee());

		//add temporary variable
		str.append(Translator.getInstruction("sub", "rsp", String.valueOf(8 * RegisterManager.NumberOfRegInMem)));
		Translator.rsp_offset += RegisterManager.NumberOfRegInMem;

		//deal with each instruction
		for (Block block : blockList) {
			str.append(block.getName() + ":\n");
			for (Instruction instruction : block.instructionList) {
				str.append(instruction.getInstructionOfNASM());
			}
		}

		//restore registers
		str.append(Translator.restoreRegister_Callee());
		str.append(Translator.getInstruction("add", "rsp", String.valueOf(8 * RegisterManager.NumberOfRegInMem)));
		str.append(Translator.getInstruction("pop", "rbp"));

		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private void calculateSavingMessage() {
		calleeRegisterList = new ArrayList<>();
		callerRegisterList = new ArrayList<>();
		for (String reg : RegisterManager.usedRegister) {
			if (calleeAll.contains(reg)) {
				calleeRegisterList.add(reg);
			}
			if (callerAll.contains(reg)) {
				callerRegisterList.add(reg);
			}
		}
	}

	public String toString(int indents) {
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents));
		if (function.getReturnType() instanceof VoidType) {
			str.append("void ");
		} else {
			str.append("func ");
		}
		str.append(function.getName() + " ");
		for (VirtualRegister parameter : parameterList) {
			str.append(parameter + " ");
		}
		str.append("{\n");
		for (Block block : blockList) {
			str.append(block.toString(indents + 1));
		}
		str.append("}\n");
		return str.toString();
	}

}
