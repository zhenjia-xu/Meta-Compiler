package AST.Statement;

import AST.Symbol.Scope;
import IR.LabelInstruction;

public abstract class LoopStatement extends Statement implements Scope{
	public LabelInstruction conditionLabel, bodyLabel, nextStepLabel, exitLabel;
}
