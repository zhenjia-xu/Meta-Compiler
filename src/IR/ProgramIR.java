package IR;

import AST.ProgramAST;
import AST.Type.FunctionType;

import java.util.HashMap;
import java.util.Map;

public class ProgramIR {
	private static Map<String, FunctionIR> functionMap;
	public static void BuildProgramIR(){
		functionMap = new HashMap<>();
		for(FunctionType function: ProgramAST.globalFunctionTable.getFunctionMap().values()){
			if(!function.isBuiltin()){
				functionMap.put(function.getName(), new FunctionIR(function));
			}
		}
	}

	public static String toString(int indents){
		StringBuilder str = new StringBuilder();
		for(FunctionIR functionIR: functionMap.values()){
			str.append(functionIR.toString(indents));
		}
		return str.toString();
	}

	public static void print(){
		System.out.print(toString(0));
	}
}
