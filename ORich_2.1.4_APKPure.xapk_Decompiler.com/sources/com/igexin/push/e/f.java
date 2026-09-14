package com.igexin.push.e;

/* JADX INFO: loaded from: classes.dex */
public class f implements i {
    @Override // com.igexin.push.e.i
    public long a() {
        long j;
        long j2;
        boolean zA = com.igexin.push.util.a.a(System.currentTimeMillis());
        boolean zB = com.igexin.push.util.a.b();
        com.igexin.push.core.f.h = com.igexin.push.util.a.g();
        com.igexin.b.a.c.b.a("NormalModel|isSdkOn = " + com.igexin.push.core.f.i + " isPushOn = " + com.igexin.push.core.f.j + " checkIsSilentTime = " + zA + " isBlockEndTime = " + zB + " isNetworkAvailable = " + com.igexin.push.core.f.h);
        if (!com.igexin.push.core.f.h || !com.igexin.push.core.f.i || !com.igexin.push.core.f.j || zA || !zB) {
            com.igexin.b.a.c.b.a("NormalModel|reconnect stop, interval= 1h ++++");
            return 3600000L;
        }
        if (com.igexin.push.core.f.D <= 0) {
            j2 = 100;
        } else {
            long j3 = com.igexin.push.core.f.D;
            long j4 = com.igexin.push.core.f.D;
            if (j3 <= 10000) {
                j = 500;
            } else {
                j4 = com.igexin.push.core.f.D;
                j = j4 <= 30000 ? 1500L : 120000L;
            }
            j2 = j4 + j;
        }
        com.igexin.push.core.f.D = j2;
        if (com.igexin.push.core.f.D > 3600000) {
            com.igexin.push.core.f.D = 3600000L;
        }
        long j5 = com.igexin.push.core.f.D;
        com.igexin.b.a.c.b.a("NormalModel|after add auto reconnect delay time = " + j5);
        return j5;
    }
}
