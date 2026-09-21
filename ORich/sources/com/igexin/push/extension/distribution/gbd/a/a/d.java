package com.igexin.push.extension.distribution.gbd.a.a;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f326a;
    private PackageManager b = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager();

    private d() {
    }

    public static d a() {
        if (f326a == null) {
            f326a = new d();
        }
        return f326a;
    }

    public void a(Intent intent) {
        String str;
        String strB;
        try {
            if (k.c(b())) {
                j.b("GBD_RPRA", "type " + b() + " in type black list, return.");
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.PACKAGE_ADDED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action)) {
                String dataString = intent.getDataString();
                j.b("GBD_RPRA", "doSample pkgName = " + dataString);
                int iIndexOf = dataString.indexOf(":");
                if (iIndexOf != -1) {
                    boolean z = true;
                    String strSubstring = dataString.substring(iIndexOf + 1);
                    boolean zEquals = "android.intent.action.PACKAGE_ADDED".equals(action);
                    String strA = "-1";
                    if (zEquals) {
                        str = "install";
                        PackageInfo packageInfo = this.b.getPackageInfo(strSubstring, 0);
                        String str2 = packageInfo.versionName;
                        String strValueOf = String.valueOf(packageInfo.versionCode);
                        com.igexin.push.extension.distribution.gbd.b.a aVar = new com.igexin.push.extension.distribution.gbd.b.a();
                        aVar.b("");
                        aVar.a(strSubstring);
                        aVar.c(str2);
                        aVar.d(strValueOf);
                        com.igexin.push.extension.distribution.gbd.c.c.p.put(strSubstring, aVar);
                        strB = strValueOf;
                        strA = str2;
                    } else {
                        str = "uninstall";
                        com.igexin.push.extension.distribution.gbd.b.a aVar2 = com.igexin.push.extension.distribution.gbd.c.c.p.get(strSubstring);
                        if (aVar2 != null) {
                            strA = aVar2.a();
                            strB = aVar2.b();
                            com.igexin.push.extension.distribution.gbd.c.c.p.remove(strSubstring);
                        } else {
                            strB = "-1";
                        }
                    }
                    if (com.igexin.push.core.f.s == null) {
                        return;
                    }
                    String str3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(k.x())) + "|" + com.igexin.push.core.f.s + "|" + com.igexin.push.core.f.f238a + "||" + strSubstring + "|" + str + "|" + strA + "|ANDROID|" + strB + "|" + k.B();
                    if (!com.igexin.push.extension.distribution.gbd.c.a.ap || !k.d(b())) {
                        z = false;
                    }
                    if (z) {
                        j.b("GBD_RPRA", "instant r " + b());
                        com.igexin.push.extension.distribution.gbd.e.a.b.a().a(str3, b());
                        return;
                    }
                    j.b("GBD_RPRA", "not instant r " + b());
                    j.b("GBD_RPRA", "save type = " + b() + ", content = " + str3);
                    com.igexin.push.extension.distribution.gbd.e.a.b.a().b(str3, b());
                }
            }
        } catch (Exception e) {
            j.a(e);
        }
    }

    public int b() {
        return 14;
    }
}
