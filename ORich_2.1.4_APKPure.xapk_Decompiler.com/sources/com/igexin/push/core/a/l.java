package com.igexin.push.core.a;

import android.text.TextUtils;
import com.igexin.push.config.SDKUrlConfig;
import com.igexin.push.core.c.aj;
import io.dcloud.WebAppActivity;

/* JADX INFO: loaded from: classes.dex */
public class l extends a {
    private void b() throws Throwable {
        com.igexin.push.e.b.a().f();
        com.igexin.b.a.c.b.a("loginRsp|" + com.igexin.push.core.f.s + "|success");
        StringBuilder sb = new StringBuilder();
        sb.append("isCidBroadcasted|");
        sb.append(com.igexin.push.core.f.m);
        com.igexin.b.a.c.b.a(sb.toString());
        if (!com.igexin.push.core.f.m) {
            com.igexin.push.core.a.a().c();
            com.igexin.push.core.f.m = true;
        }
        com.igexin.push.core.f.l = true;
        com.igexin.push.core.a.a().b();
        f.a().d();
        if (TextUtils.isEmpty(com.igexin.push.core.f.x)) {
            com.igexin.b.a.c.b.a("LoginResultAction device id is empty, get device id from server +++++");
            f.a().e();
        }
        com.igexin.push.util.g.f();
        if (com.igexin.push.util.t.a(com.igexin.push.core.f.f)) {
            e();
        }
        a();
        d();
        com.igexin.push.core.c.h.a().b();
        f();
        g();
        h();
    }

    private void c() {
        com.igexin.b.a.c.b.a("loginRsp|" + com.igexin.push.core.f.s + "|failed");
        com.igexin.b.a.c.b.a("LoginResultAction login failed, clear session or cid");
        com.igexin.push.core.c.h.a().c();
        com.igexin.push.core.p.a().c();
    }

    private void d() {
        try {
            if ((System.currentTimeMillis() - com.igexin.push.core.f.I) - 86400000 > 0) {
                com.igexin.b.a.b.c.b().a(new com.igexin.push.g.a.c(new com.igexin.push.core.d.f(SDKUrlConfig.getConfigServiceUrl())), false, true);
            }
        } catch (Exception unused) {
        }
    }

    private void e() {
        if ((System.currentTimeMillis() - com.igexin.push.core.f.G) - 259200000 < 0 || !com.igexin.push.config.k.g) {
            return;
        }
        com.igexin.b.a.b.c.b().a(new n(this), false, true);
    }

    private void f() {
        if (com.igexin.push.core.f.s.equals(com.igexin.push.core.f.t)) {
            return;
        }
        com.igexin.push.core.f.t = com.igexin.push.core.f.s;
    }

    private void g() {
        try {
            if (System.currentTimeMillis() - com.igexin.push.core.f.K > 86400000) {
                com.igexin.push.core.c.h.a().g(System.currentTimeMillis());
                aj.a().b("21");
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("LoginResultAction|report third party guard exception :" + th.toString());
        }
    }

    private void h() {
        if (com.igexin.assist.sdk.a.c(com.igexin.push.core.f.f)) {
            com.igexin.b.a.b.c.b().a(new o(this), false, true);
        }
    }

    public void a() {
        boolean z = (System.currentTimeMillis() - com.igexin.push.core.f.F) - 86400000 > 0;
        boolean z2 = !com.igexin.b.b.a.a(com.igexin.push.core.f.z, com.igexin.push.core.f.y);
        boolean zEquals = true ^ com.igexin.push.core.f.s.equals(com.igexin.push.core.f.t);
        if (z || z2 || zEquals) {
            if (!TextUtils.isEmpty(com.igexin.push.core.f.x)) {
                f.a().f();
                return;
            }
            if (com.igexin.push.core.f.ap != null) {
                com.igexin.push.core.f.ap.t();
                com.igexin.push.core.f.ap = null;
            }
            com.igexin.push.core.f.ap = new m(this, WebAppActivity.SPLASH_SECOND);
            com.igexin.push.core.e.a().a(com.igexin.push.core.f.ap);
        }
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(com.igexin.b.a.d.e eVar) {
        return false;
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(Object obj) throws Throwable {
        if (!(obj instanceof com.igexin.push.e.c.m)) {
            return true;
        }
        com.igexin.push.core.f.D = 0L;
        if (com.igexin.push.core.f.l) {
            return true;
        }
        com.igexin.push.c.i.a().d().h();
        if (((com.igexin.push.e.c.m) obj).f277a) {
            b();
            return true;
        }
        c();
        return true;
    }
}
