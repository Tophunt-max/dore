package com.igexin.push.core.c;

/* JADX INFO: loaded from: classes.dex */
class ab extends com.igexin.push.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f186a;
    final /* synthetic */ String b;
    final /* synthetic */ h c;

    ab(h hVar, boolean z, String str) {
        this.c = hVar;
        this.f186a = z;
        this.b = str;
    }

    @Override // com.igexin.push.b.d
    public void a() {
        h.a().a(this.d, this.f186a ? 50 : 49, this.c.i(this.b));
    }
}
