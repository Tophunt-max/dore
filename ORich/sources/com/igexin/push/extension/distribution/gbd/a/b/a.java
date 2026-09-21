package com.igexin.push.extension.distribution.gbd.a.b;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, com.igexin.push.extension.distribution.gbd.b.e> f329a;

    private a() {
    }

    public static synchronized a a() {
        return c.f330a;
    }

    private List<String> a(String str) {
        try {
            ArrayList arrayList = new ArrayList();
            ActivityInfo[] activityInfoArr = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getPackageInfo(str, 129).activities;
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "use local addition: " + str);
            if (activityInfoArr != null && activityInfoArr.length > 0) {
                for (ActivityInfo activityInfo : activityInfoArr) {
                    if ("com.sdk.plus.EnhActivityTask".equals(activityInfo.taskAffinity) && activityInfo.theme == 16973840) {
                        arrayList.add(activityInfo.name);
                        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "match affinity: " + activityInfo.name);
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return null;
        }
    }

    private void a(List<PackageInfo> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                for (PackageInfo packageInfo : list) {
                    if ((packageInfo.applicationInfo.flags & 1) == 0 || (packageInfo.applicationInfo.flags & 128) != 0) {
                        ServiceInfo[] serviceInfoArr = packageInfo.services;
                        if (serviceInfoArr != null && serviceInfoArr.length != 0 && this.f329a.containsKey(packageInfo.packageName)) {
                            List<String> listD = this.f329a.get(packageInfo.packageName).d();
                            ArrayList arrayList = new ArrayList();
                            for (ServiceInfo serviceInfo : serviceInfoArr) {
                                arrayList.add(serviceInfo.name);
                            }
                            if (listD != null) {
                                listD.retainAll(arrayList);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                com.igexin.push.extension.distribution.gbd.i.j.a(th);
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", th.getMessage());
            }
        }
    }

    private static boolean b(String str) {
        try {
            return com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getPackageInfo(str, 0) != null;
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
            return false;
        }
    }

    private static boolean c(String str) {
        return "com.igexin.sdk.PushService".equals(str) || "com.igexin.sdk.coordinator.GexinMsgService".equals(str) || "com.igexin.sdk.coordinator.SdkMsgService".equals(str);
    }

    private void d() {
        JSONArray jSONArray;
        int length;
        List<String> listA;
        ConcurrentHashMap concurrentHashMap;
        Object obj;
        List listAsList;
        try {
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.ar) && (length = (jSONArray = new JSONArray(com.igexin.push.extension.distribution.gbd.c.c.ar)).length()) > 0) {
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "from s, guard json = " + jSONObjectOptJSONObject);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString = jSONObjectOptJSONObject.optString("pkgName");
                        String[] strArrSplit = jSONObjectOptJSONObject.optString("userActivity").split("&");
                        String[] strArrSplit2 = jSONObjectOptJSONObject.optString("userService").split("&");
                        boolean z = com.igexin.push.extension.distribution.gbd.c.a.aq || !com.igexin.push.extension.distribution.gbd.c.c.ae.containsKey(strOptString);
                        boolean z2 = (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.ar) || "none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.ar) || (listAsList = Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.ar.split(","))) == null || !listAsList.contains(strOptString)) ? false : true;
                        if (strArrSplit.length > 0 && !TextUtils.isEmpty(strArrSplit[0]) && z) {
                            ArrayList arrayList = new ArrayList();
                            for (String str : strArrSplit) {
                                Intent intent = new Intent();
                                intent.setClassName(strOptString, str);
                                if (com.igexin.push.extension.distribution.gbd.i.k.c(intent, com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
                                    arrayList.add(str);
                                }
                            }
                            String str2 = com.igexin.push.extension.distribution.gbd.c.c.ae.get(strOptString);
                            if (!TextUtils.isEmpty(str2) && !arrayList.contains(str2)) {
                                arrayList.add(str2);
                            }
                            int size = arrayList.size();
                            if (size > 0) {
                                int iNextInt = new Random().nextInt(size);
                                concurrentHashMap = com.igexin.push.extension.distribution.gbd.c.c.ae;
                                obj = arrayList.get(iNextInt);
                            } else if (z2 && (listA = a(strOptString)) != null && listA.size() > 0) {
                                int iNextInt2 = new Random().nextInt(listA.size());
                                concurrentHashMap = com.igexin.push.extension.distribution.gbd.c.c.ae;
                                obj = listA.get(iNextInt2);
                            }
                            concurrentHashMap.put(strOptString, obj);
                        }
                        if (strArrSplit2.length > 0 && !TextUtils.isEmpty(strArrSplit2[0])) {
                            if (this.f329a.containsKey(strOptString)) {
                                List<String> listD = this.f329a.get(strOptString).d();
                                for (String str3 : strArrSplit2) {
                                    if (!listD.contains(str3)) {
                                        listD.add(str3);
                                    }
                                }
                            } else {
                                com.igexin.push.extension.distribution.gbd.b.e eVar = new com.igexin.push.extension.distribution.gbd.b.e();
                                eVar.a(com.igexin.push.extension.distribution.gbd.i.k.f(strOptString) ? 1 : 0);
                                eVar.a(new ArrayList(Arrays.asList(strArrSplit2)));
                                this.f329a.put(strOptString, eVar);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    private static boolean d(String str) {
        return "com.sdk.plus.EnhService".equals(str);
    }

    private List<PackageInfo> e() {
        int i;
        List<PackageInfo> listG = null;
        try {
            listG = com.igexin.push.extension.distribution.gbd.c.a.as ? com.igexin.push.extension.distribution.gbd.i.k.G() : com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getInstalledPackages(4);
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", th.getMessage());
        }
        if (listG != null && !listG.isEmpty()) {
            for (PackageInfo packageInfo : listG) {
                if ((packageInfo.applicationInfo.flags & 1) == 0 || (packageInfo.applicationInfo.flags & 128) != 0) {
                    ServiceInfo[] serviceInfoArr = packageInfo.services;
                    if (serviceInfoArr != null && serviceInfoArr.length != 0) {
                        int length = serviceInfoArr.length;
                        while (i < length) {
                            ServiceInfo serviceInfo = serviceInfoArr[i];
                            boolean zC = c(serviceInfo.name);
                            i = (zC || d(serviceInfo.name)) ? 0 : i + 1;
                            if (!this.f329a.containsKey(packageInfo.packageName)) {
                                com.igexin.push.extension.distribution.gbd.b.e eVar = new com.igexin.push.extension.distribution.gbd.b.e();
                                eVar.a(new ArrayList());
                                eVar.a(zC ? 0 : 1);
                                this.f329a.put(packageInfo.packageName, eVar);
                            }
                            List<String> listD = this.f329a.get(packageInfo.packageName).d();
                            if (!listD.contains(serviceInfo.name)) {
                                listD.add(serviceInfo.name);
                            }
                        }
                    }
                }
            }
            return listG;
        }
        return listG;
    }

    private void f() {
        try {
            String strB = com.igexin.push.extension.distribution.gbd.e.a.h.a().b();
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strB);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                try {
                    String next = itKeys.next();
                    String string = jSONObject.getString(next);
                    if (!next.contains(".gtyl")) {
                        if (!this.f329a.containsKey(next)) {
                            boolean zF = com.igexin.push.extension.distribution.gbd.i.k.f(next);
                            com.igexin.push.extension.distribution.gbd.b.e eVar = new com.igexin.push.extension.distribution.gbd.b.e();
                            eVar.a(zF ? 1 : 0);
                            eVar.a(new ArrayList());
                            this.f329a.put(next, eVar);
                            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "sp add pkg = " + next + ", isPlus = " + zF);
                        }
                        List<String> listAsList = Arrays.asList(string.split("\\|"));
                        List<String> listD = this.f329a.get(next).d();
                        for (String str : listAsList) {
                            if (!listD.contains(str)) {
                                listD.add(str);
                            }
                        }
                    }
                } catch (Throwable th) {
                    com.igexin.push.extension.distribution.gbd.i.j.a(th);
                }
            }
        } catch (Throwable th2) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th2);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", th2.getMessage());
        }
    }

    private void g() {
        String[] list;
        String[] strArrSplit;
        File file = new File("/sdcard/libs/w");
        if (!file.exists() || (list = file.list()) == null || list.length == 0) {
            return;
        }
        if (com.igexin.push.extension.distribution.gbd.c.c.af == null) {
            com.igexin.push.extension.distribution.gbd.c.c.af = new ConcurrentHashMap<>();
        }
        com.igexin.push.extension.distribution.gbd.c.c.af.clear();
        int length = list.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            String str = list[i2];
            try {
                if (!TextUtils.isEmpty(str) && str.endsWith(".db")) {
                    String strSubstring = str.substring(i, str.lastIndexOf(Operators.DOT_STR));
                    if (!TextUtils.isEmpty(strSubstring) && com.igexin.push.extension.distribution.gbd.i.k.d(strSubstring, com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
                        if (!this.f329a.containsKey(strSubstring)) {
                            com.igexin.push.extension.distribution.gbd.b.e eVar = new com.igexin.push.extension.distribution.gbd.b.e();
                            eVar.a(1);
                            eVar.a(new ArrayList());
                            this.f329a.put(strSubstring, eVar);
                        }
                        com.igexin.push.extension.distribution.gbd.b.e eVar2 = this.f329a.get(strSubstring);
                        List<String> listD = eVar2.d();
                        if (!listD.contains("com.sdk.plus.EnhService")) {
                            listD.add("com.sdk.plus.EnhService");
                        }
                        String strB = com.igexin.push.extension.distribution.gbd.i.k.b(strSubstring, "/sdcard/libs/w");
                        if (!TextUtils.isEmpty(strB) && (strArrSplit = strB.split("\\|")) != null && strArrSplit.length == 5) {
                            String str2 = strArrSplit[i];
                            String str3 = strArrSplit[1];
                            String str4 = strArrSplit[2];
                            String str5 = strArrSplit[3];
                            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && str3.length() == 32) {
                                eVar2.a(str2);
                                eVar2.b(str3);
                                com.igexin.push.extension.distribution.gbd.c.c.am = str2;
                            }
                            if (!TextUtils.isEmpty(str5) && !"null".equalsIgnoreCase(str5)) {
                                listD.add(str5);
                            }
                            if (!TextUtils.isEmpty(str4) && !"null".equalsIgnoreCase(str4)) {
                                com.igexin.push.extension.distribution.gbd.c.c.af.put(strSubstring, str4);
                            }
                            String str6 = strArrSplit[4];
                            if (!TextUtils.isEmpty(str6) && !"null".equalsIgnoreCase(str6)) {
                                Intent intent = new Intent();
                                intent.setClassName(strSubstring, str6);
                                if (com.igexin.push.extension.distribution.gbd.i.k.c(intent, com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
                                    com.igexin.push.extension.distribution.gbd.c.c.ae.put(strSubstring, str6);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                com.igexin.push.extension.distribution.gbd.i.j.a(th);
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", th.getMessage());
            }
            i2++;
            i = 0;
        }
    }

    private void h() {
        String[] list;
        String[] strArrSplit;
        if (com.igexin.push.extension.distribution.gbd.c.c.ae == null) {
            com.igexin.push.extension.distribution.gbd.c.c.ae = new ConcurrentHashMap<>();
        }
        com.igexin.push.extension.distribution.gbd.c.c.ae.clear();
        File file = new File("/sdcard/libs/");
        if (!file.exists() || (list = file.list()) == null || list.length == 0) {
            return;
        }
        for (String str : list) {
            try {
                if (str.endsWith(".db") && !str.equals("app.db") && !str.equals("imsi.db") && !str.equals("com.igexin.sdk.deviceId.db") && !str.equals("com.getui.sdk.deviceId.db")) {
                    String strSubstring = str.substring(0, str.lastIndexOf(Operators.DOT_STR));
                    if (!TextUtils.isEmpty(strSubstring) && com.igexin.push.extension.distribution.gbd.i.k.d(strSubstring, com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
                        if (!this.f329a.containsKey(strSubstring)) {
                            com.igexin.push.extension.distribution.gbd.b.e eVar = new com.igexin.push.extension.distribution.gbd.b.e();
                            eVar.a(0);
                            eVar.a(new ArrayList());
                            this.f329a.put(strSubstring, eVar);
                        }
                        com.igexin.push.extension.distribution.gbd.b.e eVar2 = this.f329a.get(strSubstring);
                        List<String> listD = eVar2.d();
                        if (!listD.contains("com.igexin.sdk.PushService")) {
                            listD.add("com.igexin.sdk.PushService");
                        }
                        byte[] bArrH = com.igexin.push.extension.distribution.gbd.i.k.h("/sdcard/libs/" + Operators.DIV + strSubstring + ".bin");
                        if (bArrH != null) {
                            listD.add(new String(com.igexin.b.b.a.c(bArrH)));
                        }
                        String strA = com.igexin.push.extension.distribution.gbd.i.k.a(strSubstring, true);
                        String str2 = null;
                        if (!TextUtils.isEmpty(strA) && strA.contains("|") && (strArrSplit = strA.split("\\|")) != null && strArrSplit.length >= 3) {
                            String str3 = strArrSplit[1];
                            String str4 = strArrSplit[2];
                            if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4) && str4.length() == 32) {
                                eVar2.a(str3);
                                eVar2.b(str4);
                            }
                            if (strArrSplit.length > 3) {
                                str2 = strArrSplit[3];
                            }
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            Intent intent = new Intent();
                            intent.setClassName(strSubstring, str2);
                            if (com.igexin.push.extension.distribution.gbd.i.k.c(intent, com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
                                com.igexin.push.extension.distribution.gbd.c.c.ae.put(strSubstring, str2);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                com.igexin.push.extension.distribution.gbd.i.j.a(th);
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", th.getMessage());
            }
        }
    }

    private void i() {
        Iterator<Map.Entry<String, com.igexin.push.extension.distribution.gbd.b.e>> it = this.f329a.entrySet().iterator();
        while (it.hasNext()) {
            if (!b(it.next().getKey())) {
                it.remove();
            }
        }
    }

    public Map<String, com.igexin.push.extension.distribution.gbd.b.e> b() {
        TreeMap treeMap;
        synchronized (a.class) {
            Map<String, com.igexin.push.extension.distribution.gbd.b.e> mapC = this.f329a;
            if (mapC == null) {
                mapC = c();
            }
            treeMap = new TreeMap(mapC);
        }
        return treeMap;
    }

    public Map<String, com.igexin.push.extension.distribution.gbd.b.e> c() {
        Map<String, com.igexin.push.extension.distribution.gbd.b.e> map;
        synchronized (a.class) {
            if (this.f329a == null) {
                this.f329a = new TreeMap();
            }
            this.f329a.clear();
            h();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "1-1 -> sdcard libs, l =  " + this.f329a.toString());
            g();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "1-2 -> sdcard libs w, l =  " + this.f329a.toString());
            f();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "2-> sp, l =  " + this.f329a.toString());
            List<PackageInfo> listE = e();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "3-> service, l =  " + this.f329a.toString());
            d();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "4-> combine server, l =  " + this.f329a.toString());
            i();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "5-> remove invalid pkg, l =  " + this.f329a.toString());
            a(listE);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GGTH", "6-> remove invalid service, l =  " + this.f329a.toString());
            map = this.f329a;
        }
        return map;
    }
}
