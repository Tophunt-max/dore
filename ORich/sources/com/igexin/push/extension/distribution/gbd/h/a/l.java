package com.igexin.push.extension.distribution.gbd.h.a;

/* JADX INFO: loaded from: classes.dex */
public class l extends com.igexin.push.extension.distribution.gbd.h.b {
    private static l c;

    private l() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.aT * 1000;
        this.f396a = com.igexin.push.extension.distribution.gbd.c.c.G;
    }

    public static l e() {
        if (c == null) {
            c = new l();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        try {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_UST", "dotask ...");
            com.igexin.b.a.b.c.b().a(new com.igexin.push.extension.distribution.gbd.f.a(new com.igexin.push.extension.distribution.gbd.f.a.e()), false, true);
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a(long j) {
        this.f396a = j;
        com.igexin.push.extension.distribution.gbd.e.a.g.a().m(j);
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
