package com.igexin.push.extension.distribution.gbd.h.a;

/* JADX INFO: loaded from: classes.dex */
public class f extends com.igexin.push.extension.distribution.gbd.h.b {
    private static f c;

    private f() {
        this.b = 86400000L;
        this.f396a = com.igexin.push.extension.distribution.gbd.c.c.n;
    }

    public static f e() {
        if (c == null) {
            c = new f();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        if (!com.igexin.push.extension.distribution.gbd.i.k.e(com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GCT", "GBD_CONFIG not network, return.");
        } else {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GCT", "doTask GBD_CONFIG");
            com.igexin.b.a.b.c.b().a(new com.igexin.push.extension.distribution.gbd.f.a(new com.igexin.push.extension.distribution.gbd.f.a.d()), false, true);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return true;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 0;
    }
}
