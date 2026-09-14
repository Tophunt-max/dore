package com.igexin.push.core;

/* JADX INFO: loaded from: classes.dex */
public class j {
    private static j d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f246a = 240000;
    private m b = m.DETECT;
    private long c = 0;

    private j() {
    }

    public static j a() {
        if (d == null) {
            d = new j();
        }
        return d;
    }

    private void b(l lVar) {
        m mVar;
        int i = k.b[lVar.ordinal()];
        if (i == 1) {
            a(Math.min(this.f246a + 60000, 420000L));
        } else {
            if (i == 2 || i == 3) {
                long j = this.c + 1;
                this.c = j;
                if (j >= 2) {
                    a(Math.max(this.f246a - 60000, 240000L));
                    mVar = m.STABLE;
                    a(mVar);
                }
                return;
            }
            if (i != 4) {
                return;
            } else {
                a(240000L);
            }
        }
        mVar = m.DETECT;
        a(mVar);
    }

    private void c(l lVar) {
        m mVar;
        int i = k.b[lVar.ordinal()];
        if (i == 1) {
            mVar = m.STABLE;
        } else if (i == 2 || i == 3) {
            a(Math.max(this.f246a - 60000, 240000L));
            long j = this.c + 1;
            this.c = j;
            if (j < 2) {
                return;
            }
            a(240000L);
            mVar = m.PENDING;
        } else {
            if (i != 4) {
                return;
            }
            a(240000L);
            mVar = m.DETECT;
        }
        a(mVar);
    }

    private void d(l lVar) {
        m mVar;
        int i = k.b[lVar.ordinal()];
        if (i == 1) {
            a(240000L);
            mVar = m.DETECT;
        } else if (i == 2 || i == 3) {
            mVar = m.PENDING;
        } else {
            if (i != 4) {
                return;
            }
            a(240000L);
            mVar = m.DETECT;
        }
        a(mVar);
    }

    public void a(long j) {
        this.f246a = j;
    }

    public void a(l lVar) {
        int i = k.f247a[this.b.ordinal()];
        if (i == 1) {
            b(lVar);
        } else if (i == 2) {
            c(lVar);
        } else {
            if (i != 3) {
                return;
            }
            d(lVar);
        }
    }

    public void a(m mVar) {
        this.b = mVar;
        this.c = 0L;
    }

    public long b() {
        long j = this.f246a;
        if (com.igexin.push.config.k.d > 0) {
            j = com.igexin.push.config.k.d * 1000;
        }
        if (f.h && f.l && e.a().g().a()) {
            return j;
        }
        return 3600000L;
    }
}
