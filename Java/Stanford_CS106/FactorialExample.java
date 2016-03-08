import acm.program.ConsoleProgram;


public class FactorialExample extends ConsoleProgram{
	private static final int MAX_NUM = 10;
	public void run() {
		for (int i = 0; i < MAX_NUM; i++) {
			println(i + "! = " + factorial(i));	//just copy the value of i
		}
	}
	private int factorial(int n) {
		int rsl = 1;
		for (int i = 1; i <= n; i++) {
			rsl *= i;
		}
		return rsl;
	}

}
