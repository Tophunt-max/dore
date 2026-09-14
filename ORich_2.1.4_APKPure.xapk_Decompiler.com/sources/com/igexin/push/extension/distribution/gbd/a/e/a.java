package com.igexin.push.extension.distribution.gbd.a.e;

import android.os.Build;
import android.text.TextUtils;
import com.igexin.push.core.f;
import com.igexin.push.extension.distribution.gbd.c.c;
import com.igexin.push.extension.distribution.gbd.e.a.b;
import com.igexin.push.extension.distribution.gbd.e.a.g;
import com.igexin.push.extension.distribution.gbd.i.al;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import com.igexin.push.extension.distribution.gbd.i.w;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static a b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f360a = false;

    public static synchronized a a() {
        if (b == null) {
            b = new a();
        }
        return b;
    }

    private void a(String str) {
        if (k.d(c())) {
            j.b("GBD_LFAction", "instant r " + c());
            b.a().a(str, c());
            return;
        }
        j.b("GBD_LFAction", "not instant r " + c());
        b.a().b(str, c());
    }

    private void a(StringBuilder sb) {
        if (Build.VERSION.SDK_INT >= 29) {
            return;
        }
        sb.append(k.a(false));
    }

    private void a(StringBuilder sb, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            return;
        }
        sb.append(k.b(false));
    }

    private void b(StringBuilder sb, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            return;
        }
        String strC = al.c(c.f373a);
        if (!TextUtils.isEmpty(strC)) {
            sb.append(strC);
        }
        String strC2 = al.c(i, c.f373a);
        if (!TextUtils.isEmpty(strC2)) {
            sb.append("#");
            sb.append(strC2);
        }
        String strC3 = al.c(i2, c.f373a);
        if (TextUtils.isEmpty(strC3)) {
            return;
        }
        if (TextUtils.isEmpty(strC2)) {
            sb.append("#");
        }
        sb.append(",");
        sb.append(strC3);
    }

    private void d() {
        String strE = e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        a(strE);
    }

    private String e() {
        try {
            if (f.s == null) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(k.x())));
            sb.append("|");
            sb.append(f.s);
            sb.append("|");
            if (f.f238a != null) {
                sb.append(f.f238a);
            }
            sb.append("|");
            sb.append("ANDROID");
            sb.append("|");
            a(sb);
            sb.append("|");
            int iD = al.d(0, c.f373a);
            int iD2 = al.d(1, c.f373a);
            a(sb, iD, iD2);
            sb.append("|");
            if (f.x != null) {
                sb.append(f.x);
            }
            sb.append("|");
            if (c.u != null) {
                sb.append(c.u);
            }
            sb.append("|");
            if (c.v != null) {
                sb.append(c.v);
            }
            sb.append(Operators.OR);
            String strH = k.h();
            if (!TextUtils.isEmpty(strH)) {
                sb.append(strH);
            }
            sb.append("|");
            sb.append("|");
            if (f.e != null) {
                sb.append(f.e);
            }
            sb.append("|");
            if (Build.BRAND != null) {
                sb.append(Build.BRAND);
            }
            sb.append("|");
            sb.append(k.s());
            sb.append("|");
            if (Build.MODEL != null) {
                sb.append(Build.MODEL);
            }
            sb.append("|");
            sb.append("|||");
            sb.append(k.p() ? 1 : 0);
            sb.append("|");
            sb.append("|");
            String strH2 = h();
            if (!TextUtils.isEmpty(strH2)) {
                sb.append(strH2);
            }
            sb.append("|");
            sb.append(k.j(c.f373a));
            sb.append("|");
            String strK = k();
            if (TextUtils.isEmpty(strK)) {
                strK = "";
            }
            sb.append(strK);
            sb.append("|");
            b(sb, iD, iD2);
            sb.append("|");
            sb.append(i());
            sb.append("|");
            sb.append(j());
            sb.append("|");
            String strA = k.A();
            if (!TextUtils.isEmpty(strA)) {
                sb.append(strA);
            }
            sb.append("|");
            try {
                LinkedHashMap<Long, Long> linkedHashMapZ = k.z();
                if (linkedHashMapZ != null && linkedHashMapZ.size() > 0) {
                    for (Map.Entry<Long, Long> entry : linkedHashMapZ.entrySet()) {
                        sb.append(entry.getKey());
                        sb.append(",");
                        sb.append(entry.getValue());
                        sb.append("#");
                    }
                    if (sb.toString().endsWith("#")) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                }
            } catch (Throwable th) {
                j.a(th);
            }
            sb.append("|");
            String strG = g();
            if (!TextUtils.isEmpty(strG)) {
                sb.append(strG);
            }
            sb.append("|");
            j.b("GBD_LFAction", "getlm type = " + c());
            String strI = k.i();
            if (!TextUtils.isEmpty(strI)) {
                sb.append(strI);
            }
            sb.append("|");
            String strF = f();
            if (!TextUtils.isEmpty(strF)) {
                sb.append(strF);
            }
            sb.append("|");
            String strA2 = k.a(c.f373a.getPackageName(), false);
            if (!TextUtils.isEmpty(strA2)) {
                sb.append(strA2);
            }
            sb.append("|");
            sb.append("|");
            sb.append("|");
            if (com.igexin.push.extension.distribution.gbd.c.a.bw) {
                sb.append(k.j());
            }
            sb.append("|");
            if (k.C()) {
                sb.append(w.a().b());
            }
            sb.append("|");
            j.b("GBD_LFAction", Operators.SPACE_STR + sb.substring(sb.length() - 100));
            return sb.toString();
        } catch (Throwable th2) {
            j.a(th2);
            return null;
        }
    }

    private String f() {
        byte[] bArrH;
        try {
            String str = "/sdcard/libs//" + c.f373a.getPackageName() + ".bin";
            if (new File(str).exists() && (bArrH = k.h(str)) != null) {
                return new String(com.igexin.b.b.a.c(bArrH));
            }
        } catch (Throwable th) {
            j.a(th);
        }
        return null;
    }

    private String g() {
        if (TextUtils.isEmpty(c.I)) {
            return null;
        }
        String str = c.I;
        c.H = 0;
        c.I = "";
        g.a().a(c.H);
        g.a().d(c.I);
        j.b("GBD_LFAction", "read shutdown data : " + str);
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0081 A[Catch: all -> 0x014f, TryCatch #0 {all -> 0x014f, blocks: (B:3:0x0004, B:5:0x000e, B:7:0x001d, B:10:0x002a, B:11:0x0049, B:13:0x004f, B:15:0x005c, B:18:0x0061, B:20:0x0069, B:22:0x006e, B:25:0x0079, B:28:0x0081, B:30:0x0084, B:32:0x008d, B:34:0x0091, B:37:0x009d, B:41:0x00a4, B:43:0x00a7, B:45:0x00b0, B:47:0x00b4, B:50:0x00c0, B:54:0x00c7, B:56:0x00ca, B:58:0x00d3, B:60:0x00d7, B:63:0x00e3, B:68:0x00ec, B:69:0x00f1, B:71:0x00f7, B:72:0x0100, B:74:0x0106, B:77:0x0110, B:78:0x0122, B:80:0x013c, B:79:0x0126, B:81:0x013f, B:6:0x0013), top: B:86:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4 A[Catch: all -> 0x014f, TryCatch #0 {all -> 0x014f, blocks: (B:3:0x0004, B:5:0x000e, B:7:0x001d, B:10:0x002a, B:11:0x0049, B:13:0x004f, B:15:0x005c, B:18:0x0061, B:20:0x0069, B:22:0x006e, B:25:0x0079, B:28:0x0081, B:30:0x0084, B:32:0x008d, B:34:0x0091, B:37:0x009d, B:41:0x00a4, B:43:0x00a7, B:45:0x00b0, B:47:0x00b4, B:50:0x00c0, B:54:0x00c7, B:56:0x00ca, B:58:0x00d3, B:60:0x00d7, B:63:0x00e3, B:68:0x00ec, B:69:0x00f1, B:71:0x00f7, B:72:0x0100, B:74:0x0106, B:77:0x0110, B:78:0x0122, B:80:0x013c, B:79:0x0126, B:81:0x013f, B:6:0x0013), top: B:86:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String h() {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.e.a.h():java.lang.String");
    }

    private String i() {
        String[] strArrSplit;
        int length;
        int i;
        if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bc)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        try {
            strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.bc.split(",");
            length = strArrSplit.length;
            i = 0;
        } catch (Throwable th) {
            j.a(th);
        }
        while (true) {
            int i2 = 1;
            if (i >= length) {
                break;
            }
            String str = strArrSplit[i];
            sb.append(str);
            sb.append("#");
            String str2 = "android.permission." + str;
            sb.append(k.b(c.f373a, str2) ? 1 : 0);
            sb.append("#");
            if (!k.a(c.f373a, str2)) {
                i2 = 0;
            }
            sb.append(i2);
            sb.append(",");
            i++;
            return sb.toString();
        }
        if (sb.length() > 0 && sb.toString().endsWith(",")) {
            sb = sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    private String j() {
        StringBuilder sb = new StringBuilder();
        try {
            int i = 1;
            sb.append(k.h(c.f373a) ? 1 : 0);
            sb.append(",");
            if (k.a(c.f373a, "android.permission.BLUETOOTH")) {
                if (!k.m()) {
                    i = 0;
                }
                sb.append(i);
            } else {
                sb.append("-1");
            }
        } catch (Throwable th) {
            j.a(th);
        }
        return sb.toString();
    }

    private String k() {
        try {
            return Locale.getDefault().getLanguage();
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public void b() {
        String strF;
        j.b("GBD_LFAction", "doSample");
        if (k.c(c())) {
            j.b("GBD_LFAction", "type " + c() + " in type black list, return.");
            return;
        }
        String strG = null;
        try {
            strF = k.f(c.f373a);
        } catch (Throwable th) {
            j.a(th);
            strF = null;
        }
        try {
            strG = k.g(c.f373a);
        } catch (Exception e) {
            j.a(e);
        }
        if (c.u != null ? !c.u.equals(strF) : strF != null) {
            c.u = strF;
            g.a().c();
        }
        if (c.v != null ? !c.v.equals(strG) : strG != null) {
            c.v = strG;
            g.a().d();
        }
        try {
            d();
        } catch (Throwable th2) {
            j.a(th2);
        }
    }

    public int c() {
        return 31;
    }
}
