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
import java.util.List;

public class FunctionIR {
	private FunctionType function;
	private List<VirtualRegister> parameterList;
	public List<Block> blockList;
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
		for(int i = 0; i < parameterList.size(); i++){
			if(i < 6){
				VirtualRegister tmp = RegisterManager.getTemporaryRegister();
				tmp.realRegister = RegisterManager.parameterRegList.get(i);
				instructionList.add(new MoveInstruction(parameterList.get(i), tmp));
			}else{
				parameterList.get(i).id = 4 - i;
			}
		}
		function.getBlockStatement().generateInstruction(instructionList);
		instructionList.add(exitBlock);

		blockList = new ArrayList<>();
		for(int i = 0, j; i < instructionList.size(); i = j){
			LabelInstruction label = (LabelInstruction)instructionList.get(i);
			Block block = new Block(this, label.getName(), blockList.size(), label);
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
		str.append(Translator.getInstruction("pop", "rbp"));

		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}
}
