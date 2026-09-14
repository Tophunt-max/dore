package com.igexin.push.util;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
final class r implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f443a;
    private final LinkedBlockingQueue<IBinder> b;

    private r() {
        this.f443a = false;
        this.b = new LinkedBlockingQueue<>(1);
    }

    public IBinder a() {
        if (this.f443a) {
            throw new IllegalStateException();
        }
        this.f443a = true;
        return this.b.take();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.b.put(iBinder);
        } catch (Exception unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
