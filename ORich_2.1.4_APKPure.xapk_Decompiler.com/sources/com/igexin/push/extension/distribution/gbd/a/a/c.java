package com.igexin.push.extension.distribution.gbd.a.a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.igexin.push.extension.distribution.gbd.e.a.g;
import com.igexin.push.extension.distribution.gbd.i.ae;
import com.igexin.push.extension.distribution.gbd.i.ag;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import com.taobao.weex.el.parse.Operators;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static c d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f325a = 0;
    private long b = 0;
    private boolean c = true;
    private Context e;

    private c(Context context) {
        this.e = context;
        f();
    }

    public static c a() {
        if (d == null) {
            d = new c(com.igexin.push.core.f.f);
        }
        return d;
    }

    private String a(int i, int i2) {
        try {
            if (!g.a().e()) {
                return null;
            }
            List<String> listG = Build.VERSION.SDK_INT < 21 ? g() : null;
            List<String> listH = h();
            String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(k.x()));
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("|");
            sb.append(com.igexin.push.core.f.s);
            sb.append("|");
            sb.append(com.igexin.push.core.f.f238a);
            sb.append("|");
            if (i != 0) {
                sb.append(i);
            }
            sb.append("|");
            if (i2 != 0) {
                sb.append(i2);
            }
            sb.append("|");
            sb.append("|");
            sb.append(a(listG, 10));
            sb.append("|");
            sb.append(b(listH, com.igexin.push.extension.distribution.gbd.c.a.f371a));
            sb.append("|");
            sb.append("ANDROID");
            sb.append("|");
            String strL = l();
            if (!TextUtils.isEmpty(strL)) {
                sb.append(strL);
            }
            sb.append("|");
            sb.append(k.B());
            sb.append("|");
            sb.append(i());
            sb.append("|");
            sb.append("|");
            sb.append(j());
            return sb.toString();
        } catch (Exception e) {
            j.a(e);
            return null;
        }
    }

    private String a(List<String> list, int i) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        for (String str : list) {
            if (!arrayList.contains(str)) {
                arrayList.add(str);
                if (i2 != 0) {
                    sb.append(",");
                }
                sb.append(str);
                i2++;
                if (i2 >= i) {
                    break;
                }
            }
        }
        return sb.toString();
    }

    private List<String> a(List<ActivityManager.RecentTaskInfo> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<ActivityManager.RecentTaskInfo> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().baseIntent.getComponent().getPackageName());
        }
        return arrayList;
    }

    private void a(String str) {
        j.b("GBD_RNRAA", "save type = " + e());
        if (k.d(e())) {
            j.b("GBD_RNRAA", "instant r " + e());
            com.igexin.push.extension.distribution.gbd.e.a.b.a().a(str, e());
            return;
        }
        j.b("GBD_RNRAA", "not instant r " + e());
        com.igexin.push.extension.distribution.gbd.e.a.b.a().b(str, e());
    }

    private String b(List<String> list, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (list == null || list.size() == 0) {
            return "";
        }
        for (String str : list) {
            if (!arrayList2.contains(str)) {
                arrayList2.add(str);
            }
        }
        for (String str2 : arrayList2) {
            if (str2.contains(":")) {
                String[] strArrSplit = str2.split(":");
                if (strArrSplit.length == 2) {
                    if (arrayList3.contains(strArrSplit[0])) {
                        int i2 = 0;
                        while (true) {
                            if (i2 < arrayList.size()) {
                                String str3 = (String) arrayList.get(i2);
                                if (str3.contains(strArrSplit[0] + ":")) {
                                    arrayList.set(i2, str3 + "&" + strArrSplit[1]);
                                    break;
                                }
                                i2++;
                            }
                        }
                    } else {
                        arrayList3.add(strArrSplit[0]);
                    }
                }
            }
            arrayList.add(str2);
        }
        int iMin = Math.min(arrayList.size(), i);
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < iMin; i3++) {
            try {
                String str4 = (String) arrayList.get(i3);
                sb.append(str4);
                if (str4.contains(":")) {
                    str4 = str4.split(":")[0];
                }
                long j = 0;
                long jLongValue = com.igexin.push.extension.distribution.gbd.c.c.q.containsKey(str4) ? com.igexin.push.extension.distribution.gbd.c.c.q.get(str4).longValue() : 0L;
                if (jLongValue <= k.x()) {
                    j = jLongValue;
                }
                sb.append("#");
                sb.append(j);
                if (i3 < iMin - 1) {
                    sb.append(",");
                }
            } catch (Throwable th) {
                j.a(th);
            }
        }
        return sb.toString();
    }

    private boolean b(String str) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            if (str.contains(":")) {
                str = str.split(":")[0];
            }
            String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.U.split("\\|");
            if (strArrSplit.length != 4) {
                return false;
            }
            String[] strArrSplit2 = strArrSplit[0].split(",");
            String[] strArrSplit3 = strArrSplit[1].split(",");
            String[] strArrSplit4 = strArrSplit[2].split(",");
            String[] strArrSplit5 = strArrSplit[3].split(",");
            if (strArrSplit2.length < 1 || strArrSplit2[0].equals("none")) {
                z = true;
            } else {
                for (String str2 : strArrSplit2) {
                    if (str.startsWith(str2)) {
                        z = false;
                        break;
                    }
                }
                z = true;
            }
            if (strArrSplit3.length < 1 || strArrSplit3[0].equals("none")) {
                z2 = true;
            } else {
                for (String str3 : strArrSplit3) {
                    if (str.contains(str3)) {
                        z2 = false;
                        break;
                    }
                }
                z2 = true;
            }
            if (strArrSplit4.length < 1 || strArrSplit4[0].equals("none")) {
                z3 = true;
            } else {
                for (String str4 : strArrSplit4) {
                    if (!str.contains(str4)) {
                        z3 = false;
                        break;
                    }
                }
                z3 = true;
            }
            if (strArrSplit5.length < 1 || strArrSplit5[0].equals("none")) {
                z4 = true;
            } else {
                for (String str5 : strArrSplit5) {
                    if (str.endsWith(str5)) {
                        z4 = false;
                        break;
                    }
                }
                z4 = true;
            }
            return z && z2 && z3 && z4;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    private void f() {
        String[] strArrSplit;
        try {
            if (Operators.MUL.equals(com.igexin.push.extension.distribution.gbd.c.a.ak)) {
                this.c = false;
                return;
            }
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.ak) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.ak) && (strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.ak.split(",")) != null && strArrSplit.length > 0) {
                for (String str : strArrSplit) {
                    String[] strArrSplit2 = str.split(":");
                    if (strArrSplit2 != null && strArrSplit2.length >= 3) {
                        if (k.r().equalsIgnoreCase(strArrSplit2[0])) {
                            boolean z = true;
                            String[] strArrSplit3 = strArrSplit2[1].split("&");
                            String str2 = strArrSplit2[2];
                            if (strArrSplit3 != null && strArrSplit3.length == 2 && !TextUtils.isEmpty(str2)) {
                                int i = Integer.parseInt(strArrSplit3[0]);
                                int i2 = Integer.parseInt(strArrSplit3[1]);
                                int i3 = Build.VERSION.SDK_INT;
                                if (i3 < i || i3 > i2) {
                                    z = false;
                                }
                                String lowerCase = k.s().toLowerCase();
                                if (!z) {
                                    continue;
                                } else {
                                    if (Operators.MUL.equals(str2)) {
                                        this.c = false;
                                        return;
                                    }
                                    String[] strArrSplit4 = str2.split("&");
                                    if (strArrSplit4 != null && strArrSplit4.length > 0) {
                                        for (String str3 : strArrSplit4) {
                                            if (lowerCase.contains(str3.toLowerCase())) {
                                                this.c = false;
                                                return;
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.am)) {
                return;
            }
            if ("none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.am)) {
                this.c = false;
                return;
            }
            String[] strArrSplit5 = com.igexin.push.extension.distribution.gbd.c.a.am.split(",");
            if (strArrSplit5 == null || strArrSplit5.length <= 0) {
                return;
            }
            for (String str4 : strArrSplit5) {
                if (k.d(str4, this.e)) {
                    this.c = false;
                    return;
                }
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    private List<String> g() {
        try {
            return a(((ActivityManager) this.e.getSystemService("activity")).getRecentTasks(10, 1));
        } catch (Exception e) {
            j.a(e);
            return null;
        }
    }

    private List<String> h() {
        try {
            if (Build.VERSION.SDK_INT >= 24 && !com.igexin.push.extension.distribution.gbd.c.a.aj) {
                j.b("GBD_RNRAA", "proc close over 7.");
                return null;
            }
            List<String> listA = ae.a(true, false);
            if (listA == null || listA.isEmpty() || (listA.size() == 1 && listA.get(0).equals(this.e.getPackageName()))) {
                return null;
            }
            try {
                Iterator<String> it = listA.iterator();
                while (it.hasNext()) {
                    if (!b(it.next())) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                j.a(th);
            }
            return listA;
        } catch (Exception e) {
            j.a(e);
            return null;
        }
    }

    private String i() {
        try {
            if (this.c && k()) {
                StringBuilder sb = new StringBuilder();
                Iterator<PackageInfo> it = (com.igexin.push.extension.distribution.gbd.c.a.as ? k.G() : this.e.getPackageManager().getInstalledPackages(0)).iterator();
                while (true) {
                    boolean z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    PackageInfo next = it.next();
                    String str = next.packageName;
                    if ((next.applicationInfo.flags & 1) == 0) {
                        z = false;
                    }
                    String strA = ag.a().a(str, z);
                    if (!"error".equals(strA)) {
                        sb.append(str + "&" + strA + ",");
                    }
                }
                if (sb.toString().endsWith(",")) {
                    sb.deleteCharAt(sb.length() - 1);
                }
                String string = sb.toString();
                j.b("GBD_RNRAA", "sd running data: " + string);
                return string;
            }
            j.b("GBD_RNRAA", "sd running: not enable or no sd perm.");
            return "";
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    private String j() {
        try {
            return k.r() + "," + Build.MODEL + "," + k.s() + "," + Build.VERSION.SDK_INT + "," + this.e.getApplicationInfo().targetSdkVersion + "," + (k() ? 1 : 0);
        } catch (Throwable th) {
            j.a(th);
            return "error";
        }
    }

    private boolean k() {
        return (Build.VERSION.SDK_INT >= 16 && k.a(this.e, "android.permission.READ_EXTERNAL_STORAGE")) || k.a(this.e, "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    private String l() {
        try {
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) this.e.getSystemService("activity")).getRunningServices(2000);
            if (runningServices != null && !runningServices.isEmpty()) {
                j.b("GBD_RNRAA", "rsl " + runningServices.size());
                if (runningServices.size() > 200) {
                    j.b("GBD_RNRAA", "rsl > 200, cut.");
                    runningServices = runningServices.subList(0, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                }
                Iterator<ActivityManager.RunningServiceInfo> it = runningServices.iterator();
                while (true) {
                    long j = -1;
                    if (!it.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningServiceInfo next = it.next();
                    String packageName = next.service.getPackageName();
                    String className = next.service.getClassName();
                    if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(className)) {
                        long jX = (k.x() - SystemClock.elapsedRealtime()) + next.activeSince;
                        if (jX > 0) {
                            j = jX;
                        }
                        if (!map2.containsKey(packageName) || ((Long) map2.get(packageName)).longValue() > j) {
                            Long lValueOf = Long.valueOf(j);
                            map2.put(packageName, lValueOf);
                        }
                        if (map.containsKey(packageName)) {
                            ((List) map.get(packageName)).add(className);
                        } else {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(className);
                            map.put(packageName, arrayList);
                        }
                    }
                }
                if (map.isEmpty()) {
                    j.b("GBD_RNRAA", "rs empty.");
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    if (com.igexin.push.extension.distribution.gbd.c.a.bz || !k.j(str)) {
                        sb.append(str);
                        Long l = (Long) map2.get(str);
                        Long lValueOf2 = Long.valueOf(l != null ? l.longValue() : -1L);
                        if (k.u()) {
                            sb.append(":");
                            Iterator it2 = list.iterator();
                            while (it2.hasNext()) {
                                sb.append((String) it2.next());
                                sb.append("&");
                            }
                            if (sb.toString().endsWith("&")) {
                                sb.deleteCharAt(sb.length() - 1);
                            }
                            sb.append("#");
                            sb.append(lValueOf2);
                        } else {
                            sb.append("#");
                            sb.append(lValueOf2);
                        }
                        sb.append(",");
                    }
                }
                if (sb.toString().endsWith(",")) {
                    sb.deleteCharAt(sb.length() - 1);
                }
                return sb.toString();
            }
            j.b("GBD_RNRAA", "rsl empty.");
            return null;
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public void b() {
        try {
            j.b("GBD_RNRAA", "unlock.");
            if (k.c(e())) {
                j.b("GBD_RNRAA", "type " + e() + " in type black list, return.");
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f325a = jCurrentTimeMillis;
            if (jCurrentTimeMillis - this.b >= com.igexin.push.extension.distribution.gbd.c.a.bI * 1000) {
                String strA = a(1, 0);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                a(strA);
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void c() {
        try {
            j.b("GBD_RNRAA", "lock.");
            if (k.c(e())) {
                j.b("GBD_RNRAA", "type " + e() + " in type black list, return.");
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.b = jCurrentTimeMillis;
            if (jCurrentTimeMillis - this.f325a >= com.igexin.push.extension.distribution.gbd.c.a.bI * 1000) {
                String strA = a(2, 0);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                a(strA);
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void d() {
        j.b("GBD_RNRAA", "doSample");
        if (k.c(e())) {
            j.b("GBD_RNRAA", "type " + e() + " in type black list, return.");
            return;
        }
        try {
            if (k.c(this.e)) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f325a >= com.igexin.push.extension.distribution.gbd.c.a.L * 1000) {
                    j.b("GBD_RNRAA", "collect type24 timer.");
                    g.a().h(jCurrentTimeMillis);
                    String strA = a(0, 1);
                    if (TextUtils.isEmpty(strA)) {
                        return;
                    }
                    a(strA);
                }
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public int e() {
        return 24;
    }
}
