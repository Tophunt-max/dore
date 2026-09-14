package com.igexin.push.extension.distribution.gbd.a.c;

import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f348a;
    private int b;

    d(c cVar, int i) {
        this.f348a = cVar;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f348a.n) {
            try {
                Process.setThreadPriority(10);
                this.f348a.p.f356a = e.SCAN_END;
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RLA", "dyn/sta type = " + this.b);
                this.f348a.p.a(this.b);
            } finally {
            }
        }
    }
}
