package com.igexin.push.util;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f439a;
    final /* synthetic */ long b;

    i(Context context, long j) {
        this.f439a = context;
        this.b = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        g.b(this.f439a, String.valueOf(this.b));
    }
}
