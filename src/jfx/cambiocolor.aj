import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;

import javafx.scene.Parent;
import javafx.scene.control.Button;

public aspect cambiocolor {
	
	
	private Object[] args;
	
	@After("call(* update*(..))")
	public void changeColor(JoinPoint jp) {
		args = jp.getArgs();
		Parent root = (Parent) args[1];
		Button boton = (Button) args[0];
		if(boton.getId().equals("color1")) {
			root.setStyle("-fx-background-color: blue");
		}
		if(boton.getId().equals("color2")) {
			root.setStyle("-fx-background-color: yellow");
		}
		if(boton.getId().equals("color3")) {
			root.setStyle("-fx-background-color: purple");
		}
		
	}
	

	
}