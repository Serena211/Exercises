/*
Lecture 07/06:04
add external acm jar first.
*/
import acm.program.*;

public class HalfLoop extends ConsoleProgram{
	private static final int SENTINEL = 0;
	public void run() {
		int total = 0;
		while(true) {
			int val = readInt("Enter val: ");
			if(val == SENTINEL) break;
			total += val;
		}
		println("Total = " + total);
	}
}
