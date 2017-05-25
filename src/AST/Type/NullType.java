package AST.Type;

import Utility.Utility;

public class NullType extends Type {
	private static final NullType instance = new NullType();

	private NullType() {
	}

	static public NullType getInstance() {
		return instance;
	}

	@Override
	public boolean compatibleWith(Type other) {
		if (other == NullType.getInstance()) return true;
		if (other instanceof ArrayType) return true;
		if (other instanceof ClassType) return true;
//		if(other instanceof StringType) return true;
		return false;
	}

	@Override
	public String toString() {
		return "null";
	}

	@Override
	public String toString(int indents) {
		return Utility.getIndent(indents) + "null";
	}
}
