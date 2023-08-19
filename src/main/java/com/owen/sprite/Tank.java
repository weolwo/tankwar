package com.owen.sprite;

import com.owen.scene.GameScene;
import com.owen.service.Dirctor;
import com.owen.utils.Direction;
import com.owen.utils.Group;
import com.owen.utils.SoundsEffect;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.image.Image;
import javafx.scene.input.KeyCode;

import java.util.List;
import java.util.Random;

public class Tank extends Role {

    /*炮管方向*/
    Direction barrelDir;

    boolean keyUp, keyDown, keyLeft, keyRight;

    double oldX = x;
    double oldY = y;

    private static final Random random = new Random();

    public Tank(double x, double y, Group group, Direction dir, Direction barrelDir, GameScene gameScene, int blood) {
        super(60, 60, x, y, group, dir, gameScene, blood);
        this.barrelDir = barrelDir;
        this.speed = 5;
        /*初始化坦克*/
        if (group.equals(Group.GREEN)) {
            imageMap.put(Direction.UP, new Image("image/tank-green-up.png"));
            imageMap.put(Direction.DOWN, new Image("image/tank-green-down.png"));
            imageMap.put(Direction.LEFT, new Image("image/tank-green-left.png"));
            imageMap.put(Direction.RIGHT, new Image("image/tank-green-right.png"));
        } else {
            imageMap.put(Direction.UP, new Image("image/tank-red-up.png"));
            imageMap.put(Direction.DOWN, new Image("image/tank-red-down.png"));
            imageMap.put(Direction.LEFT, new Image("image/tank-red-left.png"));
            imageMap.put(Direction.RIGHT, new Image("image/tank-red-right.png"));
        }
    }

    public void pressed(KeyCode code) {
        switch (code) {
            case UP:
                keyUp = true;
                break;
            case DOWN:
                keyDown = true;
                break;
            case LEFT:
                keyLeft = true;
                break;
            case RIGHT:
                keyRight = true;
                break;
        }
        redirect();
    }

    public void released(KeyCode code) {
        switch (code) {
            case F:
                openFire();
                break;
            case UP:
                keyUp = false;
                break;
            case DOWN:
                keyDown = false;
                break;
            case LEFT:
                keyLeft = false;
                break;
            case RIGHT:
                keyRight = false;
                break;
        }
        redirect();
    }

    public void redirect() {
        if (keyUp && !keyDown && !keyLeft && !keyRight) dir = Direction.UP;
        else if (!keyUp && keyDown && !keyLeft && !keyRight) dir = Direction.DOWN;
        else if (!keyUp && !keyDown && keyLeft && !keyRight) dir = Direction.LEFT;
        else if (!keyUp && !keyDown && !keyLeft && keyRight) dir = Direction.RIGHT;
        else if (!keyUp && !keyDown && !keyLeft && !keyRight) dir = Direction.STOP;
    }

    @Override
    public void move() {
        oldX = x;
        oldY = y;
        switch (dir) {
            case UP:
                y -= speed;
                break;
            case DOWN:
                y += speed;
                break;
            case LEFT:
                x -= speed;
                break;
            case RIGHT:
                x += speed;
                break;
        }
        // 赋值泡筒的方向
        if (dir != Direction.STOP) {
            barrelDir = dir;
        }
        /*解决坦克出界*/
        if (x <= 0) x = 0;
        if (y <= 0) y = 0;
        if (x >= Dirctor.WIDATH - width - 10) x = Dirctor.WIDATH - width - 10;
        if (y >= Dirctor.HEIHTT - height - 30) y = Dirctor.HEIHTT - height - 30;
        if (group.equals(Group.RED)) {
            int anInt = random.nextInt(60);
            switch (anInt) {
                case 15:
                case 30:
                    Direction[] values = Direction.values();
                    dir = values[random.nextInt(values.length)];
                case 50:
                    openFire();
                    break;
            }
        }
    }

    @Override
    public void paint(GraphicsContext context, Sprite sprite) {
        if (group.equals(Group.RED) && blood <= 0) {
            gameScene.tanks.remove(this);
            return;
        }

        switch (barrelDir) {
            case UP:
                image = imageMap.get(Direction.UP);
                break;
            case DOWN:
                image = imageMap.get(Direction.DOWN);
                break;
            case LEFT:
                image = imageMap.get(Direction.LEFT);
                break;
            case RIGHT:
                image = imageMap.get(Direction.RIGHT);
                break;
        }
        super.paint(context, this);
        move();
    }

    public void openFire() {
        double bx = x;
        double by = y;
        switch (barrelDir) {
            case UP:
                bx = x + 25;
                by = y - 25;
                break;
            case DOWN:
                bx = x + 25;
                by = y + height;
                break;
            case LEFT:
                bx = x - 25;
                by = y + 25;
                break;
            case RIGHT:
                bx = x + width;
                by = y + 25;
                break;
        }

        SoundsEffect.play("sound/attack.mp3");
        Bullet bullet = new Bullet(bx, by, group, barrelDir, gameScene);
        gameScene.bulletList.add(bullet);
    }

    public boolean impactChecked(Sprite sprite) {
        // 不是自己才做检查，否则会导致自己和自己比较
        if (sprite != null && !sprite.equals(this) && getContour().intersects(sprite.getContour())) {
            x = oldX;
            y = oldY;
            return true;
        }
        return false;
    }

    public void impactChecked(List<? extends Sprite> sprites) {
        for (Sprite sprite : sprites) {
            impactChecked(sprite);
        }
    }
}
