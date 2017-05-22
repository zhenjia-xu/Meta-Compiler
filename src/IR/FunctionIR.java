package IR;

import AST.Symbol.Symbol;
import AST.Type.FunctionType;
import AST.Type.VoidType;
import IR.Instruction.LabelInstruction;
import IR.Instruction.Instruction;
import Translation.Translator;
import Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class FunctionIR {
	private FunctionType function;
	private List<VirtualRegister> parameterList;
	private List<Block> blockList;
	public LabelInstruction enterBlock, exitBlock;

	public FunctionIR(FunctionType function){
		this.function = function;
		parameterList = new ArrayList<>();
		for(Symbol x: function.getParameterList()){
			parameterList.add(x.virtualRegister);
		}
		buildGraph();
	}
	public String getName(){
		return function.getName();
	}
	private void buildGraph(){
		enterBlock = new LabelInstruction("enter");
		exitBlock = new LabelInstruction("exit");
		function.enterLabel = enterBlock;
		function.exitLabel = exitBlock;

		List<Instruction> instructionList = new ArrayList<>();
		instructionList.add(enterBlock);
		function.getBlockStatement().generateInstruction(instructionList);
		instructionList.add(exitBlock);

		blockList = new ArrayList<>();
		for(int i = 0, j; i < instructionList.size(); i = j){
			LabelInstruction label = (LabelInstruction)instructionList.get(i);
			Block block = new Block(this, label.getName(), blockList.size());
			for(j = i + 1; j < instructionList.size(); j++){
				Instruction instruction = instructionList.get(j);
				if(instruction instanceof LabelInstruction) break;
				block.add(instruction);
			}
			label.block = block;
			blockList.add(block);
		}
	}

	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents));
		if(function.getReturnType() instanceof VoidType){
			str.append("void ");
		}else{
			str.append("func ");
		}
		str.append(function.getName() + " ");
		for(VirtualRegister parameter: parameterList){
			str.append(parameter + " ");
		}
		str.append("{\n");
		for(Block block: blockList){
			str.append(block.toString(indents + 1));
		}
		str.append("}\n");
		return str.toString();
	}
	public String toNASM(){
		StringBuilder str = new StringBuilder();
		str.append(getName() + ":\n");
		RegisterManager.initialize();
		for(int i = 0; i < parameterList.size(); i++){
			if(i < 6){
				parameterList.get(i).realRegister = RegisterManager.parameterRegList.get(i);
			}else{
				parameterList.get(i).id = 2 - i;
			}
		}
		for(Block block: blockList){
			for(Instruction instruction: block.instructionList){
				instruction.Prepare();
			}
		}

		Translator.rsp_offset = 1;
		//save register
		str.append(Translator.getInstruction("push", "rbp"));
		str.append(Translator.getInstruction("mov", "rbp", "rsp"));
		if(getName().equals("main")){
			str.append(Translator.getInstruction("call", "@GlobalDeclaration"));
		}
		str.append(Translator.getInstruction("push", "r14"));
		str.append(Translator.getInstruction("push", "r15"));

		//add temporary variable
		str.append(Translator.getInstruction("sub", "rsp", String.valueOf(8 * RegisterManager.NumberOfRegInMem)));
		Translator.rsp_offset += RegisterManager.NumberOfRegInMem;

		//deal with each instruction
		for(Block block: blockList){
			str.append(block.getName() + ":\n");
			for(Instruction instruction: block.instructionList){
				str.append(instruction.getInstructionOfNASM());
			}
		}

		//restore registers

		str.append(Translator.getInstruction("add", "rsp", String.valueOf(8 * RegisterManager.NumberOfRegInMem)));
		str.append(Translator.getInstruction("pop", "r15"));
		str.append(Translator.getInstruction("pop", "r14"));
		str.append(Translator.getInstruction("pop", "rbp"));

		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}
}
