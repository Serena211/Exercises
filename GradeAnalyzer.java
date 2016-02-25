/*
In this project, I create a simple tool to help analyze 
classroom grades stored in an ArrayList. At the end of 
this project, the analyzer I build will be able to 
retrieve the classroom average, lowest and highest grades.
*/
import java.util.ArrayList;
public class GradeAnalyzer {
	public GradeAnalyzer() {
  	
  }
  public int getAverage(ArrayList<Integer> grades) {
    if (grades.size() < 1) {
    	System.out.println("Grades is empty!");
      return 0;
    } else {
    	int sum = 0;
      for(Integer grade : grades) {
      	sum =  sum + grade;
      }
      int average = sum/grades.size();
      System.out.println("The average grade is " + average + "!");
      return average;
    }
  }
  public int getLowest(ArrayList<Integer> grades) {
  	int lowest = 100;
    for(Integer grade : grades) {
      if (grade < lowest) {
      	lowest = grade;
      }
    }
    System.out.println("The lowest grade is " + lowest + "!");
    return lowest;
  }
  public int getHighest(ArrayList<Integer> grades) {
  	int highest = 0;
    for(Integer grade : grades) {
      if (grade > highest) {
      	highest = grade;
      }
    }
    System.out.println("The highest grade is " + highest + "!");
    return highest;
  }
  public static void main(String[] args) {
  	ArrayList<Integer> myClassroom = new ArrayList<Integer>();
    myClassroom.add(98);
    myClassroom.add(92);
    myClassroom.add(88);
    myClassroom.add(75);
    myClassroom.add(61);
    myClassroom.add(89);
    myClassroom.add(95);
    GradeAnalyzer myAnalyzer = new GradeAnalyzer();
    myAnalyzer.getAverage(myClassroom);
    myAnalyzer.getLowest(myClassroom);
    myAnalyzer.getHighest(myClassroom);
  }
}
