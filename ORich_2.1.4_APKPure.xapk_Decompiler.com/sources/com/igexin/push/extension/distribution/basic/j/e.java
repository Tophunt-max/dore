package com.igexin.push.extension.distribution.basic.j;

import android.os.Build;
import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f318a;

    public static String a(String str) {
        try {
            String strB = b();
            if (TextUtils.isEmpty(strB)) {
                return "";
            }
            String lowerCase = strB.toLowerCase();
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
            if (str.equalsIgnoreCase(lowerCase)) {
                return a((String) map.get(lowerCase), "");
            }
        } catch (Throwable unused) {
        }
        return "";
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

    public static boolean a() {
        try {
            d dVarC = c();
            if (dVarC == null) {
                return !TextUtils.isEmpty(a("meizu"));
            }
            String strA = dVarC.a("ro.build.user", null);
            return strA != null && strA.trim().equals("flyme");
        } catch (Exception unused) {
            return false;
        }
    }

    public static String b() {
        try {
            String str = Build.BRAND;
            return (TextUtils.isEmpty(str) || str.equals("unknown")) ? Build.MANUFACTURER : str;
        } catch (Throwable unused) {
            return "";
        }
    }

    private static d c() {
        try {
            if (f318a == null) {
                f318a = d.a();
            }
        } catch (Exception unused) {
        }
        return f318a;
    }
}
