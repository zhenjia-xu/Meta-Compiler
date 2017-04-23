package IR;

public class VirtualRegister extends Operand{
	private String name;

	public String getName(){
		return name;
	}
	@Override
	public String toString(){
		return "$" + name;
	}
}
