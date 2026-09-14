package com.igexin.push.extension.distribution.basic.h;

import com.igexin.push.extension.distribution.basic.c.d;
import com.igexin.push.extension.distribution.basic.c.g;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {
    public a() {
        a(System.currentTimeMillis());
    }

    @Override // com.igexin.push.extension.distribution.basic.h.b
    public void a() throws Throwable {
        d.a().e();
    }

    @Override // com.igexin.push.extension.distribution.basic.h.b
    public void a(long j) {
        this.f313a = j;
    }

    @Override // com.igexin.push.extension.distribution.basic.h.b
    public boolean b() {
        return System.currentTimeMillis() - this.f313a > ((long) (g.e * 1000));
    }
}
