package IR;

public class Address extends Operand{
	private VirtualRegister base;
	private ImmediateOperand offset;

	public Address(VirtualRegister base, ImmediateOperand offset){
		this.base = base;
		this.offset = offset;
	}
	public Address(VirtualRegister base){
		this.base = base;
		this.offset = new ImmediateOperand(0);
	}

	@Override
	public String toString(){
		return String.format("Address(%s + %s)",base, offset);
	}
}
