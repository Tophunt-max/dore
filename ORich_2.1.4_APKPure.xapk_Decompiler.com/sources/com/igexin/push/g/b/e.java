package com.igexin.push.g.b;

import com.igexin.push.config.k;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class e extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f429a;
    private AtomicBoolean b;

    public e() {
        super(604800000L);
        this.f429a = k.H;
        this.b = new AtomicBoolean(false);
        this.o = true;
    }

    private void a(long j) {
        a(j, TimeUnit.MILLISECONDS);
    }

    public static e i() {
        return f.f430a;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        a(this.f429a, TimeUnit.MILLISECONDS);
        boolean zA = com.igexin.push.util.a.a(System.currentTimeMillis());
        if (!com.igexin.push.core.f.l && com.igexin.push.core.f.h && com.igexin.push.core.f.i && com.igexin.push.core.f.j && !zA && com.igexin.push.util.a.b()) {
            com.igexin.b.a.c.b.a("PollingTimerTask|run = true");
            com.igexin.push.e.b.a().g();
            com.igexin.push.core.f.D = 100L;
            g.i().j();
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 20160629;
    }

    public void j() {
        if (!this.b.get()) {
            com.igexin.b.a.b.c.b().a(this, false, true);
            this.b.set(true);
        }
        a(this.f429a);
    }

    public void k() {
        a(604800000L, TimeUnit.MILLISECONDS);
    }
}
