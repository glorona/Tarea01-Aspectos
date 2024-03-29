package controller;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.BorderPane;
import javafx.scene.text.Text;

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
    private BorderPane bgApp;
    @FXML
    private Text topText;
    
    @FXML
    private void updateColorBlue() {
    	System.out.println("Presionaste el boton azul!");
    	update(color1, color3.getParent());
    	
    }
    
    @FXML
    private void updateColorYellow() {
    	System.out.println("Presionaste el boton amarillo!");
    	update(color2, color3.getParent());
    }
    
    @FXML
    private void updateColorPurple() {
    	System.out.println("Presionaste el boton morado!");
    	update(color3, color3.getParent());
    }
    
    @FXML
    private void updateHoverBlue() {
    	textoColor(color1,topText);
    }
    
    @FXML
    private void updateHoverYellow() {
    	textoColor(color2,topText);
    }
    
    @FXML
    private void updateHoverPurple() {
    	textoColor(color3,topText);
    }
    
    
    //
    
    @FXML
    private void textoColor(Button b, Text t) {
    	
    	
    }
    
    
    //
    
    
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }
    
    
    private void update(Button b, Parent p) {
    	
    }
    
    
 

}
