package com.igexin.push.core.e;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public class i implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f235a;
    private String b;
    private CountDownLatch c;
    private IBinder d;

    i(String str, CountDownLatch countDownLatch) {
        this.b = str;
        this.c = countDownLatch;
    }

    h a() {
        return this.f235a;
    }

    boolean a(Context context, Intent intent) {
        if (context == null) {
            return false;
        }
        if (this.f235a != null) {
            return true;
        }
        try {
            boolean zBindService = context.bindService(intent, this, 1);
            this.c.await();
            this.f235a = h.a(this.d, this.b);
            return zBindService;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.d = iBinder;
            this.c.countDown();
        } catch (Throwable unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f235a = null;
        this.d = null;
    }
}
