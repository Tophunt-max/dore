package com.igexin.push.extension.distribution.gbd.i;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Looper;
import android.os.PowerManager;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.constant.AbsoluteConst;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f408a = "eth0";

    public static String A() {
        Object objInvoke;
        try {
            if (Build.VERSION.SDK_INT < 26 || !a(com.igexin.push.extension.distribution.gbd.c.c.f373a, "android.permission.READ_PHONE_STATE")) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                objInvoke = cls.getMethod("get", String.class).invoke(cls, "ro.serialno");
            } else {
                Class<?> cls2 = Class.forName("android.os.Build");
                objInvoke = cls2.getMethod("getSerial", new Class[0]).invoke(cls2, new Object[0]);
            }
            return (String) objInvoke;
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static String B() {
        if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.av)) {
            return com.igexin.push.extension.distribution.gbd.c.c.av;
        }
        try {
            com.igexin.push.extension.distribution.gbd.c.c.av = a(false) + "|" + b(false) + "|" + i() + "|" + (C() ? w.a().b() : "");
            return com.igexin.push.extension.distribution.gbd.c.c.av;
        } catch (Throwable th) {
            j.a(th);
            return "|||";
        }
    }

    public static boolean C() {
        try {
            String strR = r();
            if (com.igexin.push.extension.distribution.gbd.c.a.bL) {
                return w.a().a(strR);
            }
            return false;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean D() {
        try {
            j.b("GBD_Utils", "SLMA watchoutAs " + com.igexin.push.extension.distribution.gbd.c.a.f);
            j.b("GBD_Utils", "SLMA watchoutBrand " + com.igexin.push.extension.distribution.gbd.c.a.h);
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.h) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.h)) {
                String strR = r();
                for (String str : com.igexin.push.extension.distribution.gbd.c.a.h.split(",")) {
                    if (!TextUtils.isEmpty(str) && str.equalsIgnoreCase(strR)) {
                        return L();
                    }
                }
            }
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.f)) {
                return true;
            }
            if ("none".equals(com.igexin.push.extension.distribution.gbd.c.a.f)) {
                return false;
            }
            for (String str2 : com.igexin.push.extension.distribution.gbd.c.a.f.split(",")) {
                if (d(str2, com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
                    j.a("27-", "check = " + str2 + " exist");
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean E() {
        try {
            j.b("GBD_Utils", "SLMA watchoutForMac " + com.igexin.push.extension.distribution.gbd.c.a.g);
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.g)) {
                return true;
            }
            if ("none".equals(com.igexin.push.extension.distribution.gbd.c.a.g)) {
                return false;
            }
            for (String str : com.igexin.push.extension.distribution.gbd.c.a.g.split(",")) {
                if (d(str, com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
                    j.a("27mac-", "check = " + str + " exist");
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean F() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces == null) {
                return false;
            }
            for (NetworkInterface networkInterface : Collections.list(networkInterfaces)) {
                if (networkInterface.isUp() && networkInterface.getInterfaceAddresses().size() != 0 && ("tun0".equals(networkInterface.getName()) || "ppp0".equals(networkInterface.getName()))) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static synchronized List<PackageInfo> G() {
        try {
            if (com.igexin.push.extension.distribution.gbd.c.c.aF == null || com.igexin.push.extension.distribution.gbd.c.c.aF.isEmpty()) {
                com.igexin.push.extension.distribution.gbd.c.c.aF = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getInstalledPackages(132);
                j.b("GBD_Utils", "fetch pkg list from system api.");
            }
            j.b("GBD_Utils", "read pkg list from runtime memory.");
        } catch (Throwable th) {
            j.a(th);
            return Collections.emptyList();
        }
        return com.igexin.push.extension.distribution.gbd.c.c.aF;
    }

    private static boolean H() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    private static boolean I() {
        String[] strArr = {"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su"};
        for (int i = 0; i < 9; i++) {
            if (new File(strArr[i]).exists()) {
                return true;
            }
        }
        return false;
    }

    private static boolean J() {
        BufferedReader bufferedReader;
        Process process = null;
        try {
            Process processExec = Runtime.getRuntime().exec(new String[]{"/system/xbin/which", "su"});
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
            } catch (Throwable unused) {
                bufferedReader = null;
            }
            try {
                if (TextUtils.isEmpty(bufferedReader.readLine())) {
                    if (processExec != null) {
                        try {
                            processExec.destroy();
                        } catch (Throwable th) {
                            j.a(th);
                        }
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        j.a(e);
                    }
                    return false;
                }
                if (processExec != null) {
                    try {
                        processExec.destroy();
                    } catch (Throwable th2) {
                        j.a(th2);
                    }
                }
                try {
                    bufferedReader.close();
                } catch (IOException e2) {
                    j.a(e2);
                }
                return true;
            } catch (Throwable unused2) {
                process = processExec;
                if (process != null) {
                    try {
                        process.destroy();
                    } catch (Throwable th3) {
                        j.a(th3);
                    }
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        j.a(e3);
                    }
                }
                return false;
            }
        } catch (Throwable unused3) {
            bufferedReader = null;
        }
    }

    private static String K() {
        try {
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aB) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.aB)) {
                j.b("GBD_Utils", "typeBrandSdkRomBlackList = " + com.igexin.push.extension.distribution.gbd.c.a.aB);
                String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.aB.split(",");
                if (strArrSplit.length > 0) {
                    String strR = r();
                    int i = Build.VERSION.SDK_INT;
                    String lowerCase = s().toLowerCase();
                    for (String str : strArrSplit) {
                        String[] strArrSplit2 = str.split(":");
                        if (strArrSplit2.length >= 4) {
                            String str2 = strArrSplit2[0];
                            int i2 = Integer.parseInt(strArrSplit2[1]);
                            String str3 = strArrSplit2[2];
                            String str4 = strArrSplit2[3];
                            if (strR.equalsIgnoreCase(str2) && i >= i2) {
                                if (Operators.MUL.equals(str3)) {
                                    return str4;
                                }
                                String[] strArrSplit3 = str3.split("&");
                                if (strArrSplit3.length > 0) {
                                    for (String str5 : strArrSplit3) {
                                        if (lowerCase.contains(str5.toLowerCase())) {
                                            return str4;
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
            return null;
        } catch (Throwable th) {
            j.a(th);
            return "error";
        }
    }

    private static boolean L() {
        boolean z;
        boolean z2;
        boolean z3 = false;
        try {
            boolean z4 = d("com.google.android.gms", com.igexin.push.extension.distribution.gbd.c.c.f373a) || d("com.android.vending", com.igexin.push.extension.distribution.gbd.c.c.f373a);
            String displayName = TimeZone.getDefault().getDisplayName(false, 0);
            if (TextUtils.isEmpty(displayName) || !(displayName.equals("GMT+08:00") || displayName.contains("+08"))) {
                j.b("GBD_Utils", displayName);
                z = true;
            } else {
                z = false;
            }
            String language = Locale.getDefault().getLanguage();
            if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                j.b("GBD_Utils", language);
                z2 = true;
            } else {
                z2 = false;
            }
            String country = Locale.getDefault().getCountry();
            if (TextUtils.isEmpty(country) || !country.equals("CN")) {
                j.b("GBD_Utils", country);
                z3 = true;
            }
            if (z || z2 || z3) {
                return !z4;
            }
            return true;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static long a(long j, int i) {
        int i2 = 32 - i;
        long j2 = (j >> i2) << i2;
        return i < 31 ? j2 + 1 : j2;
    }

    public static long a(long j, long j2, long j3) {
        String[] strArrSplit = a(j).split("\\.");
        strArrSplit[2] = String.valueOf(j2);
        strArrSplit[3] = String.valueOf(j3);
        return c(strArrSplit[0] + Operators.DOT_STR + strArrSplit[1] + Operators.DOT_STR + strArrSplit[2] + Operators.DOT_STR + strArrSplit[3]);
    }

    public static String a() {
        try {
            String[] strArr = {"android.permission.BLUETOOTH", "android.permission.BLUETOOTH_ADMIN", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (true) {
                int i2 = 1;
                if (i >= 4) {
                    break;
                }
                if (!a(com.igexin.push.extension.distribution.gbd.c.c.f373a, strArr[i])) {
                    i2 = 0;
                }
                sb.append(i2);
                sb.append(",");
                i++;
            }
            if (sb.toString().endsWith(",")) {
                sb.deleteCharAt(sb.length() - 1);
            }
            j.b("GBD_Utils", "checkType11Permission: " + sb.toString());
            return sb.toString();
        } catch (Throwable th) {
            j.a(th);
            return "-1,-1,-1,-1";
        }
    }

    public static String a(int i) {
        return (i & 255) + Operators.DOT_STR + ((i >> 8) & 255) + Operators.DOT_STR + ((i >> 16) & 255) + Operators.DOT_STR + ((i >> 24) & 255);
    }

    public static String a(long j) {
        StringBuilder sb = new StringBuilder();
        for (int i = 3; i > -1; i--) {
            sb.append((j >> (i * 8)) & 255);
            sb.append(Operators.DOT_STR);
        }
        return sb.substring(0, sb.length() - 1);
    }

    public static String a(Context context, int i) {
        File[] fileArrListFiles;
        StringBuilder sb = new StringBuilder();
        try {
            for (PackageInfo packageInfo : com.igexin.push.extension.distribution.gbd.c.a.as ? G() : context.getPackageManager().getInstalledPackages(i)) {
                try {
                    ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(packageInfo.packageName, 128);
                    if (applicationInfo != null && applicationInfo.metaData != null) {
                        Bundle bundle = applicationInfo.metaData;
                        Object obj = "";
                        String str = (String) (bundle.get(AssistPushConsts.GETUI_APPID) == null ? "" : bundle.get(AssistPushConsts.GETUI_APPID));
                        String str2 = (String) (bundle.get(AssistPushConsts.GETUI_APPKEY) == null ? "" : bundle.get(AssistPushConsts.GETUI_APPKEY));
                        if (bundle.get(AssistPushConsts.GETUI_APPSECRET) != null) {
                            obj = bundle.get(AssistPushConsts.GETUI_APPSECRET);
                        }
                        String str3 = (String) obj;
                        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                            sb.append(packageInfo.packageName);
                            sb.append("|");
                        }
                    }
                } catch (Throwable th) {
                    j.a(th);
                }
            }
            File file = new File("/sdcard/libs/");
            if (file.exists() && (fileArrListFiles = file.listFiles(new l())) != null) {
                for (File file2 : fileArrListFiles) {
                    File[] fileArrListFiles2 = file2.listFiles(new o());
                    if (fileArrListFiles2 != null) {
                        for (File file3 : fileArrListFiles2) {
                            String name = file3.getName();
                            if (!TextUtils.isEmpty(name) && name.contains(".bin")) {
                                sb.append(name.substring(0, name.lastIndexOf(Operators.DOT_STR)));
                                sb.append("|");
                            }
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(sb.toString()) && sb.toString().endsWith("|")) {
                sb = sb.deleteCharAt(sb.length() - 1);
            }
        } catch (Throwable th2) {
            j.a(th2);
        }
        return sb.toString();
    }

    public static String a(PackageInfo packageInfo) {
        int i = packageInfo.applicationInfo.uid;
        String strG = TrafficStats.getUidTxBytes(i) + "";
        String strG2 = TrafficStats.getUidRxBytes(i) + "";
        if (strG.equals("-1")) {
            strG = g("cat  /proc/uid_stat/" + i + "/tcp_rcv");
        }
        if (strG2.equals("-1")) {
            strG2 = g("cat  /proc/uid_stat/" + i + "/tcp_snd");
        }
        return strG + "&" + strG2;
    }

    public static String a(String str, Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
            if (bundle == null) {
                return "";
            }
            for (String str2 : bundle.keySet()) {
                if ("com.sdk.plus.appid".equals(str2)) {
                    return bundle.get(str2).toString();
                }
            }
            return "";
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public static String a(String str, String str2) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop" + Operators.SPACE_STR + str).getInputStream()));
            String str3 = "";
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return str3;
                }
                str3 = str3 + line;
            }
        } catch (Exception unused) {
            return str2;
        }
    }

    private static String a(String str, String str2, String str3) throws Throwable {
        Process processExec;
        BufferedReader bufferedReader;
        Matcher matcher;
        BufferedReader bufferedReader2 = null;
        try {
            if (new File(str).exists()) {
                Pattern patternCompile = Pattern.compile(str3);
                processExec = Runtime.getRuntime().exec(str + str2);
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()), 8192);
                    do {
                        try {
                            String line = bufferedReader.readLine();
                            if (line != null) {
                                matcher = patternCompile.matcher(line);
                            }
                        } catch (Exception unused) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e) {
                                    j.a(e);
                                }
                            }
                            if (processExec != null) {
                                try {
                                    processExec.destroy();
                                } catch (Throwable th) {
                                    j.a(th);
                                }
                            }
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader2 = bufferedReader;
                            if (bufferedReader2 != null) {
                                try {
                                    bufferedReader2.close();
                                } catch (IOException e2) {
                                    j.a(e2);
                                }
                            }
                            if (processExec == null) {
                                throw th;
                            }
                            try {
                                processExec.destroy();
                                throw th;
                            } catch (Throwable th3) {
                                j.a(th3);
                                throw th;
                            }
                        }
                    } while (!matcher.matches());
                    String strGroup = matcher.group(1);
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        j.a(e3);
                    }
                    if (processExec != null) {
                        try {
                            processExec.destroy();
                        } catch (Throwable th4) {
                            j.a(th4);
                        }
                    }
                    return strGroup;
                } catch (Exception unused2) {
                    bufferedReader = null;
                } catch (Throwable th5) {
                    th = th5;
                }
            } else {
                processExec = null;
                bufferedReader = null;
            }
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e4) {
                    j.a(e4);
                }
            }
            if (processExec != null) {
                try {
                    processExec.destroy();
                } catch (Throwable th6) {
                    j.a(th6);
                }
            }
            return null;
        } catch (Exception unused3) {
            processExec = null;
            bufferedReader = null;
        } catch (Throwable th7) {
            th = th7;
            processExec = null;
        }
    }

    public static String a(String str, boolean z) {
        String[] strArrSplit;
        String[] strArrSplit2;
        String[] strArrSplit3;
        try {
            byte[] bArrH = h("/sdcard/libs/" + str + ".db");
            if (bArrH == null) {
                j.b("GBDUtils", str + ".db not exist");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            try {
                if (a(com.igexin.push.core.f.f, "android.permission.READ_PHONE_STATE")) {
                    String strA = a(true);
                    if (!TextUtils.isEmpty(strA)) {
                        String strA2 = am.a(strA);
                        if (!TextUtils.isEmpty(strA2) && !strA2.equals(com.igexin.push.core.f.B)) {
                            arrayList.add(strA2);
                        }
                    }
                }
            } catch (Throwable th) {
                j.a(th);
            }
            arrayList.add(com.igexin.push.core.f.B);
            arrayList.add(am.a(""));
            arrayList.add(am.a("000000000000000"));
            arrayList.add(am.a("cantgetimei"));
            String strA3 = a(false);
            if (!TextUtils.isEmpty(strA3) && (strArrSplit2 = strA3.split("#")) != null && strArrSplit2.length == 2 && (strArrSplit3 = strArrSplit2[1].split(",")) != null && strArrSplit3.length >= 1) {
                for (String str2 : strArrSplit3) {
                    if (!TextUtils.isEmpty(str2)) {
                        arrayList.add(am.a(str2));
                    }
                }
            }
            Iterator it = arrayList.iterator();
            String str3 = null;
            while (true) {
                if (!it.hasNext()) {
                    strArrSplit = null;
                    break;
                }
                String str4 = new String(ac.a(bArrH, (String) it.next()));
                if (Pattern.matches("[\\.:0-9a-zA-Z\\|]+", str4)) {
                    strArrSplit = str4.split("\\|");
                    str3 = str4;
                    break;
                }
                str3 = str4;
            }
            if (strArrSplit == null || strArrSplit.length < 3) {
                return null;
            }
            if (z) {
                return str3;
            }
            if (strArrSplit.length <= 3) {
                return null;
            }
            String str5 = strArrSplit[3];
            if (str5 != null) {
                try {
                    if (str5.equals("null")) {
                        return null;
                    }
                } catch (Throwable unused) {
                }
            }
            return str5;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static synchronized String a(boolean z) {
        String str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - com.igexin.push.extension.distribution.gbd.c.c.aB < com.igexin.push.extension.distribution.gbd.c.a.bE * 1000) {
            j.b("GBD_Utils", "time interval not match, get imei from db.");
            return z ? com.igexin.push.extension.distribution.gbd.c.c.aw : com.igexin.push.extension.distribution.gbd.c.c.ax;
        }
        com.igexin.push.extension.distribution.gbd.e.a.g.a().c(jCurrentTimeMillis);
        if (com.igexin.push.extension.distribution.gbd.c.c.e < 29) {
            j.b("GBD_Utils", "get imei from api.");
            String strA = al.a(com.igexin.push.extension.distribution.gbd.c.c.f373a);
            boolean z2 = false;
            String strA2 = al.a(0, com.igexin.push.extension.distribution.gbd.c.c.f373a);
            String strA3 = al.a(1, com.igexin.push.extension.distribution.gbd.c.c.f373a);
            if (TextUtils.isEmpty(strA) && TextUtils.isEmpty(strA2) && TextUtils.isEmpty(strA3)) {
                z2 = true;
            }
            if (z2) {
                str = "";
            } else {
                str = strA + "#" + strA2 + "," + strA3;
            }
            com.igexin.push.extension.distribution.gbd.e.a.g.a().a(strA, k(strA));
            com.igexin.push.extension.distribution.gbd.e.a.g.a().b(str, k(str));
        }
        return z ? com.igexin.push.extension.distribution.gbd.c.c.aw : com.igexin.push.extension.distribution.gbd.c.c.ax;
    }

    public static String a(byte[] bArr) {
        try {
            int i = (bArr[56] * 18) + 56;
            StringBuffer stringBuffer = new StringBuffer(17);
            for (int i2 = 1; i2 < 7; i2++) {
                String hexString = Integer.toHexString(bArr[i + i2] & 255);
                if (hexString.length() < 2) {
                    stringBuffer.append(0);
                }
                stringBuffer.append(hexString.toUpperCase());
                if (i2 < 6) {
                    stringBuffer.append(Operators.CONDITION_IF_MIDDLE);
                }
            }
            return stringBuffer.toString();
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public static boolean a(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            if ((memoryInfo.availMem / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID < com.igexin.push.extension.distribution.gbd.c.a.S) {
                return false;
            }
            return (((Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory()) + Runtime.getRuntime().freeMemory()) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID > ((long) com.igexin.push.extension.distribution.gbd.c.a.T);
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean a(Context context, boolean z) {
        try {
            if (!com.igexin.push.extension.distribution.gbd.c.a.bm && z) {
                return true;
            }
            if (F()) {
                return false;
            }
            String displayName = TimeZone.getDefault().getDisplayName(false, 0);
            if (!TextUtils.isEmpty(displayName) && (displayName.equals("GMT+08:00") || displayName.contains("+08"))) {
                String language = Locale.getDefault().getLanguage();
                if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                    String country = Locale.getDefault().getCountry();
                    if (!TextUtils.isEmpty(country) && country.equals("CN") && !k(context) && a(context) && !"none".equals(com.igexin.push.extension.distribution.gbd.c.a.c)) {
                        for (String str : com.igexin.push.extension.distribution.gbd.c.a.c.split(",")) {
                            if (d(str, context)) {
                                return false;
                            }
                        }
                        if (!"none".equals(com.igexin.push.extension.distribution.gbd.c.a.e)) {
                            String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.e.split(",");
                            Iterator<PackageInfo> it = (com.igexin.push.extension.distribution.gbd.c.a.as ? G() : context.getPackageManager().getInstalledPackages(4)).iterator();
                            while (it.hasNext()) {
                                ServiceInfo[] serviceInfoArr = it.next().services;
                                if (serviceInfoArr != null && serviceInfoArr.length > 0) {
                                    for (ServiceInfo serviceInfo : serviceInfoArr) {
                                        for (String str2 : strArrSplit) {
                                            if (str2.equals(serviceInfo.name)) {
                                                return false;
                                            }
                                        }
                                    }
                                }
                            }
                            return true;
                        }
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean a(Intent intent, Context context) {
        if (intent != null && context != null) {
            try {
                List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
                if (listQueryIntentServices != null) {
                    return listQueryIntentServices.size() > 0;
                }
                return false;
            } catch (Throwable th) {
                j.a(th);
            }
        }
        return false;
    }

    public static boolean a(String str) {
        if (!"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.bB) && !TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bB) && !TextUtils.isEmpty(str)) {
            try {
                String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.bB.split(",");
                if (strArrSplit != null && strArrSplit.length > 0) {
                    for (String str2 : strArrSplit) {
                        String[] strArrSplit2 = str2.split(":");
                        if (strArrSplit2 != null && strArrSplit2.length == 3 && str.equals(strArrSplit2[0]) && "pkg".equals(strArrSplit2[1]) && Operators.MUL.equals(strArrSplit2[2])) {
                            return true;
                        }
                    }
                }
            } catch (Throwable th) {
                j.a(th);
            }
        }
        return false;
    }

    public static boolean a(String str, String str2, List<ActivityManager.RunningServiceInfo> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    for (int i = 0; i < list.size(); i++) {
                        if (list.get(i).service.getClassName().equals(str) && list.get(i).service.getPackageName().equals(str2)) {
                            return true;
                        }
                    }
                    return false;
                }
            } catch (Throwable th) {
                j.a(th);
            }
        }
        return false;
    }

    public static long b(long j, int i) {
        int i2 = 32 - i;
        return i < 31 ? (j | ((long) ((1 << i2) - 1))) - 1 : j | ((long) ((1 << i2) - 1));
    }

    public static com.igexin.push.extension.distribution.gbd.b.j b(Context context) {
        byte[] hardwareAddress;
        j.b("GBD_Utils", "SLMA getMac.");
        com.igexin.push.extension.distribution.gbd.b.j jVar = new com.igexin.push.extension.distribution.gbd.b.j();
        try {
            if (E()) {
                j.b("GBD_Utils", "SLMA getMac old.");
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                jVar.b(connectionInfo.getMacAddress());
                jVar.c(connectionInfo.getSSID());
                jVar.a(connectionInfo.getBSSID());
                DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
                jVar.d(a(dhcpInfo.gateway));
                jVar.e(a(dhcpInfo.ipAddress));
                jVar.f(a(dhcpInfo.netmask));
            }
        } catch (Throwable th) {
            j.a(th);
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                j.b("GBD_Utils", "SLMA getMac new.");
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    if ("wlan0".equalsIgnoreCase(networkInterfaceNextElement.getName()) && (hardwareAddress = networkInterfaceNextElement.getHardwareAddress()) != null && hardwareAddress.length != 0) {
                        StringBuilder sb = new StringBuilder();
                        for (byte b : hardwareAddress) {
                            sb.append(String.format("%02X:", Byte.valueOf(b)));
                        }
                        if (sb.length() > 0) {
                            sb.deleteCharAt(sb.length() - 1);
                        }
                        jVar.b(sb.toString());
                    }
                }
            }
        } catch (Throwable th2) {
            j.a(th2);
        }
        return jVar;
    }

    public static String b() {
        int i;
        int i2;
        int i3;
        int i4 = -1;
        try {
            if (Build.VERSION.SDK_INT >= 17) {
                i = Settings.Secure.getInt(com.igexin.push.extension.distribution.gbd.c.c.f373a.getContentResolver(), "bluetooth_on", -1);
                try {
                    i2 = Settings.Secure.getInt(com.igexin.push.extension.distribution.gbd.c.c.f373a.getContentResolver(), "location_mode", -1);
                } catch (Throwable th) {
                    th = th;
                    i2 = -1;
                    j.a(th);
                    i4 = i;
                    i3 = -1;
                    j.b("GBD_Utils", "bluetoothStatus: " + i4 + ", locationStatus: " + i2 + ", wifiStatus: " + i3);
                    return i4 + "," + i2 + "," + i3;
                }
                try {
                    i3 = Settings.Secure.getInt(com.igexin.push.extension.distribution.gbd.c.c.f373a.getContentResolver(), "wifi_on", -1);
                    i4 = i;
                } catch (Throwable th2) {
                    th = th2;
                    j.a(th);
                    i4 = i;
                    i3 = -1;
                }
            } else {
                i3 = -1;
                i2 = -1;
            }
        } catch (Throwable th3) {
            th = th3;
            i = -1;
        }
        j.b("GBD_Utils", "bluetoothStatus: " + i4 + ", locationStatus: " + i2 + ", wifiStatus: " + i3);
        return i4 + "," + i2 + "," + i3;
    }

    public static String b(String str, Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
            if (bundle == null) {
                return "";
            }
            for (String str2 : bundle.keySet()) {
                if (str2.equals(AssistPushConsts.GETUI_APPID) || str2.equals("appid")) {
                    return bundle.get(str2).toString();
                }
            }
            return "";
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public static String b(String str, String str2) {
        String[] strArrSplit;
        String[] strArrSplit2;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            byte[] bArrH = h(str2 + Operators.DIV + str + ".db");
            String[] strArrSplit3 = null;
            if (bArrH == null) {
                j.b("GBDUtils", str + ".db not exist");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            try {
                if (a(com.igexin.push.core.f.f, "android.permission.READ_PHONE_STATE")) {
                    String strA = a(true);
                    if (!TextUtils.isEmpty(strA)) {
                        String strA2 = am.a(strA);
                        if (!TextUtils.isEmpty(strA2) && !strA2.equals(com.igexin.push.core.f.B)) {
                            arrayList.add(strA2);
                        }
                    }
                }
            } catch (Throwable th) {
                j.a(th);
            }
            arrayList.add(com.igexin.push.core.f.B);
            arrayList.add(am.a(""));
            arrayList.add(am.a("000000000000000"));
            arrayList.add(am.a("cantgetimei"));
            String strA3 = a(false);
            if (!TextUtils.isEmpty(strA3) && (strArrSplit = strA3.split("#")) != null && strArrSplit.length == 2 && (strArrSplit2 = strArrSplit[1].split(",")) != null && strArrSplit2.length >= 1) {
                for (String str3 : strArrSplit2) {
                    if (!TextUtils.isEmpty(str3)) {
                        arrayList.add(am.a(str3));
                    }
                }
            }
            Iterator it = arrayList.iterator();
            String str4 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String str5 = new String(ac.a(bArrH, (String) it.next()));
                if (Pattern.matches("[\\.:0-9a-zA-Z\\|]+", str5)) {
                    strArrSplit3 = str5.split("\\|");
                    str4 = str5;
                    break;
                }
                str4 = str5;
            }
            return (strArrSplit3 == null || strArrSplit3.length != 5) ? "" : str4;
        } catch (Throwable th2) {
            j.a(th2);
            return "";
        }
    }

    public static synchronized String b(boolean z) {
        String str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - com.igexin.push.extension.distribution.gbd.c.c.aC < com.igexin.push.extension.distribution.gbd.c.a.bE * 1000) {
            j.b("GBD_Utils", "time interval not match, get imsi from db.");
            return z ? com.igexin.push.extension.distribution.gbd.c.c.ay : com.igexin.push.extension.distribution.gbd.c.c.az;
        }
        com.igexin.push.extension.distribution.gbd.e.a.g.a().d(jCurrentTimeMillis);
        if (com.igexin.push.extension.distribution.gbd.c.c.e < 29) {
            j.b("GBD_Utils", "get imsi from api.");
            boolean z2 = false;
            int iD = al.d(0, com.igexin.push.extension.distribution.gbd.c.c.f373a);
            int iD2 = al.d(1, com.igexin.push.extension.distribution.gbd.c.c.f373a);
            String strB = al.b(com.igexin.push.extension.distribution.gbd.c.c.f373a);
            String strB2 = al.b(iD, com.igexin.push.extension.distribution.gbd.c.c.f373a);
            String strB3 = al.b(iD2, com.igexin.push.extension.distribution.gbd.c.c.f373a);
            if (TextUtils.isEmpty(strB) && TextUtils.isEmpty(strB2) && TextUtils.isEmpty(strB3)) {
                z2 = true;
            }
            if (z2) {
                str = "";
            } else {
                str = strB + "#" + strB2 + "," + strB3;
            }
            com.igexin.push.extension.distribution.gbd.e.a.g.a().c(strB, k(strB));
            com.igexin.push.extension.distribution.gbd.e.a.g.a().d(str, k(str));
        }
        return z ? com.igexin.push.extension.distribution.gbd.c.c.ay : com.igexin.push.extension.distribution.gbd.c.c.az;
    }

    public static HashMap<String, String> b(int i) throws Throwable {
        Process processExec;
        HashMap<String, String> map = new HashMap<>();
        BufferedReader bufferedReader = null;
        try {
            try {
                processExec = Runtime.getRuntime().exec("cat /proc/net/arp");
                try {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                        int i2 = 0;
                        while (true) {
                            try {
                                String line = bufferedReader2.readLine();
                                if (line != null) {
                                    try {
                                        if (!line.contains("IP") && !line.contains("00:00:00:00:00:00")) {
                                            i2++;
                                            if (i2 > i) {
                                                break;
                                            }
                                            String[] strArrSplit = line.split(" +");
                                            map.put(strArrSplit[0], strArrSplit[3].replaceAll(":", ""));
                                        }
                                    } catch (Throwable th) {
                                        j.a(th);
                                    }
                                }
                            } catch (Exception e) {
                                e = e;
                                bufferedReader = bufferedReader2;
                                j.a(e);
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e2) {
                                        j.a(e2);
                                    }
                                }
                                if (processExec != null) {
                                    processExec.destroy();
                                }
                                return map;
                            } catch (Throwable th2) {
                                th = th2;
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e3) {
                                        j.a(e3);
                                    }
                                }
                                if (processExec == null) {
                                    throw th;
                                }
                                try {
                                    processExec.destroy();
                                    throw th;
                                } catch (Throwable th3) {
                                    j.a(th3);
                                    throw th;
                                }
                            }
                        }
                        try {
                            bufferedReader2.close();
                        } catch (IOException e4) {
                            j.a(e4);
                        }
                    } catch (Exception e5) {
                        e = e5;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                j.a(th5);
            }
        } catch (Exception e6) {
            e = e6;
            processExec = null;
        } catch (Throwable th6) {
            th = th6;
            processExec = null;
        }
        if (processExec != null) {
            processExec.destroy();
        }
        return map;
    }

    public static boolean b(Context context, String str) {
        try {
            for (String str2 : context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions) {
                if (str2.equals(str)) {
                    return true;
                }
            }
        } catch (Throwable th) {
            j.a(th);
        }
        return false;
    }

    public static boolean b(Intent intent, Context context) {
        if (intent != null && context != null) {
            try {
                List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
                if (listQueryBroadcastReceivers != null) {
                    return listQueryBroadcastReceivers.size() > 0;
                }
                return false;
            } catch (Throwable th) {
                j.a(th);
            }
        }
        return false;
    }

    public static boolean b(String str) {
        return Pattern.compile("^(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])$").matcher(str).matches();
    }

    public static long c(long j, int i) {
        return (j >> (i * 8)) & 255;
    }

    public static long c(String str) {
        String[] strArrSplit = str.split("\\.");
        return (Integer.parseInt(strArrSplit[0]) * 16777216) + (Integer.parseInt(strArrSplit[1]) * 65536) + (Integer.parseInt(strArrSplit[2]) * 256) + Integer.parseInt(strArrSplit[3]);
    }

    public static String c(String str, Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
            StringBuilder sb = new StringBuilder();
            if (bundle == null) {
                return "";
            }
            Set<String> setKeySet = bundle.keySet();
            if (setKeySet != null && setKeySet.size() > 0) {
                for (String str2 : setKeySet) {
                    String strEncode = URLEncoder.encode(String.valueOf(bundle.get(str2)), "UTF-8");
                    sb.append(str2);
                    sb.append("=");
                    sb.append(strEncode);
                    sb.append("&");
                }
                if (sb.toString().endsWith("&")) {
                    sb.deleteCharAt(sb.length() - 1);
                }
            }
            return sb.toString().replace("|", Operators.DOLLAR_STR);
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public static boolean c() {
        try {
        } catch (Throwable th) {
            j.a(th);
        }
        if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.F) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.F)) {
            j.b("GBD_Utils", "audio wl  " + com.igexin.push.extension.distribution.gbd.c.a.F);
            String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.F.split(",");
            if (strArrSplit.length > 0 && new ArrayList(Arrays.asList(strArrSplit)).contains(com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageName())) {
                j.b("GBD_Utils", "in audio wl.");
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean c(int i) {
        if (com.igexin.push.extension.distribution.gbd.c.c.aE == null || com.igexin.push.extension.distribution.gbd.c.c.aE.isEmpty()) {
            j.b("GBD_Utils", "GBDTypeBlackList empty.");
            return false;
        }
        boolean zContains = com.igexin.push.extension.distribution.gbd.c.c.aE.contains(Integer.valueOf(i));
        j.b("GBD_Utils", i + " inGBDTypeBlackList " + zContains);
        return zContains;
    }

    public static boolean c(Context context) {
        try {
            return ((PowerManager) context.getSystemService("power")).isScreenOn();
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean c(Intent intent, Context context) {
        if (intent != null && context != null) {
            try {
                List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
                if (listQueryIntentActivities != null) {
                    return listQueryIntentActivities.size() > 0;
                }
                return false;
            } catch (Throwable th) {
                j.a(th);
            }
        }
        return false;
    }

    private static boolean c(boolean z) {
        try {
            if (z) {
                boolean zK = k(com.igexin.push.extension.distribution.gbd.c.c.f373a);
                j.b("GBD_Utils", "usb and adb mode, usb is " + zK);
                return !zK;
            }
            boolean z2 = Settings.Secure.getInt(com.igexin.push.extension.distribution.gbd.c.c.f373a.getContentResolver(), "adb_enabled", 0) > 0;
            j.b("GBD_Utils", "only adb mode, adb is " + z2);
            return !z2;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean d() {
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) com.igexin.push.extension.distribution.gbd.c.c.f373a.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses == null || runningAppProcesses.isEmpty()) {
                return false;
            }
            j.b("GBD_Utils", "RAP size : " + runningAppProcesses.size());
            String packageName = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageName();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                j.b("GBD_Utils", "RAP:  " + runningAppProcessInfo.processName + " importance " + runningAppProcessInfo.importance);
                if (packageName.equals(runningAppProcessInfo.processName) && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static synchronized boolean d(int i) {
        try {
            if (com.igexin.push.extension.distribution.gbd.c.c.k == null) {
                com.igexin.push.extension.distribution.gbd.c.c.k = new CopyOnWriteArrayList<>();
            }
            if (com.igexin.push.extension.distribution.gbd.c.c.k.size() > 0) {
                return com.igexin.push.extension.distribution.gbd.c.c.k.contains(Integer.valueOf(i));
            }
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bD) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.bD)) {
                for (String str : com.igexin.push.extension.distribution.gbd.c.a.bD.split(",")) {
                    com.igexin.push.extension.distribution.gbd.c.c.k.add(Integer.valueOf(Integer.parseInt(str)));
                }
            }
            return com.igexin.push.extension.distribution.gbd.c.c.k.contains(Integer.valueOf(i));
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean d(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static boolean d(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        Process processExec;
        String strReplaceAll;
        try {
            try {
                processExec = Runtime.getRuntime().exec("ping -c 1 -W 1 " + str);
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line != null) {
                                try {
                                    strReplaceAll = line.replaceAll(Operators.SPACE_STR, "");
                                } catch (Throwable th2) {
                                    j.a(th2);
                                }
                                if (strReplaceAll.contains("1packetstransmitted,1packetsreceived") || strReplaceAll.contains("1packetstransmitted,1received")) {
                                    break;
                                }
                            } else {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e) {
                                    j.a(e);
                                }
                                if (processExec == null) {
                                    return false;
                                }
                                processExec.destroy();
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                j.a(th);
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e2) {
                                        j.a(e2);
                                    }
                                }
                                if (processExec == null) {
                                    return false;
                                }
                                processExec.destroy();
                                return false;
                            } finally {
                            }
                        }
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        j.a(e3);
                    }
                    if (processExec != null) {
                        try {
                            processExec.destroy();
                        } catch (Throwable th4) {
                            j.a(th4);
                        }
                    }
                    return true;
                } catch (Throwable th5) {
                    bufferedReader = null;
                    th = th5;
                }
            } catch (Throwable th6) {
                bufferedReader = null;
                th = th6;
                processExec = null;
            }
        } catch (Throwable th7) {
            j.a(th7);
            return false;
        }
    }

    public static boolean d(String str, Context context) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static PackageInfo e(String str, Context context) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static boolean e() {
        return a(com.igexin.push.extension.distribution.gbd.c.c.f373a, "android.permission.ACCESS_FINE_LOCATION") && a(com.igexin.push.extension.distribution.gbd.c.c.f373a, "android.permission.ACCESS_COARSE_LOCATION");
    }

    public static boolean e(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable();
            }
            return false;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean e(String str) {
        try {
            ApplicationInfo applicationInfo = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getApplicationInfo(str, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                Bundle bundle = applicationInfo.metaData;
                String str2 = (String) bundle.get(AssistPushConsts.GETUI_APPID);
                String str3 = (String) bundle.get("com.sdk.plus.appid");
                if (TextUtils.isEmpty(str2)) {
                    if (TextUtils.isEmpty(str3)) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static PackageInfo f(String str, Context context) {
        try {
            return context.getPackageManager().getPackageInfo(str, 4);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static String f(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            j.a(e);
            return null;
        }
    }

    public static boolean f() {
        try {
            if (c()) {
                return true;
            }
            if (((AudioManager) com.igexin.push.extension.distribution.gbd.c.c.f373a.getSystemService("audio")) == null) {
                return false;
            }
            return !r1.isMusicActive();
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean f(String str) {
        try {
            ApplicationInfo applicationInfo = com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getApplicationInfo(str, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return !TextUtils.isEmpty((String) applicationInfo.metaData.get("com.sdk.plus.appid"));
            }
            return false;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static String g(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            m mVar = new m();
            if (!context.bindService(intent, mVar, 1)) {
                throw new IOException("Google Play connection failed");
            }
            try {
                try {
                    return new n(mVar.a()).a();
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                context.unbindService(mVar);
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static String g(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        Process processExec;
        try {
            processExec = Runtime.getRuntime().exec(str);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                try {
                    String line = bufferedReader.readLine();
                    String str2 = TextUtils.isEmpty(line) ? "0" : line;
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        j.a(e);
                    }
                    if (processExec != null) {
                        try {
                            processExec.destroy();
                        } catch (Throwable th2) {
                            j.a(th2);
                        }
                    }
                    return str2;
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        j.a(th);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e2) {
                                j.a(e2);
                            }
                        }
                        if (processExec != null) {
                            try {
                                processExec.destroy();
                            } catch (Throwable th4) {
                                j.a(th4);
                            }
                        }
                        return "0";
                    } finally {
                    }
                }
            } catch (Throwable th5) {
                bufferedReader = null;
                th = th5;
            }
        } catch (Throwable th6) {
            bufferedReader = null;
            th = th6;
            processExec = null;
        }
    }

    public static String g(String str, Context context) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aE)) {
            for (String str2 : com.igexin.push.extension.distribution.gbd.c.a.aE.split(",")) {
                try {
                    ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
                    if (applicationInfo != null && applicationInfo.metaData != null) {
                        String str3 = (String) applicationInfo.metaData.get(str2);
                        if (!TextUtils.isEmpty(str3)) {
                            String strReplace = str3.replace("|", Operators.DOLLAR_STR);
                            sb.append(str2);
                            sb.append("=");
                            sb.append(strReplace);
                            sb.append("&");
                        }
                    }
                } catch (Throwable th) {
                    j.a(th);
                }
            }
            if (sb.length() > 0 && sb.toString().endsWith("&")) {
                sb = sb.deleteCharAt(sb.length() - 1);
            }
        }
        return sb.toString();
    }

    public static boolean g() {
        if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.G) || "none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.G)) {
            return true;
        }
        try {
            String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.G.split(",");
            String strR = r();
            int i = Build.VERSION.SDK_INT;
            if (strArrSplit.length > 0) {
                for (String str : strArrSplit) {
                    String[] strArrSplit2 = str.split(":");
                    if (strArrSplit2 != null && strArrSplit2.length == 3) {
                        String str2 = strArrSplit2[0];
                        int iIntValue = Integer.valueOf(strArrSplit2[1]).intValue();
                        boolean zBooleanValue = Boolean.valueOf(strArrSplit2[2]).booleanValue();
                        if (strR.equalsIgnoreCase(str2) && i >= iIntValue) {
                            return zBooleanValue;
                        }
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static String h() {
        BufferedReader bufferedReader;
        Throwable th;
        Process processExec;
        try {
            processExec = Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address");
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                try {
                    String line = bufferedReader.readLine();
                    String str = TextUtils.isEmpty(line) ? "" : line;
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        j.a(e);
                    }
                    if (processExec != null) {
                        try {
                            processExec.destroy();
                        } catch (Throwable th2) {
                            j.a(th2);
                        }
                    }
                    return str;
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        j.a(th);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e2) {
                                j.a(e2);
                            }
                        }
                        if (processExec != null) {
                            try {
                                processExec.destroy();
                            } catch (Throwable th4) {
                                j.a(th4);
                            }
                        }
                        return "";
                    } finally {
                    }
                }
            } catch (Throwable th5) {
                bufferedReader = null;
                th = th5;
            }
        } catch (Throwable th6) {
            bufferedReader = null;
            th = th6;
            processExec = null;
        }
    }

    public static boolean h(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager != null) {
                return wifiManager.isWifiEnabled();
            }
            return false;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:5|(2:59|6)|(2:67|7)|(5:56|8|(1:10)(1:69)|58|38)|11|54|12|16|58|38) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        com.igexin.push.extension.distribution.gbd.i.j.a(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0038 -> B:58:0x005c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] h(java.lang.String r5) throws java.lang.Throwable {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r5)
            boolean r0 = r0.exists()
            r1 = 0
            if (r0 != 0) goto Ld
            return r1
        Ld:
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L41
            r5.<init>()     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L41
        L1b:
            int r3 = r2.read(r0)     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L5d
            r4 = -1
            if (r3 == r4) goto L27
            r4 = 0
            r5.write(r0, r4, r3)     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L5d
            goto L1b
        L27:
            byte[] r1 = r5.toByteArray()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L5d
            r2.close()     // Catch: java.lang.Exception -> L2f
            goto L33
        L2f:
            r0 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r0)
        L33:
            r5.close()     // Catch: java.lang.Exception -> L37
            goto L5c
        L37:
            r5 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r5)
            goto L5c
        L3c:
            r0 = move-exception
            goto L4a
        L3e:
            r0 = move-exception
            r5 = r1
            goto L5e
        L41:
            r0 = move-exception
            r5 = r1
            goto L4a
        L44:
            r0 = move-exception
            r5 = r1
            goto L5f
        L47:
            r0 = move-exception
            r5 = r1
            r2 = r5
        L4a:
            com.igexin.push.extension.distribution.gbd.i.j.a(r0)     // Catch: java.lang.Throwable -> L5d
            if (r2 == 0) goto L57
            r2.close()     // Catch: java.lang.Exception -> L53
            goto L57
        L53:
            r0 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r0)
        L57:
            if (r5 == 0) goto L5c
            r5.close()     // Catch: java.lang.Exception -> L37
        L5c:
            return r1
        L5d:
            r0 = move-exception
        L5e:
            r1 = r2
        L5f:
            if (r1 == 0) goto L69
            r1.close()     // Catch: java.lang.Exception -> L65
            goto L69
        L65:
            r1 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r1)
        L69:
            if (r5 == 0) goto L73
            r5.close()     // Catch: java.lang.Exception -> L6f
            goto L73
        L6f:
            r5 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r5)
        L73:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.i.k.h(java.lang.String):byte[]");
    }

    public static synchronized String i() {
        byte[] hardwareAddress;
        if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.aA)) {
            j.b("GBD_Utils", "get wifi mac from cache.");
            return com.igexin.push.extension.distribution.gbd.c.c.aA;
        }
        try {
            j.b("GBD_Utils", "get wifi mac from api.");
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if ("wlan0".equalsIgnoreCase(networkInterfaceNextElement.getName()) && (hardwareAddress = networkInterfaceNextElement.getHardwareAddress()) != null && hardwareAddress.length != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (byte b : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    com.igexin.push.extension.distribution.gbd.c.c.aA = sb.toString();
                    return com.igexin.push.extension.distribution.gbd.c.c.aA;
                }
            }
        } catch (Throwable th) {
            j.a(th);
        }
        return "";
    }

    public static String i(String str) {
        File file;
        FileInputStream fileInputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            file = new File("/sdcard/libs/");
        } catch (Throwable th) {
            j.a(th);
        }
        if (!file.exists()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, file.listFiles(new p(str)));
        if (arrayList.isEmpty()) {
            for (File file2 : file.listFiles(new q())) {
                Collections.addAll(arrayList, file2.listFiles(new r(str)));
            }
        }
        if (!arrayList.isEmpty()) {
            byte[] bArr = new byte[1024];
            try {
                fileInputStream = new FileInputStream((File) arrayList.get(0));
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        try {
                            int i = fileInputStream.read(bArr);
                            if (i == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i);
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                j.a(th);
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (Exception e) {
                                        j.a(e);
                                    }
                                }
                                if (byteArrayOutputStream != null) {
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (Exception e2) {
                                        e = e2;
                                        j.a(e);
                                    }
                                }
                                return null;
                            } finally {
                                return null;
                            }
                        }
                        j.a(e);
                    }
                    String[] strArrSplit = new String(com.igexin.b.a.a.a.a(byteArrayOutputStream.toByteArray(), am.a(com.igexin.push.core.f.u == null ? "cantgetimei" : com.igexin.push.core.f.u))).split("\\|");
                    if (strArrSplit.length > 1) {
                        String str2 = strArrSplit[1];
                        try {
                            fileInputStream.close();
                        } catch (Exception e3) {
                            j.a(e3);
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e4) {
                            j.a(e4);
                        }
                        return str2;
                    }
                    try {
                        fileInputStream.close();
                    } catch (Exception e5) {
                        j.a(e5);
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception e6) {
                        e = e6;
                        j.a(e);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
                byteArrayOutputStream = null;
            }
            j.a(th);
        }
        return null;
    }

    public static boolean i(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "auto_time", 1) == 1;
    }

    public static int j(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            return -1;
        }
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0 ? 1 : 0;
        } catch (Throwable th) {
            j.a(th);
            return 0;
        }
    }

    public static String j() {
        StringBuilder sb = new StringBuilder();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces == null) {
                return "";
            }
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                String lowerCase = networkInterfaceNextElement.getName().toLowerCase();
                if (!TextUtils.isEmpty(lowerCase) && (lowerCase.contains("wlan") || lowerCase.contains("eth"))) {
                    byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                    if (hardwareAddress != null && hardwareAddress.length != 0) {
                        StringBuilder sb2 = new StringBuilder();
                        for (byte b : hardwareAddress) {
                            sb2.append(String.format("%02X:", Byte.valueOf(b)));
                        }
                        if (sb2.length() > 0) {
                            sb2.deleteCharAt(sb2.length() - 1);
                        }
                        String string = sb2.toString();
                        sb.append(lowerCase.replace("#", ""));
                        sb.append("#");
                        sb.append(string);
                        sb.append(",");
                    }
                }
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean j(java.lang.String r3) {
        /*
            r0 = 0
            android.content.Context r1 = com.igexin.push.extension.distribution.gbd.c.c.f373a     // Catch: java.lang.Throwable -> L1f
            android.content.pm.PackageManager r1 = r1.getPackageManager()     // Catch: java.lang.Throwable -> L1f
            android.content.pm.PackageInfo r3 = r1.getPackageInfo(r3, r0)     // Catch: java.lang.Throwable -> L1f
            android.content.pm.ApplicationInfo r1 = r3.applicationInfo     // Catch: java.lang.Throwable -> L1f
            int r1 = r1.flags     // Catch: java.lang.Throwable -> L1f
            r2 = 1
            r1 = r1 & r2
            if (r1 == 0) goto L1b
            android.content.pm.ApplicationInfo r3 = r3.applicationInfo     // Catch: java.lang.Throwable -> L1f
            int r3 = r3.flags     // Catch: java.lang.Throwable -> L1f
            r3 = r3 & 128(0x80, float:1.8E-43)
            if (r3 == 0) goto L1c
        L1b:
            r0 = 1
        L1c:
            r3 = r0 ^ 1
            return r3
        L1f:
            r3 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.i.k.j(java.lang.String):boolean");
    }

    public static String k() {
        String str = "";
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    String hostAddress = inetAddressNextElement.getHostAddress();
                    if (!inetAddressNextElement.isLoopbackAddress() && b(hostAddress)) {
                        str = hostAddress;
                    }
                }
            }
        } catch (Exception e) {
            j.a(e);
        }
        return str;
    }

    public static boolean k(Context context) {
        try {
            boolean z = Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", 0) > 0;
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null && intentRegisterReceiver.getExtras() != null) {
                return z && intentRegisterReceiver.getExtras().getInt("plugged") == 2;
            }
            return true;
        } catch (Throwable th) {
            j.a(th);
            return true;
        }
    }

    private static boolean k(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("");
        arrayList.add("00000000000000");
        arrayList.add("000000000000000");
        arrayList.add("0000000000000000");
        return !arrayList.contains(str.toLowerCase());
    }

    public static int l() throws Throwable {
        try {
            String strA = a("/system/xbin/ip", String.format(" -f inet addr show %s", f408a), String.format("\\s*inet [0-9\\.]+\\/([0-9]+) brd [0-9\\.]+ scope global %s$", f408a));
            if (strA != null) {
                return Integer.parseInt(strA);
            }
            String strA2 = a("/system/xbin/ip", String.format(" -f inet addr show %s", f408a), String.format("\\s*inet [0-9\\.]+ peer [0-9\\.]+\\/([0-9]+) scope global %s$", f408a));
            if (strA2 != null) {
                return Integer.parseInt(strA2);
            }
            String strA3 = a("/system/bin/ifconfig", Operators.SPACE_STR + f408a, String.format("^%s: ip [0-9\\.]+ mask ([0-9\\.]+) flags.*", f408a));
            if (strA3 == null) {
                return 24;
            }
            double d = -2.0d;
            for (String str : strA3.split("\\.")) {
                d += 256.0d - Double.parseDouble(str);
            }
            return 32 - ((int) (Math.log(d) / Math.log(2.0d)));
        } catch (Exception e) {
            j.a(e);
            return 24;
        }
    }

    public static boolean l(Context context) {
        try {
            if (!com.igexin.push.extension.distribution.gbd.c.a.bn) {
                j.b("GBD_Utils", "no dynamic config, check safe for g switch is false.");
                return true;
            }
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bo) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.bo)) {
                String strR = r();
                String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.bo.split(",");
                if (strArrSplit.length > 0) {
                    for (String str : strArrSplit) {
                        String[] strArrSplit2 = str.split(":");
                        if (strArrSplit2.length == 2) {
                            String str2 = strArrSplit2[0];
                            boolean z = Boolean.parseBoolean(strArrSplit2[1]);
                            if (strR.equalsIgnoreCase(str2)) {
                                return c(z);
                            }
                        }
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean m() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null) {
                return defaultAdapter.isEnabled();
            }
            return false;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.ArrayList<java.lang.Long> n() throws java.lang.Throwable {
        /*
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            java.lang.String r2 = "cat /proc/net/arp"
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L7b
            java.io.InputStream r2 = r1.getInputStream()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L73
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L73
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L73
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L73
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L73
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L96
            r3.<init>()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L96
        L1e:
            java.lang.String r4 = r2.readLine()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L96
            if (r4 == 0) goto L59
            java.lang.String r5 = "IP"
            boolean r5 = r4.contains(r5)     // Catch: java.lang.Throwable -> L54
            if (r5 != 0) goto L1e
            java.lang.String r5 = "00:00:00:00:00:00"
            boolean r5 = r4.contains(r5)     // Catch: java.lang.Throwable -> L54
            if (r5 != 0) goto L1e
            java.lang.String r5 = " +"
            java.lang.String[] r4 = r4.split(r5)     // Catch: java.lang.Throwable -> L54
            r5 = 0
            r4 = r4[r5]     // Catch: java.lang.Throwable -> L54
            long r4 = c(r4)     // Catch: java.lang.Throwable -> L54
            r6 = 1
            long r4 = c(r4, r6)     // Catch: java.lang.Throwable -> L54
            java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: java.lang.Throwable -> L54
            boolean r5 = r3.contains(r4)     // Catch: java.lang.Throwable -> L54
            if (r5 != 0) goto L1e
            r3.add(r4)     // Catch: java.lang.Throwable -> L54
            goto L1e
        L54:
            r4 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r4)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> L96
            goto L1e
        L59:
            r2.close()     // Catch: java.io.IOException -> L5d
            goto L61
        L5d:
            r0 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r0)
        L61:
            if (r1 == 0) goto L6b
            r1.destroy()     // Catch: java.lang.Throwable -> L67
            goto L6b
        L67:
            r0 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r0)
        L6b:
            return r3
        L6c:
            r3 = move-exception
            goto L7e
        L6e:
            r2 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
            goto L97
        L73:
            r3 = move-exception
            r2 = r0
            goto L7e
        L76:
            r1 = move-exception
            r2 = r0
            r0 = r1
            r1 = r2
            goto L97
        L7b:
            r3 = move-exception
            r1 = r0
            r2 = r1
        L7e:
            com.igexin.push.extension.distribution.gbd.i.j.a(r3)     // Catch: java.lang.Throwable -> L96
            if (r2 == 0) goto L8b
            r2.close()     // Catch: java.io.IOException -> L87
            goto L8b
        L87:
            r2 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r2)
        L8b:
            if (r1 == 0) goto L95
            r1.destroy()     // Catch: java.lang.Throwable -> L91
            goto L95
        L91:
            r1 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r1)
        L95:
            return r0
        L96:
            r0 = move-exception
        L97:
            if (r2 == 0) goto La1
            r2.close()     // Catch: java.io.IOException -> L9d
            goto La1
        L9d:
            r2 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r2)
        La1:
            if (r1 == 0) goto Lab
            r1.destroy()     // Catch: java.lang.Throwable -> La7
            goto Lab
        La7:
            r1 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r1)
        Lab:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.i.k.n():java.util.ArrayList");
    }

    public static String o() {
        try {
            StringBuilder sb = new StringBuilder();
            for (PackageInfo packageInfo : com.igexin.push.extension.distribution.gbd.c.a.as ? G() : com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageManager().getInstalledPackages(0)) {
                if ((packageInfo.applicationInfo.flags & 1) == 0 && e(packageInfo.packageName)) {
                    sb.append(packageInfo.packageName);
                    sb.append("&");
                }
            }
            if (sb.toString().endsWith("&")) {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public static boolean p() {
        return H() || I() || J();
    }

    public static void q() {
        try {
            String strK = K();
            j.b("GBD_Utils", "refreshTypeBl = " + strK);
            if (TextUtils.isEmpty(strK)) {
                com.igexin.push.extension.distribution.gbd.c.c.aE.clear();
                return;
            }
            if ("error".equalsIgnoreCase(strK)) {
                strK = "6&11&14&19&24&27&28&31&32&34&38&43";
            }
            String[] strArrSplit = strK.split("&");
            if (strArrSplit.length > 0) {
                com.igexin.push.extension.distribution.gbd.c.c.aE.clear();
                for (String str : strArrSplit) {
                    try {
                        com.igexin.push.extension.distribution.gbd.c.c.aE.add(Integer.valueOf(Integer.parseInt(str)));
                    } catch (Throwable th) {
                        j.a(th);
                    }
                }
            }
        } catch (Throwable th2) {
            j.a(th2);
        }
    }

    public static String r() {
        try {
            String str = Build.BRAND;
            return (TextUtils.isEmpty(str) || str.equals("unknown")) ? Build.MANUFACTURER : str;
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public static String s() {
        if (com.igexin.push.extension.distribution.gbd.c.c.R != null) {
            return com.igexin.push.extension.distribution.gbd.c.c.R;
        }
        try {
            String strT = t();
            if (TextUtils.isEmpty(strT)) {
                com.igexin.push.extension.distribution.gbd.c.c.R = "unknown";
            } else {
                com.igexin.push.extension.distribution.gbd.c.c.R = strT;
            }
            return com.igexin.push.extension.distribution.gbd.c.c.R;
        } catch (Throwable th) {
            j.a(th);
            return "unknown";
        }
    }

    public static String t() {
        try {
        } catch (Throwable th) {
            j.a(th);
        }
        if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.S)) {
            return com.igexin.push.extension.distribution.gbd.c.c.S;
        }
        String strR = r();
        if (TextUtils.isEmpty(strR)) {
            return "";
        }
        String lowerCase = strR.toLowerCase();
        HashMap map = new HashMap();
        map.put("huawei", "ro.build.version.emui");
        map.put("honor", "ro.build.version.emui");
        map.put("xiaomi", "ro.build.version.incremental");
        map.put("redmi", "ro.build.version.incremental");
        map.put("blackshark", "ro.build.version.incremental");
        map.put("samsang", "ro.build.version.incremental");
        map.put("vivo", "ro.vivo.os.version");
        map.put("oppo", "ro.build.version.opporom");
        map.put("meizu", "ro.build.display.id");
        map.put("lenovo", "ro.build.version.incremental");
        map.put("smartisan", "ro.modversion");
        map.put("htc", "ro.build.sense.version");
        map.put("oneplus", "ro.rom.version");
        map.put("yunos", "ro.cta.yunos.version");
        map.put("360", "ro.build.uiversion");
        map.put("nubia", "ro.build.rom.internal.id");
        if (map.containsKey(lowerCase)) {
            com.igexin.push.extension.distribution.gbd.c.c.S = a((String) map.get(lowerCase), "");
            return com.igexin.push.extension.distribution.gbd.c.c.S;
        }
        return "";
    }

    public static boolean u() {
        int iIntValue = Integer.valueOf(com.igexin.push.core.f.s.substring(28), 16).intValue();
        int iIntValue2 = Integer.valueOf(com.igexin.push.extension.distribution.gbd.c.a.by, 16).intValue();
        for (int i = 0; i < 16; i++) {
            int i2 = 1 << i;
            if ((iIntValue2 & i2) != 0 && (i2 & iIntValue) == 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean v() {
        try {
            String strA = a(true);
            if (TextUtils.isEmpty(strA)) {
                j.b("GBD_Utils", "mei empty.");
                return false;
            }
            int iIntValue = Integer.valueOf(strA.substring(strA.length() - 4), 16).intValue();
            int iIntValue2 = Integer.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bx, 16).intValue();
            j.b("GBD_Utils", " 43 dynamic= " + com.igexin.push.extension.distribution.gbd.c.a.bx);
            j.b("GBD_Utils", "imei= " + iIntValue + "  43mask= " + iIntValue2);
            for (int i = 0; i < 16; i++) {
                int i2 = 1 << i;
                if ((iIntValue2 & i2) != 0 && (i2 & iIntValue) == 0) {
                    j.b("GBD_Utils", "mei not match.");
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            j.a(th);
            return false;
        }
    }

    public static boolean w() {
        if (!com.igexin.push.extension.distribution.gbd.c.c.ah) {
            com.igexin.push.extension.distribution.gbd.c.c.ai = v();
            com.igexin.push.extension.distribution.gbd.c.c.ah = true;
        }
        return com.igexin.push.extension.distribution.gbd.c.a.aM && com.igexin.push.extension.distribution.gbd.c.c.ai;
    }

    public static long x() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            return !i(com.igexin.push.extension.distribution.gbd.c.c.f373a) ? jCurrentTimeMillis + com.igexin.push.extension.distribution.gbd.c.c.T : jCurrentTimeMillis;
        } catch (Throwable th) {
            j.a(th);
            return jCurrentTimeMillis;
        }
    }

    public static List<String> y() {
        ArrayList arrayList = new ArrayList();
        try {
            String externalStorageState = Environment.getExternalStorageState();
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageState.equals("mounted") && externalStorageDirectory.exists() && externalStorageDirectory.isDirectory()) {
                arrayList.add(externalStorageDirectory.getAbsolutePath());
                j.b("getSDCardPathList", "primary sdcard path: " + externalStorageDirectory.getAbsolutePath());
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("mount").getInputStream()));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.contains("fat") || line.contains("fuse") || line.contains("storage")) {
                    if (!line.contains("secure") && !line.contains("asec") && !line.contains("firmware") && !line.contains("tmpfs") && !line.contains(AbsoluteConst.JSON_VALUE_BLOCK) && !line.contains("shell") && !line.contains("obb") && !line.contains("data")) {
                        String[] strArrSplit = line.split(Operators.SPACE_STR);
                        if (strArrSplit.length >= 3) {
                            for (int i = 1; i <= 2; i++) {
                                String str = strArrSplit[i];
                                if (str.contains(Operators.DIV) && !str.contains("data") && !str.contains("Data") && !str.contains("emulated")) {
                                    File file = new File(str);
                                    if (file.exists() && file.isDirectory() && !str.equals(externalStorageDirectory.getAbsolutePath()) && new StatFs(str).getBlockCount() != 0) {
                                        arrayList.add(str);
                                        j.b("getSDCardPathList", "tf sdcard path: " + str);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            j.a(th);
        }
        return arrayList;
    }

    public static LinkedHashMap<Long, Long> z() {
        long blockSize;
        long blockCount;
        long availableBlocks;
        List<String> listY = y();
        LinkedHashMap<Long, Long> linkedHashMap = new LinkedHashMap<>();
        if (listY != null && !listY.isEmpty()) {
            Iterator<String> it = listY.iterator();
            while (it.hasNext()) {
                try {
                    StatFs statFs = new StatFs(it.next());
                    if (Build.VERSION.SDK_INT >= 18) {
                        blockSize = statFs.getBlockSizeLong();
                        blockCount = statFs.getBlockCountLong();
                        availableBlocks = statFs.getAvailableBlocksLong();
                    } else {
                        blockSize = statFs.getBlockSize();
                        blockCount = statFs.getBlockCount();
                        availableBlocks = statFs.getAvailableBlocks();
                    }
                    long j = ((blockSize * blockCount) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
                    long j2 = ((blockSize * availableBlocks) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
                    linkedHashMap.put(Long.valueOf(j), Long.valueOf(j2));
                    j.b("sd storage", "blockSize = " + blockSize + ", totalBlockCnt = " + blockCount + ", totalSize = " + j + " MB");
                    StringBuilder sb = new StringBuilder();
                    sb.append("available blockCnt = ");
                    sb.append(availableBlocks);
                    sb.append(", availableSize  = ");
                    sb.append(j2);
                    sb.append(" MB");
                    j.b("sd storage", sb.toString());
                } catch (Throwable th) {
                    j.a(th);
                }
            }
        }
        return linkedHashMap;
    }
}
