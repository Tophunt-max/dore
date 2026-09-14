package com.igexin.push.core.a;

/* JADX INFO: loaded from: classes.dex */
class g extends com.igexin.push.g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f149a;
    private boolean b = true;

    g(f fVar) {
        this.f149a = fVar;
    }

    @Override // com.igexin.push.g.b
    protected void a() {
        Object obj = new Object();
        com.igexin.push.core.e.a.a().a(com.igexin.push.core.f.f, new h(this, obj));
        synchronized (obj) {
            if (this.b) {
                try {
                    obj.wait(800L);
                } catch (InterruptedException unused) {
                }
            }
        }
        try {
            com.igexin.push.core.bean.a aVar = new com.igexin.push.core.bean.a();
            long j = aVar.m;
            String strA = com.igexin.push.core.bean.a.a(aVar);
            com.igexin.b.a.c.b.a("addphoneinfo| " + strA);
            com.igexin.push.core.c.d.a().a(new com.igexin.push.core.bean.i(j, strA, (byte) 5, j));
            com.igexin.push.e.c.d dVar = new com.igexin.push.e.c.d();
            dVar.a();
            dVar.f270a = (int) j;
            dVar.d = "17258000";
            dVar.e = strA;
            dVar.g = com.igexin.push.core.f.s;
            com.igexin.push.core.e.a().g().a("C-" + com.igexin.push.core.f.s, dVar);
            if (com.igexin.b.b.a.a(com.igexin.push.core.f.z, com.igexin.push.core.f.y)) {
                return;
            }
            com.igexin.push.core.c.h.a().e(com.igexin.push.core.f.y);
        } catch (Throwable unused2) {
        }
    }
}
