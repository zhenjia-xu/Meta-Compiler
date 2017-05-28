package Translation;

import AST.ProgramAST;
import AST.Statement.VariableDeclarationStatement;
import IR.FunctionIR;
import IR.ProgramIR;
import IR.RegisterManager;
import com.sun.org.apache.xpath.internal.functions.FuncUnparsedEntityURI;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

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

	public static String saveRegister_Caller() {
		StringBuilder str = new StringBuilder();
		for (int i = 0; i <= FunctionIR.callerRegisterList.size() - 1; i++)
			str.append(Translator.getInstruction("push", FunctionIR.callerRegisterList.get(i)));
		return str.toString();
	}

	public static String restoreRegister_Caller() {
		StringBuilder str = new StringBuilder();
		for (int i = FunctionIR.callerRegisterList.size() - 1; i >= 0; i--)
			str.append(Translator.getInstruction("pop", FunctionIR.callerRegisterList.get(i)));
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
		str.append(Translator.getBuiltinFunction());
		return str.toString();
	}

	static private String getDataSection() {
		StringBuilder str = new StringBuilder();
		str.append("SECTION .data\n");
		for (int i = 0; i < ProgramIR.constStringList.size(); i++) {
			String s = ProgramIR.constStringList.get(i);
			str.append(Translator.getInstruction("dq", String.valueOf(s.length())));
			str.append("__string_const" + String.valueOf(i) + ":\n");
			str.append(Translator.getInstruction("db", Translator.getStringConst(s)));
		}
		str.append("__println_IntFormat:\n");
		str.append(Translator.getInstruction("db", "\"%ld\", 10, 0"));
		str.append("__print_IntFormat:\n");
		str.append(Translator.getInstruction("db", "\"%ld\", 0"));
		str.append("__printFormat:\n");
		str.append(Translator.getInstruction("db", "\"%s\", 0"));
		str.append("__getIntFormat:\n");
		str.append(Translator.getInstruction("db", "\"%ld\", 0"));
		str.append("__getStringFormat:\n");
		str.append(Translator.getInstruction("db", "\"%s\", 0"));
		str.append("__toStringFormat:\n");
		str.append(Translator.getInstruction("db", "\"%ld\", 0"));
		str.append("__parseIntFormat:\n");
		str.append(Translator.getInstruction("db", "\"%ld\", 0"));
		return str.toString();
	}

	static private String getBssSection() {
		StringBuilder str = new StringBuilder();
		str.append("SECTION .bss\n");
		for (VariableDeclarationStatement variable : ProgramAST.globalDeclarationList) {
			str.append("@" + variable.getName() + ":\n");
			str.append(Translator.getInstruction("resq", "1"));
		}
		str.append("@getIntBuf:\n");
		str.append(Translator.getInstruction("resq", "1"));
		str.append("@parseIntBuf:\n");
		str.append(Translator.getInstruction("resq", "1"));
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

	static private String getBuiltinFunction() {
		StringBuilder str = new StringBuilder();
		//print_Int
		str.append(Translator.getNASMprint("print_Int"));
		//println_Int
		str.append(Translator.getNASMprint("println_Int"));
		//print
		str.append(Translator.getNASMprint("print"));
		//println
		str.append(Translator.getNASMprintln());
		//getInt
		str.append(Translator.getNASMgetInt());
		//getString
		str.append(Translator.getNASMgetString());
		//toString
		str.append(Translator.getNASMtoString());
		//arraySize
		str.append(Translator.getNASMarraySize());
		//stringLength
		str.append(Translator.getNASMstringLength());
		//stringParseInt
		str.append(Translator.getNASMstringParseInt());
		//stringSubstring
		str.append(Translator.getNASMstringSubstring());
		//stringOrd
		str.append(Translator.getNASMstringOrd());
		//stringConnection
		str.append(Translator.getNASMstringConnection());
		//stringCompare
		str.append(Translator.getNASMstringCompare(ProgramIR.ConditionOp.EQ));
		str.append(Translator.getNASMstringCompare(ProgramIR.ConditionOp.NEQ));
		str.append(Translator.getNASMstringCompare(ProgramIR.ConditionOp.GR));
		str.append(Translator.getNASMstringCompare(ProgramIR.ConditionOp.GREQ));
		str.append(Translator.getNASMstringCompare(ProgramIR.ConditionOp.LE));
		str.append(Translator.getNASMstringCompare(ProgramIR.ConditionOp.LEEQ));
		return str.toString();
	}

	static private String getNASMprint(String Format) {
		StringBuilder str = new StringBuilder();
		str.append(Format + ":\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("mov", "rsi", "rdi"));
		str.append(Translator.getInstruction("mov", "rdi", "__" + Format + "Format"));
		str.append(Translator.getCall("printf"));
		str.append(Translator.getInstruction("ret"));

		return str.toString();
	}

	static private String getNASMprintln() {
		StringBuilder str = new StringBuilder();
		str.append("println:\n");
		str.append(Translator.getCall("puts"));
		str.append(Translator.getInstruction("ret"));

		return str.toString();
	}

	static private String getNASMgetInt() {
		StringBuilder str = new StringBuilder();
		str.append("getInt:\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("mov", "rdi", "__getIntFormat"));
		str.append(Translator.getInstruction("mov", "rsi", "@getIntBuf"));
		str.append(Translator.getCall("scanf"));
		str.append(Translator.getInstruction("mov", "rax", "qword [@getIntBuf]"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMgetString() {
		StringBuilder str = new StringBuilder();
		str.append("getString:\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("push", "r15"));
		str.append(Translator.getInstruction("mov", "rdi", "300"));
		str.append(Translator.getCall("malloc"));
		str.append(Translator.getInstruction("mov", "r15", "rax"));
		str.append(Translator.getInstruction("add", "r15", "8"));
		str.append(Translator.getInstruction("mov", "rdi", "__getStringFormat"));
		str.append(Translator.getInstruction("mov", "rsi", "r15"));
		str.append(Translator.getCall("scanf"));
		str.append(Translator.getInstruction("mov", "rdi", "r15"));
		str.append(Translator.getCall("strlen"));
		str.append(Translator.getInstruction("mov", "qword [r15 - 8]", "rax"));
		str.append(Translator.getInstruction("mov", "rax", "r15"));
		str.append(Translator.getInstruction("pop", "r15"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMtoString() {
		StringBuilder str = new StringBuilder();
		str.append("toString:\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("push", "r15"));
		str.append(Translator.getInstruction("push", "rdi"));
		str.append(Translator.getInstruction("mov", "rdi", "20"));
		str.append(Translator.getCall("malloc"));
		str.append(Translator.getInstruction("mov", "r15", "rax"));
		str.append(Translator.getInstruction("add", "r15", "8"));
		str.append(Translator.getInstruction("mov", "rdi", "r15"));
		str.append(Translator.getInstruction("mov", "rsi", "__toStringFormat"));
		str.append(Translator.getInstruction("pop", "rdx"));
		str.append(Translator.getCall("sprintf"));
		str.append(Translator.getInstruction("mov", "rdi", "r15"));
		str.append(Translator.getCall("strlen"));
		str.append(Translator.getInstruction("mov", "qword [r15 - 8]", "rax"));
		str.append(Translator.getInstruction("mov", "rax", "r15"));
		str.append(Translator.getInstruction("pop", "r15"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMarraySize() {
		StringBuilder str = new StringBuilder();
		str.append("__array_size:\n");
		str.append(Translator.getInstruction("mov", "rax", "qword [rdi - 8]"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringLength() {
		StringBuilder str = new StringBuilder();
		str.append("__string_length:\n");
		str.append(Translator.getInstruction("mov", "rax", "qword [rdi - 8]"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringParseInt() {
		StringBuilder str = new StringBuilder();
		str.append("__string_parseInt:\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("mov", "rsi", "__getIntFormat"));
		str.append(Translator.getInstruction("mov", "rdx", "@parseIntBuf"));
		str.append(Translator.getCall("sscanf"));
		str.append(Translator.getInstruction("mov", "rax", "qword [@parseIntBuf]"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringSubstring() {
		StringBuilder str = new StringBuilder();
		str.append("__string_substring:\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("push", "r15"));
		str.append(Translator.getInstruction("push", "r14"));
		str.append(Translator.getInstruction("mov", "r15", "rdi"));
		str.append(Translator.getInstruction("add", "r15", "rsi"));
		str.append(Translator.getInstruction("mov", "r14", "rdx"));
		str.append(Translator.getInstruction("sub", "r14", "rsi"));
		str.append(Translator.getInstruction("add", "r14", "1"));
		str.append(Translator.getInstruction("mov", "rdi", "r14"));
		str.append(Translator.getInstruction("add", "rdi", "9"));
		str.append(Translator.getCall("malloc"));
		str.append(Translator.getInstruction("add", "rax", "8"));
		str.append(Translator.getInstruction("mov", "rdi", "rax"));
		str.append(Translator.getInstruction("mov", "rsi", "r15"));
		str.append(Translator.getInstruction("mov", "rdx", "r14"));
		str.append(Translator.getCall("memcpy"));
		str.append(Translator.getInstruction("mov", "qword [rax - 8]", "r14"));
		str.append(Translator.getInstruction("mov", "r15", "rax"));
		str.append(Translator.getInstruction("add", "r15", "r14"));
		str.append(Translator.getInstruction("mov", "r15", "0"));
		str.append(Translator.getInstruction("pop", "r14"));
		str.append(Translator.getInstruction("pop", "r15"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringOrd() {
		StringBuilder str = new StringBuilder();
		str.append("__string_ord:\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("add", "rdi", "rsi"));
		str.append(Translator.getInstruction("movsx", "rax", "byte [rdi]"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringConnection() {
		StringBuilder str = new StringBuilder();
		str.append("__string_connection:\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("push", "r15"));//length -> result
		str.append(Translator.getInstruction("push", "r14"));//left
		str.append(Translator.getInstruction("push", "r13"));//right
		str.append(Translator.getInstruction("mov", "r15", "qword [rdi - 8]"));
		str.append(Translator.getInstruction("add", "r15", "qword [rsi - 8]"));
		str.append(Translator.getInstruction("add", "r15", "9"));
		str.append(Translator.getInstruction("mov", "r14", "rdi"));
		str.append(Translator.getInstruction("mov", "r13", "rsi"));
		str.append(Translator.getInstruction("mov", "rdi", "r15"));
		str.append(Translator.getCall("malloc"));
		str.append(Translator.getInstruction("sub", "r15", "9"));
		str.append(Translator.getInstruction("mov", "qword [rax]", "r15"));
		str.append(Translator.getInstruction("mov", "r15", "rax"));
		str.append(Translator.getInstruction("add", "r15", "8"));
		str.append(Translator.getInstruction("mov", "rdi", "r15"));
		str.append(Translator.getInstruction("mov", "rsi", "r14"));
		str.append(Translator.getCall("strcpy"));
		str.append(Translator.getInstruction("add", "r15", "qword [r14 - 8]"));
		str.append(Translator.getInstruction("mov", "r14", "rax"));
		str.append(Translator.getInstruction("mov", "rdi", "r15"));
		str.append(Translator.getInstruction("mov", "rsi", "r13"));
		str.append(Translator.getCall("strcpy"));
		str.append(Translator.getInstruction("mov", "rax", "r14"));
		str.append(Translator.getInstruction("pop", "r13"));
		str.append(Translator.getInstruction("pop", "r14"));
		str.append(Translator.getInstruction("pop", "r15"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringCompare(ProgramIR.ConditionOp op) {
		StringBuilder str = new StringBuilder();
		str.append("__string_" + op + ":\n");
		rsp_offset = 1;
		str.append(Translator.getCall("strcmp"));
		str.append(Translator.getInstruction("cmp", "eax", "0"));
		str.append(Translator.getInstruction("mov", "rax", "0"));
		str.append(Translator.getInstruction("set" + Translator.getNASMofCondition(op), "al"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}
}
