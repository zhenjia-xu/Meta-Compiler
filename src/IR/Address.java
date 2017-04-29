package IR;

public class Address extends Operand{
	private String name;

	public Address(String name){
		this.name = name;
	}
	public String getName(){
		return name;
	}
	@Override
	public String toString(){
		return "$" + name;
	}
}
