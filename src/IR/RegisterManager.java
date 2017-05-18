package IR;

import java.util.HashSet;
import java.util.Set;

public class RegisterManager {
	private static int temporaryId = 0;
	public static int NumberOfRegInMem;
	public static VirtualRegister getTemporaryRegister(){
		return new VirtualRegister("t" + String.valueOf(temporaryId++));
	}
	public static void initialize(){
		NumberOfRegInMem = 0;
	}
	public static void getID(VirtualRegister reg){
		if(reg.realRegister == null && reg.id == -1){
			reg.id = NumberOfRegInMem++;
		}
	}
}
