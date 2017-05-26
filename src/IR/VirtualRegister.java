package IR;

public class VirtualRegister extends Operand {
	private String name;
	public String realRegister;
	public int id;
	public boolean global;

	public VirtualRegister(String name) {
		this.name = name;
		this.realRegister = null;
		this.id = 0;
		this.global = false;
	}

	public String getName() {
		return name;
	}

	@Override
	public String toString() {
		//return "$" + name;
		return "$" + name + "(" + realRegister + ")";
	}
}
