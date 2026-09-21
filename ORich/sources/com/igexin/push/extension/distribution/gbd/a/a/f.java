package com.igexin.push.extension.distribution.gbd.a.a;

import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.igexin.push.extension.distribution.gbd.e.a.g;
import com.igexin.push.extension.distribution.gbd.i.ac;
import com.igexin.push.extension.distribution.gbd.i.i;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private static f b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<PackageInfo> f328a;

    private f() {
        this.f328a = null;
        this.f328a = new ArrayList();
    }

    public static f a() {
        if (b == null) {
            b = new f();
        }
        return b;
    }

    private String a(List<PackageInfo> list, int i) {
        ServiceInfo[] serviceInfoArr;
        String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(k.x()));
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("|");
        sb.append(com.igexin.push.core.f.s);
        sb.append("|");
        sb.append(com.igexin.push.core.f.f238a);
        sb.append("|");
        for (PackageInfo packageInfo : list) {
            try {
                sb.append(packageInfo.packageName);
                sb.append("#");
                sb.append(k.g(packageInfo.packageName, com.igexin.push.extension.distribution.gbd.c.c.f373a));
                sb.append("#");
                sb.append(packageInfo.versionName);
                sb.append("#");
                sb.append(packageInfo.versionCode);
                sb.append("#");
                sb.append(packageInfo.firstInstallTime);
                sb.append("#");
                sb.append(k.a(packageInfo));
                if (com.igexin.push.extension.distribution.gbd.c.a.aI) {
                    sb.append("#");
                    PackageInfo packageInfoF = k.f(packageInfo.packageName, com.igexin.push.extension.distribution.gbd.c.c.f373a);
                    if (packageInfoF != null && (serviceInfoArr = packageInfoF.services) != null && serviceInfoArr.length > 0) {
                        for (int i2 = 0; i2 < serviceInfoArr.length; i2++) {
                            sb.append(serviceInfoArr[i2].name);
                            if (i2 < serviceInfoArr.length - 1) {
                                sb.append("&");
                            }
                        }
                    }
                    sb.append("#");
                    String strC = k.c(packageInfo.packageName, com.igexin.push.extension.distribution.gbd.c.c.f373a);
                    if (!TextUtils.isEmpty(strC)) {
                        sb.append(strC);
                    }
                } else {
                    sb.append("#");
                    sb.append("#");
                }
                sb.append("#");
                sb.append(packageInfo.lastUpdateTime);
                sb.append(",");
            } catch (Throwable th) {
                j.a(th);
            }
        }
        if (sb.toString().endsWith(",")) {
            sb = sb.deleteCharAt(sb.length() - 1);
        }
        sb.append("|");
        sb.append(i);
        sb.append("|");
        sb.append("ANDROID");
        return sb.toString();
    }

    private void a(String str) {
        List<PackageInfo> list = this.f328a;
        if (list != null) {
            list.clear();
        }
        com.igexin.push.extension.distribution.gbd.e.a.b.a().b(str, c());
        j.a("GBD_RTALA", "applist data: type = " + c() + " content = " + str);
    }

    private void a(byte[] bArr) {
        PackageInfo packageInfoE;
        if ((bArr == null || bArr.length <= 0) && (bArr = i.a(e())) == null) {
            return;
        }
        int i = 1;
        for (String str : new String(com.igexin.b.a.b.f.b(ac.a(bArr, "d69998bb013e45f2"))).split("\\r")) {
            if (!TextUtils.isEmpty(str) && (packageInfoE = k.e(str, com.igexin.push.extension.distribution.gbd.c.c.f373a)) != null && (packageInfoE.applicationInfo.flags & 1) == 0 && !a(this.f328a, packageInfoE.packageName)) {
                this.f328a.add(packageInfoE);
                i = 0;
            }
        }
        if (this.f328a.isEmpty()) {
            j.b("GBD_RTALA", "get from server size = 0");
            return;
        }
        String strA = a(this.f328a, i ^ 1);
        j.a("GBD_RTALA", "final data = " + strA);
        a(strA);
    }

    private boolean a(List<PackageInfo> list, String str) {
        Iterator<PackageInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().packageName.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private void d() {
        try {
            if (new File(e()).exists()) {
                a((byte[]) null);
            }
        } catch (Throwable th) {
            j.a(th);
            j.b("GBD_RTALA", th.getMessage());
        }
    }

    private String e() {
        String strA;
        try {
            strA = com.igexin.b.b.a.a("d69998bb013e45f2" + com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageName());
        } catch (Exception e) {
            e = e;
            strA = "d69998bb013e45f2";
        }
        try {
            if (!TextUtils.isEmpty(strA)) {
                strA = strA.substring(10, strA.length() - 10);
            }
        } catch (Exception e2) {
            e = e2;
            j.a(e);
        }
        return com.igexin.push.extension.distribution.gbd.c.c.f373a.getFilesDir().getPath() + Operators.DIV + (TextUtils.isEmpty(strA) ? "d69998bb013e45f2" : strA);
    }

    public void b() {
        try {
            j.b("GBD_RTALA", "doSample");
            if (k.c(c())) {
                j.b("GBD_RTALA", "type " + c() + " in type black list, return.");
                return;
            }
            if (com.igexin.push.extension.distribution.gbd.c.a.bu && !g.a().e()) {
                j.b("GBD_RTALA", "consult enable = false,return.");
                return;
            }
            List<PackageInfo> list = this.f328a;
            if (list != null) {
                list.clear();
            }
            try {
                for (PackageInfo packageInfo : com.igexin.push.extension.distribution.gbd.c.a.as ? k.G() : com.igexin.push.core.f.f.getPackageManager().getInstalledPackages(0)) {
                    if ((packageInfo.applicationInfo.flags & 1) == 0) {
                        this.f328a.add(packageInfo);
                    }
                }
            } catch (Throwable th) {
                j.a(th);
            }
            if (this.f328a.size() > 5) {
                a(a(this.f328a, 0));
            } else {
                d();
            }
        } catch (Throwable th2) {
            j.a(th2);
            j.b("GBD_RTALA", th2.getMessage());
        }
    }

    public int c() {
        return 34;
    }
}
