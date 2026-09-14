package com.igexin.push.core;

import android.app.Service;

/* JADX INFO: loaded from: classes.dex */
class t implements com.igexin.push.util.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Service f257a;
    final /* synthetic */ s b;

    t(s sVar, Service service) {
        this.b = sVar;
        this.f257a = service;
    }

    @Override // com.igexin.push.util.f
    public void a(boolean z) {
        com.igexin.b.a.c.b.a("ServiceManager|load so error, report bi result = " + z + " ###########");
        this.f257a.stopSelf();
    }
}
