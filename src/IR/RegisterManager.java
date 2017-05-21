package IR;

import Utility.RuntimeError;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class RegisterManager {
	private static int temporaryId = 0;
	public static int NumberOfRegInMem;
	public static List<String> parameterRegList = new ArrayList<String>(){{
		add("rdi");
		add("rsi");
		add("rdx");
		add("rcx");
		add("r8");
		add("r9");
	}};
	public static VirtualRegister getTemporaryRegister(){
		return new VirtualRegister("t" + String.valueOf(temporaryId++));
	}
	public static void initialize(){
		NumberOfRegInMem = 0;
	}
	public static void getID(Operand reg){
		if(!(reg instanceof VirtualRegister)){
			throw new RuntimeError("getID needs virtual register");
		}
		if(((VirtualRegister)reg).realRegister == null && ((VirtualRegister)reg).id == 0){
			((VirtualRegister)reg).id = ++NumberOfRegInMem;
		}
	}
	public static void MemRegisterGetOffset(Operand operand){
		if(operand instanceof VirtualRegister){
			RegisterManager.getID(operand);
		}
		if(operand instanceof Address){
			RegisterManager.getID(((Address)operand).base);
		}
	}
}
