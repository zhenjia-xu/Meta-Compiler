package IR;

import java.util.HashMap;
import java.util.Map;

public class ProgramIR {
	private Map<String, FunctionGraph> functionMap;
	public ProgramIR(){
		functionMap = new HashMap<>();
	}
}
