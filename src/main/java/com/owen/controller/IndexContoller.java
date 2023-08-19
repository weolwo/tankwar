package com.owen.controller;

import com.owen.service.Dirctor;
import com.owen.utils.SoundsEffect;
import javafx.fxml.FXML;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;

public class IndexContoller {

    @FXML
    private ImageView startGame;

    @FXML
    void MouseClick(MouseEvent event) {
        SoundsEffect.play("sound/done.wav");
        Dirctor.getInstance().start();
    }

    @FXML
    void MouseEnter(MouseEvent event) {
        startGame.setOpacity(0.7);
        SoundsEffect.play("sound/button.wav");
    }

    @FXML
    void MouseExit(MouseEvent event) {
        startGame.setOpacity(1);
    }

}
