package Optimization;

import IR.FunctionIR;
import IR.ProgramIR;
import IR.RegisterManager;

public class Optimization {
	public static void Optimize() {
		if (RegisterManager.temporaryId > 4000) return;
		for (FunctionIR functionIR : ProgramIR.functionMap.values()) {
			AdvancedOptimize.uselessCodeElimination(functionIR);
			NaiveOptimize.loopConditionImprovement(functionIR);
			LivenessAnalysis.analysis(functionIR);
			NaiveOptimize.moveMerge(functionIR);
			RegisterAllocator.allocate(LivenessAnalysis.virtualRegisterMap, LivenessAnalysis.edgeMap);
			NaiveOptimize.removeEmptyBlock(functionIR);
			NaiveOptimize.removeUselessJump(functionIR);
		}
	}
}
