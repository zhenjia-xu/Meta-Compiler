package Optimization;

import IR.FunctionIR;
import IR.ProgramIR;
import IR.RegisterManager;

public class Optimization {
	public static void Optimize() {
		if (RegisterManager.temporaryId > 4000) return;

		for (FunctionIR functionIR : ProgramIR.functionMap.values()) {
			AdvancedOptimize.functionInline(functionIR);
			NaiveOptimize.printOptimize(functionIR);
			AdvancedOptimize.uselessCodeElimination(functionIR);
			NaiveOptimize.loopConditionImprovement(functionIR);
//			if(functionIR.getName().equals("crackSHA1") ||
//					functionIR.getName().equals("sha1")) {
				LivenessAnalysis.analysis(functionIR);
				//NaiveOptimize.moveMerge(functionIR);
			    RegisterAllocator.allocate(LivenessAnalysis.virtualRegisterMap, LivenessAnalysis.edgeMap, functionIR);
//			}
			NaiveOptimize.removeEmptyBlock(functionIR);
			NaiveOptimize.superBlock(functionIR);
			NaiveOptimize.removeUselessJump(functionIR);

		}
	}
}
