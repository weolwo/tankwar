package com.owen.scene;

import com.owen.service.Dirctor;
import com.owen.sprite.*;
import com.owen.utils.Direction;
import com.owen.utils.Group;
import javafx.animation.AnimationTimer;
import javafx.event.EventHandler;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.text.Font;
import javafx.stage.Stage;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class GameScene {

    private static final Canvas canvas = new Canvas(Dirctor.WIDATH, Dirctor.HEIHTT);

    private static final GraphicsContext graphicsContext = canvas.getGraphicsContext2D();

    private final Refresh refresh = new Refresh();
    private final keyProcess keyProcess = new keyProcess();
    private boolean running = false;

    private final BackGround backGround = new BackGround(this);

    public Tank self = new Tank(400, 500, Group.GREEN, Direction.STOP, Direction.UP, this, 30);
    public List<Bullet> bulletList = new CopyOnWriteArrayList<>();
    public List<Tank> tanks = new CopyOnWriteArrayList<>();
    public List<Explode> explodes = new CopyOnWriteArrayList<>();
    public List<Crate> crates = new CopyOnWriteArrayList<>();
    public List<Rock> rocks = new CopyOnWriteArrayList<>();
    public List<Tree> trees = new CopyOnWriteArrayList<>();


    private void paint() {
        backGround.paint(graphicsContext, backGround);
        self.paint(graphicsContext, self);
        self.impactChecked(tanks);
        self.impactChecked(crates);
        self.impactChecked(rocks);
        for (Bullet bullet : bulletList) {
            bullet.paint(graphicsContext, bullet);
            bullet.impactChecked(tanks);
            bullet.impactChecked(self);
            bullet.impactChecked(crates);
            bullet.impactChecked(rocks);
        }
        for (Tank tank : tanks) {
            tank.paint(graphicsContext, tank);
            tank.impactChecked(self);
            tank.impactChecked(crates);
            tank.impactChecked(rocks);
            tank.impactChecked(tanks);
        }

        for (Explode explode : explodes) {
            explode.paint(graphicsContext, explode);
        }

        for (Crate crate : crates) {
            crate.paint(graphicsContext, crate);
        }

        for (Tree tree : trees) {
            tree.paint(graphicsContext, tree);
        }

        for (Rock rock : rocks) {
            rock.paint(graphicsContext, rock);
        }
        graphicsContext.setFont(new Font(25));
        // graphicsContext.setFill(Color.RED);
        graphicsContext.fillText("敌军数量：" + tanks.size(), 780, 50);
        graphicsContext.fillText("子弹数量：" + bulletList.size(), 780, 80);
        graphicsContext.fillText("我的血：" + self.getBlood(), 780, 110);
        if (self.getBlood() <= 0) {
            Dirctor.getInstance().stop(false);
        } else if (tanks.size() == 0) {
            Dirctor.getInstance().stop(true);
        }
    }

    public void init(Stage stage) {
        AnchorPane root = new AnchorPane(canvas);
        stage.getScene().setRoot(root);
        stage.getScene().setOnKeyPressed(keyProcess);
        stage.getScene().setOnKeyReleased(keyProcess);
        initSprite();
        running = true;
        refresh.start();
    }

    public void clear(Stage stage) {
        stage.removeEventHandler(KeyEvent.KEY_PRESSED, keyProcess);
        stage.removeEventHandler(KeyEvent.KEY_RELEASED, keyProcess);
        refresh.stop();
        bulletList.clear();
        rocks.clear();
        trees.clear();
        tanks.clear();
        crates.clear();
        self = null;
    }

    public void initSprite() {
        if (self == null) {
            self = new Tank(400, 500, Group.GREEN, Direction.STOP, Direction.UP, this, 30);
        }
        for (int i = 0; i < 5; i++) {
            tanks.add(new Tank(120 + i * 120, 70, Group.RED, Direction.STOP, Direction.DOWN, this, 10));
        }

        for (int i = 0; i < 23; i++) {
            crates.add(new Crate(100 + i * 32, 200, this));
            crates.add(new Crate(132 + i * 32, 232, this));
        }
        for (int i = 0; i < 10; i++) {
            trees.add(new Tree(100 + i * 86, 300, this));
        }
        for (int i = 0; i < 10; i++) {
            rocks.add(new Rock(100 + i * 71, 380, this));
            rocks.add(new Rock(100 + i * 71, 460, this));
        }


    }

    private class Refresh extends AnimationTimer {

        @Override
        public void handle(long now) {
            if (running) {
                paint();
            }
        }
    }

    private class keyProcess implements EventHandler<KeyEvent> {

        @Override
        public void handle(KeyEvent event) {
            KeyCode code = event.getCode();
            if (event.getEventType() == KeyEvent.KEY_RELEASED) {
                if (code.equals(KeyCode.SPACE)) {
                    running = !running;
                }
                if (self != null)
                    self.released(code);
            } else if (event.getEventType() == KeyEvent.KEY_PRESSED) {
                if (self != null)
                    self.pressed(code);
            }
        }
    }
}
