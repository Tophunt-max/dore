package com.igexin.b.a.d;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class i implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AtomicInteger f97a = new AtomicInteger(0);
    final /* synthetic */ g b;

    public i(g gVar) {
        this.b = gVar;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "TS-pool-" + this.f97a.incrementAndGet());
    }
}
