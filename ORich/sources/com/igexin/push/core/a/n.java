package com.igexin.push.core.a;

/* JADX INFO: loaded from: classes.dex */
class n extends com.igexin.push.g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f155a;

    n(l lVar) {
        this.f155a = lVar;
    }

    @Override // com.igexin.push.g.b
    protected void a() {
        try {
            String strB = com.igexin.push.core.b.a.a().b();
            if (com.igexin.push.core.f.G == 0 || !com.igexin.b.b.a.a(com.igexin.push.core.b.a.a().d()).equals(strB)) {
                com.igexin.b.a.c.b.a("LoginResultAction|upload app list");
                com.igexin.push.core.c.h.a().a(System.currentTimeMillis());
                com.igexin.push.core.b.a.a().c();
            }
        } catch (Throwable unused) {
        }
    }
}
