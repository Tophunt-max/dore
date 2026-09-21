package com.igexin.push.d;

import android.app.ActivityManager;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.igexin.push.config.k;
import com.igexin.push.core.c.aj;
import com.igexin.push.core.c.h;
import com.igexin.push.core.f;
import com.igexin.push.util.p;
import com.igexin.push.util.t;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f262a;
    private static long b;
    private final int c = 100;
    private final int d = 30;

    private c() {
    }

    public static c a() {
        if (f262a == null) {
            f262a = new c();
        }
        return f262a;
    }

    public void a(Intent intent) {
        try {
            String stringExtra = intent.getStringExtra("from");
            String stringExtra2 = intent.getStringExtra("did");
            if (!TextUtils.isEmpty(stringExtra) && !TextUtils.isEmpty(stringExtra2)) {
                aj.a().a("21", stringExtra + "|" + f.f.getPackageName() + "|" + stringExtra2 + "|" + f.x + "|" + f.f238a + "|" + f.s + "|" + System.currentTimeMillis());
                return;
            }
            com.igexin.b.a.c.b.a("GuardHelper|doThirdGuardSt from or did is empty");
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("GuardHelper|doThirdGuardSt exception: " + th.toString());
        }
    }

    public void a(String str) {
        PackageInfo packageInfo;
        if (TextUtils.isEmpty(str) || !str.startsWith("package:")) {
            return;
        }
        try {
            String strSubstring = str.substring(8);
            ArrayList arrayList = new ArrayList();
            if (!k.F.equals("none")) {
                arrayList.addAll(Arrays.asList(k.F.split(",")));
            }
            if (com.igexin.push.util.a.a(strSubstring, arrayList) || (packageInfo = f.f.getPackageManager().getPackageInfo(strSubstring, 4)) == null || packageInfo.services == null) {
                return;
            }
            for (ServiceInfo serviceInfo : packageInfo.services) {
                if (com.igexin.push.util.a.a(serviceInfo, packageInfo)) {
                    h.a().d().put(strSubstring, serviceInfo.name);
                    return;
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void b() {
        String str;
        if (!com.igexin.push.util.a.c("third")) {
            str = "GuardHelper|guardSdk isBrandSdkRomGuardEnable = false";
        } else {
            if (k.n && System.currentTimeMillis() - b >= 300000) {
                b = System.currentTimeMillis();
                Map<String, String> mapD = h.a().d();
                if (mapD.isEmpty() || k.C <= 0) {
                    return;
                }
                int i = 0;
                for (Map.Entry<String, String> entry : mapD.entrySet()) {
                    if (i >= k.C) {
                        return;
                    }
                    String key = entry.getKey();
                    String value = entry.getValue();
                    a aVar = new a(key);
                    aVar.a(new e(key, value));
                    aVar.a();
                    i++;
                }
                return;
            }
            str = "GuardHelper|isGuard = false or cur - last < 5min";
        }
        com.igexin.b.a.c.b.a(str);
    }

    public void b(String str) {
        if (str == null || !str.startsWith("package:")) {
            return;
        }
        String strSubstring = str.substring(8);
        if (h.a().d().containsKey(strSubstring)) {
            h.a().d().remove(strSubstring);
        }
    }

    public void c() {
        ServiceInfo[] serviceInfoArr;
        try {
            if (t.a(f.f) && k.n && d()) {
                String packageName = f.f.getPackageName();
                List<PackageInfo> listA = p.a(f.f, 4);
                if (listA != null && !listA.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    if (!k.F.equals("none")) {
                        arrayList.addAll(Arrays.asList(k.F.split(",")));
                    }
                    for (PackageInfo packageInfo : listA) {
                        if ((packageInfo.applicationInfo.flags & 1) == 0 || (packageInfo.applicationInfo.flags & 128) != 0) {
                            if (!com.igexin.push.util.a.a(packageInfo.applicationInfo.packageName, arrayList) && (serviceInfoArr = packageInfo.services) != null && serviceInfoArr.length != 0) {
                                int length = serviceInfoArr.length;
                                int i = 0;
                                while (true) {
                                    if (i < length) {
                                        ServiceInfo serviceInfo = serviceInfoArr[i];
                                        if (!com.igexin.push.util.a.a(serviceInfo, packageInfo)) {
                                            i++;
                                        } else if (!packageName.equals(packageInfo.packageName)) {
                                            h.a().d().put(packageInfo.packageName, serviceInfo.name);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public boolean d() {
        try {
            ActivityManager activityManager = (ActivityManager) f.f.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            long j = (memoryInfo.availMem / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
            if (!memoryInfo.lowMemory) {
                if (j < 100) {
                    return false;
                }
                return (((Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory()) + Runtime.getRuntime().freeMemory()) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID > 30;
            }
            com.igexin.b.a.c.b.b("GuardHelper", "system in lowMemory, available menmory = " + j + "M");
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
