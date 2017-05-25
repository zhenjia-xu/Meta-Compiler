package IR;

import AST.ProgramAST;
import AST.Statement.BlockStatement;
import AST.Statement.VariableDeclarationStatement;
import AST.Type.ClassType;
import AST.Type.FunctionType;
import AST.Type.VoidType;
import Translation.Translator;

import java.util.*;

public class ProgramIR {
	public enum ConditionOp {
		EQ, NEQ, GR, GREQ, LE, LEEQ
	}

	public static Map<String, FunctionIR> functionMap;
	public static List<String> constStringList;

	public static void BuildProgramIR() {
		functionMap = new HashMap<>();
		constStringList = new ArrayList<>();
		for (FunctionType function : ProgramAST.globalFunctionTable.getFunctionMap().values()) {
			if (!function.isBuiltin()) {
				functionMap.put(function.getName(), new FunctionIR(function));
			}
		}
		for (ClassType classType : ProgramAST.classTable.getClassMap().values()) {
			for (FunctionType function : classType.getMemberFunctionTable().values()) {
				if (!function.isBuiltin()) {
					functionMap.put(function.getName(), new FunctionIR(function));
				}
			}
			if (classType.getConstrustFunction() != null) {
				functionMap.put(classType.getConstrustFunction().getName(), new FunctionIR(classType.getConstrustFunction()));
			}
		}
		BlockStatement blockStatement = new BlockStatement();
		for (VariableDeclarationStatement variableDeclaration : ProgramAST.globalDeclarationList) {
			blockStatement.addStatement(variableDeclaration);
		}
		FunctionType globalDeclaration = new FunctionType("@GlobalDeclaration", VoidType.getInstance(), new ArrayList<>());
		globalDeclaration.addBlockStatement(blockStatement);
		functionMap.put("@GlobalDeclaration", new FunctionIR(globalDeclaration));
	}

	public static String toString(int indents) {
		StringBuilder str = new StringBuilder();
		for (FunctionIR functionIR : functionMap.values()) {
			str.append(functionIR.toString(indents));
		}
		return str.toString();
	}

	public static void print() {
		System.out.print(toString(0));
	}
}
