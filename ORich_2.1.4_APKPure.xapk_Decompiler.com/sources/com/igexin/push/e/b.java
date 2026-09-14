package com.igexin.push.e;

import android.content.Intent;
import android.os.Bundle;
import com.igexin.push.config.k;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f266a;
    private int b;
    private boolean c;
    private int d;
    private long e;
    private int f;
    private long g;
    private d h;
    private i i;

    private b() {
        this.f266a = k.G;
        this.b = k.I;
        this.i = new f();
        this.h = com.igexin.push.util.a.c() ? d.WIFI : d.MOBILE;
    }

    public static b a() {
        return e.f282a;
    }

    private void a(int i) {
        if (com.igexin.push.core.f.f == null) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("com.igexin.sdk.action.polling");
            Bundle bundle = new Bundle();
            bundle.putInt("code", i);
            intent.putExtras(bundle);
            com.igexin.push.core.f.f.sendBroadcast(intent);
        } catch (Throwable unused) {
        }
    }

    private void h() {
        com.igexin.b.a.c.b.a("ConnectModelCoordinator|reset current model = normal");
        i iVar = this.i;
        if (iVar != null && !(iVar instanceof f)) {
            this.i = new f();
        }
        com.igexin.push.g.b.e.i().k();
        this.f = 0;
        this.d = 0;
        this.c = false;
        com.igexin.push.core.c.h.a().b(this.c);
    }

    private void i() {
        a(0);
    }

    private void j() {
        a(1);
    }

    public void a(boolean z) {
        this.c = z;
        com.igexin.b.a.c.b.a("ConnectModelCoordinator|init, current is polling model = " + z);
        if (z) {
            com.igexin.push.g.b.e.i().j();
        }
    }

    public synchronized void b() {
        d dVar = com.igexin.push.util.a.c() ? d.WIFI : d.MOBILE;
        if (dVar != this.h) {
            com.igexin.b.a.c.b.a("ConnectModelCoordinator|net type changed " + this.h + "->" + dVar);
            h();
            this.h = dVar;
        }
    }

    public i c() {
        return this.i;
    }

    public synchronized void d() {
        if (this.c) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.e;
        if (jCurrentTimeMillis > 20000 && jCurrentTimeMillis < 200000) {
            this.d++;
            com.igexin.b.a.c.b.a("ConnectModelCoordinator|read len = -1, interval = " + jCurrentTimeMillis + ", disconnect =" + this.d);
            if (this.d >= this.f266a) {
                com.igexin.b.a.c.b.a("ConnectModelCoordinator|enter polling mode ####");
                i();
                this.c = true;
                this.i = new g();
                com.igexin.push.g.b.e.i().j();
                com.igexin.push.core.c.h.a().b(this.c);
            }
        }
    }

    public synchronized void e() {
        if (this.c) {
            if (System.currentTimeMillis() - this.g >= 120000) {
                this.f++;
                com.igexin.b.a.c.b.a("ConnectModelCoordinator|polling mode, cur hearbeat =" + this.f);
                if (this.f >= this.b) {
                    com.igexin.b.a.c.b.a("ConnectModelCoordinator|enter normal mode ####");
                    j();
                    com.igexin.push.core.f.D = 0L;
                    h();
                }
            }
            this.g = System.currentTimeMillis();
        }
    }

    public void f() {
        this.e = System.currentTimeMillis();
        if (this.c) {
            this.i = new g();
            com.igexin.push.g.b.e.i().j();
            this.f = 0;
        }
    }

    public void g() {
        i iVar;
        if (!this.c || (iVar = this.i) == null || (iVar instanceof f)) {
            return;
        }
        this.i = new f();
    }
}
