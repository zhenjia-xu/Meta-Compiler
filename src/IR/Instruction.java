package IR;
import Utility.Utility;

public abstract class Instruction {
	public String toString(int indents){
		return Utility.getIndent(indents) + this.toString() + "\n";
	}
}
