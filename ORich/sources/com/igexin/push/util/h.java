package com.igexin.push.util;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class h extends com.igexin.push.g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f438a;
    final /* synthetic */ long b;

    h(Context context, long j) {
        this.f438a = context;
        this.b = j;
    }

    @Override // com.igexin.push.g.b
    protected void a() {
        g.b(this.f438a, String.valueOf(this.b));
    }
}
