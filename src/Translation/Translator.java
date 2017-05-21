package Translation;

import IR.FunctionIR;
import IR.ProgramIR;
import IR.RegisterManager;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import java.io.*;

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
		return str.toString();
	}
	public static void IRtoNASM() throws Exception {
		StringBuilder str = new StringBuilder();
		str.append("global main\n");
		str.append("extern printf, malloc, strcpy\n");
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
		//arraySize
		str.append(Translator.getNASMarraySize());
		//stringLength
		str.append(Translator.getNASMstringLength());
		//stringConnection
		str.append(Translator.getNASMstringConnection());


		//stringConst
		str.append(Translator.getStringConst());
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
