package com.igexin.push.core.a;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class h implements com.igexin.push.core.e.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Object f150a;
    final /* synthetic */ g b;

    h(g gVar, Object obj) {
        this.b = gVar;
        this.f150a = obj;
    }

    @Override // com.igexin.push.core.e.e
    public void a(boolean z, String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(com.igexin.push.core.f.aC)) {
            com.igexin.push.core.c.h.a().h(str);
        }
        synchronized (this.f150a) {
            this.b.b = false;
            this.f150a.notifyAll();
        }
    }
}
