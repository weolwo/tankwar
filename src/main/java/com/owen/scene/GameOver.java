package com.owen.scene;

import com.owen.controller.GameOverController;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.stage.Stage;

import java.io.IOException;

public class GameOver {

    public static void load(Stage stage, boolean success) {
        try {
            FXMLLoader fxmlLoader = new FXMLLoader(Index.class.getResource("/fxml/gameOver.fxml"));
            Parent root = fxmlLoader.load();
            GameOverController overController = fxmlLoader.getController();
            if (success) overController.setFlag();
            stage.getScene().setRoot(root);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}