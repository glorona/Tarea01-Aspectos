import com.bank.pointcut;

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
	
	@Before("call(* update*(..))");
   public void textoEscrituraAntesPresionarColor() {
    		
    		System.out.println("**** Vas a seleccionar un color! ****");
    
    
    }
	
}