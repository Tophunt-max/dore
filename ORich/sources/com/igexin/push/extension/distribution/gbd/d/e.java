package com.igexin.push.extension.distribution.gbd.d;

import com.igexin.push.extension.distribution.gbd.h.a.l;
import com.igexin.push.extension.distribution.gbd.h.a.m;

/* JADX INFO: loaded from: classes.dex */
class e extends com.igexin.push.g.b.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f377a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e(d dVar, long j) {
        super(j);
        this.f377a = dVar;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        try {
            com.igexin.push.extension.distribution.gbd.i.k.q();
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.f.e());
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.d.e());
            this.f377a.h.a(m.e());
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.j.e());
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.h.e());
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.k.e());
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.a.e());
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.g.e());
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.b.e());
            this.f377a.h.a((com.igexin.b.a.d.a.e) null, (com.igexin.b.a.d.f) null);
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.e.e());
            this.f377a.h.a(com.igexin.push.extension.distribution.gbd.h.a.i.e());
            this.f377a.h.a(l.e());
            try {
                boolean zA = com.igexin.b.a.b.c.b().a((com.igexin.b.a.d.a.b) this.f377a.h);
                com.igexin.push.extension.distribution.gbd.i.j.b(this.l, "gbd task add result = " + zA);
            } catch (Throwable th) {
                com.igexin.push.extension.distribution.gbd.i.j.a(th);
            }
            this.f377a.m();
            this.f377a.o();
            this.f377a.c();
        } catch (Throwable th2) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th2);
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
