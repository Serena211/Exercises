import java.awt.event.MouseEvent;

import acm.graphics.GLabel;
import acm.program.GraphicsProgram;


public class MouseTracker extends GraphicsProgram{
	
	public void run() {
		label = new GLabel("Please Move or Click \t your mouse to get the location! ");
		label.setFont("Helvetica");
		add(label,getHeight()/4 ,getHeight()/3);
		
		addMouseListeners();
	}
	
	public void mouseMoved(MouseEvent e) {
		label.setLabel("Position: " + e.getX() + " , " + e.getY());
	}
	
	public void mouseClicked(MouseEvent e) {
		label.setLabel("Mouse Position is " + e.getX() + " , " + e.getY() +".");
	}
	
	public void mouseExited(MouseEvent e) {
		label.setLabel("Please Move or Click your mouse to get the location! ");
	}

	private GLabel label;
}
