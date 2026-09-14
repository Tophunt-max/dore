package com.igexin.push.extension.distribution.basic.stub;

import com.igexin.push.extension.distribution.basic.c.c;
import com.igexin.push.g.b.h;

/* JADX INFO: loaded from: classes.dex */
class b extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PushExtension f322a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    b(PushExtension pushExtension, long j) {
        super(j);
        this.f322a = pushExtension;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        try {
            com.igexin.b.a.c.b.a(this.l + "|start extensionThread");
            c cVar = new c();
            cVar.a(new com.igexin.push.extension.distribution.basic.h.a());
            com.igexin.b.a.b.c.b().a((com.igexin.b.a.d.a.b) cVar);
        } catch (Throwable unused) {
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
