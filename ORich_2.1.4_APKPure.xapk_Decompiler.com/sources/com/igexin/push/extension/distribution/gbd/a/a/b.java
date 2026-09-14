package com.igexin.push.extension.distribution.gbd.a.a;

import com.igexin.push.extension.distribution.gbd.i.j;

/* JADX INFO: loaded from: classes.dex */
class b implements com.igexin.push.extension.distribution.gbd.f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f324a;

    b(a aVar) {
        this.f324a = aVar;
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.c
    public void a(Object obj) {
        try {
            if (obj != null) {
                com.igexin.push.extension.distribution.gbd.e.a.a.a().a(false);
                j.b("GBD_RALA", "al d success.");
                this.f324a.a((byte[]) obj);
            } else {
                this.f324a.a((byte[]) null);
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }
}
