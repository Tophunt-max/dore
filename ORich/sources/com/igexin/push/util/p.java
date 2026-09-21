package com.igexin.push.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Pair;
import com.taobao.weex.el.parse.Operators;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.NetworkInterface;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f442a = "";
    private static String b;

    static {
        a();
    }

    public static String a() {
        try {
            if (TextUtils.isEmpty(f442a)) {
                String str = Build.BRAND;
                if (TextUtils.isEmpty(str) || str.equals("unknown")) {
                    str = Build.MANUFACTURER;
                }
                f442a = com.igexin.b.b.a.b(str, "");
            }
        } catch (Exception unused) {
        }
        return f442a;
    }

    public static String a(Context context) {
        if (!t.a(com.igexin.push.core.f.f)) {
            return "";
        }
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception unused) {
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

    public static List<PackageInfo> a(Context context, int i) {
        if (Build.VERSION.SDK_INT < 30) {
            return context.getPackageManager().getInstalledPackages(i);
        }
        if (c.a("android.permission.QUERY_ALL_PACKAGES")) {
            return context.getPackageManager().getInstalledPackages(i);
        }
        return Collections.emptyList();
    }

    public static String b() {
        byte[] hardwareAddress;
        String string = "";
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (true) {
                if (!networkInterfaces.hasMoreElements()) {
                    break;
                }
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if ("wlan0".equalsIgnoreCase(networkInterfaceNextElement.getName()) && (hardwareAddress = networkInterfaceNextElement.getHardwareAddress()) != null && hardwareAddress.length != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b2)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    string = sb.toString();
                }
            }
            com.igexin.b.a.c.b.a("PhoneInfoUtils mac:" + com.igexin.push.core.f.w);
        } catch (Exception unused) {
        }
        return string;
    }

    public static String b(Context context) {
        if (!t.a(com.igexin.push.core.f.f)) {
            return "";
        }
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        } catch (Exception unused) {
            return "";
        }
    }

    public static Pair<String, String> c(Context context) {
        if (!t.a(com.igexin.push.core.f.f)) {
            return Pair.create(null, null);
        }
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo != null) {
                return Pair.create(connectionInfo.getSSID(), connectionInfo.getBSSID());
            }
        } catch (Exception unused) {
        }
        return Pair.create(null, null);
    }

    public static String c() {
        try {
            return Build.VERSION.SDK_INT < 21 ? Build.CPU_ABI : Build.SUPPORTED_ABIS[0];
        } catch (Throwable unused) {
            return "";
        }
    }

    public static int d(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.targetSdkVersion;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean d() {
        if (Operators.MUL.equals(com.igexin.push.config.k.O)) {
            return true;
        }
        try {
            boolean zContains = Arrays.asList(com.igexin.push.config.k.O.toUpperCase().split(",")).contains(f442a.toUpperCase());
            com.igexin.b.a.c.b.a("PhoneInfoUtils|shouldBrandDelAlarm = " + zContains);
            return zContains;
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("PhoneInfoUtils|delAlarm " + com.igexin.push.config.k.O + " err " + e.toString());
            return false;
        }
    }

    public static String e() {
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        try {
            String strA = a();
            if (TextUtils.isEmpty(strA)) {
                return "";
            }
            String lowerCase = strA.toLowerCase();
            HashMap map = new HashMap();
            map.put("huawei", "ro.build.version.emui");
            map.put("blackshark", "ro.build.version.incremental");
            map.put("redmi", "ro.build.version.incremental");
            map.put("xiaomi", "ro.build.version.incremental");
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
                String strA2 = a((String) map.get(lowerCase), "");
                b = strA2;
                return strA2;
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String f() {
        if (!t.a(com.igexin.push.core.f.f)) {
            return "";
        }
        try {
            return Settings.Secure.getString(com.igexin.push.core.f.f.getContentResolver(), "android_id");
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String g() throws PackageManager.NameNotFoundException {
        String strA = "";
        if (!t.a(com.igexin.push.core.f.f)) {
            return "";
        }
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                return "";
            }
            com.igexin.push.core.f.f.getPackageManager().getPackageInfo("com.android.vending", 0);
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            r rVar = new r();
            if (com.igexin.push.core.f.f.bindService(intent, rVar, 1)) {
                try {
                    strA = new s(rVar.a()).a();
                } catch (Exception unused) {
                } catch (Throwable th) {
                    com.igexin.push.core.f.f.unbindService(rVar);
                    throw th;
                }
                com.igexin.push.core.f.f.unbindService(rVar);
            }
        } catch (Throwable unused2) {
        }
        return strA;
    }
}
