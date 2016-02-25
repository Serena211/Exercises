/*
In this project, I create a simple Library tool to help 
analyze completed books in a small, personal library. 
The tool will print out the books that a user has fully 
read. 
I store the books and their completion status in a HashMap.
*/
import java.util.HashMap;
public class Library {
	public Library() {
  	
  }
  public void getFinishedBooks(HashMap<String,Boolean> library) {
    if (library.size() < 1) {
    	System.out.println("Error! No books!");
    } 
    for(String book: library.keySet()) {
      if (library.get(book)) {
        System.out.println("This book " + book + " has finished!");
      }
    }
    
  }
  public void getUnFinishedBooks(HashMap<String,Boolean> library) {
    if (library.size() < 1) {
    	System.out.println("Error! No books!");
    }
    for(String book: library.keySet()) {
      if (!library.get(book)) {
        System.out.println("This book " + book + " has not finished!");
      }
    }
    
  }
  public static void main(String[] args) {
  	HashMap<String,Boolean> myBooks = new HashMap<String,Boolean>();
    
    myBooks.put("Road Down The Funnel",true);
    myBooks.put("Rat: A Biology",false);
    myBooks.put("TimeIn",true);
    myBooks.put("3D Food Printing",false);
    
    Library myLibrary = new Library();
    myLibrary.getFinishedBooks(myBooks);
    myLibrary.getUnFinishedBooks(myBooks);
  
  }
}
