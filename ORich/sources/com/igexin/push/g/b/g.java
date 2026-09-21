package com.igexin.push.g.b;

import android.os.SystemClock;
import android.text.TextUtils;
import com.igexin.push.core.p;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class g extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static g f431a;
    private long b;
    private long c;

    private g() {
        super(3600000L);
        this.o = true;
        this.b = System.currentTimeMillis();
        this.c = SystemClock.elapsedRealtime();
    }

    public static synchronized g i() {
        if (f431a == null) {
            f431a = new g();
        }
        return f431a;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        long j;
        com.igexin.push.core.a.f.a().k();
        boolean zA = com.igexin.push.util.a.a(System.currentTimeMillis());
        boolean zB = com.igexin.push.util.a.b();
        com.igexin.push.core.f.h = com.igexin.push.util.a.g();
        com.igexin.b.a.c.b.a("RTTask|networkAvailable = " + com.igexin.push.core.f.h + ",sdkOnline = " + com.igexin.push.core.f.l + ", sdkOn= " + com.igexin.push.core.f.i + ", pushOn =" + com.igexin.push.core.f.j + ", isSilentTime= " + zA + ", blockEndTime= " + zB);
        if (!com.igexin.push.core.f.h || !com.igexin.push.core.f.i || !com.igexin.push.core.f.j || com.igexin.push.core.f.l || zA || !zB) {
            com.igexin.b.a.c.b.a("RTTask reconnect timer task stop, connect interval= 1h #######");
            j = 3600000;
        } else {
            if (!com.igexin.push.util.a.h() && TextUtils.isEmpty(com.igexin.push.core.f.s)) {
                a(900000L, TimeUnit.MILLISECONDS);
                com.igexin.b.a.c.b.a("RTTask|date is error, set connect interval = 15min");
                return;
            }
            com.igexin.b.a.c.b.a("RTTask reconnect timer task isOnline = false, try login...");
            if (System.currentTimeMillis() - this.b < 2500) {
                com.igexin.push.core.f.o++;
            }
            if (com.igexin.push.core.f.o > 30 && Math.abs(SystemClock.elapsedRealtime() - this.c) < 72000.0d) {
                com.igexin.push.core.c.h.a().e();
            }
            this.b = System.currentTimeMillis();
            p.a().b();
            j = 1800000;
        }
        a(j, TimeUnit.MILLISECONDS);
    }

    public void a(long j) {
        this.c = j;
    }

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return -2147483641;
    }

    @Override // com.igexin.b.a.d.e
    public void c() {
        super.c();
    }

    @Override // com.igexin.b.a.d.e
    public void d() {
    }

    public void j() {
        long j = com.igexin.push.core.f.D;
        com.igexin.b.a.c.b.a("RTTask|refreshDelayTime, delay = " + j);
        a(j, TimeUnit.MILLISECONDS);
    }
}
