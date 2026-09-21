package com.igexin.push.a.a;

import com.igexin.push.core.a.f;
import com.igexin.push.core.r;

/* JADX INFO: loaded from: classes.dex */
public class b implements com.igexin.push.g.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f101a = "com.igexin.push.a.a.b";
    private long b = 0;

    @Override // com.igexin.push.g.b.d
    public void a() {
        com.igexin.b.a.c.b.a("start cron-keep task");
        f.a().i();
        r.a().c();
        r.a().f();
        f.a().g();
        f.a().j();
    }

    @Override // com.igexin.push.g.b.d
    public void a(long j) {
        this.b = j;
    }

    @Override // com.igexin.push.g.b.d
    public boolean b() {
        return System.currentTimeMillis() - this.b > 3600000;
    }
}
