package com.igexin.push.extension.distribution.gbd.a.b;

import android.content.Context;
import android.content.Intent;
import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.el.parse.Operators;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class i {
    private static i d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f336a;
    private long b = 0;
    private SimpleDateFormat c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());

    private i(Context context) {
        this.f336a = context;
    }

    public static i a() {
        if (d == null) {
            d = new i(com.igexin.push.extension.distribution.gbd.c.c.f373a);
        }
        return d;
    }

    private boolean a(String str, Intent intent) {
        if (str.equals("0")) {
            if (!com.igexin.push.extension.distribution.gbd.i.k.a(intent, this.f336a)) {
                return false;
            }
            com.igexin.push.extension.distribution.gbd.i.j.a("GBD_GOSA", "intent start service");
            this.f336a.startService(intent);
            return true;
        }
        if (str.equals(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT)) {
            if (!com.igexin.push.extension.distribution.gbd.i.k.b(intent, this.f336a)) {
                return false;
            }
            com.igexin.push.extension.distribution.gbd.i.j.a("GBD_GOSA", "intent start broadcast");
            this.f336a.sendBroadcast(intent);
            return true;
        }
        if (!str.equals(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_HW) || !com.igexin.push.extension.distribution.gbd.i.k.c(intent, this.f336a)) {
            return false;
        }
        intent.setFlags(268435456);
        com.igexin.push.extension.distribution.gbd.i.j.a("GBD_GOSA", "intent start activity");
        this.f336a.startActivity(intent);
        return true;
    }

    private boolean d() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GOSA", "look enable = " + com.igexin.push.extension.distribution.gbd.c.a.A);
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GOSA", "look service = " + com.igexin.push.extension.distribution.gbd.c.a.C);
        if (com.igexin.push.extension.distribution.gbd.c.a.A && System.currentTimeMillis() - this.b > 360000) {
            return com.igexin.push.extension.distribution.gbd.e.a.g.a().e();
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GOSA", "gurad other service time not meet");
        return false;
    }

    private void e() {
        o.a("none", 0, this.c.format(new Date()), 3);
        this.b = System.currentTimeMillis();
        f();
        g();
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0188  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void f() {
        /*
            Method dump skipped, instruction units count: 409
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.i.f():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void g() {
        /*
            Method dump skipped, instruction units count: 510
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.i.g():void");
    }

    public void b() {
        try {
            String packageName = this.f336a.getPackageName();
            String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.C.split(",");
            if (strArrSplit.length > 0) {
                for (String str : strArrSplit) {
                    String[] strArrSplit2 = str.split(Operators.DIV);
                    if (strArrSplit2.length > 2 && !packageName.equals(strArrSplit2[0])) {
                        try {
                            o.a(strArrSplit2[0] + "," + strArrSplit2[1]);
                        } catch (Throwable th) {
                            com.igexin.push.extension.distribution.gbd.i.j.a(th);
                        }
                    }
                }
            }
            String[] strArrSplit3 = com.igexin.push.extension.distribution.gbd.c.a.D.split(",");
            if (strArrSplit3.length > 0) {
                for (String str2 : strArrSplit3) {
                    String[] strArrSplit4 = str2.split("\\|");
                    if (strArrSplit4.length >= 4) {
                        try {
                            o.a(strArrSplit4[2] + "," + strArrSplit4[3].split(Operators.DIV)[0]);
                        } catch (Throwable th2) {
                            com.igexin.push.extension.distribution.gbd.i.j.a(th2);
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th3);
        }
    }

    public void c() {
        try {
            boolean zD = d();
            boolean zL = com.igexin.push.extension.distribution.gbd.i.k.l(this.f336a);
            boolean zA = r.a("third");
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GOSA", "isGuardService = " + zD + ", isGuardSafe = " + zL + ", isBrandSdkRomEnable = " + zA);
            if (zD && zL && zA) {
                e();
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }
}
