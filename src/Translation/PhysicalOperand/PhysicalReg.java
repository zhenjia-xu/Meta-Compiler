package Translation.PhysicalOperand;

public class PhysicalReg extends PhysicalOperand{
	public String reg;

	public PhysicalReg(String reg){
		this.reg = reg;
	}

	@Override
	public String toString(){
		return reg;
	}
}
