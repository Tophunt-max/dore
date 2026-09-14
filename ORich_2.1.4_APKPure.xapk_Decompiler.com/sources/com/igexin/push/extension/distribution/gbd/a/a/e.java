package com.igexin.push.extension.distribution.gbd.a.a;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.igexin.push.extension.distribution.gbd.e.a.g;
import com.igexin.push.extension.distribution.gbd.i.ae;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static e b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f327a;
    private Context c;
    private HashMap<String, String> d = new HashMap<>();

    private e(Context context) {
        this.c = context;
    }

    public static e a() {
        if (b == null) {
            b = new e(com.igexin.push.core.f.f);
        }
        return b;
    }

    private String a(int i, int i2) {
        try {
            if (com.igexin.push.extension.distribution.gbd.c.a.bp && !g.a().e()) {
                j.b("GBD_RRAA", "consult open,port not available");
                return null;
            }
            List<String> listH = Build.VERSION.SDK_INT < 21 ? h() : null;
            List<String> listI = i();
            if (listH == null && listI == null) {
                return null;
            }
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
            sb.append(a(listH, 10));
            sb.append("|");
            sb.append(b(listI, com.igexin.push.extension.distribution.gbd.c.a.f371a));
            sb.append("|");
            sb.append("ANDROID");
            sb.append("|");
            if (com.igexin.push.extension.distribution.gbd.c.a.bq) {
                String strF = f();
                if (TextUtils.isEmpty(strF)) {
                    strF = "";
                }
                sb.append(strF);
            }
            return sb.toString();
        } catch (Throwable th) {
            j.a(th);
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
        com.igexin.push.extension.distribution.gbd.e.a.b.a().b(str, e());
        j.b("GBD_RRAA", "save type = " + e());
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

    private String f() {
        try {
            HashMap map = new HashMap();
            List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) this.c.getSystemService("activity")).getRunningServices(2000);
            if (runningServices != null && !runningServices.isEmpty()) {
                j.b("GBD_RRAA", "rsl " + runningServices.size());
                if (runningServices.size() > 200) {
                    j.b("GBD_RRAA", "rsl > 200, cut.");
                    runningServices = runningServices.subList(0, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                }
                for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
                    String packageName = runningServiceInfo.service.getPackageName();
                    String className = runningServiceInfo.service.getClassName();
                    if (!TextUtils.isEmpty(packageName) && !TextUtils.isEmpty(className)) {
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
                    j.b("GBD_RRAA", "rs empty.");
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    sb.append(str);
                    sb.append(":");
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        sb.append((String) it.next());
                        sb.append("&");
                    }
                    if (sb.toString().endsWith("&")) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    sb.append(",");
                }
                if (sb.toString().endsWith(",")) {
                    sb.deleteCharAt(sb.length() - 1);
                }
                return sb.toString();
            }
            j.b("GBD_RRAA", "rsl empty.");
            return null;
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    private void g() {
        HashMap<String, String> map = this.d;
        if (map != null) {
            a(map.get("unlock"));
            a(this.d.get("lock"));
            this.d.clear();
        }
    }

    private List<String> h() {
        try {
            return a(((ActivityManager) this.c.getSystemService("activity")).getRecentTasks(10, 1));
        } catch (Exception e) {
            j.a(e);
            return null;
        }
    }

    private List<String> i() {
        try {
            List<String> listA = ae.a(true, false);
            if (listA == null || listA.isEmpty() || (listA.size() == 1 && listA.get(0).equals(this.c.getPackageName()))) {
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

    public void b() {
        try {
            if (k.c(e())) {
                j.b("GBD_RRAA", "type " + e() + " in type black list, return.");
                return;
            }
            this.f327a = System.currentTimeMillis();
            String strA = a(1, 0);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            this.d.put("unlock", strA);
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void c() {
        HashMap<String, String> map;
        try {
            if (k.c(e())) {
                j.b("GBD_RRAA", "type " + e() + " in type black list, return.");
                return;
            }
            if (System.currentTimeMillis() - this.f327a < 30000 || !this.d.containsKey("unlock")) {
                map = this.d;
            } else {
                String strA = a(2, 0);
                if (!TextUtils.isEmpty(strA)) {
                    this.d.put("lock", strA);
                    g();
                    return;
                }
                map = this.d;
            }
            map.clear();
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void d() {
        j.b("GBD_RRAA", "doSample");
        if (k.c(e())) {
            j.b("GBD_RRAA", "type " + e() + " in type black list, return.");
            return;
        }
        try {
            if (!k.c(this.c) || System.currentTimeMillis() - this.f327a < com.igexin.push.extension.distribution.gbd.c.a.L * 1000) {
                return;
            }
            String strA = a(0, 1);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            a(strA);
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public int e() {
        return 6;
    }
}
