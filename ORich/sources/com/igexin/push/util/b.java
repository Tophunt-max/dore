package com.igexin.push.util;

import android.content.Context;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f434a;
    final /* synthetic */ String b;

    b(Context context, String str) {
        this.f434a = context;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Toast.makeText(this.f434a, this.b, 1).show();
    }
}
