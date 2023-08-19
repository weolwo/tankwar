package com.owen.sprite;

import com.owen.scene.GameScene;
import javafx.scene.image.Image;

public class Crate extends Sprite {
    public Crate(double x, double y, GameScene gameScene) {
        super(31, 32, x, y, new Image("image/Crate.png"), gameScene);
        this.blood = 20;
    }
}
