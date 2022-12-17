package uap_pbo;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.Initializable;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;

public class StartScreenController implements Initializable {

     @FXML
    private Button btnHapus;

    @FXML
    private Button btnLihat;

    @FXML
    private Button btnLihatP;
    
    @FXML
    private Button btnTambah;

    @FXML
    private Button btnhdp;

    @FXML
    private Button btntdp;


    @FXML
    void hapusData(ActionEvent event) throws IOException {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("hapusPenjualan.fxml"));
        Parent root = (Parent) loader.load();
        Stage stage = (Stage) btnhdp.getScene().getWindow();
        stage.setScene(new Scene(root));
    }

    @FXML
    void hapusProduk(ActionEvent event) throws IOException {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("produkDelete.fxml"));
        Parent root = (Parent) loader.load();
        Stage stage = (Stage) btnHapus.getScene().getWindow();
        stage.setScene(new Scene(root));
    }

    @FXML
    void lihatKategori(ActionEvent event) throws IOException {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("kategoriView.fxml"));
        Parent root = (Parent) loader.load();
        Stage stage = (Stage) btnLihat.getScene().getWindow();
        stage.setScene(new Scene(root));
    }
    
    @FXML
    void lihatProduk(ActionEvent event) throws IOException {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("lihatProduk.fxml"));
        Parent root = (Parent) loader.load();
        Stage stage = (Stage) btnLihatP.getScene().getWindow();
        stage.setScene(new Scene(root));
    }

    @FXML
    void tambahData(ActionEvent event) throws IOException {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("inputPenjualan.fxml"));
        Parent root = (Parent) loader.load();
        Stage stage = (Stage) btntdp.getScene().getWindow();
        stage.setScene(new Scene(root));
    }

    @FXML
    void tambahProduk(ActionEvent event) throws IOException {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("ProdukInput.fxml"));
        Parent root = (Parent) loader.load();
        Stage stage = (Stage) btnTambah.getScene().getWindow();
        stage.setScene(new Scene(root));
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    
}
