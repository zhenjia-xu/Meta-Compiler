package Translation.PhysicalOperand;

public class PhysicalAdd extends PhysicalOperand{
	public String base;
	public int offset;

	public PhysicalAdd(String base, int offset){
		this.base = base;
		this.offset = offset;
	}

	@Override
	public String toString(){
		if(offset > 0) {
			return String.format("qword [%s + %d]", base, offset);
		}else{
			return String.format("qword [%s - %d]", base, -offset);
		}
	}
}
