package com.igexin.push.core.e;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f231a;
    final /* synthetic */ e b;
    final /* synthetic */ a c;

    b(a aVar, Context context, e eVar) {
        this.c = aVar;
        this.f231a = context;
        this.b = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.a(this.f231a);
        this.b.a(a.e, a.g = this.c.d());
    }
}
