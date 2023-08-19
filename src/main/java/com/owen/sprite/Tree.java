package com.owen.sprite;

import com.owen.scene.GameScene;
import javafx.scene.image.Image;

public class Tree extends Sprite{
    public Tree(double x, double y ,GameScene gameScene) {
        super(86, 86, x, y, new Image("image/TreeBig.png"), gameScene);
    }
}
