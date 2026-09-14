package com.igexin.push.util;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile Boolean f435a;

    public static boolean a() {
        try {
            if (f435a != null) {
                return f435a.booleanValue();
            }
            f435a = Boolean.valueOf((!"Xiaomi".equalsIgnoreCase(p.a()) && TextUtils.isEmpty(b("ro.miui.ui.version.name")) && TextUtils.isEmpty(b("ro.miui.ui.version.code"))) ? false : true);
            return f435a.booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean a(String str) {
        try {
            if (com.igexin.push.core.f.f == null) {
                return false;
            }
            return com.igexin.push.core.f.f.getPackageManager().checkPermission(str, com.igexin.push.core.f.f.getPackageName()) == 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static String b(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
