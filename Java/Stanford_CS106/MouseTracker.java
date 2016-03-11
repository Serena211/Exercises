import java.awt.event.MouseEvent;

import acm.graphics.GLabel;
import acm.program.GraphicsProgram;


public class MouseTracker extends GraphicsProgram{
	public void run() {
		label = new GLabel("");
		label.setFont("Helvetica");
		add(label,getHeight()/3 ,getHeight()/4);
		
		addMouseListeners();
	}
	public void mouseMoved(MouseEvent e) {
		label.setLabel("Position: " + e.getX() + " , " + e.getY());
	}
	private GLabel label;
}
