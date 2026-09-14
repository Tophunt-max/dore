package com.igexin.push.f;

import com.igexin.b.a.b.a.a.m;
import com.igexin.b.a.b.a.a.q;
import com.igexin.b.a.b.c;
import com.igexin.b.a.c.b;
import com.igexin.push.config.SDKUrlConfig;
import com.igexin.push.core.f;
import com.igexin.push.core.j;
import com.igexin.push.core.l;
import com.igexin.push.e.c.e;
import com.igexin.push.e.c.i;
import com.igexin.push.e.c.k;
import com.igexin.push.e.h;
import com.igexin.push.g.b.g;
import com.igexin.push.util.EncryptUtils;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f421a = "com.igexin.push.f.a";
    private boolean b;

    private void b(boolean z) {
        b.a(f421a + "|call setActive, param active = " + z + "; this.active = " + this.b);
        boolean z2 = this.b;
        if (z2 == z) {
            if (!z2 || f.l || f.D <= 1500) {
                return;
            }
            b.a(f421a + "|start active again, online = false, reset delay");
            f.D = 0L;
            d();
            return;
        }
        this.b = z;
        if (z) {
            b.a(f421a + "|active = true, start connect~~~~");
            e();
            return;
        }
        b.a(f421a + "|active = false, disconnect...");
        a(true);
    }

    public int a(String str, e eVar) {
        return a(str, eVar, false);
    }

    public int a(String str, e eVar, boolean z) {
        if (str == null || eVar == null) {
            return -1;
        }
        if (f.l || (eVar instanceof i) || (eVar instanceof k) || (eVar instanceof com.igexin.push.e.c.f)) {
            if (!this.b) {
                return 0;
            }
            if (z) {
                return c.b().a(SDKUrlConfig.getCmAddress(), 3, com.igexin.push.core.e.a().f(), eVar, true, com.igexin.push.config.k.e > 0 ? com.igexin.push.config.k.e : 10, new h()) == null ? -2 : 0;
            }
            return c.b().a(SDKUrlConfig.getCmAddress(), 3, com.igexin.push.core.e.a().f(), eVar, true) == null ? -2 : 0;
        }
        b.a("networkLayer|sendData|not online|" + eVar.getClass().getName());
        return -3;
    }

    public void a(q qVar) {
        c cVarB;
        Object aVar;
        if (qVar == q.TCP_IO_EXCEPTION) {
            cVarB = c.b();
            aVar = new com.igexin.push.e.b.b();
        } else {
            if (qVar != q.TCP_DISCONNECT_SUCCESS) {
                return;
            }
            cVarB = c.b();
            aVar = new com.igexin.push.e.b.a();
        }
        cVarB.a(aVar);
        c.b().c();
    }

    public void a(e eVar) {
        if (eVar == null) {
            return;
        }
        com.igexin.push.core.a.f.a().a(eVar);
    }

    public void a(boolean z) {
        b.a(f421a + "|call -> disconnect, reset delay = " + z);
        if (z) {
            f.D = 0L;
        }
        com.igexin.b.a.b.a.a.f.a().c();
    }

    public boolean a() {
        return this.b;
    }

    public void b() {
        boolean z = f.i;
        boolean z2 = f.j;
        boolean zA = com.igexin.push.util.a.a(System.currentTimeMillis());
        boolean zB = com.igexin.push.util.a.b();
        if (z && z2 && !zA && zB) {
            b(true);
        }
    }

    public void c() {
        b.a(f421a + "|stop by user");
        b(false);
        if (f.l) {
            f.l = false;
            com.igexin.push.core.a.a().b();
        }
    }

    public void d() {
        f.D = com.igexin.push.e.b.a().c().a();
        g.i().j();
    }

    public void e() {
        b.a(f421a + "|call -> tryConnect and reset delay = 0");
        a(true);
    }

    public void f() {
        StringBuilder sb;
        String str;
        com.igexin.push.c.i.a().d().c();
        com.igexin.push.c.a aVarD = com.igexin.push.c.i.a().d();
        j.a().a(l.NETWORK_ERROR);
        aVarD.i();
        if (h()) {
            sb = new StringBuilder();
            sb.append(f421a);
            str = "|sdkOn = false or pushOn = false, disconect|user";
        } else {
            sb = new StringBuilder();
            sb.append(f421a);
            str = "|disconnect by network";
        }
        sb.append(str);
        b.a(sb.toString());
        c.b().a(m.class);
        a(false);
    }

    public void g() {
        StringBuilder sb;
        String str;
        com.igexin.push.e.a.b.b = -1;
        if (!EncryptUtils.isLoadSuccess()) {
            sb = new StringBuilder();
            sb.append(f421a);
            str = "|so error ++++++++";
        } else if (f.ay) {
            d();
            return;
        } else {
            sb = new StringBuilder();
            sb.append(f421a);
            str = "|initSuccess = false";
        }
        sb.append(str);
        b.a(sb.toString());
    }

    public boolean h() {
        return (f.i && f.j) ? false : true;
    }

    public void i() {
        j.a().a(l.NETWORK_SWITCH);
        boolean zG = com.igexin.push.util.a.g();
        b.a(f421a + "|network changed, available = " + zG + ", last = " + f.h);
        com.igexin.push.e.b.a().b();
        if (!zG) {
            b.a(f421a + "|network changed, available = false, do nothing");
        } else if (!f.h) {
            b.a(f421a + "|network changed, try connect reset delay");
            e();
        }
        if (zG) {
            com.igexin.push.c.i.a().c();
        }
        f.h = zG;
    }
}
