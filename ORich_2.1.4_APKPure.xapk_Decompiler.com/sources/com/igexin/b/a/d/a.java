package com.igexin.b.a.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements com.igexin.b.a.d.a.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f88a;
    private long b;
    protected String l = getClass().getName();

    @Override // com.igexin.b.a.d.a.e
    public void b(boolean z) {
        this.f88a = !z;
    }

    @Override // com.igexin.b.a.d.a.e
    public boolean l() {
        return this.f88a;
    }

    @Override // com.igexin.b.a.d.a.e
    public long m() {
        return this.b;
    }
}
