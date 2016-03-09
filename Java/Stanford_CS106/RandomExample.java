/*
 *Code from Stanford CS106 08/40:13
 *The difference between "instance variable" and "local variable"
 **/
import acm.program.ConsoleProgram;
import acm.util.RandomGenerator;


public class RandomExample extends ConsoleProgram{
	//CONSTANCE
	private static final int NUM_SIDES = 1;

	public void run() {
		int numDice = readInt("Number of dice: ");
		int maxRoll = numDice * NUM_SIDES;
		int numRolls = 0;
		while (true) {
			int roll = rollDice(numDice);
			numRolls++;
			if (roll == maxRoll) break;
			println("Rolled " + roll);
		}
		println("Rolled " + maxRoll + " after " + numRolls + " rolls.");
		
	}
	
	// Return the total of rolling numDice dice
	private int rollDice(int numDice) {
		// TODO Auto-generated method stub
		int total = 0;
		for (int i = 0; i < numDice; i++) {
			//rgen.setSeed(2);
			total += rgen.nextInt(1, NUM_SIDES);
		}
		return total;
	}
	
	// Private instance variable; 
	private RandomGenerator rgen = RandomGenerator.getInstance();
}
