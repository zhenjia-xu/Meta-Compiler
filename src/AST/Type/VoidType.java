package AST.Type;

import Utility.Utility;

public class VoidType extends Type {
	private static final VoidType instance = new VoidType();

	private VoidType() {
	}

	static public VoidType getInstance() {
		return instance;
	}

	public boolean compatibleWith(Type other) {
		return false;
	}

	@Override
	public String toString() {
		return "void";
	}

	@Override
	public String toString(int indents) {
		return Utility.getIndent(indents) + "void";
	}
}
