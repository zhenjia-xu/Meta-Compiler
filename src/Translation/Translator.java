package Translation;

import AST.ProgramAST;
import AST.Statement.VariableDeclarationStatement;
import IR.FunctionIR;
import IR.Instruction.FunctionCallInstruction;
import IR.ProgramIR;
import IR.RegisterManager;
import IR.VirtualRegister;
import com.sun.org.apache.xpath.internal.functions.FuncUnparsedEntityURI;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class Translator {
	public static int rsp_offset;
	public static FunctionIR nowFunction;

	public static String getInstruction(String type) {
		return String.format("%8s\n", type);
	}

	public static String getInstruction(String type, String operand) {
		if (type.equals("push")) {
			rsp_offset++;
		}
		if (type.equals("pop")) {
			rsp_offset--;
		}
		return String.format("%8s %20s\n", type, operand);
	}

	public static String getInstruction(String type, String operand1, String operand2) {
		if (type.equals("mov") && operand1.equals(operand2)) {
			return "";
		}
		return String.format("%8s %20s, %20s\n", type, operand1, operand2);
	}

	public static String getNASMofCondition(ProgramIR.ConditionOp op) {
		switch (op) {
			case EQ:
				return "e";
			case NEQ:
				return "ne";
			case GR:
				return "g";
			case GREQ:
				return "ge";
			case LE:
				return "l";
			case LEEQ:
				return "le";
		}
		return "ERROR";
	}

	public static String saveRegister_Caller(List<String> list) {
		StringBuilder str = new StringBuilder();
		for(int i = 0; i <= list.size() - 1; i++){
			str.append(Translator.getInstruction("push", list.get(i)));
		}
		return str.toString();
	}

	public static String restoreRegister_Caller(List<String> list) {
		StringBuilder str = new StringBuilder();
		for(int i = list.size() - 1; i >= 0; i--){
			str.append(Translator.getInstruction("pop", list.get(i)));
		}
		return str.toString();
	}

	public static String saveRegister_Callee() {
		StringBuilder str = new StringBuilder();
		for (int i = 0; i <= FunctionIR.calleeRegisterList.size() - 1; i++)
			str.append(Translator.getInstruction("push", FunctionIR.calleeRegisterList.get(i)));
		return str.toString();
	}

	public static String restoreRegister_Callee() {
		StringBuilder str = new StringBuilder();
		for (int i = FunctionIR.calleeRegisterList.size() - 1; i >= 0; i--)
			str.append(Translator.getInstruction("pop", FunctionIR.calleeRegisterList.get(i)));
		return str.toString();
	}

	public static String getCall(String func) {
		StringBuilder str = new StringBuilder();
		if (rsp_offset % 2 == 1) {
			str.append(Translator.getInstruction("sub", "rsp", "8"));
			str.append(Translator.getInstruction("call", func));
			str.append(Translator.getInstruction("add", "rsp", "8"));
		} else {
			str.append(Translator.getInstruction("call", func));
		}
		return str.toString();
	}

	public static String IRtoNASM() throws Exception {
		StringBuilder str = new StringBuilder();
		str.append("global main\nextern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf, memcpy, strcmp, puts\n");

		//Section .text
		str.append(Translator.getTextSection());
		//Section .data
		str.append(Translator.getDataSection());
		//Section .bss
		str.append(Translator.getBssSection());
		return str.toString();
	}

	static private String getTextSection() {
		StringBuilder str = new StringBuilder();
		str.append("SECTION .text\n");
		for (FunctionIR functionIR : ProgramIR.functionMap.values()) {
			nowFunction = functionIR;
			str.append(functionIR.toNASM());
		}
		str.append(BuiltinFunction.getBuiltinFunction());
		return str.toString();
	}

	static private String getDataSection() {
		StringBuilder str = new StringBuilder();
		str.append("SECTION .data\n");
		for (int i = 0; i < ProgramIR.constStringList.size(); i++) {
			String s = ProgramIR.constStringList.get(i);
			str.append(Translator.getInstruction("dq", String.valueOf(s.length())));
			str.append("__string_const" + String.valueOf(i) + ":\n");
			str.append(Translator.getInstruction("db", getStringConst(s)));
		}
		return str.toString();
	}

	static private String getBssSection() {
		StringBuilder str = new StringBuilder();
		str.append("SECTION .bss\n");
		for (VariableDeclarationStatement variable : ProgramAST.globalDeclarationList) {
			str.append("@" + variable.getName() + ":\n");
			str.append(Translator.getInstruction("resq", "1"));
		}
		return str.toString();
	}

	static private String getStringConst(String s) {
		StringBuilder str = new StringBuilder();
		str.append('\"');
		for (int i = 0; i < s.length(); i++) {
			if (s.charAt(i) == '\\') {
				str.append("\", ");
				if (s.charAt(i + 1) == 'n')
					str.append("10");
				if (s.charAt(i + 1) == '\"')
					str.append("34");
				if (s.charAt(i + 1) == '\\')
					str.append("92");
				str.append(", \"");
				i++;
			} else {
				str.append(s.charAt(i));
			}
		}
		str.append("\", 0");
		return str.toString();
	}
}
