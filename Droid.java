/*
In this project I create a simple Droid (robot) that can be activated, charged, and hover above ground. 
*/
public class Droid {
  int batteryLevel;
  public Droid() {
  	batteryLevel = 100;
  }
  public void activate() {
    System.out.println("Activated. How can I help you?");
    batteryLevel = batteryLevel - 5;
    System.out.println("Battery level is: " + batteryLevel + " percent.");
  }
  public void chargeBattery(int hours) {
  	System.out.println("Droid charging...");
    batteryLevel = batteryLevel + 5 * hours;
    if (batteryLevel > 100) {
    	batteryLevel = 100;
    }
      System.out.println("Battery level is: " + batteryLevel + " percent.");
  }
  public int checkBatteryLevel() {
  	System.out.println("Battery level is: " + batteryLevel + " percent.");
    return batteryLevel;
  }
  public void hover(int feet) {
    if (feet > 2) {
    	System.out.println("Error! I cannot hover above 2 feet.");
    } else {
    	System.out.println("Hovering...");
      batteryLevel = batteryLevel - 20;
    System.out.println("Battery level is: " + batteryLevel + " percent.");
    }
  }
	public static void main(String[] args) {
    Droid BB_8 = new Droid();
    BB_8.activate();
    BB_8.chargeBattery(5);
    BB_8.hover(1);
  	
  }

}
