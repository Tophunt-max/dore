package com.igexin.push.extension.distribution.gbd.h.a;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.igexin.push.g.b.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f395a;
    private int b;

    private c() {
        super(30000L);
        this.o = true;
    }

    private void i() {
        long j = com.igexin.push.extension.distribution.gbd.c.a.aJ * 1000;
        int i = this.b;
        this.b = i + 1;
        if (i < 3) {
            j = 30000;
        }
        a(j, TimeUnit.MILLISECONDS);
    }

    public static synchronized c i_() {
        if (f395a == null) {
            f395a = new c();
        }
        return f395a;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        try {
            if (com.igexin.push.extension.distribution.gbd.c.c.M.split(",").length >= 200) {
                com.igexin.push.extension.distribution.gbd.i.j.b("CATT", " CAD length > 200, clean. ");
                com.igexin.push.extension.distribution.gbd.c.c.M = "";
                com.igexin.push.extension.distribution.gbd.e.a.g.a().e(com.igexin.push.extension.distribution.gbd.c.c.M);
            }
            com.igexin.push.extension.distribution.gbd.c.c.O = com.igexin.push.extension.distribution.gbd.i.k.x() - com.igexin.push.extension.distribution.gbd.c.c.N;
            if (com.igexin.push.extension.distribution.gbd.c.c.O < 0) {
                com.igexin.push.extension.distribution.gbd.c.c.N = com.igexin.push.extension.distribution.gbd.i.k.x();
                com.igexin.push.extension.distribution.gbd.c.c.O = 0L;
            }
            com.igexin.push.extension.distribution.gbd.e.a.g.a().o(com.igexin.push.extension.distribution.gbd.c.c.N);
            com.igexin.push.extension.distribution.gbd.e.a.g.a().p(com.igexin.push.extension.distribution.gbd.c.c.O);
            i();
            com.igexin.push.extension.distribution.gbd.i.j.b("CATT", "CAD  " + com.igexin.push.extension.distribution.gbd.c.c.M);
            com.igexin.push.extension.distribution.gbd.i.j.b("CATT", "SLST  " + com.igexin.push.extension.distribution.gbd.c.c.N);
            com.igexin.push.extension.distribution.gbd.i.j.b("CATT", "SAT  " + com.igexin.push.extension.distribution.gbd.c.c.O);
        } catch (Throwable unused) {
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return -1;
    }

    @Override // com.igexin.b.a.d.e
    public void c() {
        super.c();
    }

    @Override // com.igexin.b.a.d.e
    public void d() {
    }
}
