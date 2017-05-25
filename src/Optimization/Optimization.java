package Optimization;

import IR.FunctionIR;
import IR.ProgramIR;
import IR.RegisterManager;

public class Optimization {
	public static void Optimize() {
		if (RegisterManager.temporaryId > 4000) return;
		for (FunctionIR functionIR : ProgramIR.functionMap.values()) {
			NaiveOptimize.LoopConditionImprovement(functionIR);
			LivenessAnalysis.analysis(functionIR);
			//NaiveOptimize.MoveMerge(functionIR);
			RegisterAllocator.allocate(LivenessAnalysis.virtualRegisterMap, LivenessAnalysis.edgeMap);
			NaiveOptimize.RemoveEmptyBlock(functionIR);
			NaiveOptimize.RemoveUselessJump(functionIR);
		}
	}
}
