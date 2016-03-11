import java.awt.event.MouseEvent;

import acm.graphics.GLabel;
import acm.program.GraphicsProgram;

public class MouseTracker extends GraphicsProgram{
	
	public void run() {
		//create three label
		label = new GLabel("Please Move or Click your mouse to get the location! ");
		label.setFont("Helvetica");
		labelX = new GLabel("");
		labelY = new GLabel("");
		//add them to canvas
		add(label,getWidth()/4 ,getHeight()/3);
		add(labelX,getWidth()/4 ,getHeight()/3 + 20);
		add(labelY,getWidth()/4 ,getHeight()/3 + 40);
		//listener
		addMouseListeners();
	}
	
	public void mouseMoved(MouseEvent e) {
		//get and display the real-time location of mouse on canvas
		label.setLabel("Position: " + e.getX() + " , " + e.getY());
		labelX.setLabel("");
		labelY.setLabel("");
	}
	
	public void mouseClicked(MouseEvent e) {
		//when mouse click, show current location
		label.setLabel("Mouse Position: ");
		labelX.setLabel("x: "+e.getX());
		labelY.setLabel("y: "+e.getY());
	}
	
	public void mouseExited(MouseEvent e) {
		//when mouse outside of canvas, re-show the words
		label.setLabel("Please Move or Click your mouse to get the location! ");
	}

	private GLabel label;
	private GLabel labelX;
	private GLabel labelY;
}
