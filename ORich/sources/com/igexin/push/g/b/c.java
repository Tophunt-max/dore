package com.igexin.push.g.b;

import com.igexin.push.core.j;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class c extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f428a;

    public c() {
        super(j.a().b());
        this.o = true;
    }

    public static c i() {
        if (f428a == null) {
            f428a = new c();
        }
        return f428a;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        com.igexin.push.core.a.f.a().k();
        com.igexin.push.core.f.E = System.currentTimeMillis();
        if (com.igexin.push.core.f.l) {
            com.igexin.b.a.c.b.a("heartbeatReq");
            com.igexin.push.core.e.a().h().b();
        } else {
            com.igexin.b.a.c.b.a("HeartBeatTimerTask doTaskMethod isOnline = false, refresh wait time !!!!!!");
            j();
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return -2147483642;
    }

    @Override // com.igexin.b.a.d.e
    public void c() {
        super.c();
        if (this.k) {
            return;
        }
        j();
    }

    @Override // com.igexin.b.a.d.e
    public void d() {
    }

    public void j() {
        a(j.a().b(), TimeUnit.MILLISECONDS);
    }

    public void k() {
    }
}
