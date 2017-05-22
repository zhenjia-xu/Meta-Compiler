package Translation;

import AST.ProgramAST;
import AST.Statement.VariableDeclarationStatement;
import IR.FunctionIR;
import IR.ProgramIR;
import IR.RegisterManager;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class Translator {
	public static int rsp_offset;
	public static String getInstruction(String type){
		return String.format("%8s\n", type);
	}
	public static String getInstruction(String type, String operand){
		if(type.equals("push")){
			rsp_offset++;
		}
		if(type.equals("pop")){
			rsp_offset--;
		}
		return String.format("%8s %20s\n", type, operand);
	}
	public static String getInstruction(String type, String operand1, String operand2){
		return String.format("%8s %20s, %20s\n", type, operand1, operand2);
	}
	public static String getNASMofCondition(ProgramIR.ConditionOp op){
		switch (op){
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
	public static String saveRegister_Caller(){
		StringBuilder str = new StringBuilder();
		str.append(Translator.getInstruction("push", "rdi"));
		str.append(Translator.getInstruction("push", "rsi"));
		return str.toString();
	}
	public static String restoreRegister_Caller(){
		StringBuilder str = new StringBuilder();
		str.append(Translator.getInstruction("pop", "rsi"));
		str.append(Translator.getInstruction("pop", "rdi"));
		return str.toString();
	}
	public static String getCall(String func){
		StringBuilder str = new StringBuilder();
		if(rsp_offset % 2 == 1){
			str.append(Translator.getInstruction("sub", "rsp", "8"));
			str.append(Translator.getInstruction("call", func));
			str.append(Translator.getInstruction("add", "rsp", "8"));
		}else{
			str.append(Translator.getInstruction("call", func));
		}
		return str.toString();
	}
	public static String getStringConst(){
		StringBuilder str = new StringBuilder();
		str.append("SECTION .data\n");
		for(int i = 0; i < ProgramIR.constStringList.size(); i++){
			String s = ProgramIR.constStringList.get(i);
			str.append(Translator.getInstruction("dq", String.valueOf(s.length())));
			str.append("__string_const" + String.valueOf(i) + ":\n");
			str.append(Translator.getInstruction("db","\"" + s + "\", 0"));
		}
		str.append("__printIntFormat:\n");
		str.append(Translator.getInstruction("db","\"%ld\", 10, 0"));
		str.append("__printFormat:\n");
		str.append(Translator.getInstruction("db","\"%s\", 0"));
		str.append("__printlnFormat:\n");
		str.append(Translator.getInstruction("db","\"%s\", 10, 0"));
		str.append("__getIntFormat:\n");
		str.append(Translator.getInstruction("db","\"%ld\", 0"));
		str.append("__getStringFormat:\n");
		str.append(Translator.getInstruction("db","\"%s\", 0"));
		str.append("__toStringFormat:\n");
		str.append(Translator.getInstruction("db","\"%ld\", 0"));
		str.append("__parseIntFormat:\n");
		str.append(Translator.getInstruction("db","\"%d\", 0"));
		return str.toString();
	}
	public static String getGlobalVariable(){
		StringBuilder str = new StringBuilder();
		str.append("SECTION .bss\n");
		for(VariableDeclarationStatement variable: ProgramAST.globalDeclarationList){
			str.append("@" + variable.getName() + ":\n");
			str.append(Translator.getInstruction("resq", "1"));
		}
		str.append("@getIntBuf:\n");
		str.append(Translator.getInstruction("resq", "1"));
		return str.toString();
	}
	public static void IRtoNASM() throws Exception {
		StringBuilder str = new StringBuilder();
		str.append("global main\n");
		str.append("extern printf, malloc, strcpy, scanf, strlen, sscanf, sprintf\n");
		str.append("SECTION .text\n");
		for(FunctionIR functionIR: ProgramIR.functionMap.values()){
			str.append(functionIR.toNASM());
		}
		//printInt
		str.append(Translator.getNASMprint("printInt"));
		//print
		str.append(Translator.getNASMprint("print"));
		//println
		str.append(Translator.getNASMprint("println"));
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
		//stringConnection
		str.append(Translator.getNASMstringConnection());

		//stringConst
		str.append(Translator.getStringConst());
		//globalVariable
		str.append(Translator.getGlobalVariable());
		System.out.println(str.toString());
		File file = new File("program.asm");
		PrintStream out = new PrintStream(new FileOutputStream(file));
		out.print(str.toString());
	}
	static public String getNASMprint(String Format){
		StringBuilder str = new StringBuilder();
		str.append(Format + ":\n");
		str.append(Translator.getInstruction("push", "rax"));
		str.append(Translator.getInstruction("push", "rcx"));

		str.append(Translator.getInstruction("mov", "rsi", "rdi"));
		str.append(Translator.getInstruction("mov", "rdi", "__" + Format + "Format"));
		str.append(Translator.getInstruction("xor", "rax", "rax"));

		str.append(Translator.getInstruction("call", "printf"));

		str.append(Translator.getInstruction("pop", "rcx"));
		str.append(Translator.getInstruction("pop", "rax"));
		str.append(Translator.getInstruction("ret"));

		return str.toString();
	}
	static public String getNASMgetInt(){
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
	static public String getNASMgetString(){
		StringBuilder str = new StringBuilder();
		str.append("getString:\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("mov", "rdi", "300"));
		str.append(Translator.getCall("malloc"));
		str.append(Translator.getInstruction("mov", "rcx", "rax"));
		str.append(Translator.getInstruction("add", "rcx", "8"));
		str.append(Translator.getInstruction("mov", "rdi", "__getStringFormat"));
		str.append(Translator.getInstruction("mov", "rsi", "rcx"));
		str.append(Translator.getCall("scanf"));
		str.append(Translator.getInstruction("mov", "rdi", "rcx"));
		str.append(Translator.getCall("strlen"));
		str.append(Translator.getInstruction("mov", "qword [rcx - 8]", "rax"));
		str.append(Translator.getInstruction("mov", "rax", "rcx"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}
	static public String getNASMtoString(){
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
	static public String getNASMarraySize(){
		StringBuilder str = new StringBuilder();
		str.append("__array_size:\n");
		str.append(Translator.getInstruction("mov", "rax", "qword [rdi - 8]"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}
	static public String getNASMstringLength(){
		StringBuilder str = new StringBuilder();
		str.append("__string_length:\n");
		str.append(Translator.getInstruction("mov", "rax", "qword [rdi - 8]"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}
	static public String getNASMstringParseInt(){
		StringBuilder str = new StringBuilder();
		str.append("__string_parseInt:\n");
		rsp_offset = 1;
		str.append(Translator.getInstruction("mov", "rsi", "rdi"));
		str.append(Translator.getInstruction("mov", "rdi", "__parseIntFormat"));
		str.append(Translator.getInstruction("mov", "rdx", "@parseIntBuf"));
		str.append(Translator.getCall("sscanf"));
		str.append(Translator.getInstruction("mov", "rax", "dword [@parseIntBuf]"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}
	static public String getNASMstringConnection(){
		StringBuilder str = new StringBuilder();
		str.append(Translator.getInstruction("push", "r13"));
		str.append(Translator.getInstruction("push", "r14"));
		str.append(Translator.getInstruction("push", "r15"));
		str.append(Translator.getInstruction("mov", "r13", "qword [rdi - 8]"));
		str.append(Translator.getInstruction("add", "r13", "qword [rsi - 8]"));
		//str.append(Translator.get)
		str.append(Translator.getInstruction("pop", "r15"));
		str.append(Translator.getInstruction("pop", "r14"));
		str.append(Translator.getInstruction("pop", "r13"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}
}
