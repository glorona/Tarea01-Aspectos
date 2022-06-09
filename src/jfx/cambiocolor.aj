

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Before;


import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.text.Text;

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
	
	//FUNCIONALIDAD EXTRA
	
   @After("call(* textoColor*(..))")
   public void NotifyChangeColor(JoinPoint jp){
	   args = jp.getArgs();
	   Button boton = (Button) args[0];
	   Text txt = (Text) args[1];
		if(boton.getId().equals("color1")) {
			txt.setText("Vas a presionar el color azul!");
		}
		if(boton.getId().equals("color2")) {
			txt.setText("Vas a presionar el color amarillo!");
		}
		if(boton.getId().equals("color3")) {
			txt.setText("Vas a presionar el color morado!");
		}
	  
	   
    		
    
    
    }
	
}