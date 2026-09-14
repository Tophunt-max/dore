package com.igexin.push.config;

/* JADX INFO: loaded from: classes.dex */
class g extends com.igexin.push.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f132a;
    final /* synthetic */ a b;

    g(a aVar, String str) {
        this.b = aVar;
        this.f132a = str;
    }

    @Override // com.igexin.push.b.d
    public void a() {
        this.b.a(this.d, 26, com.igexin.b.a.a.a.d(this.f132a.getBytes(), com.igexin.push.core.f.B));
    }
}
