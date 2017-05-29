package Translation;

public class BuiltinFunction {
	private static int rsp_offset;

	public enum ConditionOp {
		EQ, NEQ, GR, GREQ, LE, LEEQ
	}

	public static String getBuiltinFunction() {
		StringBuilder str = new StringBuilder();
		//print_Int
		str.append(getNASMprint("print_Int"));
		//println_Int
		str.append(getNASMprint("println_Int"));
		//print
		str.append(getNASMprint("print"));
		//println
		str.append(getNASMprintln());
		//getInt
		str.append(getNASMgetInt());
		//getString
		str.append(getNASMgetString());
		//toString
		str.append(getNASMtoString());
		//arraySize
		str.append(getNASMarraySize());
		//stringLength
		str.append(getNASMstringLength());
		//stringParseInt
		str.append(getNASMstringParseInt());
		//stringSubstring
		str.append(getNASMstringSubstring());
		//stringOrd
		str.append(getNASMstringOrd());
		//stringConnection
		str.append(getNASMstringConnection());
		//stringCompare
		str.append(getNASMstringCompare(ConditionOp.EQ));
		str.append(getNASMstringCompare(ConditionOp.NEQ));
		str.append(getNASMstringCompare(ConditionOp.GR));
		str.append(getNASMstringCompare(ConditionOp.GREQ));
		str.append(getNASMstringCompare(ConditionOp.LE));
		str.append(getNASMstringCompare(ConditionOp.LEEQ));
		str.append(getDataSection());
		str.append(getBssSection());
		return str.toString();
	}

	private static String getInstruction(String type) {
		return String.format("%8s\n", type);
	}

	private static String getInstruction(String type, String operand) {
		if (type.equals("push")) {
			rsp_offset++;
		}
		if (type.equals("pop")) {
			rsp_offset--;
		}
		return String.format("%8s %20s\n", type, operand);
	}

	private static String getInstruction(String type, String operand1, String operand2) {
		if (type.equals("mov") && operand1.equals(operand2)) {
			return "";
		}
		return String.format("%8s %20s, %20s\n", type, operand1, operand2);
	}

	private static String getNASMofCondition(ConditionOp op) {
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

	static private String getDataSection() {
		StringBuilder str = new StringBuilder();
		str.append("SECTION .data\n");
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
		str.append("@getIntBuf:\n");
		str.append(Translator.getInstruction("resq", "1"));
		str.append("@parseIntBuf:\n");
		str.append(Translator.getInstruction("resq", "1"));
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

	static private String getNASMstringCompare(ConditionOp op) {
		StringBuilder str = new StringBuilder();
		str.append("__string_" + op + ":\n");
		rsp_offset = 1;
		str.append(Translator.getCall("strcmp"));
		str.append(Translator.getInstruction("cmp", "eax", "0"));
		str.append(Translator.getInstruction("mov", "rax", "0"));
		str.append(Translator.getInstruction("set" + getNASMofCondition(op), "al"));
		str.append(Translator.getInstruction("ret"));
		return str.toString();
	}
}
