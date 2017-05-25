package Translation.PhysicalOperand;

public class PhysicalImm extends PhysicalOperand {
	public int value;

	public PhysicalImm(int value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return String.valueOf(value);
	}
}
