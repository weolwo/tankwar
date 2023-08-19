package com.owen.utils;

import javafx.scene.media.AudioClip;

public class SoundsEffect {


    public static void play(String src) {
        AudioClip audioClip = new AudioClip(SoundsEffect.class.getClassLoader().getResource(src).toString());
        audioClip.setVolume(0.05);
        audioClip.play();
    }
}
