package IR;

public class MemoryTag extends Operand {
	public String tag;

	private MemoryTag(String tag) {
		this.tag = tag;
	}

	public static MemoryTag getMemoryTag_StringConst(String str) {
		ProgramIR.constStringList.add(str);
		return new MemoryTag("__string_const" + String.valueOf(ProgramIR.constStringList.size() - 1));
	}

	@Override
	public String toString() {
		return tag;
	}
}
