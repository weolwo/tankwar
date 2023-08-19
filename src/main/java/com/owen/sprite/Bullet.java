package com.owen.sprite;

import com.owen.scene.GameScene;
import com.owen.service.Dirctor;
import com.owen.utils.Direction;
import com.owen.utils.Group;
import com.owen.utils.SoundsEffect;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.image.Image;

import java.util.List;

public class Bullet extends Role {
    public Bullet(double x, double y, Group group, Direction dir, GameScene gameScene) {
        super(0, 0, x, y, group, dir, gameScene, 1);
        speed = 20;
        // 初始化宽高
        if (dir.equals(Direction.UP) || dir.equals(Direction.DOWN)) {
            width = 10;
            height = 22;
        } else {
            width = 22;
            height = 10;
        }
        if (group.equals(Group.GREEN)) {
            switch (dir) {
                case UP:
                    image = new Image("image/bullet-green-up.png");
                    break;
                case DOWN:
                    image = new Image("image/bullet-green-down.png");
                    break;
                case LEFT:
                    image = new Image("image/bullet-green-left.png");
                    break;
                case RIGHT:
                    image = new Image("image/bullet-green-right.png");
                    break;
            }
        } else {
            switch (dir) {
                case UP:
                    image = new Image("image/bullet-red-up.png");
                    break;
                case DOWN:
                    image = new Image("image/bullet-red-down.png");
                    break;
                case LEFT:
                    image = new Image("image/bullet-red-left.png");
                    break;
                case RIGHT:
                    image = new Image("image/bullet-red-right.png");
                    break;
            }
        }
    }

    @Override
    public void paint(GraphicsContext context, Sprite sprite) {
        if (this.blood < 0) {
            gameScene.bulletList.remove(this);
            gameScene.explodes.add(new Explode(x, y, gameScene));
            SoundsEffect.play("sound/explosion.wav");
            return;
        }
        super.paint(context, this);
        move();
    }

    @Override
    public void move() {
        switch (dir) {
            case UP:
                y -= speed;
                if (Math.abs(y) > Dirctor.HEIHTT) {
                    gameScene.bulletList.remove(this);
                }
                break;
            case DOWN:
                y += speed;
                if (y > Dirctor.HEIHTT) {
                    gameScene.bulletList.remove(this);
                }
                break;
            case LEFT:
                x -= speed;
                if (Math.abs(x) > Dirctor.WIDATH) {
                    gameScene.bulletList.remove(this);
                }
                break;
            case RIGHT:
                x += speed;
                if (x > Dirctor.WIDATH) {
                    gameScene.bulletList.remove(this);
                }
                break;
        }
    }

    public boolean impactChecked(Sprite sprite) {
        if (sprite instanceof Tank) {
            Tank tank = (Tank) sprite;
            if (!tank.group.equals(this.group) && getContour().intersects(tank.getContour())) {
                tank.blood--;
                this.blood--;
                return true;
            }
        }
        if (sprite instanceof Crate) {
            Crate crate = (Crate) sprite;
            if (getContour().intersects(crate.getContour())) {
                gameScene.crates.remove(crate);
                this.blood--;
                crate.blood--;
                return true;
            }
        }
        if (sprite instanceof Rock) {
            Rock rock = (Rock) sprite;
            if (getContour().intersects(rock.getContour())) {
                gameScene.rocks.remove(rock);
                this.blood--;
                rock.blood--;
                return true;
            }
        }
        return false;
    }

    public void impactChecked(List<? extends Sprite> sprites) {
        for (Sprite sprite : sprites) {
            impactChecked(sprite);
        }
    }
}
