package com.facebook.fresco.animation.backend;

/* JADX INFO: loaded from: classes.dex */
public interface AnimationInformation {
    public static final int LOOP_COUNT_INFINITE = 0;

    int getFrameCount();

    int getFrameDurationMs(int frameNumber);

    int getLoopCount();
}
