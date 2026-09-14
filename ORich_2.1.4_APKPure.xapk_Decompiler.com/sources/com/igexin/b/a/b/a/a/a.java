package com.igexin.b.a.b.a.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends com.igexin.b.a.b.e {
    protected volatile boolean e;
    protected volatile b f;
    protected String g;
    protected volatile boolean h;

    public a(int i, String str, com.igexin.b.a.b.b bVar) {
        super(i, str, bVar);
        this.f = b.NORMAL;
        this.h = true;
    }

    @Override // com.igexin.b.a.d.e
    public final void d() {
        super.d();
        this.n = true;
    }

    @Override // com.igexin.b.a.d.e
    protected void e() {
    }

    protected boolean i() {
        return this.f == b.INTERRUPT;
    }
}
