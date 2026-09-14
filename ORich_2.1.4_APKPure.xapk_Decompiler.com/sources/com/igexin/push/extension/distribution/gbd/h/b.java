package com.igexin.push.extension.distribution.gbd.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected long f396a = 0;
    protected long b = 0;

    public abstract void a();

    public void a(long j) {
        this.f396a = j;
    }

    public boolean b() {
        return System.currentTimeMillis() - this.f396a > this.b;
    }

    public abstract boolean c();

    public abstract int d();
}
