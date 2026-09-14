package com.igexin.b.a.d;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements com.igexin.b.a.d.a.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f90a = true;

    public void a() {
        this.f90a = false;
    }

    @Override // com.igexin.b.a.d.a.f
    public boolean a(long j, e eVar) {
        return TimeUnit.SECONDS.toMillis((long) eVar.y) < j - eVar.w;
    }

    @Override // com.igexin.b.a.d.a.f
    public long b(long j, e eVar) {
        return (TimeUnit.SECONDS.toMillis(eVar.y) + eVar.w) - j;
    }
}
