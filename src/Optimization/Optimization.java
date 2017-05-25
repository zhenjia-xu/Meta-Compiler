package Optimization;

import IR.FunctionIR;
import IR.ProgramIR;
import IR.RegisterManager;

public class Optimization {
	public static void Optimize(){
		if(RegisterManager.temporaryId > 700){
			return;
		}
		for(FunctionIR functionIR: ProgramIR.functionMap.values()) {
			LivenessAnalysis.analysis(functionIR);
			NaiveOptimize.Optimize(functionIR);
		}
	}
}
