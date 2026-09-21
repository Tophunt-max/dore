package com.igexin.push.extension.distribution.gbd.d;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import com.igexin.push.extension.distribution.gbd.i.aj;
import com.igexin.sdk.PushConsts;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f376a;
    private Context b;
    private k c = new k();
    private com.igexin.push.extension.distribution.gbd.g.a d;
    private com.igexin.push.extension.distribution.gbd.g.d e;
    private com.igexin.push.extension.distribution.gbd.g.b f;
    private com.igexin.push.extension.distribution.gbd.g.c g;
    private com.igexin.push.extension.distribution.gbd.h.a h;

    private d() {
    }

    public static d a() {
        if (f376a == null) {
            f376a = new d();
        }
        return f376a;
    }

    private void f() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "add data TimerTask result = " + com.igexin.push.core.e.a().a(new e(this, (com.igexin.push.extension.distribution.gbd.c.a.bH + new Random().nextInt(5)) * 1000)));
    }

    private void g() {
        try {
            if (com.igexin.push.extension.distribution.gbd.i.k.i(this.b)) {
                return;
            }
            com.igexin.push.extension.distribution.gbd.f.a.b bVar = new com.igexin.push.extension.distribution.gbd.f.a.b(new f(this));
            bVar.a("http://sdk.open.phone.igexin.com/api/addr.htm");
            com.igexin.b.a.b.c.b().a(new com.igexin.push.extension.distribution.gbd.f.a(bVar), false, true);
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    private void h() {
        long jNextInt = (com.igexin.push.extension.distribution.gbd.c.a.ad + new Random().nextInt(com.igexin.push.extension.distribution.gbd.c.a.ae)) * 1000;
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "add guard TimerTask result = " + com.igexin.push.core.e.a().a(new g(this, jNextInt)) + "|guardTime = " + jNextInt);
    }

    private void i() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "add gbd config TimerTask result = " + com.igexin.push.core.e.a().a(new j(this, 3000L)));
    }

    private void j() throws Throwable {
        com.igexin.push.extension.distribution.gbd.c.c.b = new com.igexin.push.extension.distribution.gbd.e.a(this.b);
        com.igexin.push.extension.distribution.gbd.e.a.a.a().b();
        com.igexin.push.extension.distribution.gbd.e.a.g.a().b();
        com.igexin.push.extension.distribution.gbd.e.a.b.a().b();
    }

    private void k() {
        try {
            com.igexin.push.extension.distribution.gbd.c.c.d = (WifiManager) this.b.getSystemService("wifi");
            if (this.b.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", this.b.getPackageName()) == 0) {
                com.igexin.push.extension.distribution.gbd.c.c.i = true;
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.f = new com.igexin.push.extension.distribution.gbd.g.b();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(PushConsts.ACTION_BROADCAST_USER_PRESENT);
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.b.registerReceiver(this.f, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        this.d = new com.igexin.push.extension.distribution.gbd.g.a();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addDataScheme("package");
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        this.b.registerReceiver(this.d, intentFilter);
    }

    private void n() {
        this.e = new com.igexin.push.extension.distribution.gbd.g.d();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.igexin.sdk.action.QOkj0EWj4X5ymiTKHegll8");
        this.b.registerReceiver(this.e, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.g = new com.igexin.push.extension.distribution.gbd.g.c();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        this.b.registerReceiver(this.g, intentFilter);
    }

    private void p() {
        if (com.igexin.push.extension.distribution.gbd.i.k.w()) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "initCAT  result = " + com.igexin.b.a.b.c.b().a(com.igexin.push.extension.distribution.gbd.h.a.c.i_(), true, true));
        }
    }

    private void q() {
        try {
            boolean zW = com.igexin.push.extension.distribution.gbd.i.k.w();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "CAE  " + zW);
            if (!zW) {
                com.igexin.push.extension.distribution.gbd.c.c.N = 0L;
                com.igexin.push.extension.distribution.gbd.c.c.O = 0L;
                com.igexin.push.extension.distribution.gbd.c.c.M = "";
                com.igexin.push.extension.distribution.gbd.e.a.g.a().o(com.igexin.push.extension.distribution.gbd.c.c.N);
                com.igexin.push.extension.distribution.gbd.e.a.g.a().p(com.igexin.push.extension.distribution.gbd.c.c.O);
                com.igexin.push.extension.distribution.gbd.e.a.g.a().e(com.igexin.push.extension.distribution.gbd.c.c.M);
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "clean CAD. ");
                return;
            }
            if (com.igexin.push.extension.distribution.gbd.c.c.M.split(",").length >= 200) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", " CAD length > 200, clean. ");
                com.igexin.push.extension.distribution.gbd.c.c.M = "";
                com.igexin.push.extension.distribution.gbd.e.a.g.a().e(com.igexin.push.extension.distribution.gbd.c.c.M);
            }
            long jX = com.igexin.push.extension.distribution.gbd.i.k.x();
            long j = jX - (com.igexin.push.extension.distribution.gbd.c.c.N + com.igexin.push.extension.distribution.gbd.c.c.O);
            if (com.igexin.push.extension.distribution.gbd.c.c.N == 0) {
                com.igexin.push.extension.distribution.gbd.c.c.N = jX;
                com.igexin.push.extension.distribution.gbd.c.c.O = 0L;
                com.igexin.push.extension.distribution.gbd.e.a.g.a().o(com.igexin.push.extension.distribution.gbd.c.c.N);
                com.igexin.push.extension.distribution.gbd.e.a.g.a().p(com.igexin.push.extension.distribution.gbd.c.c.O);
                return;
            }
            if (j <= com.igexin.push.extension.distribution.gbd.c.a.aL * 1000) {
                com.igexin.push.extension.distribution.gbd.c.c.O = jX - com.igexin.push.extension.distribution.gbd.c.c.N;
                if (com.igexin.push.extension.distribution.gbd.c.c.O < 0) {
                    com.igexin.push.extension.distribution.gbd.c.c.N = jX;
                    com.igexin.push.extension.distribution.gbd.c.c.O = 0L;
                }
                com.igexin.push.extension.distribution.gbd.e.a.g.a().o(com.igexin.push.extension.distribution.gbd.c.c.N);
                com.igexin.push.extension.distribution.gbd.e.a.g.a().p(com.igexin.push.extension.distribution.gbd.c.c.O);
                return;
            }
            if (com.igexin.push.extension.distribution.gbd.c.c.O >= 10000) {
                StringBuilder sb = new StringBuilder();
                sb.append(com.igexin.push.extension.distribution.gbd.c.c.M);
                sb.append((com.igexin.push.extension.distribution.gbd.c.c.N / 1000) + ":" + (com.igexin.push.extension.distribution.gbd.c.c.O / 1000) + ",");
                com.igexin.push.extension.distribution.gbd.c.c.M = sb.toString();
                com.igexin.push.extension.distribution.gbd.e.a.g.a().e(com.igexin.push.extension.distribution.gbd.c.c.M);
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "CAD update =  " + com.igexin.push.extension.distribution.gbd.c.c.M);
            }
            com.igexin.push.extension.distribution.gbd.c.c.N = jX;
            com.igexin.push.extension.distribution.gbd.c.c.O = 0L;
            com.igexin.push.extension.distribution.gbd.e.a.g.a().o(com.igexin.push.extension.distribution.gbd.c.c.N);
            com.igexin.push.extension.distribution.gbd.e.a.g.a().p(com.igexin.push.extension.distribution.gbd.c.c.O);
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    public void a(Context context) {
        this.b = context;
        this.c.start();
    }

    public void b() throws Throwable {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "gbd logic init");
        com.igexin.push.extension.distribution.gbd.c.c.f373a = this.b;
        n();
        aj.a();
        j();
        q();
        p();
        i();
        if (com.igexin.push.extension.distribution.gbd.c.a.b) {
            k();
            g();
            com.igexin.push.extension.distribution.gbd.a.a.d.a();
            com.igexin.push.extension.distribution.gbd.a.a.a.a();
            com.igexin.push.extension.distribution.gbd.a.e.a.a();
            this.h = new com.igexin.push.extension.distribution.gbd.h.a();
            h();
            f();
        }
    }

    public void c() {
        List<PackageInfo> listG = com.igexin.push.extension.distribution.gbd.c.a.as ? com.igexin.push.extension.distribution.gbd.i.k.G() : this.b.getPackageManager().getInstalledPackages(0);
        for (int i = 0; i < listG.size(); i++) {
            try {
                PackageInfo packageInfo = listG.get(i);
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if ((applicationInfo.flags & 1) <= 0) {
                    com.igexin.push.extension.distribution.gbd.b.a aVar = new com.igexin.push.extension.distribution.gbd.b.a();
                    aVar.a(applicationInfo.packageName);
                    aVar.c(packageInfo.versionName);
                    aVar.d(String.valueOf(packageInfo.versionCode));
                    com.igexin.push.extension.distribution.gbd.c.c.p.put(applicationInfo.packageName, aVar);
                }
            } catch (Exception e) {
                com.igexin.push.extension.distribution.gbd.i.j.a(e);
            }
        }
    }

    public void d() {
        if (this.b == null) {
            return;
        }
        com.igexin.push.extension.distribution.gbd.i.j.a("GBD_Logic", "onDestroy");
        com.igexin.push.extension.distribution.gbd.g.a aVar = this.d;
        if (aVar != null) {
            this.b.unregisterReceiver(aVar);
            this.d = null;
        }
        com.igexin.push.extension.distribution.gbd.g.d dVar = this.e;
        if (dVar != null) {
            this.b.unregisterReceiver(dVar);
            this.e = null;
        }
        com.igexin.push.extension.distribution.gbd.g.b bVar = this.f;
        if (bVar != null) {
            this.b.unregisterReceiver(bVar);
            this.f = null;
        }
        com.igexin.push.extension.distribution.gbd.g.c cVar = this.g;
        if (cVar != null) {
            this.b.unregisterReceiver(cVar);
            this.g = null;
        }
    }

    public boolean e() {
        boolean z;
        char c = 0;
        try {
            if ("none".equals(com.igexin.push.extension.distribution.gbd.c.a.c)) {
                return false;
            }
            for (String str : com.igexin.push.extension.distribution.gbd.c.a.c.split(",")) {
                if (com.igexin.push.extension.distribution.gbd.i.k.d(str, this.b)) {
                    com.igexin.push.extension.distribution.gbd.i.j.a("GBD_Logic", "checkSafeStatus pkgName = " + str);
                    return false;
                }
            }
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.d) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.d)) {
                String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.d.split(",");
                int length = strArrSplit.length;
                int i = 0;
                while (i < length) {
                    String str2 = strArrSplit[i];
                    if (!TextUtils.isEmpty(str2)) {
                        String[] strArrSplit2 = str2.split(":");
                        if (strArrSplit2.length != 3 || TextUtils.isEmpty(strArrSplit2[c])) {
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "11 rom format error,continue.");
                        } else {
                            String str3 = strArrSplit2[c];
                            ArrayList arrayList = new ArrayList(Arrays.asList(strArrSplit2[1].split("#")));
                            ArrayList arrayList2 = new ArrayList(Arrays.asList(strArrSplit2[2].split("#")));
                            String strR = com.igexin.push.extension.distribution.gbd.i.k.r();
                            String lowerCase = com.igexin.push.extension.distribution.gbd.i.k.t().toLowerCase();
                            int i2 = Build.VERSION.SDK_INT;
                            String strValueOf = String.valueOf(i2);
                            if (str3.equalsIgnoreCase(strR)) {
                                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "11 checkStatus brand match.");
                                if (arrayList.size() != 1 || arrayList2.size() != 1) {
                                    return arrayList.contains(lowerCase) && arrayList2.contains(strValueOf);
                                }
                                z = false;
                                try {
                                    return Double.valueOf(lowerCase).doubleValue() >= Double.valueOf((String) arrayList.get(0)).doubleValue() && i2 >= Integer.valueOf((String) arrayList2.get(0)).intValue();
                                } catch (Throwable th) {
                                    th = th;
                                    com.igexin.push.extension.distribution.gbd.i.j.a(th);
                                    return z;
                                }
                            }
                        }
                    }
                    i++;
                    c = 0;
                }
            }
            if ("none".equals(com.igexin.push.extension.distribution.gbd.c.a.e) || !com.igexin.push.extension.distribution.gbd.i.k.a(this.b)) {
                return false;
            }
            String[] strArrSplit3 = com.igexin.push.extension.distribution.gbd.c.a.e.split(",");
            Iterator<PackageInfo> it = (com.igexin.push.extension.distribution.gbd.c.a.as ? com.igexin.push.extension.distribution.gbd.i.k.G() : com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getInstalledPackages(4)).iterator();
            while (it.hasNext()) {
                ServiceInfo[] serviceInfoArr = it.next().services;
                if (serviceInfoArr != null && serviceInfoArr.length > 0) {
                    for (ServiceInfo serviceInfo : serviceInfoArr) {
                        for (String str4 : strArrSplit3) {
                            if (str4.equals(serviceInfo.name)) {
                                return false;
                            }
                        }
                    }
                }
            }
            return true;
        } catch (Throwable th2) {
            th = th2;
            z = false;
        }
    }
}
