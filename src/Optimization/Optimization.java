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
			LivenessAnalysis.analysis(functionIR);
			NaiveOptimize.removeUselessMove(functionIR);
//			RegisterAllocator.naiveAllocate(LivenessAnalysis.virtualRegisterMap, LivenessAnalysis.conflictEdgeMap, functionIR);
			RegisterAllocator.advancedAllocate(LivenessAnalysis.virtualRegisterMap, LivenessAnalysis.conflictEdgeMap, LivenessAnalysis.moveEdgeMap, functionIR);
			NaiveOptimize.removeEmptyBlock(functionIR);
			NaiveOptimize.superBlock(functionIR);
			NaiveOptimize.removeUselessJump(functionIR);
		}
	}
}
