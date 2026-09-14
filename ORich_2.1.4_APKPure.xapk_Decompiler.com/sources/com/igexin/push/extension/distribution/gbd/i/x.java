package com.igexin.push.extension.distribution.gbd.i;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
class x implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f417a;

    x(w wVar) {
        this.f417a = wVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f417a.f.lock();
        try {
            j.b(w.f416a, "onServiceConnected");
            this.f417a.d = new y(iBinder);
            this.f417a.d();
            this.f417a.c.unbindService(this.f417a.p);
            j.b(w.f416a, "oaidForHUAWEI service unBind");
            this.f417a.g.signalAll();
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        j.b(w.f416a, "onServiceDisconnected");
    }
}
