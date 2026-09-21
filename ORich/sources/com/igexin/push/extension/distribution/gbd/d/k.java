package com.igexin.push.extension.distribution.gbd.d;

import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class k extends Thread {
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Thread.currentThread().setName("GBD-Thread");
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        try {
            if (com.igexin.push.extension.distribution.gbd.c.c.c == null) {
                com.igexin.push.extension.distribution.gbd.c.c.c = new a();
            }
            d.a().b();
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBDThread", th.toString());
        }
        Looper.loop();
    }
}
