package IR;

public class LabelInstruction extends Instruction {
	private String name;
	public Block block;

	public LabelInstruction(String name){
		this.name = name;
	}
	public String getName(){
		return name;
	}

	@Override
	public String toString(){
		return "%" + name;
	}
}
