package com.igexin.push.extension.distribution.gbd.a.b;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.igexin.push.extension.distribution.gbd.i.ae;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.common.Constants;
import com.taobao.weex.el.parse.Operators;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class j {
    private static j d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f337a;
    private HashMap<String, String> c = new HashMap<>();
    private List<String> e = new CopyOnWriteArrayList();
    private boolean f = false;
    private Map<String, n> g = new HashMap();
    private SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());

    private j(Context context) {
        this.f337a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0099 A[Catch: all -> 0x019e, TryCatch #0 {all -> 0x019e, blocks: (B:3:0x000a, B:6:0x0012, B:8:0x001a, B:10:0x0027, B:13:0x0031, B:15:0x005d, B:19:0x0084, B:24:0x0099, B:29:0x00a3, B:31:0x00ef, B:35:0x00f6, B:37:0x00fe, B:51:0x0174, B:52:0x0188, B:49:0x011f, B:25:0x009c, B:9:0x0020, B:53:0x018c), top: B:59:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009c A[Catch: all -> 0x019e, TryCatch #0 {all -> 0x019e, blocks: (B:3:0x000a, B:6:0x0012, B:8:0x001a, B:10:0x0027, B:13:0x0031, B:15:0x005d, B:19:0x0084, B:24:0x0099, B:29:0x00a3, B:31:0x00ef, B:35:0x00f6, B:37:0x00fe, B:51:0x0174, B:52:0x0188, B:49:0x011f, B:25:0x009c, B:9:0x0020, B:53:0x018c), top: B:59:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.content.Intent a(java.lang.String r30, java.lang.String r31, boolean r32) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.j.a(java.lang.String, java.lang.String, boolean):android.content.Intent");
    }

    private Intent a(String str, boolean z) {
        String[] strArrSplit;
        try {
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bO) || !com.igexin.push.extension.distribution.gbd.c.a.bO.contains(str)) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA_guard", " not in d-a config list.");
            } else {
                for (String str2 : com.igexin.push.extension.distribution.gbd.c.a.bO.split(",")) {
                    if (str.equals(str2)) {
                        String strB = com.igexin.push.extension.distribution.gbd.i.k.b(str2, "/sdcard/libs/w");
                        String str3 = (TextUtils.isEmpty(strB) || (strArrSplit = strB.split("\\|")) == null || strArrSplit.length != 5) ? null : strArrSplit[4];
                        if ((com.igexin.push.extension.distribution.gbd.c.a.aq || TextUtils.isEmpty(str3)) && com.igexin.push.extension.distribution.gbd.c.c.ae != null && com.igexin.push.extension.distribution.gbd.c.c.ae.containsKey(str2)) {
                            str3 = com.igexin.push.extension.distribution.gbd.c.c.ae.get(str2);
                        }
                        return a(str2, str3, z);
                    }
                }
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
        return null;
    }

    public static synchronized j a() {
        if (d == null) {
            d = new j(com.igexin.push.extension.distribution.gbd.c.c.f373a);
        }
        return d;
    }

    private m a(int i, String str, List<String> list, boolean z, String str2, String str3, boolean z2) {
        Intent intentA;
        int i2 = i;
        String strC = c(list);
        boolean z3 = false;
        boolean z4 = true;
        char c = 1;
        char c2 = 1;
        char c3 = 1;
        k kVar = null;
        try {
            n nVar = this.g.get(str);
            if (this.f && i2 == 1 && !c(str)) {
                if (!z) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", str + " not a and s, return.");
                    return new m(i2, z3, strC, kVar);
                }
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", str + " not in pm white list, switch to service.");
                i2 = 2;
            }
            if (i2 == 1) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start aGuard pkg = " + str);
                if (nVar != null && nVar != n.GACTIVITY) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start aGuard, pkg = " + str + "|not support act");
                }
                if (nVar == null || nVar == n.GACTIVITY) {
                    boolean zB = r.b(str);
                    Intent intent = new Intent();
                    if (!com.igexin.push.extension.distribution.gbd.c.a.bv) {
                        intentA = null;
                    } else if (com.igexin.push.extension.distribution.gbd.c.a.bN) {
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "d-a from local.");
                        intentA = b(str, z2);
                    } else {
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "d-a from config.");
                        intentA = a(str, z2);
                    }
                    if (intentA != null) {
                        i2 = 3;
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "in DA mode.");
                        intent = intentA;
                    } else {
                        intent.setClassName(str, "com.igexin.sdk.MActivity");
                    }
                    if (zB) {
                        intent.putExtra(PushConsts.CMD_ACTION, com.igexin.push.extension.distribution.gbd.c.b.d);
                        intent.putExtra("isSlave", false);
                    }
                    Intent intentB = b(str, intent);
                    if (com.igexin.push.extension.distribution.gbd.i.k.c(intentB, this.f337a) && a(str, intentB)) {
                        r.a();
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "MA or DA guard success, force = " + zB);
                        return new m(i2, z4, strC, kVar);
                    }
                    intentB.setClassName(str, "com.sdk.plus.EnhActivity");
                    try {
                        if (com.igexin.push.extension.distribution.gbd.i.k.c(intentB, this.f337a) && a(str, intentB)) {
                            r.a();
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "EnhA guard success, force = " + zB);
                            return new m(c3 == true ? 1 : 0, c2 == true ? 1 : 0, strC, kVar);
                        }
                        i2 = 1;
                    } catch (Throwable th) {
                        th = th;
                        i2 = 1;
                        com.igexin.push.extension.distribution.gbd.i.j.a(th);
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "startGuard exception = " + th.getMessage());
                        if (z2) {
                            i2 = 5;
                        }
                        o.a(str2, i2, str3, 2);
                        return new m(i2, z3, strC, kVar);
                    }
                }
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "aGuard failed, useServiceGuard = " + z);
                if (!z) {
                    return new m(i2, z3, strC, kVar);
                }
                i2 = 2;
            }
            if (i2 == 2) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start sGuard = " + str);
                if (nVar != null && nVar != n.SERVICE) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start sGuard = " + str + "|not support service, return");
                }
                if (nVar == null || nVar == n.SERVICE) {
                    b(str, strC);
                }
            }
            return new m(i2, c == true ? 1 : 0, strC, kVar);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private com.igexin.push.extension.distribution.gbd.b.f a(n nVar, boolean z) {
        if (!com.igexin.push.extension.distribution.gbd.c.a.bM || !com.igexin.push.extension.distribution.gbd.i.k.l(com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "isGEnable = false or check not safe.");
            return new com.igexin.push.extension.distribution.gbd.b.f(false, false);
        }
        if (!com.igexin.push.extension.distribution.gbd.i.k.a(this.f337a)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "|canScan = false");
            return new com.igexin.push.extension.distribution.gbd.b.f(false, false);
        }
        if (!r.a(a(nVar))) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "|BrandSdkRom GuardEnable = false");
            return new com.igexin.push.extension.distribution.gbd.b.f(false, false);
        }
        if ((nVar == n.GACTIVITY && !com.igexin.push.extension.distribution.gbd.c.a.bP) || ((nVar == n.SERVICE && !com.igexin.push.extension.distribution.gbd.c.a.bQ) || (nVar == n.ONEOF && !com.igexin.push.extension.distribution.gbd.c.a.bP && !com.igexin.push.extension.distribution.gbd.c.a.bQ))) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", nVar + "|aGuardEnable = " + com.igexin.push.extension.distribution.gbd.c.a.bP + "|sGuardEnable = " + com.igexin.push.extension.distribution.gbd.c.a.bQ);
            return new com.igexin.push.extension.distribution.gbd.b.f(false, false);
        }
        if (nVar != n.GACTIVITY) {
            return new com.igexin.push.extension.distribution.gbd.b.f(false, b(nVar));
        }
        boolean zB = b(n.SERVICE);
        if (!b(n.GACTIVITY)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "pMGuard aEnable = false, sEnable = " + zB);
            return new com.igexin.push.extension.distribution.gbd.b.f(false, zB);
        }
        if (!com.igexin.push.extension.distribution.gbd.i.k.c(this.f337a)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "isScreenOn = false, gEnable = true");
            return new com.igexin.push.extension.distribution.gbd.b.f(true, false);
        }
        if (!z) {
            return new com.igexin.push.extension.distribution.gbd.b.f(false, zB);
        }
        boolean zF = com.igexin.push.extension.distribution.gbd.i.k.f();
        boolean zD = com.igexin.push.extension.distribution.gbd.i.k.d();
        boolean zA = a(zD);
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "audioAvailable " + zF + "  isForeground " + zD + "  isActivityAvailable " + zA);
        return (zF && zD && zA) ? new com.igexin.push.extension.distribution.gbd.b.f(true, false) : new com.igexin.push.extension.distribution.gbd.b.f(false, zB);
    }

    private String a(n nVar) {
        int i = l.f339a[nVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "" : "all" : "oneof" : "service" : "activity";
    }

    private List<String> a(int i, boolean z) {
        Map<String, n> map;
        n nVar;
        if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aC)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "pMBlacklist is empty or null");
            return null;
        }
        String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.aC.split(",");
        if (strArrSplit.length == 0) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "pMBlacklist is empty or null");
            return null;
        }
        String strR = com.igexin.push.extension.distribution.gbd.i.k.r();
        if (TextUtils.isEmpty(strR)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        this.g.clear();
        int length = strArrSplit.length;
        char c = 0;
        int i2 = 0;
        while (i2 < length) {
            String str = strArrSplit[i2];
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit2 = str.split(":");
                boolean z2 = true;
                String str2 = strArrSplit2[1];
                if (strArrSplit2.length == 4 && strR.equalsIgnoreCase(strArrSplit2[c]) && !TextUtils.isEmpty(str2) && !arrayList.contains(str2)) {
                    if (com.igexin.push.extension.distribution.gbd.i.k.d(str2, com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
                        boolean z3 = Boolean.parseBoolean(strArrSplit2[2]);
                        boolean z4 = Boolean.parseBoolean(strArrSplit2[3]);
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "brand = " + strR + "|pkg = " + str2 + "|aEnable = " + z3 + "|sEnable = " + z4);
                        if (!z3 || !z4) {
                            if (z3 || z4) {
                                if (i == 2 && !z4) {
                                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "guard type = " + i + "|pkg = " + str2 + " matched, in pm black list ###");
                                } else if (i == 1) {
                                    if (z3) {
                                        Intent intent = new Intent();
                                        intent.setClassName(str2, "com.igexin.sdk.MActivity");
                                        boolean zC = com.igexin.push.extension.distribution.gbd.i.k.c(intent, this.f337a);
                                        intent.setClassName(str2, "com.igexin.sdk.GActivity");
                                        if (!zC && !com.igexin.push.extension.distribution.gbd.i.k.c(intent, this.f337a)) {
                                            z2 = false;
                                        }
                                        if (z2) {
                                            map = this.g;
                                            nVar = n.GACTIVITY;
                                        } else {
                                            arrayList.add(str2);
                                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "getPMGuardBlackList-> " + str2 + " activitySet = false, add to pMGuardBlackList");
                                        }
                                    } else if (z) {
                                        map = this.g;
                                        nVar = n.SERVICE;
                                    }
                                    map.put(str2, nVar);
                                }
                                arrayList.add(str2);
                            } else {
                                arrayList.add(str2);
                            }
                        }
                    } else {
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "pkg = " + str2 + " not install");
                    }
                }
            }
            i2++;
            c = 0;
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "PMGuardBlack-> = " + arrayList.toString());
        return arrayList;
    }

    private List<String> a(Map<String, List<String>> map, List<String> list, int i, boolean z, boolean z2) {
        ArrayList<String> arrayList = new ArrayList();
        if (map != null && !map.isEmpty()) {
            if (!"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.bB) && !TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bB)) {
                try {
                    if (this.c == null) {
                        this.c = new HashMap<>();
                    }
                    this.c.clear();
                    String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.bB.split(",");
                    if (strArrSplit != null && strArrSplit.length > 0) {
                        for (String str : strArrSplit) {
                            String[] strArrSplit2 = str.split(":");
                            if (strArrSplit2 != null && strArrSplit2.length == 3) {
                                this.c.put(strArrSplit2[0], strArrSplit2[1] + ":" + strArrSplit2[2]);
                            }
                        }
                    }
                } catch (Throwable th) {
                    com.igexin.push.extension.distribution.gbd.i.j.a(th);
                }
            }
            if (list != null && !list.isEmpty()) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "remove all running, running =  " + list.toString());
                Iterator<Map.Entry<String, List<String>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    if (list.contains(it.next().getKey())) {
                        it.remove();
                    }
                }
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "after remove running, guardList =  " + map.toString());
            if (!com.igexin.push.extension.distribution.gbd.c.a.bV.equals("none")) {
                ArrayList arrayList2 = new ArrayList(Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.bV.split(",")));
                Iterator<Map.Entry<String, List<String>>> it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    if (a(it2.next().getKey(), arrayList2)) {
                        it2.remove();
                    }
                }
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "after remove blacklist, guardList =  " + map.toString());
            if (!z2) {
                r.a(map);
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "after transmission filter, guardList =  " + map.toString());
            List<String> listA = a(i, z);
            if (listA != null && !listA.isEmpty()) {
                Iterator<Map.Entry<String, List<String>>> it3 = map.entrySet().iterator();
                while (it3.hasNext()) {
                    if (listA.contains(it3.next().getKey())) {
                        it3.remove();
                    }
                }
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "after remove pm blacklist pkgs, guardList =  " + map.toString());
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bU) && !com.igexin.push.extension.distribution.gbd.c.a.bU.equals("none") && !map.isEmpty()) {
                ArrayList<String> arrayList3 = new ArrayList(Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.bU.split(",")));
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "white list = " + arrayList3.toString());
                if (!arrayList3.isEmpty()) {
                    for (String str2 : arrayList3) {
                        if (map.containsKey(str2)) {
                            arrayList.add(str2);
                        }
                    }
                }
            }
            if (!map.isEmpty()) {
                ArrayList arrayList4 = new ArrayList(map.keySet());
                for (String str3 : arrayList) {
                    if (arrayList4.contains(str3)) {
                        arrayList4.remove(str3);
                    }
                }
                Collections.shuffle(arrayList4);
                arrayList.addAll(arrayList4);
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "after add all whitelist, guardList =  " + arrayList.toString());
        }
        return arrayList;
    }

    private Map<String, List<String>> a(List<String> list, List<String> list2, boolean z) {
        Map<String, com.igexin.push.extension.distribution.gbd.b.e> mapB = a.a().b();
        TreeMap treeMap = new TreeMap();
        if (mapB != null && !mapB.isEmpty()) {
            for (Map.Entry<String, com.igexin.push.extension.distribution.gbd.b.e> entry : mapB.entrySet()) {
                String key = entry.getKey();
                com.igexin.push.extension.distribution.gbd.b.e value = entry.getValue();
                if (!TextUtils.isEmpty(key) && value != null) {
                    int iC = value.c();
                    List<String> listD = value.d();
                    if (!treeMap.containsKey(key) && iC == 1 && listD != null) {
                        treeMap.put(key, listD);
                    }
                }
            }
        }
        if (treeMap.isEmpty()) {
            return treeMap;
        }
        if (list2 != null && !list2.isEmpty() && z) {
            try {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "transmission filter.");
                Iterator it = treeMap.entrySet().iterator();
                while (it.hasNext()) {
                    if (!list2.contains((String) ((Map.Entry) it.next()).getKey())) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                com.igexin.push.extension.distribution.gbd.i.j.a(th);
            }
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "Plus AppList =  " + treeMap.toString());
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) this.f337a.getSystemService("activity")).getRunningServices(2000);
        if (runningServices == null || runningServices.isEmpty()) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", " rsi empty.");
            return treeMap;
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "rsi " + runningServices.size());
        for (Map.Entry entry2 : treeMap.entrySet()) {
            String str = (String) entry2.getKey();
            Iterator it2 = ((List) entry2.getValue()).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (com.igexin.push.extension.distribution.gbd.i.k.a((String) it2.next(), str, runningServices) && !list.contains(str)) {
                    list.add(str);
                    break;
                }
            }
        }
        return treeMap;
    }

    private void a(int i, List<String> list, boolean z) {
        try {
            ArrayList arrayList = new ArrayList();
            Map<String, List<String>> mapA = a(arrayList, list, z);
            if (mapA.size() <= 0) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "hasServiceAppList size <= 0");
                return;
            }
            if (i == 2 && !z) {
                o.a("none", i, this.b.format(new Date()), 3);
            }
            a((List<String>) arrayList, mapA, i, false, z);
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    private void a(Intent intent) {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "bind service.");
        this.f337a.bindService(intent, new k(this), 1);
    }

    private void a(String str) {
        String str2 = com.igexin.push.extension.distribution.gbd.c.c.af.get(str);
        String[] strArr = com.igexin.push.extension.distribution.gbd.i.k.a(str) ? new String[]{com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageName()} : null;
        if (!TextUtils.isEmpty(str2) && a(str, str2)) {
            try {
                ContentResolver contentResolver = com.igexin.push.extension.distribution.gbd.c.c.f373a.getContentResolver();
                Uri uri = Uri.parse("content://com.sdk.plus." + str + "/*");
                if (uri == null) {
                    return;
                }
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "dyn pd.");
                Cursor cursorQuery = contentResolver.query(uri, strArr, null, null, null);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } finally {
            }
        } else {
            if (!a(str, "com.sdk.plus.EnhProvider")) {
                return;
            }
            try {
                ContentResolver contentResolver2 = com.igexin.push.extension.distribution.gbd.c.c.f373a.getContentResolver();
                Uri uri2 = Uri.parse("content://com.sdk.plus." + str + "/*");
                if (uri2 == null) {
                    return;
                }
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "enh pd.");
                Cursor cursorQuery2 = contentResolver2.query(uri2, strArr, null, null, null);
                if (cursorQuery2 != null) {
                    cursorQuery2.close();
                }
            } finally {
            }
        }
    }

    private void a(String str, int i, String str2, String str3, boolean z) {
        try {
            String str4 = str.split(",")[0];
            String str5 = str.split(",")[1];
            if (z) {
                i = (i == 1 || i == 3) ? 4 : 5;
            }
            o.a(str, i, str3, 0);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA_guard", "success start " + str4 + " type = " + i);
            ArrayList arrayList = new ArrayList();
            arrayList.add(str2);
            HashMap map = new HashMap();
            map.put("pkgName", str4);
            map.put("srvName", str5);
            map.put(Constants.Value.DATETIME, str3);
            map.put("checkList", arrayList);
            o.a(map, 0, i);
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "saveResultAndCheck exception = " + th.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.util.List<java.lang.String> r18, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r19, int r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.j.a(java.util.List, java.util.Map, int, boolean, boolean):void");
    }

    private boolean a(int i, int i2) {
        String str;
        if (i == i2) {
            str = "running s count = all list, need't guard ~~~";
        } else {
            if (i < com.igexin.push.extension.distribution.gbd.c.a.bT) {
                return true;
            }
            str = "running cnt > " + com.igexin.push.extension.distribution.gbd.c.a.bT + ", need't guard ~~~";
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", str);
        return false;
    }

    private boolean a(n nVar, String str) {
        try {
            if (nVar == n.GACTIVITY && !TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aD) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.aD)) {
                for (String str2 : com.igexin.push.extension.distribution.gbd.c.a.aD.split(",")) {
                    String[] strArrSplit = str2.split(":");
                    if (strArrSplit.length == 2) {
                        String str3 = strArrSplit[0];
                        ArrayList arrayList = new ArrayList(Arrays.asList(strArrSplit[1].split("&")));
                        if (str.equalsIgnoreCase(str3) && arrayList.size() > 0) {
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "brandSelf in pm white list.");
                            this.e.clear();
                            this.e.addAll(arrayList);
                            this.f = true;
                            return true;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
        return false;
    }

    private boolean a(String str, Intent intent) {
        try {
            intent.setFlags(268435456);
            this.f337a.startActivity(intent);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "type = start by activity, pkg = " + str);
            return true;
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", e.getMessage());
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
            return false;
        }
    }

    public static boolean a(String str, String str2) {
        PackageInfo packageInfo;
        ProviderInfo[] providerInfoArr;
        try {
            if (TextUtils.isEmpty(str2) || (packageInfo = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getPackageInfo(str, 8)) == null || (providerInfoArr = packageInfo.providers) == null) {
                return false;
            }
            for (ProviderInfo providerInfo : providerInfoArr) {
                if (providerInfo.name.equals(str2)) {
                    if (providerInfo.authority.equals("com.sdk.plus." + str)) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
        return false;
    }

    private boolean a(String str, List<String> list) {
        boolean z;
        if (list != null && !list.isEmpty()) {
            for (String str2 : list) {
                try {
                    if (!TextUtils.isEmpty(str2)) {
                        if (!str2.contains(Operators.MUL)) {
                            if (str2.equals(str)) {
                                return true;
                            }
                        } else if (str2.indexOf(Operators.MUL) != str2.length() - 1) {
                            String[] strArrSplit = str.split("\\.");
                            String[] strArrSplit2 = str2.split("\\.");
                            if (strArrSplit.length >= strArrSplit2.length) {
                                int i = 0;
                                while (true) {
                                    if (i >= strArrSplit2.length) {
                                        z = true;
                                        break;
                                    }
                                    if (!strArrSplit2[i].equals(Operators.MUL) && !strArrSplit2[i].equals(strArrSplit[i])) {
                                        z = false;
                                        break;
                                    }
                                    i++;
                                }
                                if (z) {
                                    return true;
                                }
                            }
                        } else if (str.startsWith(str2.replace(Operators.MUL, ""))) {
                            return true;
                        }
                    }
                } catch (Throwable th) {
                    com.igexin.push.extension.distribution.gbd.i.j.a(th);
                }
            }
        }
        return false;
    }

    private boolean a(boolean z) {
        String str;
        boolean zE = e();
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "Build.VERSION = " + Build.VERSION.SDK_INT + " isSelfInPbl " + zE);
        if (!z || zE) {
            str = "self APP in background or in pbl, not guard a.";
        } else {
            boolean zG = g();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "  gblInstall " + zG);
            if (!zG) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "check gbl = false, gEnable = true");
                return true;
            }
            if (Build.VERSION.SDK_INT < 26) {
                try {
                    if (Build.VERSION.SDK_INT < 21) {
                        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) com.igexin.push.extension.distribution.gbd.c.c.f373a.getSystemService("activity")).getRunningTasks(1);
                        if (runningTasks == null || runningTasks.isEmpty()) {
                            return true;
                        }
                        ComponentName componentName = runningTasks.get(0).topActivity;
                        if (componentName != null) {
                            boolean zB = b(componentName.getPackageName());
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "Build.VERSION < 21, top app = " + componentName.getPackageName() + ",  isInBL = " + zB);
                            return !zB;
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 21 && Build.VERSION.SDK_INT < 24) {
                            List<String> listA = ae.a(false, true);
                            if (listA != null && !listA.isEmpty() && (listA.size() != 1 || !listA.get(0).equals(this.f337a.getPackageName()))) {
                                boolean zB2 = b(listA);
                                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "Build.VERSION >= 21 <24, isInBL = " + zB2);
                                return !zB2;
                            }
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "Build.VERSION >= 21 <24, recentList = null, guard = false");
                            return false;
                        }
                        List<String> listF = f();
                        if (listF != null && !listF.isEmpty() && (listF.size() != 1 || !listF.get(0).equals(this.f337a.getPackageName()))) {
                            boolean zB3 = b(listF);
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "Build.VERSION >= 24, isInBlackList = " + zB3);
                            return !zB3;
                        }
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "Build.VERSION >= 26, rs = null, guard = false");
                    }
                } catch (Throwable th) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", th.getMessage());
                    com.igexin.push.extension.distribution.gbd.i.j.a(th);
                }
                return false;
            }
            str = "Build.VERSION >= 8.0 and gblInstall.";
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", str);
        return false;
    }

    private Intent b(String str, Intent intent) {
        String[] strArrSplit;
        if (intent == null) {
            return null;
        }
        try {
            HashMap<String, String> map = this.c;
            if (map != null && !map.isEmpty() && this.c.containsKey(str)) {
                String str2 = this.c.get(str);
                if (!TextUtils.isEmpty(str2) && (strArrSplit = str2.split(":")) != null && strArrSplit.length == 2) {
                    String str3 = strArrSplit[0];
                    String packageName = strArrSplit[1];
                    if ("pkg".equals(str3) && Operators.MUL.equals(packageName)) {
                        packageName = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageName();
                        intent.putExtra("pkg", packageName);
                    } else {
                        intent.putExtra(str3, packageName);
                    }
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "intent info " + str3 + Operators.SPACE_STR + packageName);
                }
            }
            return intent;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return null;
        }
    }

    private Intent b(String str, boolean z) {
        try {
            if (com.igexin.push.extension.distribution.gbd.c.c.ae != null && !com.igexin.push.extension.distribution.gbd.c.c.ae.isEmpty()) {
                if (!com.igexin.push.extension.distribution.gbd.c.c.ae.keySet().contains(str)) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA_guard", " not in d-a local list.");
                    return null;
                }
                if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bs)) {
                    ArrayList arrayList = new ArrayList(Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.bs.split(",")));
                    if (!arrayList.isEmpty() && arrayList.contains(str)) {
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA_guard", " in d-a black list.");
                        return null;
                    }
                }
                return a(str, com.igexin.push.extension.distribution.gbd.c.c.ae.get(str), z);
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA_guard", "d-a map null.");
            return null;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return null;
        }
    }

    private void b(String str, String str2) throws Throwable {
        boolean z;
        boolean z2;
        boolean z3;
        boolean zB = r.b(str);
        try {
            if (com.igexin.push.extension.distribution.gbd.c.a.bR) {
                a(str);
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
        Intent intent = new Intent();
        boolean z4 = true;
        try {
            intent.setClassName(str, str2);
            Intent intentB = b(str, intent);
            if (com.igexin.push.extension.distribution.gbd.i.k.a(intentB, this.f337a)) {
                if (zB) {
                    intentB.putExtra(PushConsts.CMD_ACTION, com.igexin.push.extension.distribution.gbd.c.b.d);
                }
                try {
                    this.f337a.startService(intentB);
                    z2 = true;
                } catch (Throwable th2) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start  " + th2.toString());
                    com.igexin.push.extension.distribution.gbd.i.j.a(th2);
                    z2 = false;
                }
                try {
                    a(intentB);
                    z3 = true;
                } catch (Throwable th3) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "bind  " + th3.toString());
                    com.igexin.push.extension.distribution.gbd.i.j.a(th3);
                    z3 = false;
                }
                z = z2 || z3;
                try {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start s by pkg = " + str + "|s = " + str2 + "|force = " + zB);
                } catch (Throwable th4) {
                    th = th4;
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "startEnhS error|" + th.getMessage());
                    com.igexin.push.extension.distribution.gbd.i.j.a(th);
                }
            } else {
                z = false;
            }
        } catch (Throwable th5) {
            th = th5;
            z = false;
        }
        try {
            Intent intent2 = new Intent();
            intent2.setPackage(str);
            intent2.setAction("com.sdk.plus.action." + str);
            if (com.igexin.push.extension.distribution.gbd.i.k.a(intent2, this.f337a)) {
                if (zB) {
                    intent2.putExtra(PushConsts.CMD_ACTION, com.igexin.push.extension.distribution.gbd.c.b.d);
                }
                this.f337a.startService(intent2);
                try {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start s by action, pkg = " + str + "|force = " + zB);
                } catch (Throwable th6) {
                    th = th6;
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start ie EnhS error|" + th.getMessage());
                    com.igexin.push.extension.distribution.gbd.i.j.a(th);
                }
            } else {
                z4 = false;
            }
        } catch (Throwable th7) {
            th = th7;
            z4 = false;
        }
        if (!z4 && !z) {
            throw new Throwable("start s error");
        }
    }

    private boolean b(n nVar) {
        try {
            String strR = com.igexin.push.extension.distribution.gbd.i.k.r();
            if (TextUtils.isEmpty(strR)) {
                return false;
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "brand = " + strR);
            this.f = false;
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aC)) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "pMBlacklist is empty or null");
                return true;
            }
            String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.aC.split(",");
            if (strArrSplit.length == 0) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "pMBlacklist is empty or null");
                return true;
            }
            for (String str : strArrSplit) {
                if (!TextUtils.isEmpty(str)) {
                    String[] strArrSplit2 = str.split(":");
                    if (strArrSplit2.length == 3 && strR.equalsIgnoreCase(strArrSplit2[0])) {
                        boolean z = Boolean.parseBoolean(strArrSplit2[1]);
                        boolean z2 = Boolean.parseBoolean(strArrSplit2[2]);
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "brand = " + strR + "|aEnable = " + z + "|sEnable = " + z2);
                        if (nVar == n.GACTIVITY) {
                            return z || a(nVar, strR);
                        }
                        if (nVar == n.SERVICE) {
                            return z2;
                        }
                        if (nVar == n.ALL) {
                            return z && z2;
                        }
                        if (nVar == n.ONEOF) {
                            return z || z2;
                        }
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return false;
        }
    }

    private boolean b(String str) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.ay)) {
            for (String str2 : com.igexin.push.extension.distribution.gbd.c.a.ay.split(",")) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean b(List<String> list) {
        if (list == null || list.isEmpty() || TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.ay)) {
            return false;
        }
        List listAsList = Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.ay.split(","));
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (listAsList.contains(it.next())) {
                return true;
            }
        }
        return false;
    }

    private String c(List<String> list) {
        if (list == null || list.isEmpty()) {
            return "com.sdk.plus.EnhService";
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        for (String str : list) {
            if (!str.equals("com.igexin.sdk.PushService") && !str.equals("com.sdk.plus.EnhService")) {
                return str;
            }
        }
        return "com.sdk.plus.EnhService";
    }

    private boolean c(String str) {
        try {
            List<String> list = this.e;
            if (list != null && !list.isEmpty()) {
                return this.e.contains(str);
            }
            return false;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return false;
        }
    }

    private String d(String str) {
        String strA = null;
        try {
            strA = com.igexin.push.extension.distribution.gbd.i.k.a(str, this.f337a);
            if (TextUtils.isEmpty(strA) && !TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.am)) {
                strA = com.igexin.push.extension.distribution.gbd.c.c.am;
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "guard appid = " + strA + "|pkg = " + str);
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
        return strA;
    }

    private boolean e() {
        if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bt)) {
            String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.bt.split(",");
            String packageName = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageName();
            for (String str : strArrSplit) {
                if (packageName.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private List<String> f() {
        ArrayList arrayList = new ArrayList();
        try {
            List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) this.f337a.getSystemService("activity")).getRunningServices(2000);
            if (runningServices != null && !runningServices.isEmpty()) {
                Iterator<ActivityManager.RunningServiceInfo> it = runningServices.iterator();
                while (it.hasNext()) {
                    String packageName = it.next().service.getPackageName();
                    if (!arrayList.contains(packageName)) {
                        arrayList.add(packageName);
                    }
                }
                return arrayList;
            }
            return null;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return null;
        }
    }

    private boolean g() {
        if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.ay)) {
            for (String str : com.igexin.push.extension.distribution.gbd.c.a.ay.split(",")) {
                if (com.igexin.push.extension.distribution.gbd.i.k.d(str, this.f337a)) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", str + " install, in video blacklist");
                    return true;
                }
            }
        }
        return false;
    }

    public synchronized void a(List<String> list) {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start t Guard ~~~");
        if (list != null && !list.isEmpty()) {
            if (!r.a("transmission")) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "t Guard BrandSdkRom not Enable.");
                return;
            }
            if (a(n.GACTIVITY, true).f366a) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start t Guard, aEnable = true, guard a.");
                a(1, list, true);
            } else {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start t Guard, aEnable = false, return.");
            }
            return;
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "t Guard no pkg.");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void b() {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.j.b():void");
    }

    public synchronized void c() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start aGuard ~~~");
        com.igexin.push.extension.distribution.gbd.b.f fVarA = a(n.GACTIVITY, false);
        com.igexin.push.extension.distribution.gbd.b.f fVarA2 = a(n.SERVICE, false);
        if (fVarA.f366a) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start aGuard, aEnable = true, guard a.");
            a(1, (List<String>) null, false);
        } else if (fVarA2.b && com.igexin.push.extension.distribution.gbd.i.k.g()) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start aGuard, aEnable = false, sEnable = true, guard s.");
            a(2, (List<String>) null, false);
        } else {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start aGuard, aEnable = false, sEnable = false, return.");
        }
    }

    public synchronized void d() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start sGuard ~~~");
        if (a(n.SERVICE, false).b && com.igexin.push.extension.distribution.gbd.i.k.g()) {
            a(2, (List<String>) null, false);
            return;
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GPSA", "start sGuard, available = false");
    }
}
