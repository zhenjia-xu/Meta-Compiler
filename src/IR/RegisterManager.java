package IR;

import Utility.RuntimeError;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RegisterManager {
	public static int temporaryId = 0;
	public static int NumberOfRegInMem;
	public static List<String> parameterRegList = new ArrayList<String>(){{
		add("rdi");add("rsi");add("rdx");add("rcx");add("r8");add("r9");
	}};
	public static VirtualRegister getTemporaryRegister(){
		return new VirtualRegister("t" + String.valueOf(temporaryId++));
	}
	public static void initialize(){
		NumberOfRegInMem = 0;
	}
	public static void getID(VirtualRegister reg){
		if(reg.realRegister == null && reg.id == 0){
			reg.id = ++NumberOfRegInMem;
		}
	}
	public static void MemRegisterGetOffset(Operand operand){
		if(operand instanceof VirtualRegister){
			RegisterManager.getID((VirtualRegister) operand);
		}
		if(operand instanceof Address){
			RegisterManager.getID(((Address)operand).base);
		}
	}
}
