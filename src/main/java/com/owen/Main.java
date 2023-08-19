package com.owen;

import com.owen.service.Dirctor;
import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {
    public static void main(String[] args) {
        Application.launch(args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        Dirctor.getInstance().init(primaryStage);
    }
}