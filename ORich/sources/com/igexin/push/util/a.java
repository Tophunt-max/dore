package com.igexin.push.util;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Log;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f433a = "com.igexin.push.util.a";

    public static void a(Context context) {
        if ((context.getApplicationInfo().flags & 2) == 0) {
            return;
        }
        File file = new File(context.getApplicationInfo().nativeLibraryDir, "libgetuiext3.so");
        if (file.exists()) {
            return;
        }
        String str = "libgetuiext3.so not found in path: " + file.getAbsolutePath();
        new Handler(Looper.getMainLooper()).post(new b(context, str));
        Log.e(f433a, str);
    }

    private static void a(Map<String, com.igexin.push.core.bean.c> map, String str) {
        com.igexin.push.core.bean.c cVar = map.get(str);
        map.remove(str);
        for (String str2 : cVar.b()) {
            com.igexin.push.core.bean.c cVar2 = map.get(str2);
            if (cVar2 != null) {
                cVar2.e();
                if (cVar2.c() == 0) {
                    a(map, str2);
                }
            }
        }
    }

    public static boolean a() {
        try {
            if (!"none".equals(com.igexin.push.config.k.r)) {
                for (String str : com.igexin.push.config.k.r.split(",")) {
                    if (a(str, com.igexin.push.core.f.f)) {
                        return false;
                    }
                }
                if (!"none".equals(com.igexin.push.config.k.s)) {
                    String[] strArrSplit = com.igexin.push.config.k.s.split(",");
                    Class<?> cls = Class.forName("android.os.ServiceManager");
                    Method method = cls.getMethod("getService", String.class);
                    method.setAccessible(true);
                    for (String str2 : strArrSplit) {
                        if (a(cls, method, str2)) {
                            return false;
                        }
                    }
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean a(long j) {
        Date date = new Date(j);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i = calendar.get(11);
        int i2 = com.igexin.push.config.k.f136a + com.igexin.push.config.k.b;
        if (i2 >= 24) {
            i2 -= 24;
        }
        if (com.igexin.push.config.k.b == 0) {
            return false;
        }
        if (com.igexin.push.config.k.f136a < i2) {
            if (i >= com.igexin.push.config.k.f136a && i < i2) {
                return true;
            }
        } else if (com.igexin.push.config.k.f136a > i2) {
            if (i >= 0 && i < i2) {
                return true;
            }
            if (i >= com.igexin.push.config.k.f136a && i < 24) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(Context context, Class cls) {
        try {
            if (context == null) {
                Log.e(f433a, "context can not set null ");
                return false;
            }
            PackageManager packageManager = context.getPackageManager();
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(new Intent(context, (Class<?>) cls), 0);
            if (listQueryIntentActivities != null && listQueryIntentActivities.size() > 0) {
                if (packageManager.getActivityInfo(new ComponentName(context.getPackageName(), cls.getName()), 128).theme == 16973840) {
                    return true;
                }
                Log.e(f433a, cls.getName() + " need set theme Theme.Translucent.NoTitleBar");
                return false;
            }
            Log.e(f433a, "not regist " + cls.getName() + "in manifest");
            return false;
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f433a + "|" + th.toString());
            return false;
        }
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().getLaunchIntentForPackage(str) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean a(Intent intent, Context context) {
        if (intent == null || context == null) {
            return false;
        }
        try {
            List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
            if (listQueryIntentServices != null) {
                return listQueryIntentServices.size() > 0;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean a(ServiceInfo serviceInfo, PackageInfo packageInfo) {
        return com.igexin.push.core.b.t.equals(serviceInfo.name) || com.igexin.push.core.b.s.equals(serviceInfo.name) || com.igexin.push.core.b.u.equals(serviceInfo.name);
    }

    private static boolean a(Class<?> cls, Method method, String str) {
        try {
            return method.invoke(cls, str) != null;
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean a(String str) {
        try {
            if (!TextUtils.isEmpty(com.igexin.push.config.k.L) && !"none".equals(com.igexin.push.config.k.L)) {
                List listAsList = Arrays.asList(com.igexin.push.config.k.L.split(","));
                if (listAsList.isEmpty()) {
                    return false;
                }
                Iterator it = listAsList.iterator();
                while (it.hasNext()) {
                    if (str.startsWith((String) it.next())) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static boolean a(String str, Context context) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static <T extends Service> boolean a(String str, Context context, Class<T> cls) {
        if (cls == null) {
            try {
                if (!b(new Intent(context, Class.forName(com.igexin.push.core.b.s)), context)) {
                    Log.e(str, "call - > initialize, parameter [userServiceName] is null use default PushService, but didn't find class \"com.igexin.sdk.PushService\", please check your AndroidManifest");
                    return false;
                }
            } catch (Throwable th) {
                com.igexin.b.a.c.b.a(f433a + "|" + th.toString());
                return false;
            }
        }
        if (cls != null && com.igexin.push.core.b.s.equals(cls.getName()) && !b(new Intent(context, (Class<?>) cls), context)) {
            Log.e(str, "call - > initialize, parameter [userServiceName] is default PushService, but didn't find class \"com.igexin.sdk.PushService\", please check your AndroidManifest");
            return false;
        }
        if (cls == null || b(new Intent(context, (Class<?>) cls), context)) {
            if (cls == null) {
                return true;
            }
            Class.forName(cls.getName());
            return true;
        }
        Log.e(str, "call - > initialize, parameter [userServiceName] is set, but didn't find class \"" + cls.getName() + "\", please check your AndroidManifest");
        return false;
    }

    public static boolean a(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                Intent intent = new Intent();
                intent.setClassName(str, str2);
                if (com.igexin.push.core.f.f.getPackageManager().resolveActivity(intent, 0) != null) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean a(String str, List<String> list) {
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
                } catch (Throwable unused) {
                }
            }
        }
        return false;
    }

    public static boolean a(JSONObject jSONObject) {
        String str;
        String str2;
        String str3;
        String string;
        String str4 = "buttons";
        String str5 = "type";
        String str6 = "actionid";
        try {
            HashMap map = new HashMap();
            JSONArray jSONArray = jSONObject.getJSONArray("action_chains");
            int i = 0;
            while (i < jSONArray.length()) {
                JSONObject jSONObject2 = (JSONObject) jSONArray.get(i);
                com.igexin.push.core.bean.c cVar = new com.igexin.push.core.bean.c();
                if (jSONObject2.has(str6)) {
                    cVar.a(jSONObject2.getString(str6));
                    if (map.containsKey(cVar.a())) {
                        return true;
                    }
                    ArrayList arrayList = new ArrayList();
                    if (jSONObject2.has(str5)) {
                        String string2 = jSONObject2.getString(str5);
                        str = str5;
                        str2 = str6;
                        if ("popup".equals(string2)) {
                            if (jSONObject2.has(str4)) {
                                JSONArray jSONArray2 = jSONObject2.getJSONArray(str4);
                                str3 = str4;
                                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                    if (((JSONObject) jSONArray2.get(i2)).has("do")) {
                                        arrayList.add(((JSONObject) jSONArray2.get(i2)).getString("do"));
                                    }
                                }
                            } else {
                                str3 = str4;
                            }
                            if (jSONObject2.has("do")) {
                                string = jSONObject2.getString("do");
                                arrayList.add(string);
                            }
                            cVar.a(arrayList);
                            map.put(cVar.a(), cVar);
                        } else {
                            str3 = str4;
                            if ("startapp".equals(string2)) {
                                if (jSONObject2.has("noinstall_action")) {
                                    arrayList.add(jSONObject2.getString("noinstall_action"));
                                }
                                if (jSONObject2.has("do")) {
                                    string = jSONObject2.getString("do");
                                    arrayList.add(string);
                                }
                                cVar.a(arrayList);
                                map.put(cVar.a(), cVar);
                            } else if ("checkapp".equals(string2)) {
                                if (jSONObject2.has("do_installed")) {
                                    arrayList.add(jSONObject2.getString("do_installed"));
                                }
                                if (jSONObject2.has("do_uninstalled")) {
                                    string = jSONObject2.getString("do_uninstalled");
                                    arrayList.add(string);
                                }
                                cVar.a(arrayList);
                                map.put(cVar.a(), cVar);
                            } else if ("checkversions".equals(string2)) {
                                if (jSONObject2.has("do_match")) {
                                    arrayList.add(jSONObject2.getString("do_match"));
                                }
                                if (jSONObject2.has("do_dismatch")) {
                                    arrayList.add(jSONObject2.getString("do_dismatch"));
                                }
                                if (jSONObject2.has("do")) {
                                    string = jSONObject2.getString("do");
                                    arrayList.add(string);
                                }
                                cVar.a(arrayList);
                                map.put(cVar.a(), cVar);
                            } else if ("startintent".equals(string2)) {
                                if (jSONObject2.has("do_failed")) {
                                    arrayList.add(jSONObject2.getString("do_failed"));
                                }
                                if (jSONObject2.has("do")) {
                                    string = jSONObject2.getString("do");
                                    arrayList.add(string);
                                }
                                cVar.a(arrayList);
                                map.put(cVar.a(), cVar);
                            } else {
                                if (!"null".equals(string2) && jSONObject2.has("do")) {
                                    string = jSONObject2.getString("do");
                                    arrayList.add(string);
                                }
                                cVar.a(arrayList);
                                map.put(cVar.a(), cVar);
                            }
                        }
                    } else {
                        str3 = str4;
                        str = str5;
                        str2 = str6;
                    }
                } else {
                    str3 = str4;
                    str = str5;
                    str2 = str6;
                }
                i++;
                str5 = str;
                str6 = str2;
                str4 = str3;
            }
            ArrayList arrayList2 = new ArrayList(map.values());
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                List<String> listB = ((com.igexin.push.core.bean.c) ((Map.Entry) it.next()).getValue()).b();
                if (listB != null) {
                    Iterator<String> it2 = listB.iterator();
                    while (it2.hasNext()) {
                        com.igexin.push.core.bean.c cVar2 = (com.igexin.push.core.bean.c) map.get(it2.next());
                        if (cVar2 != null) {
                            cVar2.d();
                            if (arrayList2.contains(cVar2)) {
                                arrayList2.remove(cVar2);
                            }
                        }
                    }
                }
            }
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                a(map, ((com.igexin.push.core.bean.c) it3.next()).a());
            }
            if (map.size() <= 0) {
                return false;
            }
            com.igexin.b.a.c.b.a(f433a + "|action_chains have loop nodeMap not empty");
            return true;
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f433a + "|isHaveLoop exception :" + th.toString());
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004e A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0056 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean a(boolean r4, boolean r5, java.lang.String r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            r6.hashCode()
            r0 = -1
            int r2 = r6.hashCode()
            r3 = 1
            switch(r2) {
                case -1655966961: goto L41;
                case -109592092: goto L36;
                case 105888445: goto L2b;
                case 110331239: goto L20;
                case 1984153269: goto L15;
                default: goto L14;
            }
        L14:
            goto L4b
        L15:
            java.lang.String r2 = "service"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L1e
            goto L4b
        L1e:
            r0 = 4
            goto L4b
        L20:
            java.lang.String r2 = "third"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L29
            goto L4b
        L29:
            r0 = 3
            goto L4b
        L2b:
            java.lang.String r2 = "oneof"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L34
            goto L4b
        L34:
            r0 = 2
            goto L4b
        L36:
            java.lang.String r2 = "transmission"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L3f
            goto L4b
        L3f:
            r0 = 1
            goto L4b
        L41:
            java.lang.String r2 = "activity"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L4a
            goto L4b
        L4a:
            r0 = 0
        L4b:
            switch(r0) {
                case 0: goto L5d;
                case 1: goto L58;
                case 2: goto L52;
                case 3: goto L58;
                case 4: goto L50;
                default: goto L4e;
            }
        L4e:
            r4 = 0
            goto L5d
        L50:
            r4 = r5
            goto L5d
        L52:
            if (r4 != 0) goto L56
            if (r5 == 0) goto L4e
        L56:
            r4 = 1
            goto L5d
        L58:
            if (r4 == 0) goto L4e
            if (r5 == 0) goto L4e
            goto L56
        L5d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.util.a.a(boolean, boolean, java.lang.String):boolean");
    }

    public static boolean b() {
        return System.currentTimeMillis() > com.igexin.push.config.k.c;
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null && !runningAppProcesses.isEmpty()) {
                String packageName = context.getPackageName();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (packageName.equals(runningAppProcessInfo.processName) && runningAppProcessInfo.importance == 100) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f433a + "|" + th.toString());
        }
        return false;
    }

    public static boolean b(Intent intent, Context context) {
        if (intent != null && context != null) {
            try {
                List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
                if (listQueryIntentServices != null) {
                    return listQueryIntentServices.size() > 0;
                }
                return false;
            } catch (Throwable th) {
                com.igexin.b.a.c.b.a(f433a + "|" + th.toString());
            }
        }
        return false;
    }

    public static boolean b(String str) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(com.igexin.push.config.k.N) && !"none".equals(com.igexin.push.config.k.N)) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(Arrays.asList(com.igexin.push.config.k.N.split(",")));
                if (arrayList.isEmpty()) {
                    return false;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (str.contains((String) it.next())) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean c() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) com.igexin.push.core.f.f.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static boolean c(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                return ((Boolean) NotificationManager.class.getDeclaredMethod("areNotificationsEnabled", new Class[0]).invoke((NotificationManager) context.getSystemService("notification"), new Object[0])).booleanValue();
            }
            if (Build.VERSION.SDK_INT < 19) {
                return true;
            }
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            String packageName = context.getApplicationContext().getPackageName();
            int i = applicationInfo.uid;
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static boolean c(Intent intent, Context context) {
        if (intent == null || context == null) {
            return false;
        }
        try {
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (listQueryIntentActivities != null) {
                return listQueryIntentActivities.size() > 0;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean c(String str) {
        try {
            if (!TextUtils.isEmpty(com.igexin.push.config.k.Y) && !"none".equalsIgnoreCase(com.igexin.push.config.k.Y)) {
                String[] strArrSplit = com.igexin.push.config.k.Y.split(",");
                if (strArrSplit.length > 0) {
                    String strA = p.a();
                    int i = Build.VERSION.SDK_INT;
                    String lowerCase = p.e().toLowerCase();
                    for (String str2 : strArrSplit) {
                        String[] strArrSplit2 = str2.split(":");
                        if (strArrSplit2.length == 4) {
                            String str3 = strArrSplit2[0];
                            int i2 = Integer.parseInt(strArrSplit2[1]);
                            String str4 = strArrSplit2[2];
                            String[] strArrSplit3 = strArrSplit2[3].split("&");
                            if (strA.equalsIgnoreCase(str3) && i >= i2 && strArrSplit3.length == 2) {
                                boolean z = Boolean.parseBoolean(strArrSplit3[0]);
                                boolean z2 = Boolean.parseBoolean(strArrSplit3[1]);
                                if (Operators.MUL.equals(str4)) {
                                    return a(z, z2, str);
                                }
                                String[] strArrSplit4 = str4.split("&");
                                if (strArrSplit4.length > 0) {
                                    for (String str5 : strArrSplit4) {
                                        if (lowerCase.contains(str5.toLowerCase())) {
                                            return a(z, z2, str);
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void d() {
        NetworkInfo.State state = ((ConnectivityManager) com.igexin.push.core.f.f.getSystemService("connectivity")).getNetworkInfo(1).getState();
        if (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING) {
            com.igexin.push.core.f.p = 1;
        } else {
            com.igexin.push.core.f.p = 0;
        }
    }

    public static void e() {
        com.igexin.push.core.f.q = ((PowerManager) com.igexin.push.core.f.f.getSystemService("power")).isScreenOn() ? 1 : 0;
    }

    public static boolean f() {
        try {
            for (String str : com.igexin.push.config.k.K.split(",")) {
                if (Build.MODEL.toLowerCase().contains(str.toLowerCase())) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static boolean g() {
        ConnectivityManager connectivityManager;
        try {
            connectivityManager = (ConnectivityManager) com.igexin.push.core.f.f.getSystemService("connectivity");
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f433a + "|network available ex =" + th.toString());
        }
        if (connectivityManager == null) {
            com.igexin.b.a.c.b.a(f433a + "|ConnectivityManager is null");
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        StringBuilder sb = new StringBuilder();
        String str = f433a;
        sb.append(str);
        sb.append("|activeNetworkInfo = ");
        sb.append(activeNetworkInfo);
        com.igexin.b.a.c.b.a(sb.toString());
        if (activeNetworkInfo == null || activeNetworkInfo.getState() != NetworkInfo.State.CONNECTED) {
            com.igexin.b.a.c.b.a(str + "|network available = false");
            return false;
        }
        com.igexin.b.a.c.b.a(str + (activeNetworkInfo.getType() == 0 ? "mobile" : activeNetworkInfo.getType() == 1 ? "wifi" : "none") + "|connected");
        return true;
    }

    public static boolean h() {
        return System.currentTimeMillis() >= 1182566108138L;
    }

    public static boolean i() {
        String str = com.igexin.push.config.k.X;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            for (String str2 : str.split(",")) {
                if (str2.contains("|") && str2.contains("~")) {
                    String strSubstring = str2.substring(0, str2.indexOf("|"));
                    String[] strArrSplit = str2.substring(str2.indexOf("|") + 1).split("~");
                    if (strArrSplit.length == 2) {
                        int i = Integer.parseInt(strArrSplit[0]);
                        int i2 = Integer.parseInt(strArrSplit[1]);
                        if (p.a().equalsIgnoreCase(strSubstring) && Build.VERSION.SDK_INT >= i && Build.VERSION.SDK_INT <= i2) {
                            return true;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
