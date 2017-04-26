package IR;

public class Location extends Operand{
	private String name;

	public String getName(){
		return name;
	}
	@Override
	public String toString(){
		return "$" + name;
	}
}
