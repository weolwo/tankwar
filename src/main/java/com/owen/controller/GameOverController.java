package com.owen.controller;

import com.owen.service.Dirctor;
import com.owen.utils.SoundsEffect;
import javafx.fxml.FXML;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;

public class GameOverController {

    @FXML
    private ImageView gameOver;

    @FXML
    void mouseClick(MouseEvent event) {
        SoundsEffect.play("sound/done.wav");
        Dirctor.getInstance().toIndex();
    }

    @FXML
    void mouseEnter(MouseEvent event) {
        gameOver.setOpacity(0.7);
    }

    @FXML
    void mouseExit(MouseEvent event) {
        gameOver.setOpacity(1);
    }

    public void setFlag() {
        SoundsEffect.play("sound/success.wav");
        gameOver.setImage(new Image("image/success.png"));
    }
}
