package com.owen.sprite;

import com.owen.scene.GameScene;
import javafx.scene.image.Image;

public class Rock extends Sprite{
    public Rock( double x, double y, GameScene gameScene) {
        super(71, 61, x, y, new Image("image/Rock.png"), gameScene);
        this.blood=20;
    }
}
