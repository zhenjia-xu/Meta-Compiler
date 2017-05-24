package Optimization;

import IR.Block;
import IR.FunctionIR;
import IR.Instruction.*;
import IR.ProgramIR;

import java.util.HashMap;
import java.util.Map;

public class NaiveOptimize {
	static public void Optimize(){
		RemoveEmptyBlock();
		RemoveUselessJump();

	}
	static public void RemoveEmptyBlock(){
		for(FunctionIR functionIR: ProgramIR.functionMap.values()) {
			boolean flag = true;
			while (flag) {
				flag = false;
				Map<LabelInstruction, LabelInstruction> labelMap = new HashMap<>();
				for (int i = 0; i < functionIR.blockList.size(); i++) {
					Block block = functionIR.blockList.get(i);
					if (block.instructionList.size() == 1 && block.instructionList.get(0) instanceof JumpInstruction) {
						LabelInstruction jumpTo = ((JumpInstruction) block.instructionList.get(0)).target;
						labelMap.put(block.labelInstruction, jumpTo);
						flag = true;
						functionIR.blockList.remove(i);
						i--;
						continue;
					}
					if(block.instructionList.isEmpty() && block.labelInstruction != functionIR.exitBlock){
						LabelInstruction jumpTo = functionIR.blockList.get(i + 1).labelInstruction;
						labelMap.put(block.labelInstruction, jumpTo);
						functionIR.blockList.remove(i);
						i--;
						continue;
					}
				}
				for(Block block: functionIR.blockList){
					for(Instruction instruction: block.instructionList){
						if(instruction instanceof JumpInstruction){
							((JumpInstruction) instruction).target = labelGetFa(labelMap, ((JumpInstruction) instruction).target);
						}
						if(instruction instanceof CjumpInstruction){
							((CjumpInstruction) instruction).target = labelGetFa(labelMap, ((CjumpInstruction) instruction).target);
						}
					}
				}
			}
		}
	}
	static public void RemoveUselessJump(){
		for(FunctionIR functionIR: ProgramIR.functionMap.values()){
			for(Block block: functionIR.blockList){

			}
		}
	}
	private static LabelInstruction labelGetFa(Map<LabelInstruction, LabelInstruction> labelMap, LabelInstruction instruction){
		while(labelMap.containsKey(instruction)){
			instruction = labelMap.get(instruction);
		}
		return instruction;
	}
}
