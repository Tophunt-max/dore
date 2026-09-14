package com.igexin.push.extension.distribution.basic.j;

import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile Boolean f319a;

    private static String a(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static boolean a() {
        try {
            if (f319a != null) {
                return f319a.booleanValue();
            }
            f319a = Boolean.valueOf((!"Xiaomi".equalsIgnoreCase(Build.BRAND) && TextUtils.isEmpty(a("ro.miui.ui.version.name")) && TextUtils.isEmpty(a("ro.miui.ui.version.code"))) ? false : true);
            return f319a.booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }
}
