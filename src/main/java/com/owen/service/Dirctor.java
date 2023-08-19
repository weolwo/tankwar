package com.owen.service;

import com.owen.scene.GameOver;
import com.owen.scene.GameScene;
import com.owen.scene.Index;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;

public class Dirctor {

    public static final double WIDATH = 960, HEIHTT = 640;

    private static final Dirctor instance = new Dirctor();

    private GameScene gameScene = new GameScene();

    private Stage stage;

    private Dirctor() {
    }

    public static Dirctor getInstance() {
        return instance;
    }

    public void init(Stage stage) {
        AnchorPane pane = new AnchorPane();
        Scene scene = new Scene(pane, WIDATH, HEIHTT);
        stage.setScene(scene);
        stage.setTitle("tank");
        stage.setResizable(false);
        stage.getIcons().add(new Image("image/logo.png"));
        stage.setWidth(WIDATH);
        stage.setHeight(HEIHTT);
        stage.show();
        this.stage = stage;
        toIndex();
    }

    public void toIndex() {
        Index.load(stage);
    }

    public void start() {
        if (gameScene == null) {
            gameScene = new GameScene();
        }
        gameScene.init(stage);
    }

    public void stop(boolean ret) {
        gameScene.clear(stage);
        GameOver.load(stage, ret);
    }
}
