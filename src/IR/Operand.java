package IR;

public abstract class Operand {
	public boolean inMemory(){
		if(this instanceof VirtualRegister && ((VirtualRegister) this).realRegister != null){
			return false;
		}else return true;
	}
}
