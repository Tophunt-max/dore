package com.dcloud.android.v4.view;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class MotionEventCompatHoneycombMr1 {
    MotionEventCompatHoneycombMr1() {
    }

    static float getAxisValue(MotionEvent motionEvent, int i) {
        return motionEvent.getAxisValue(i);
    }

    static float getAxisValue(MotionEvent motionEvent, int i, int i2) {
        return motionEvent.getAxisValue(i, i2);
    }
}
