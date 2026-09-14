package com.igexin.push.a.a;

import com.igexin.push.config.k;

/* JADX INFO: loaded from: classes.dex */
public class d implements com.igexin.push.g.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f103a = "com.igexin.push.a.a.d";
    private long b = 0;
    private long c = 0;

    private void c() {
        com.igexin.b.a.b.c.b().a(new e(this), false, true);
    }

    @Override // com.igexin.push.g.b.d
    public void a() {
        if (!k.v || System.currentTimeMillis() - this.c < 3600000) {
            return;
        }
        c();
        this.c = System.currentTimeMillis();
    }

    @Override // com.igexin.push.g.b.d
    public void a(long j) {
        this.b = j;
    }

    @Override // com.igexin.push.g.b.d
    public boolean b() {
        return System.currentTimeMillis() - this.b > 1800000;
    }
}
