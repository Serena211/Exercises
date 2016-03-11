import java.awt.event.MouseEvent;

import acm.graphics.GLabel;
import acm.program.GraphicsProgram;


public class MouseTracker extends GraphicsProgram{
	
	public void run() {
		label = new GLabel("Please Move or Click your mouse to get the location! ");
		label.setFont("Helvetica");
		labelX = new GLabel("");
		labelY = new GLabel("");
		add(label,getWidth()/4 ,getHeight()/3);
		add(labelX,getWidth()/4 ,getHeight()/3 + 20);
		add(labelY,getWidth()/4 ,getHeight()/3 + 40);
		
		addMouseListeners();
	}
	
	public void mouseMoved(MouseEvent e) {
		label.setLabel("Position: " + e.getX() + " , " + e.getY());
		labelX.setLabel("");
		labelY.setLabel("");
	}
	
	public void mouseClicked(MouseEvent e) {
		label.setLabel("Mouse Position: ");
		labelX.setLabel("x: "+e.getX());
		labelY.setLabel("y: "+e.getY());
	}
	
	public void mouseExited(MouseEvent e) {
		label.setLabel("Please Move or Click your mouse to get the location! ");
	}

	private GLabel label;
	private GLabel labelX;
	private GLabel labelY;
}
