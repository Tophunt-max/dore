package com.igexin.push.g.b;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class h extends com.igexin.b.a.d.e {
    long d;

    public h(long j) {
        this(0L, j);
    }

    public h(long j, long j2) {
        super(5);
        j2 = j > 0 ? j2 + (j - System.currentTimeMillis()) : j2;
        this.d = j2;
        a(j2, TimeUnit.MILLISECONDS);
    }

    protected abstract void a();

    @Override // com.igexin.b.a.d.e
    public final void b_() {
        super.b_();
        a();
    }

    @Override // com.igexin.b.a.d.e
    protected void e() {
    }
}
