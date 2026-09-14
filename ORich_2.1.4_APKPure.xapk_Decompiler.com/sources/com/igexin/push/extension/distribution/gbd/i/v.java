package com.igexin.push.extension.distribution.gbd.i;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
class v implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ t f415a;
    private u b;
    private String c;
    private CountDownLatch d;
    private IBinder e;

    public v(t tVar, String str, CountDownLatch countDownLatch) {
        this.f415a = tVar;
        this.c = str;
        this.d = countDownLatch;
    }

    u a() {
        return this.b;
    }

    public boolean a(Context context, Intent intent) {
        if (context == null) {
            return false;
        }
        if (this.b != null) {
            return true;
        }
        try {
            boolean zBindService = context.bindService(intent, this, 1);
            this.d.await();
            this.b = u.a(this.e, this.c);
            return zBindService;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.e = iBinder;
            this.d.countDown();
        } catch (Throwable unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.b = null;
        this.e = null;
    }
}
