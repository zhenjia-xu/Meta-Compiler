package Optimization;

import IR.FunctionIR;
import IR.ProgramIR;

public class Optimization {
	public static void Optimize(){
		for(FunctionIR functionIR: ProgramIR.functionMap.values()) {
			LivenessAnalysis.analysis(functionIR);
			//NaiveOptimize.Optimize(functionIR);
		}
	}
}
