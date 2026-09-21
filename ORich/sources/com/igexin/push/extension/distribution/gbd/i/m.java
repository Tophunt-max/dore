package com.igexin.push.extension.distribution.gbd.i;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
class m implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f409a = false;
    private final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue<>(1);

    m() {
    }

    public IBinder a() {
        if (this.f409a) {
            throw new IllegalStateException();
        }
        this.f409a = true;
        return this.b.take();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.b.put(iBinder);
        } catch (Exception e) {
            j.a(e);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
