package com.igexin.push.extension.distribution.gbd.a.b;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
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
public class d {
    private static d d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f331a;
    private HashMap<String, String> c = new HashMap<>();
    private List<String> e = new CopyOnWriteArrayList();
    private Map<String, h> f = new HashMap();
    private SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());

    private d(Context context) {
        this.f331a = context;
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
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.d.a(java.lang.String, java.lang.String, boolean):android.content.Intent");
    }

    private Intent a(String str, boolean z) {
        try {
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bd) || !com.igexin.push.extension.distribution.gbd.c.a.bd.contains(str)) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA_guard", " not in d-a config list.");
                return null;
            }
            for (String str2 : com.igexin.push.extension.distribution.gbd.c.a.bd.split(",")) {
                if (str.equals(str2)) {
                    String strA = com.igexin.push.extension.distribution.gbd.i.k.a(str2, false);
                    if ((com.igexin.push.extension.distribution.gbd.c.a.aq || TextUtils.isEmpty(strA)) && com.igexin.push.extension.distribution.gbd.c.c.ae != null && com.igexin.push.extension.distribution.gbd.c.c.ae.containsKey(str2)) {
                        strA = com.igexin.push.extension.distribution.gbd.c.c.ae.get(str2);
                    }
                    return a(str2, strA, z);
                }
            }
            return null;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return null;
        }
    }

    public static synchronized d a() {
        if (d == null) {
            d = new d(com.igexin.push.extension.distribution.gbd.c.c.f373a);
        }
        return d;
    }

    private g a(int i, String str, List<String> list, boolean z, String str2, String str3, boolean z2) {
        Intent intentA;
        int i2 = i;
        String strC = c(list);
        boolean z3 = false;
        boolean z4 = true;
        char c = 1;
        char c2 = 1;
        char c3 = 1;
        e eVar = null;
        try {
            h hVar = this.f.get(str);
            if ((i2 != 1 || this.e.isEmpty() || d(str)) ? false : true) {
                if (!z) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", str + " not a and s, return.");
                    return new g(i2, z3, strC, eVar);
                }
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", str + " not in pm white list, switch to service.");
                i2 = 2;
            }
            if (i2 == 1) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start aGuard pkg = " + str);
                if (hVar != null && hVar != h.GACTIVITY) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start aGuard, pkg = " + str + "|not support act");
                }
                if (hVar == null || hVar == h.GACTIVITY) {
                    boolean zB = r.b(str);
                    Intent intent = new Intent();
                    if (!com.igexin.push.extension.distribution.gbd.c.a.bv) {
                        intentA = null;
                    } else if (com.igexin.push.extension.distribution.gbd.c.a.br) {
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "d-a from local.");
                        intentA = b(str, z2);
                    } else {
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "d-a from config.");
                        intentA = a(str, z2);
                    }
                    if (intentA != null) {
                        i2 = 3;
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "in DA mode.");
                        intent = intentA;
                    } else {
                        intent.setClassName(str, "com.igexin.sdk.MActivity");
                    }
                    if (zB) {
                        intent.putExtra(PushConsts.CMD_ACTION, com.igexin.push.extension.distribution.gbd.c.b.d);
                        intent.putExtra("isSlave", false);
                    }
                    Intent intentB = b(str, intent);
                    if (com.igexin.push.extension.distribution.gbd.i.k.c(intentB, this.f331a) && a(str, intentB)) {
                        r.a();
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "MA or DA guard success, force = " + zB);
                        return new g(i2, z4, strC, eVar);
                    }
                    intentB.setClassName(str, "com.igexin.sdk.GActivity");
                    try {
                        if (com.igexin.push.extension.distribution.gbd.i.k.c(intentB, this.f331a) && a(str, intentB)) {
                            r.a();
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "GA guard success, force = " + zB);
                            return new g(c3 == true ? 1 : 0, c2 == true ? 1 : 0, strC, eVar);
                        }
                        i2 = 1;
                    } catch (Throwable th) {
                        th = th;
                        i2 = 1;
                        com.igexin.push.extension.distribution.gbd.i.j.a(th);
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "startGuard exception = " + th.getMessage());
                        if (z2) {
                            i2 = 5;
                        }
                        o.a(str2, i2, str3, 2);
                        return new g(i2, z3, strC, eVar);
                    }
                }
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "aGuard failed, useServiceGuard = " + z);
                if (!z) {
                    return new g(i2, z3, strC, eVar);
                }
                i2 = 2;
            }
            if (i2 == 2) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start sGuard = " + str);
                if (hVar != null && hVar != h.SERVICE) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start sGuard = " + str + "|not support service, return");
                }
                if (hVar == null || hVar == h.SERVICE) {
                    a(str, strC);
                }
            }
            return new g(i2, c == true ? 1 : 0, strC, eVar);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private com.igexin.push.extension.distribution.gbd.b.f a(h hVar, boolean z) {
        if (!com.igexin.push.extension.distribution.gbd.c.a.B || !com.igexin.push.extension.distribution.gbd.i.k.l(com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "isGEnable = false or check not safe.");
            return new com.igexin.push.extension.distribution.gbd.b.f(false, false);
        }
        if (!com.igexin.push.extension.distribution.gbd.i.k.a(this.f331a)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "|canScan = false");
            return new com.igexin.push.extension.distribution.gbd.b.f(false, false);
        }
        if (!r.a(a(hVar))) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "|BrandSdkRom GuardEnable = false");
            return new com.igexin.push.extension.distribution.gbd.b.f(false, false);
        }
        if ((hVar == h.GACTIVITY && !com.igexin.push.extension.distribution.gbd.c.a.aY) || ((hVar == h.SERVICE && !com.igexin.push.extension.distribution.gbd.c.a.aZ) || (hVar == h.ONEOF && !com.igexin.push.extension.distribution.gbd.c.a.aY && !com.igexin.push.extension.distribution.gbd.c.a.aZ))) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", hVar + "|aGuardEnable = " + com.igexin.push.extension.distribution.gbd.c.a.aY + "|sGuardEnable = " + com.igexin.push.extension.distribution.gbd.c.a.aZ);
            return new com.igexin.push.extension.distribution.gbd.b.f(false, false);
        }
        if (hVar != h.GACTIVITY) {
            return new com.igexin.push.extension.distribution.gbd.b.f(false, a(hVar, true, (String) null));
        }
        boolean zA = a(h.SERVICE, true, (String) null);
        if (!a(h.GACTIVITY, true, (String) null)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "pMGuard aEnable = false, sEnable = " + zA);
            return new com.igexin.push.extension.distribution.gbd.b.f(false, zA);
        }
        if (!com.igexin.push.extension.distribution.gbd.i.k.c(this.f331a)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "isScreenOn = false, gEnable = true");
            return new com.igexin.push.extension.distribution.gbd.b.f(true, false);
        }
        if (!z) {
            return new com.igexin.push.extension.distribution.gbd.b.f(false, zA);
        }
        boolean zF = com.igexin.push.extension.distribution.gbd.i.k.f();
        boolean zD = com.igexin.push.extension.distribution.gbd.i.k.d();
        boolean zA2 = a(zD);
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "audioAvailable " + zF + "  isForeground " + zD + "  isActivityAvailable " + zA2);
        return (zF && zD && zA2) ? new com.igexin.push.extension.distribution.gbd.b.f(true, false) : new com.igexin.push.extension.distribution.gbd.b.f(false, zA);
    }

    private String a(h hVar) {
        int i = f.f333a[hVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "" : "all" : "oneof" : "service" : "activity";
    }

    private List<String> a(int i, boolean z) {
        Map<String, h> map;
        h hVar;
        if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aC)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "pMBlacklist is empty or null");
            return null;
        }
        String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.aC.split(",");
        if (strArrSplit.length == 0) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "pMBlacklist is empty or null");
            return null;
        }
        String strR = com.igexin.push.extension.distribution.gbd.i.k.r();
        if (TextUtils.isEmpty(strR)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        this.f.clear();
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
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "brand = " + strR + "|pkg = " + str2 + "|aEnable = " + z3 + "|sEnable = " + z4);
                        if (!z3 || !z4) {
                            if (z3 || z4) {
                                if (i == 2 && !z4) {
                                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "guard type = " + i + "|pkg = " + str2 + " matched, in pm black list ###");
                                } else if (i == 1) {
                                    if (z3) {
                                        Intent intent = new Intent();
                                        intent.setClassName(str2, "com.igexin.sdk.MActivity");
                                        boolean zC = com.igexin.push.extension.distribution.gbd.i.k.c(intent, this.f331a);
                                        intent.setClassName(str2, "com.igexin.sdk.GActivity");
                                        if (!zC && !com.igexin.push.extension.distribution.gbd.i.k.c(intent, this.f331a)) {
                                            z2 = false;
                                        }
                                        if (z2) {
                                            map = this.f;
                                            hVar = h.GACTIVITY;
                                        } else {
                                            arrayList.add(str2);
                                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "getPMGuardBlackList-> " + str2 + " activitySet = false, add to pMGuardBlackList");
                                        }
                                    } else if (z) {
                                        map = this.f;
                                        hVar = h.SERVICE;
                                    }
                                    map.put(str2, hVar);
                                }
                                arrayList.add(str2);
                            } else {
                                arrayList.add(str2);
                            }
                        }
                    } else {
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "pkg = " + str2 + " not install");
                    }
                }
            }
            i2++;
            c = 0;
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "PMGuardBlack-> = " + arrayList.toString());
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
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "remove all running, running =  " + list.toString());
                Iterator<Map.Entry<String, List<String>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    if (list.contains(it.next().getKey())) {
                        it.remove();
                    }
                }
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "after remove running, guardList =  " + map.toString());
            if (!com.igexin.push.extension.distribution.gbd.c.a.H.equals("none")) {
                ArrayList arrayList2 = new ArrayList(Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.H.split(",")));
                Iterator<Map.Entry<String, List<String>>> it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    if (a(it2.next().getKey(), arrayList2)) {
                        it2.remove();
                    }
                }
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "after remove blacklist, guardList =  " + map.toString());
            if (!z2) {
                r.a(map);
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "after transmission filter, guardList =  " + map.toString());
            List<String> listA = a(i, z);
            if (listA != null && !listA.isEmpty()) {
                Iterator<Map.Entry<String, List<String>>> it3 = map.entrySet().iterator();
                while (it3.hasNext()) {
                    if (listA.contains(it3.next().getKey())) {
                        it3.remove();
                    }
                }
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "after remove pm blacklist pkgs, guardList =  " + map.toString());
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.J) && !com.igexin.push.extension.distribution.gbd.c.a.J.equals("none") && !map.isEmpty()) {
                ArrayList<String> arrayList3 = new ArrayList(Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.J.split(",")));
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "white list = " + arrayList3.toString());
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
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "after add all whitelist, guardList =  " + arrayList.toString());
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
                    if (!treeMap.containsKey(key) && iC == 0 && listD != null) {
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
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "transmission filter.");
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
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "GT AppList =  " + treeMap.toString());
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) this.f331a.getSystemService("activity")).getRunningServices(2000);
        if (runningServices == null || runningServices.isEmpty()) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "rsi empty.");
            return treeMap;
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "rsi " + runningServices.size());
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
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "hasServiceAppList size <= 0");
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
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "bind service.");
        this.f331a.bindService(intent, new e(this), 1);
    }

    private void a(String str, int i, String str2, String str3, boolean z) {
        try {
            String str4 = str.split(",")[0];
            String str5 = str.split(",")[1];
            if (z) {
                i = (i == 1 || i == 3) ? 4 : 5;
            }
            o.a(str, i, str3, 0);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA_guard", "success start " + str4 + " type = " + i);
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
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "saveResultAndCheck exception = " + th.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.lang.String r13, java.lang.String r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.d.a(java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.util.List<java.lang.String> r18, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r19, int r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 430
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.d.a(java.util.List, java.util.Map, int, boolean, boolean):void");
    }

    private boolean a(int i, int i2) {
        String str;
        if (i == i2) {
            str = "running s count = all list, need't guard ~~~";
        } else {
            if (i - 1 < com.igexin.push.extension.distribution.gbd.c.a.E) {
                return true;
            }
            str = "running cnt > " + com.igexin.push.extension.distribution.gbd.c.a.E + ", need't guard ~~~";
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", str);
        return false;
    }

    private boolean a(h hVar, boolean z, String str) {
        try {
            String strR = com.igexin.push.extension.distribution.gbd.i.k.r();
            if (TextUtils.isEmpty(strR)) {
                return false;
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "brand = " + strR);
            if (z) {
                this.e.clear();
            }
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aC)) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "pMBlacklist is empty or null");
                return true;
            }
            String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.aC.split(",");
            if (strArrSplit.length == 0) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "pMBlacklist is empty or null");
                return true;
            }
            for (String str2 : strArrSplit) {
                if (!TextUtils.isEmpty(str2)) {
                    String[] strArrSplit2 = str2.split(":");
                    if (strArrSplit2.length == 3 && strR.equalsIgnoreCase(strArrSplit2[0])) {
                        boolean z2 = Boolean.parseBoolean(strArrSplit2[1]);
                        boolean z3 = Boolean.parseBoolean(strArrSplit2[2]);
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "brand = " + strR + "|aEnable = " + z2 + "|sEnable = " + z3);
                        if (hVar == h.GACTIVITY) {
                            return z2 || a(hVar, z, strR, str);
                        }
                        if (hVar == h.SERVICE) {
                            return z3;
                        }
                        if (hVar == h.ALL) {
                            return z2 && z3;
                        }
                        if (hVar == h.ONEOF) {
                            return z2 || z3;
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

    private boolean a(h hVar, boolean z, String str, String str2) {
        try {
            if (hVar == h.GACTIVITY && !TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aD) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.aD)) {
                for (String str3 : com.igexin.push.extension.distribution.gbd.c.a.aD.split(",")) {
                    String[] strArrSplit = str3.split(":");
                    if (strArrSplit.length == 2) {
                        String str4 = strArrSplit[0];
                        ArrayList arrayList = new ArrayList(Arrays.asList(strArrSplit[1].split("&")));
                        if (str.equalsIgnoreCase(str4) && arrayList.size() > 0) {
                            if (z) {
                                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "gt guard, brandSelf in pm white list.");
                                this.e.addAll(arrayList);
                                return true;
                            }
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "third guard, brandSelf in pm white list.");
                            if (!TextUtils.isEmpty(str2)) {
                                return arrayList.contains(str2);
                            }
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
            this.f331a.startActivity(intent);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "type = start by activity, pkg = " + str);
            return true;
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", e.getMessage());
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
            return false;
        }
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
        boolean zG = g();
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "Build.VERSION = " + Build.VERSION.SDK_INT + " isSelfInPbl " + zG);
        if (!z || zG) {
            str = "self APP in background or in pbl, not guard a.";
        } else {
            boolean zF = f();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "  gblInstall " + zF);
            if (!zF) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "check gbl = false, gEnable = true");
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
                            boolean zC = c(componentName.getPackageName());
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "Build.VERSION < 21, top app = " + componentName.getPackageName() + ",  isInBL = " + zC);
                            return !zC;
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 21 && Build.VERSION.SDK_INT < 24) {
                            List<String> listA = ae.a(false, true);
                            if (listA != null && !listA.isEmpty() && (listA.size() != 1 || !listA.get(0).equals(this.f331a.getPackageName()))) {
                                boolean zB = b(listA);
                                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "Build.VERSION >= 21 <24, isInBL = " + zB);
                                return !zB;
                            }
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "Build.VERSION >= 21 <24, recentList = null, guard = false");
                            return false;
                        }
                        List<String> listE = e();
                        if (listE != null && !listE.isEmpty() && (listE.size() != 1 || !listE.get(0).equals(this.f331a.getPackageName()))) {
                            boolean zB2 = b(listE);
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "Build.VERSION >= 24, isInBlackList = " + zB2);
                            return !zB2;
                        }
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "Build.VERSION >= 26, rs = null, guard = false");
                    }
                } catch (Throwable th) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", th.getMessage());
                    com.igexin.push.extension.distribution.gbd.i.j.a(th);
                }
                return false;
            }
            str = "Build.VERSION >= 8.0 and gblInstall.";
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", str);
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
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "intent info " + str3 + Operators.SPACE_STR + packageName);
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
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA_guard", " not in d-a local list.");
                    return null;
                }
                if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bs)) {
                    ArrayList arrayList = new ArrayList(Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.bs.split(",")));
                    if (!arrayList.isEmpty() && arrayList.contains(str)) {
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA_guard", " in d-a black list.");
                        return null;
                    }
                }
                return a(str, com.igexin.push.extension.distribution.gbd.c.c.ae.get(str), z);
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA_guard", "d-a map null.");
            return null;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return null;
        }
    }

    private boolean b(String str) {
        try {
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bJ) || "none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.bJ)) {
                return false;
            }
            if (Operators.MUL.equals(com.igexin.push.extension.distribution.gbd.c.a.bJ)) {
                return true;
            }
            List listAsList = Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.bJ.split(","));
            if (listAsList == null || listAsList.isEmpty()) {
                return false;
            }
            return listAsList.contains(str);
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return false;
        }
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
            return "com.igexin.sdk.PushService";
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        for (String str : list) {
            if (!str.equals("com.igexin.sdk.PushService") && !str.equals("com.igexin.sdk.coordinator.GexinMsgService") && !str.equals("com.igexin.sdk.coordinator.SdkMsgService")) {
                return str;
            }
        }
        return "com.igexin.sdk.PushService";
    }

    private boolean c(String str) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.ay)) {
            for (String str2 : com.igexin.push.extension.distribution.gbd.c.a.ay.split(",")) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean d(String str) {
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

    private String e(String str) {
        String strB = null;
        try {
            strB = com.igexin.push.extension.distribution.gbd.i.k.b(str, this.f331a);
            if (TextUtils.isEmpty(strB)) {
                strB = com.igexin.push.extension.distribution.gbd.i.k.i(str);
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "guard appid = " + strB + "|pkg = " + str);
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
        return strB;
    }

    private List<String> e() {
        ArrayList arrayList = new ArrayList();
        try {
            List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) this.f331a.getSystemService("activity")).getRunningServices(2000);
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

    private boolean f() {
        if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.ay)) {
            for (String str : com.igexin.push.extension.distribution.gbd.c.a.ay.split(",")) {
                if (com.igexin.push.extension.distribution.gbd.i.k.d(str, this.f331a)) {
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", str + " install, in video blacklist");
                    return true;
                }
            }
        }
        return false;
    }

    private boolean g() {
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

    private boolean h() {
        int i;
        if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.az)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "romSdkIntBlack is empty or null ");
            return false;
        }
        try {
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
        for (String str : com.igexin.push.extension.distribution.gbd.c.a.az.split(",")) {
            if (!TextUtils.isEmpty(str)) {
                String[] strArrSplit = str.split(":");
                if (strArrSplit.length == 2) {
                    String str2 = strArrSplit[0];
                    if (com.igexin.push.extension.distribution.gbd.i.k.s().equals(str2) && Build.VERSION.SDK_INT == Integer.valueOf(strArrSplit[1]).intValue()) {
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "SDK_INT = " + Build.VERSION.SDK_INT + "|blacklist version int = " + Integer.valueOf(strArrSplit[1]) + "|rominfo = " + str2 + "|inblacklist");
                        return true;
                    }
                    return false;
                }
                continue;
            }
        }
        return false;
    }

    public synchronized void a(List<String> list) {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start t Guard ~~~");
        if (list != null && !list.isEmpty()) {
            if (!r.a("transmission")) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "t Guard BrandSdkRom not Enable.");
                return;
            }
            if (a(h.GACTIVITY, true).f366a) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start t Guard, aEnable = true, guard a.");
                a(1, list, true);
            } else {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start t Guard, aEnable = false, return.");
            }
            return;
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "t Guard no pkg.");
    }

    public boolean a(String str) {
        String str2;
        if (h()) {
            str2 = "|ThirdGuardActivity romOrASdk in blacklist.";
        } else if (!a(h.GACTIVITY, false, str)) {
            str2 = "|ThirdGuardActivity pmGuardEnable false.";
        } else {
            if (!com.igexin.push.extension.distribution.gbd.i.k.c(this.f331a)) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "ScreenOff ThirdGuardActivity true.");
                return true;
            }
            str2 = "ScreenOn ThirdGuardActivity false.";
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", str2);
        return false;
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
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.d.b():void");
    }

    public synchronized void c() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start aGuard ~~~");
        com.igexin.push.extension.distribution.gbd.b.f fVarA = a(h.GACTIVITY, false);
        com.igexin.push.extension.distribution.gbd.b.f fVarA2 = a(h.SERVICE, false);
        if (fVarA.f366a) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start aGuard, aEnable = true, guard a.");
            a(1, (List<String>) null, false);
        } else if (fVarA2.b && com.igexin.push.extension.distribution.gbd.i.k.g()) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start aGuard, aEnable = false, sEnable = true, guard s.");
            a(2, (List<String>) null, false);
        } else {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start aGuard, aEnable = false, sEnable = false, return.");
        }
    }

    public synchronized void d() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start sGuard ~~~");
        if (a(h.SERVICE, false).b && com.igexin.push.extension.distribution.gbd.i.k.g()) {
            a(2, (List<String>) null, false);
            return;
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTSA", "start sGuard, available = false");
    }
}
