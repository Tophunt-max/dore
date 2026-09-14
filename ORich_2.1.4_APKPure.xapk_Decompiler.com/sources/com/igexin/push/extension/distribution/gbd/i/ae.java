package com.igexin.push.extension.distribution.gbd.i;

import android.app.ActivityManager;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class ae {
    private static int a(String str, String str2) {
        int length = str.split(str2).length - 1;
        if (length > 0) {
            return length;
        }
        return 0;
    }

    private static String a(int i) {
        String strTrim;
        try {
            strTrim = b(String.format("/proc/%d/cmdline", Integer.valueOf(i))).trim();
        } catch (Exception e) {
            j.a(e);
            strTrim = null;
        }
        try {
            if (TextUtils.isEmpty(strTrim)) {
                return b(String.format("/proc/%d/stat", Integer.valueOf(i))).split("\\s+")[1].replace(Operators.BRACKET_START_STR, "").replace(Operators.BRACKET_END_STR, "");
            }
        } catch (Exception e2) {
            j.a(e2);
        }
        return strTrim;
    }

    private static String a(String str) {
        try {
            if (Pattern.compile("^([a-zA-Z]+[.][a-zA-Z]+)[.]*.*").matcher(str).find()) {
                return str.contains(":") ? str.split(":")[0] : str;
            }
            return null;
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    private static String a(String str, boolean z) {
        String str2;
        try {
            Matcher matcher = Pattern.compile("^([a-zA-Z]+[.][a-zA-Z]+)[.]*.*").matcher(str);
            if (com.igexin.push.extension.distribution.gbd.c.c.ak == null || com.igexin.push.extension.distribution.gbd.c.c.ak.isEmpty()) {
                com.igexin.push.extension.distribution.gbd.c.c.ak = new ArrayList(Arrays.asList(com.igexin.push.extension.distribution.gbd.c.a.bC.split(",")));
            }
            if (str.contains(":")) {
                String[] strArrSplit = str.split(":");
                String str3 = strArrSplit[0];
                str2 = strArrSplit[1];
                str = str3;
            } else {
                str2 = null;
            }
            boolean zContains = com.igexin.push.extension.distribution.gbd.c.c.ak.contains(str);
            if (!matcher.find() || ((str.startsWith("com.android") && !zContains) || str.startsWith("android.process") || str.startsWith("org."))) {
                return null;
            }
            try {
                PackageInfo packageInfo = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getPackageInfo(str, 0);
                if ((1 & packageInfo.applicationInfo.flags) == 0 || (packageInfo.applicationInfo.flags & 128) != 0) {
                    if (!z || str2 == null) {
                        return str;
                    }
                    return str + ":" + str2;
                }
            } catch (Exception e) {
                j.a(e);
            }
        } catch (Throwable th) {
            j.a(th);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
    
        r2.add(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x009e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x008e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x012e A[Catch: Exception -> 0x0132, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x0132, blocks: (B:81:0x0121, B:88:0x012e), top: B:110:0x000c }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x0133 -> B:109:0x0137). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.ArrayList<java.lang.String[]> a(java.lang.String r16, boolean r17, java.lang.String r18) {
        /*
            Method dump skipped, instruction units count: 326
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.i.ae.a(java.lang.String, boolean, java.lang.String):java.util.ArrayList");
    }

    private static List<String> a() {
        ArrayList<String[]> arrayListA;
        try {
            ArrayList<String[]> arrayListA2 = a("ps -P", true, "");
            if (arrayListA2 != null && !arrayListA2.isEmpty() && !arrayListA2.isEmpty() && (arrayListA = a("ps -P", false, arrayListA2.get(0)[1])) != null && !arrayListA.isEmpty()) {
                return a(arrayListA, (List<ActivityManager.RecentTaskInfo>) null);
            }
            return null;
        } catch (Exception e) {
            j.a(e);
            return null;
        }
    }

    private static List<String> a(ArrayList<String[]> arrayList, List<ActivityManager.RecentTaskInfo> list) {
        ArrayList arrayList2 = new ArrayList();
        if (arrayList != null) {
            Iterator<String[]> it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(0, it.next()[9]);
            }
        } else {
            Iterator<ActivityManager.RecentTaskInfo> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().baseIntent.getComponent().getPackageName());
            }
        }
        return arrayList2;
    }

    public static List<String> a(boolean z, boolean z2) {
        List<String> listB = b(z, z2);
        if ((listB == null || listB.isEmpty()) && !z2) {
            listB = a();
        }
        if (listB != null) {
            j.b("GBD_RAU", Build.VERSION.SDK_INT + ", running = " + listB.toString());
        }
        return listB;
    }

    private static long b(int i) {
        try {
            return (k.x() - SystemClock.elapsedRealtime()) + (Long.parseLong(b(String.format("/proc/%d/stat", Integer.valueOf(i))).split("\\s+")[21]) * 10);
        } catch (Throwable th) {
            j.a(th);
            return 0L;
        }
    }

    private static String b(String str) {
        BufferedReader bufferedReader;
        FileReader fileReader;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                fileReader = new FileReader(str);
                try {
                    bufferedReader = new BufferedReader(fileReader);
                    try {
                        String str2 = "";
                        for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                            sb.append(str2);
                            sb.append(line);
                            str2 = "\n";
                        }
                        String string = sb.toString();
                        try {
                            fileReader.close();
                        } catch (Exception e) {
                            j.a(e);
                        }
                        try {
                            bufferedReader.close();
                        } catch (Exception e2) {
                            j.a(e2);
                        }
                        return string;
                    } catch (Throwable th) {
                        th = th;
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (Exception e3) {
                                j.a(e3);
                            }
                        }
                        if (bufferedReader == null) {
                            throw th;
                        }
                        try {
                            bufferedReader.close();
                            throw th;
                        } catch (Exception e4) {
                            j.a(e4);
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = null;
                }
            } catch (Throwable th3) {
                j.a(th3);
                return null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
            fileReader = null;
        }
    }

    private static List<String> b(boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        if (com.igexin.push.extension.distribution.gbd.c.c.q == null) {
            com.igexin.push.extension.distribution.gbd.c.c.q = new HashMap();
        }
        if (z) {
            com.igexin.push.extension.distribution.gbd.c.c.q.clear();
        }
        for (File file : new File("/proc").listFiles(new af(z2 ? 0 : 2000))) {
            try {
                int i = Integer.parseInt(file.getName());
                try {
                    String strA = a(i);
                    if (!TextUtils.isEmpty(strA)) {
                        strA = z2 ? a(strA) : a(strA, z);
                    }
                    if (!TextUtils.isEmpty(strA) && !arrayList.contains(strA)) {
                        arrayList.add(strA);
                        if (!z2) {
                            if (strA.contains(":")) {
                                strA = strA.split(":")[0];
                            }
                            long jB = b(i);
                            if (!com.igexin.push.extension.distribution.gbd.c.c.q.containsKey(strA) || jB < com.igexin.push.extension.distribution.gbd.c.c.q.get(strA).longValue()) {
                                Map<String, Long> map = com.igexin.push.extension.distribution.gbd.c.c.q;
                                Long lValueOf = Long.valueOf(jB);
                                map.put(strA, lValueOf);
                            }
                        }
                    }
                } catch (Throwable th) {
                    j.a(th);
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }
}
