package Translation.PhysicalOperand;

public class PhysicalTag extends PhysicalOperand{
	public String value;

	public PhysicalTag(String value){
		this.value = value;
	}

	@Override
	public String toString(){
		return value;
	}
}
