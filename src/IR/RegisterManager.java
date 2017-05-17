package IR;

public class RegisterManager {
	private static int temporaryId = 0;

	public static VirtualRegister getTemporaryRegister(){
		return new VirtualRegister("t" + String.valueOf(temporaryId++));
	}
}
