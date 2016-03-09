/**Code from Stanford CS106 09/25:00
 * The MyCounter class keeps track of a counter, which
 * is set to some starting value and then incremented every time
 * the user asks for the next value.
 */

public class MyCounter {
	/*keep the names of your parameters distinct 
	 * from the name of you instance variables
	 */
	public MyCounter(int startValue) {
		counter = startValue;
	}
	
	public MyCounter() {
		counter = 1;
	}
	
	public int nextValue() {
		int temp = counter;
		counter++;
		return temp;
	}
	/* private instance variable */
	private int counter;
	/* private class variable 
	 * private static int counter;
	 */
	
}
