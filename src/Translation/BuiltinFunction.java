package Translation;

public class BuiltinFunction {
	public static String getBuiltinFunction() {
		StringBuilder str = new StringBuilder();
		str.append("SECTION .text\n");
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

	private static int rsp_offset;

	private enum ConditionOp {
		EQ, NEQ, GR, GREQ, LE, LEEQ
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

	private static String getCall(String func) {
		StringBuilder str = new StringBuilder();
		if (rsp_offset % 2 == 1) {
			str.append(getInstruction("sub", "rsp", "8"));
			str.append(getInstruction("call", func));
			str.append(getInstruction("add", "rsp", "8"));
		} else {
			str.append(getInstruction("call", func));
		}
		return str.toString();
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
		str.append(getInstruction("db", "\"%ld\", 10, 0"));
		str.append("__print_IntFormat:\n");
		str.append(getInstruction("db", "\"%ld\", 0"));
		str.append("__printFormat:\n");
		str.append(getInstruction("db", "\"%s\", 0"));
		str.append("__getIntFormat:\n");
		str.append(getInstruction("db", "\"%ld\", 0"));
		str.append("__getStringFormat:\n");
		str.append(getInstruction("db", "\"%s\", 0"));
		str.append("__toStringFormat:\n");
		str.append(getInstruction("db", "\"%ld\", 0"));
		str.append("__parseIntFormat:\n");
		str.append(getInstruction("db", "\"%ld\", 0"));
		return str.toString();
	}

	static private String getBssSection() {
		StringBuilder str = new StringBuilder();
		str.append("SECTION .bss\n");
		str.append("@getIntBuf:\n");
		str.append(getInstruction("resq", "1"));
		str.append("@parseIntBuf:\n");
		str.append(getInstruction("resq", "1"));
		return str.toString();
	}

	static private String getNASMprint(String Format) {
		StringBuilder str = new StringBuilder();
		str.append(Format + ":\n");
		rsp_offset = 1;
		str.append(getInstruction("mov", "rsi", "rdi"));
		str.append(getInstruction("mov", "rdi", "__" + Format + "Format"));
		str.append(getCall("printf"));
		str.append(getInstruction("ret"));

		return str.toString();
	}

	static private String getNASMprintln() {
		StringBuilder str = new StringBuilder();
		str.append("println:\n");
		str.append(getCall("puts"));
		str.append(getInstruction("ret"));

		return str.toString();
	}

	static private String getNASMgetInt() {
		StringBuilder str = new StringBuilder();
		str.append("getInt:\n");
		rsp_offset = 1;
		str.append(getInstruction("mov", "rdi", "__getIntFormat"));
		str.append(getInstruction("mov", "rsi", "@getIntBuf"));
		str.append(getCall("scanf"));
		str.append(getInstruction("mov", "rax", "qword [@getIntBuf]"));
		str.append(getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMgetString() {
		StringBuilder str = new StringBuilder();
		str.append("getString:\n");
		rsp_offset = 1;
		str.append(getInstruction("push", "r15"));
		str.append(getInstruction("mov", "rdi", "300"));
		str.append(getCall("malloc"));
		str.append(getInstruction("mov", "r15", "rax"));
		str.append(getInstruction("add", "r15", "8"));
		str.append(getInstruction("mov", "rdi", "__getStringFormat"));
		str.append(getInstruction("mov", "rsi", "r15"));
		str.append(getCall("scanf"));
		str.append(getInstruction("mov", "rdi", "r15"));
		str.append(getCall("strlen"));
		str.append(getInstruction("mov", "qword [r15 - 8]", "rax"));
		str.append(getInstruction("mov", "rax", "r15"));
		str.append(getInstruction("pop", "r15"));
		str.append(getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMtoString() {
		StringBuilder str = new StringBuilder();
		str.append("toString:\n");
		rsp_offset = 1;
		str.append(getInstruction("push", "r15"));
		str.append(getInstruction("push", "rdi"));
		str.append(getInstruction("mov", "rdi", "20"));
		str.append(getCall("malloc"));
		str.append(getInstruction("mov", "r15", "rax"));
		str.append(getInstruction("add", "r15", "8"));
		str.append(getInstruction("mov", "rdi", "r15"));
		str.append(getInstruction("mov", "rsi", "__toStringFormat"));
		str.append(getInstruction("pop", "rdx"));
		str.append(getCall("sprintf"));
		str.append(getInstruction("mov", "rdi", "r15"));
		str.append(getCall("strlen"));
		str.append(getInstruction("mov", "qword [r15 - 8]", "rax"));
		str.append(getInstruction("mov", "rax", "r15"));
		str.append(getInstruction("pop", "r15"));
		str.append(getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMarraySize() {
		StringBuilder str = new StringBuilder();
		str.append("__array_size:\n");
		str.append(getInstruction("mov", "rax", "qword [rdi - 8]"));
		str.append(getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringLength() {
		StringBuilder str = new StringBuilder();
		str.append("__string_length:\n");
		str.append(getInstruction("mov", "rax", "qword [rdi - 8]"));
		str.append(getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringParseInt() {
		StringBuilder str = new StringBuilder();
		str.append("__string_parseInt:\n");
		rsp_offset = 1;
		str.append(getInstruction("mov", "rsi", "__getIntFormat"));
		str.append(getInstruction("mov", "rdx", "@parseIntBuf"));
		str.append(getCall("sscanf"));
		str.append(getInstruction("mov", "rax", "qword [@parseIntBuf]"));
		str.append(getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringSubstring() {
		StringBuilder str = new StringBuilder();
		str.append("__string_substring:\n");
		rsp_offset = 1;
		str.append(getInstruction("push", "r15"));
		str.append(getInstruction("push", "r14"));
		str.append(getInstruction("mov", "r15", "rdi"));
		str.append(getInstruction("add", "r15", "rsi"));
		str.append(getInstruction("mov", "r14", "rdx"));
		str.append(getInstruction("sub", "r14", "rsi"));
		str.append(getInstruction("add", "r14", "1"));
		str.append(getInstruction("mov", "rdi", "r14"));
		str.append(getInstruction("add", "rdi", "9"));
		str.append(getCall("malloc"));
		str.append(getInstruction("add", "rax", "8"));
		str.append(getInstruction("mov", "rdi", "rax"));
		str.append(getInstruction("mov", "rsi", "r15"));
		str.append(getInstruction("mov", "rdx", "r14"));
		str.append(getCall("memcpy"));
		str.append(getInstruction("mov", "qword [rax - 8]", "r14"));
		str.append(getInstruction("mov", "r15", "rax"));
		str.append(getInstruction("add", "r15", "r14"));
		str.append(getInstruction("mov", "r15", "0"));
		str.append(getInstruction("pop", "r14"));
		str.append(getInstruction("pop", "r15"));
		str.append(getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringOrd() {
		StringBuilder str = new StringBuilder();
		str.append("__string_ord:\n");
		rsp_offset = 1;
		str.append(getInstruction("add", "rdi", "rsi"));
		str.append(getInstruction("movsx", "rax", "byte [rdi]"));
		str.append(getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringConnection() {
		StringBuilder str = new StringBuilder();
		str.append("__string_connection:\n");
		rsp_offset = 1;
		str.append(getInstruction("push", "r15"));//length -> result
		str.append(getInstruction("push", "r14"));//left
		str.append(getInstruction("push", "r13"));//right
		str.append(getInstruction("mov", "r15", "qword [rdi - 8]"));
		str.append(getInstruction("add", "r15", "qword [rsi - 8]"));
		str.append(getInstruction("add", "r15", "9"));
		str.append(getInstruction("mov", "r14", "rdi"));
		str.append(getInstruction("mov", "r13", "rsi"));
		str.append(getInstruction("mov", "rdi", "r15"));
		str.append(getCall("malloc"));
		str.append(getInstruction("sub", "r15", "9"));
		str.append(getInstruction("mov", "qword [rax]", "r15"));
		str.append(getInstruction("mov", "r15", "rax"));
		str.append(getInstruction("add", "r15", "8"));
		str.append(getInstruction("mov", "rdi", "r15"));
		str.append(getInstruction("mov", "rsi", "r14"));
		str.append(getCall("strcpy"));
		str.append(getInstruction("add", "r15", "qword [r14 - 8]"));
		str.append(getInstruction("mov", "r14", "rax"));
		str.append(getInstruction("mov", "rdi", "r15"));
		str.append(getInstruction("mov", "rsi", "r13"));
		str.append(getCall("strcpy"));
		str.append(getInstruction("mov", "rax", "r14"));
		str.append(getInstruction("pop", "r13"));
		str.append(getInstruction("pop", "r14"));
		str.append(getInstruction("pop", "r15"));
		str.append(getInstruction("ret"));
		return str.toString();
	}

	static private String getNASMstringCompare(ConditionOp op) {
		StringBuilder str = new StringBuilder();
		str.append("__string_" + op + ":\n");
		rsp_offset = 1;
		str.append(getCall("strcmp"));
		str.append(getInstruction("cmp", "eax", "0"));
		str.append(getInstruction("mov", "rax", "0"));
		str.append(getInstruction("set" + getNASMofCondition(op), "al"));
		str.append(getInstruction("ret"));
		return str.toString();
	}
}
