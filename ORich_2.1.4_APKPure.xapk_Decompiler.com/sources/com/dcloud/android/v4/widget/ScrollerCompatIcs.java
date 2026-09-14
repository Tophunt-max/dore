package com.dcloud.android.v4.widget;

import android.widget.OverScroller;

/* JADX INFO: loaded from: classes.dex */
class ScrollerCompatIcs {
    ScrollerCompatIcs() {
    }

    public static float getCurrVelocity(Object obj) {
        return ((OverScroller) obj).getCurrVelocity();
    }
}
