package Translation;

import IR.FunctionIR;
import IR.ProgramIR;
import IR.RegisterManager;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

public class Translator {
	public static void IRtoNASM(){
		StringBuilder str = new StringBuilder();
		str.append("global main\n");
		str.append("SECTION .text\n");
		for(FunctionIR functionIR: ProgramIR.functionMap.values()){
			str.append(functionIR.toNASM());
		}
		System.out.println(RegisterManager.NumberOfRegInMem);
		System.out.println(str.toString());
	}
}
