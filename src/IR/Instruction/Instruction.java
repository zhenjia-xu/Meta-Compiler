package IR.Instruction;
import Utility.Utility;

public abstract class Instruction {
	public String toString(int indents){
		return Utility.getIndent(indents) + this.toString() + "\n";
	}
	public abstract void Prepare();
	public abstract String getInstructionOfNASM();
}
