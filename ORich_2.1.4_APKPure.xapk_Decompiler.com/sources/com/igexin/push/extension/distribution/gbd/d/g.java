package com.igexin.push.extension.distribution.gbd.d;

import io.dcloud.WebAppActivity;

/* JADX INFO: loaded from: classes.dex */
class g extends com.igexin.push.g.b.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f379a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    g(d dVar, long j) {
        super(j);
        this.f379a = dVar;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        try {
            com.igexin.push.extension.distribution.gbd.i.j.b(this.l, "gbd guard task init");
            if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
                com.igexin.push.extension.distribution.gbd.c.c.c.post(new h(this));
                com.igexin.push.extension.distribution.gbd.c.c.c.postDelayed(new i(this), WebAppActivity.SPLASH_SECOND);
            }
            com.igexin.push.extension.distribution.gbd.a.b.i.a().b();
            this.f379a.l();
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
