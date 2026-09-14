package com.igexin.push.core.d;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
class c extends TimerTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f223a;

    c(b bVar) {
        this.f223a = bVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        com.igexin.push.core.a.f.a().a(this.f223a.g, this.f223a.h, this.f223a.i);
        this.f223a.h.a(this.f223a.h.a() + 1);
    }
}
