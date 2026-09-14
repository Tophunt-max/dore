package com.igexin.push.extension.distribution.basic.a.a;

/* JADX INFO: loaded from: classes.dex */
class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f286a;
    final /* synthetic */ a b;

    b(a aVar, boolean z) {
        this.b = aVar;
        this.f286a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        c.a().a(this.f286a);
    }
}
