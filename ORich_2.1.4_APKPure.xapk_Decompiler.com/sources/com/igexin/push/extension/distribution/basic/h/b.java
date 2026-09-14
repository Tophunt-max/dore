package com.igexin.push.extension.distribution.basic.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected long f313a = 0;
    protected long b = 0;

    public abstract void a();

    public void a(long j) {
        this.f313a = j;
    }

    public boolean b() {
        return System.currentTimeMillis() - this.f313a > this.b;
    }
}
