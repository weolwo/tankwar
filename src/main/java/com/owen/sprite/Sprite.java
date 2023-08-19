package com.owen.sprite;

import com.owen.scene.GameScene;
import javafx.geometry.Rectangle2D;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.image.Image;

public abstract class Sprite {

    double width;
    double height;

    double x;

    double y;

    double blood;

    Image image;
    GameScene gameScene;

    public Sprite(double width, double height, double x, double y, Image image, GameScene gameScene) {
        this.width = width;
        this.height = height;
        this.x = x;
        this.y = y;
        this.image = image;
        this.gameScene = gameScene;
    }

    public void paint(GraphicsContext context, Sprite sprite) {
        if (sprite instanceof Rock && this.blood <= 0) {
            gameScene.rocks.remove(sprite);
            return;
        }
        context.drawImage(image, x, y, width, height);
    }

    public Rectangle2D getContour() {
        return new Rectangle2D(x, y, width, height);
    }
}
