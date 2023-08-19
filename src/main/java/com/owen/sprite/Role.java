package com.owen.sprite;

import com.owen.scene.GameScene;
import com.owen.utils.Direction;
import com.owen.utils.Group;
import javafx.scene.image.Image;

import java.util.HashMap;
import java.util.Map;

public abstract class Role extends Sprite {

    double speed;

    int blood = 10;

    Map<Direction, Image> imageMap = new HashMap<>();

    Direction dir;

    Group group;

    public Role(double width, double height, double x, double y, Group group, Direction dir, GameScene gameScene,int blood) {
        super(width, height, x, y, null, gameScene);
        this.dir = dir;
        this.group = group;
        this.blood = blood;
    }

    public abstract void move();

    public int getBlood() {
        return blood;
    }

    public void setBlood(int blood) {
        this.blood = blood;
    }
}
