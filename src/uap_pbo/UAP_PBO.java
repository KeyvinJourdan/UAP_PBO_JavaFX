/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uap_pbo;
import model.*;
import db.dbhelper;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import java.sql.Connection;
import db.dbhelper;
import uap_pbo.Produk;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author baash
 */
public class UAP_PBO extends Application {
    
    @Override
    public void start(Stage stage) throws Exception {
        dbhelper.getConnection();
        Parent root = FXMLLoader.load(getClass().getResource("startScreen.fxml"));
       
        Scene scene = new Scene(root);
        
        stage.setScene(scene);
        stage.setTitle("Program Kasir");
        stage.show();
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);   
//       dbhelper.getConnection();

    }
    
}
