package com.igexin.push.core;

import android.os.HandlerThread;

/* JADX INFO: loaded from: classes.dex */
public class h extends HandlerThread {
    public h() {
        super("CoreThread");
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        e.a().c();
    }
}
