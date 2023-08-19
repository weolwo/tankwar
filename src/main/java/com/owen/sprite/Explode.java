package com.owen.sprite;

import com.owen.scene.GameScene;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.image.Image;

public class Explode extends Sprite {

    public int count = 0;
    static Image[] images = new Image[]{
            new Image("image/explode1.png"),
            new Image("image/explode2.png"),
            new Image("image/explode3.png"),
            new Image("image/explode4.png"),
            new Image("image/explode5.png"),
            new Image("image/explode6.png"),
            new Image("image/explode7.png"),
            new Image("image/explode8.png"),
            new Image("image/explode9.png"),
    };

    public Explode(double x, double y, GameScene gameScene) {
        super(0, 0, x, y, null, gameScene);
    }

    @Override
    public void paint(GraphicsContext context,Sprite sprite) {
        if (count >= images.length) {
            gameScene.explodes.remove(this);
            return;
        }
        image = images[count];
        double ex = x - image.getWidth() / 2;
        double ey = y - image.getHeight() / 2;
        context.drawImage(image, ex, ey);
        count++;
    }
}
