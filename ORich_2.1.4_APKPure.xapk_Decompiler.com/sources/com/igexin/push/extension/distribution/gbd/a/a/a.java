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
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f323a;
    private List<PackageInfo> b = new ArrayList();
    private List<String> c = new ArrayList();

    private a() {
    }

    public static synchronized a a() {
        if (f323a == null) {
            f323a = new a();
        }
        return f323a;
    }

    private String a(List<PackageInfo> list, int i) {
        ServiceInfo[] serviceInfoArr;
        String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(k.x()));
        if (this.c == null) {
            this.c = new ArrayList();
        }
        this.c.clear();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("|");
        sb.append(com.igexin.push.core.f.s);
        sb.append("|");
        sb.append(com.igexin.push.core.f.f238a);
        sb.append("|");
        Iterator<PackageInfo> it = list.iterator();
        while (true) {
            int i2 = 1;
            if (!it.hasNext()) {
                break;
            }
            PackageInfo next = it.next();
            try {
                if (k.e(next.packageName)) {
                    this.c.add(next.packageName);
                }
                sb.append(next.packageName);
                sb.append("#");
                sb.append(k.g(next.packageName, com.igexin.push.extension.distribution.gbd.c.c.f373a));
                sb.append("#");
                sb.append(next.versionName);
                sb.append("#");
                sb.append(next.versionCode);
                sb.append("#");
                sb.append(next.firstInstallTime);
                sb.append("#");
                sb.append(k.a(next));
                if (com.igexin.push.extension.distribution.gbd.c.a.aI) {
                    sb.append("#");
                    PackageInfo packageInfoF = k.f(next.packageName, com.igexin.push.extension.distribution.gbd.c.c.f373a);
                    if (packageInfoF != null && (serviceInfoArr = packageInfoF.services) != null && serviceInfoArr.length > 0) {
                        for (int i3 = 0; i3 < serviceInfoArr.length; i3++) {
                            sb.append(serviceInfoArr[i3].name);
                            if (i3 < serviceInfoArr.length - 1) {
                                sb.append("&");
                            }
                        }
                    }
                    sb.append("#");
                    String strC = k.c(next.packageName, com.igexin.push.extension.distribution.gbd.c.c.f373a);
                    if (!TextUtils.isEmpty(strC)) {
                        sb.append(strC);
                    }
                } else {
                    sb.append("#");
                    sb.append("#");
                }
                sb.append("#");
                sb.append(next.lastUpdateTime);
                sb.append("#");
                if (!((next.applicationInfo.flags & 2) > 0)) {
                    i2 = 0;
                }
                sb.append(i2);
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
        sb.append("|");
        sb.append(k.B());
        return sb.toString();
    }

    private void a(String str) {
        List<String> list = this.c;
        if (list != null && !list.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = this.c.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append("&");
            }
            if (sb.toString().endsWith("&")) {
                sb.deleteCharAt(sb.length() - 1);
            }
            j.b("GBD_RALA", "gt list from 28 = " + sb.toString());
            g.a().a(sb.toString());
        }
        List<PackageInfo> list2 = this.b;
        if (list2 != null) {
            list2.clear();
        }
        if (k.d(c())) {
            j.b("GBD_RALA", "instant r " + c());
            com.igexin.push.extension.distribution.gbd.e.a.b.a().a(str, c());
        } else {
            j.b("GBD_RALA", "not instant r " + c());
            com.igexin.push.extension.distribution.gbd.e.a.b.a().b(str, c());
        }
        j.a("GBD_RALA", "applist data: type = " + c() + " content = " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(byte[] bArr) {
        PackageInfo packageInfoE;
        if ((bArr == null || bArr.length <= 0) && (bArr = i.a(f())) == null) {
            j.b("GBD_RALA", "read form local list = null");
            a(a(this.b, 0));
            return;
        }
        String[] strArrSplit = new String(com.igexin.b.a.b.f.b(ac.a(bArr, "d69998bb013e45f2"))).split("\\r");
        j.b("GBD_RALA", "rf local al len = " + strArrSplit.length);
        for (String str : strArrSplit) {
            if (!TextUtils.isEmpty(str) && (packageInfoE = k.e(str, com.igexin.push.extension.distribution.gbd.c.c.f373a)) != null && (1 & packageInfoE.applicationInfo.flags) == 0 && !a(this.b, packageInfoE.packageName)) {
                this.b.add(packageInfoE);
            }
        }
        if (this.b.isEmpty()) {
            j.b("GBD_RALA", "get from server size = 0");
        } else {
            a(a(this.b, 1));
        }
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
            String strF = f();
            boolean z = System.currentTimeMillis() - com.igexin.push.extension.distribution.gbd.c.c.al > 86400000;
            boolean zE = k.e(com.igexin.push.extension.distribution.gbd.c.c.f373a);
            j.b("GBD_RALA", "d al, isNetworkConnected = " + zE);
            if (zE && z && (!new File(strF).exists() || com.igexin.push.extension.distribution.gbd.c.a.aX)) {
                j.b("GBD_RALA", "start d al.");
                e();
            } else {
                j.b("GBD_RALA", "apl old file exist");
                a((byte[]) null);
            }
        } catch (Throwable th) {
            j.a(th);
            j.b("GBD_RALA", th.getMessage());
        }
    }

    private void e() {
        if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aV)) {
            return;
        }
        g.a().e(System.currentTimeMillis());
        com.igexin.push.extension.distribution.gbd.f.a.a aVar = new com.igexin.push.extension.distribution.gbd.f.a.a(new b(this));
        aVar.a(com.igexin.push.extension.distribution.gbd.c.a.aV);
        com.igexin.b.a.b.c.b().a(new com.igexin.push.extension.distribution.gbd.f.a(aVar), false, true);
    }

    private String f() {
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
            j.b("GBD_RALA", "doSample");
            if (k.c(c())) {
                j.b("GBD_RALA", "type " + c() + " in type black list, return.");
                return;
            }
            List<PackageInfo> list = this.b;
            if (list != null) {
                list.clear();
            }
            try {
                j.b("GBD_RALA", "fetch pkg list from system api.");
                for (PackageInfo packageInfo : com.igexin.push.core.f.f.getPackageManager().getInstalledPackages(0)) {
                    if ((packageInfo.applicationInfo.flags & 1) == 0) {
                        this.b.add(packageInfo);
                    }
                }
            } catch (Throwable th) {
                j.a(th);
            }
            j.b("GBD_RALA", "thirdy applist size = " + this.b.size());
            if (this.b.size() > com.igexin.push.extension.distribution.gbd.c.a.bG) {
                a(a(this.b, 0));
            } else {
                d();
            }
        } catch (Throwable th2) {
            j.a(th2);
            j.b("GBD_RALA", th2.getMessage());
        }
    }

    public int c() {
        return 28;
    }
}
