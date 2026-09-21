package com.igexin.push.extension.distribution.basic.j;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f316a = "";

    private static ArrayList<String[]> a(String str, String str2) {
        Runtime runtime = Runtime.getRuntime();
        ArrayList<String[]> arrayList = new ArrayList<>();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(runtime.exec(str).getInputStream()));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        String[] strArrSplit = line.split(" +");
                        if (str2.equals(strArrSplit[strArrSplit.length - 1])) {
                            arrayList.add(strArrSplit);
                        }
                        if (strArrSplit[strArrSplit.length - 1].equals("zygote") && strArrSplit[0].equals("root")) {
                            f316a = strArrSplit[1];
                        }
                    } catch (Throwable unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return arrayList;
                    }
                }
                bufferedReader2.close();
            } catch (Exception unused2) {
            }
        } catch (Throwable unused3) {
        }
        return arrayList;
    }

    public static boolean a() {
        try {
            Class.forName("com.igexin.push.util.EncryptUtils");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean a(Intent intent, Context context) {
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

    public static boolean a(String str) {
        try {
            com.igexin.push.core.f.f.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean a(List<String> list) {
        if (list == null || list.isEmpty() || TextUtils.isEmpty(com.igexin.push.extension.distribution.basic.c.g.p)) {
            return false;
        }
        List listAsList = Arrays.asList(com.igexin.push.extension.distribution.basic.c.g.p.split(","));
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (listAsList.contains(it.next())) {
                return true;
            }
        }
        return false;
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
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.j.c.a(boolean, boolean, java.lang.String):boolean");
    }

    public static boolean b() {
        try {
            for (String str : com.igexin.push.extension.distribution.basic.c.g.n.split(",")) {
                if (Build.MODEL.toLowerCase().contains(str.toLowerCase())) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean b(String str) {
        try {
            Context context = com.igexin.push.extension.distribution.basic.c.g.f304a;
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (Build.VERSION.SDK_INT < 21) {
                ComponentName componentName = activityManager.getRunningTasks(1).get(0).topActivity;
                if (componentName != null && componentName.getPackageName().equals(context.getPackageName())) {
                    return true;
                }
            } else {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses != null && !runningAppProcesses.isEmpty()) {
                    String packageName = context.getPackageName();
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (packageName.equals(runningAppProcessInfo.processName) && runningAppProcessInfo.importance == 100) {
                            return true;
                        }
                    }
                }
            }
            for (String[] strArr : a("ps -P", str)) {
                if (str.equals(strArr[strArr.length - 1]) && "fg".equals(strArr[5]) && f316a.equals(strArr[2])) {
                    return true;
                }
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("CoreAction_CheckUtils|" + th.toString());
        }
        return false;
    }

    public static boolean c() {
        if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.basic.c.g.p)) {
            for (String str : com.igexin.push.extension.distribution.basic.c.g.p.split(",")) {
                if (a(str)) {
                    com.igexin.b.a.c.b.a("CoreAction_CheckUtils|" + str + " in gactivityblacklist");
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(com.igexin.push.extension.distribution.basic.c.g.q)) {
            com.igexin.b.a.c.b.a("CoreAction_CheckUtils|pMBlacklist is empty or null");
            return false;
        }
        String[] strArrSplit = com.igexin.push.extension.distribution.basic.c.g.q.split(",");
        if (strArrSplit.length == 0) {
            com.igexin.b.a.c.b.a("CoreAction_CheckUtils|pMBlacklist is empty or null");
            return false;
        }
        String str2 = Build.BRAND;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        com.igexin.b.a.c.b.a("CoreAction_CheckUtils|brand = " + str2);
        for (String str3 : strArrSplit) {
            if (!TextUtils.isEmpty(str3)) {
                String[] strArrSplit2 = str3.split(":");
                if (!str2.equalsIgnoreCase(strArrSplit2[0])) {
                    continue;
                } else if (strArrSplit2.length == 3) {
                    if (!Boolean.parseBoolean(strArrSplit2[1])) {
                        return true;
                    }
                } else if (strArrSplit2.length == 4) {
                    String str4 = strArrSplit2[1];
                    boolean z = Boolean.parseBoolean(strArrSplit2[2]);
                    if (str.equals(str4) && !z) {
                        return true;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    public static boolean d() {
        return f(com.igexin.push.extension.distribution.basic.c.g.h);
    }

    public static boolean d(String str) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(com.igexin.push.extension.distribution.basic.c.g.p)) {
            for (String str2 : com.igexin.push.extension.distribution.basic.c.g.p.split(",")) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean e(String str) {
        try {
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.basic.c.g.i) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.basic.c.g.i)) {
                String[] strArrSplit = com.igexin.push.extension.distribution.basic.c.g.i.split(",");
                if (strArrSplit.length > 0) {
                    String strB = e.b();
                    int i = Build.VERSION.SDK_INT;
                    String lowerCase = e.a(strB).toLowerCase();
                    for (String str2 : strArrSplit) {
                        String[] strArrSplit2 = str2.split(":");
                        if (strArrSplit2.length == 4) {
                            String str3 = strArrSplit2[0];
                            int i2 = Integer.parseInt(strArrSplit2[1]);
                            String str4 = strArrSplit2[2];
                            String[] strArrSplit3 = strArrSplit2[3].split("&");
                            if (strB.equalsIgnoreCase(str3) && i >= i2 && strArrSplit3.length == 2) {
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

    private static boolean f(String str) {
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
                        if (Build.BRAND.equalsIgnoreCase(strSubstring) && Build.VERSION.SDK_INT >= i && Build.VERSION.SDK_INT <= i2) {
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
