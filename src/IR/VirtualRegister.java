package IR;

public class VirtualRegister extends Operand {
	private String name;
	public String systemReg;

	public VirtualRegister(String name) {
		this.name = name;
		this.systemReg = null;
	}

	public String getName() {
		return name;
	}

	@Override
	public String toString() {
		//return "$" + name;
		return "$" + name + "(" + systemReg + ")";
	}
}
