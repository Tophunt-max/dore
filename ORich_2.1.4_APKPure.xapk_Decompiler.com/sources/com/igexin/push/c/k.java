package com.igexin.push.c;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class k extends com.igexin.push.g.b.h {
    private static k c;
    private boolean e;
    private static final String b = "DT_" + k.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f119a = new AtomicBoolean(false);

    private k() {
        super(10L);
        this.o = true;
    }

    public static synchronized k c_() {
        if (c == null) {
            c = new k();
        }
        return c;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        a(f.f114a, TimeUnit.MILLISECONDS);
        if (this.e) {
            com.igexin.b.a.c.b.a(b + "|detect task already stop");
            return;
        }
        StringBuilder sb = new StringBuilder();
        String str = b;
        sb.append(str);
        sb.append("|");
        sb.append(f.f114a / 1000);
        sb.append("s passed, do task method, start redect ~~~~");
        com.igexin.b.a.c.b.a(sb.toString());
        com.igexin.push.core.f.h = com.igexin.push.util.a.g();
        if (com.igexin.push.core.f.h) {
            i.a().c();
            return;
        }
        com.igexin.b.a.c.b.a(str + "|" + (f.f114a / 1000) + "s passed, network is unavailable, stop ###");
    }

    public void a(long j) {
        a(j, TimeUnit.MILLISECONDS);
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 20150607;
    }

    public void d_() {
        this.o = false;
        this.e = true;
        p();
    }
}
