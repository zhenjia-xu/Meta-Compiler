package IR;

public class MemoryManager {
	private static int temporaryId = 0;

	public static Address getTemporaryAddress(){
		return new Address("t" + String.valueOf(temporaryId++));
	}
}
