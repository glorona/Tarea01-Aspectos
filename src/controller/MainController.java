package controller;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;

/**
 * FXML Controller class
 *
 * @author usuario
 */
public class MainController implements Initializable{

    @FXML
    private Button color1;
    @FXML
    private Button color2;
    @FXML
    private Button color3;
    
    @FXML
    private void updateColorBlue() {
    	System.out.println("Presionaste el boton azul!");
    	update(color1);
    	
    }
    
    @FXML
    private void updateColorYellow() {
    	System.out.println("Presionaste el boton amarillo!");
    	update(color2);
    }
    
    @FXML
    private void updateColorPurple() {
    	System.out.println("Presionaste el boton morado!");
    	update(color3);
    }
    
    
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }
    
    
    private void update(Button b) {
    	
    }
 

}
