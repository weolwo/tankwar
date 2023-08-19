package com.owen.sprite;

import com.owen.scene.GameScene;
import javafx.scene.image.Image;

public class BackGround extends Sprite {
    public BackGround(GameScene gameScene) {
        super(960, 640, 0, 0, new Image("/image/LevelsBackground.jpg"), gameScene);
    }
}
