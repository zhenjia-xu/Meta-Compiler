package IR;

import Utility.RuntimeError;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RegisterManager {
	public static int temporaryId = 0;
	public static int NumberOfRegInMem;
	public static Set<String> usedRegister;
	public static List<String> parameterRegList = new ArrayList<String>() {{
		add("rdi");
		add("rsi");
		add("rdx");
		add("rcx");
		add("r8");
		add("r9");
	}};

	public static VirtualRegister getTemporaryRegister() {
		return new VirtualRegister("t" + String.valueOf(temporaryId++));
	}

	public static void initialize() {
		NumberOfRegInMem = 0;
		usedRegister = new HashSet<>();
	}

	private static void getID(VirtualRegister reg) {
		if (reg.realRegister == null && reg.id == 0) {
			reg.id = ++NumberOfRegInMem;
		}
	}

	private static void statictics(VirtualRegister reg) {
		if (reg.realRegister != null) {
			usedRegister.add(reg.realRegister);
		}
	}

	public static void RegisterStatistics(Operand operand) {
		if (operand instanceof VirtualRegister) {
			getID((VirtualRegister) operand);
			statictics((VirtualRegister) operand);
		}
		if (operand instanceof Address) {
			getID(((Address) operand).base);
			statictics(((Address) operand).base);
		}
	}
}
