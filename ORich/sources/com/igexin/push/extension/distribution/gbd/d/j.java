package com.igexin.push.extension.distribution.gbd.d;

/* JADX INFO: loaded from: classes.dex */
class j extends com.igexin.push.g.b.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f382a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    j(d dVar, long j) {
        super(j);
        this.f382a = dVar;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        try {
            com.igexin.push.extension.distribution.gbd.i.j.b(this.l, "gbd config task init");
            com.igexin.push.extension.distribution.gbd.h.a.f fVarE = com.igexin.push.extension.distribution.gbd.h.a.f.e();
            if (fVarE.c() && fVarE.b() && com.igexin.push.extension.distribution.gbd.i.k.e(this.f382a.b)) {
                fVarE.a(System.currentTimeMillis());
                fVarE.a();
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - com.igexin.push.extension.distribution.gbd.c.c.as >= com.igexin.push.extension.distribution.gbd.c.a.y * 1000) {
                com.igexin.push.extension.distribution.gbd.e.a.g.a().f(jCurrentTimeMillis);
                com.igexin.b.a.b.c.b().a(new com.igexin.push.extension.distribution.gbd.f.a(new com.igexin.push.extension.distribution.gbd.f.a.c()), false, true);
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
