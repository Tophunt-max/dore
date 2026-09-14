package com.igexin.push.extension.distribution.gbd.a.d;

import android.text.TextUtils;
import com.igexin.push.core.f;
import com.igexin.push.extension.distribution.gbd.c.c;
import com.igexin.push.extension.distribution.gbd.e.a.b;
import com.igexin.push.extension.distribution.gbd.e.a.g;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f359a;

    public static synchronized a a() {
        if (f359a == null) {
            f359a = new a();
        }
        return f359a;
    }

    private void a(String str) {
        if (k.d(c())) {
            j.b("GBD_RCAAction", "instant r " + c());
            b.a().a(str, c());
            return;
        }
        j.b("GBD_RCAAction", "not instant r " + c());
        b.a().b(str, c());
    }

    private String d() {
        try {
            if (TextUtils.isEmpty(f.s)) {
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
            sb.append("getui");
            sb.append("|");
            if (f.x != null) {
                sb.append(f.x);
            }
            sb.append("|");
            String strA = k.a(true);
            if (!TextUtils.isEmpty(strA)) {
                sb.append(strA);
            }
            sb.append("|");
            String strH = k.h();
            if (!TextUtils.isEmpty(strH)) {
                sb.append(strH);
            }
            sb.append("|");
            sb.append("|");
            String strE = e();
            sb.append(strE);
            if (TextUtils.isEmpty(strE)) {
                return null;
            }
            if (sb.toString().endsWith(",")) {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    private String e() {
        if (c.O >= 10000) {
            StringBuilder sb = new StringBuilder();
            sb.append(c.M);
            sb.append((c.N / 1000) + ":" + (c.O / 1000));
            c.M = sb.toString();
            j.b("GBD_RCAAction", "CAD update =  " + c.M);
        }
        String str = c.M;
        c.M = "";
        g.a().e(c.M);
        return str;
    }

    public void b() {
        j.b("GBD_RCAAction", "doSample");
        if (!k.c(c())) {
            String strD = d();
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            a(strD);
            return;
        }
        j.b("GBD_RCAAction", "type " + c() + " in type black list, return.");
    }

    public int c() {
        return 43;
    }
}
