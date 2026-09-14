package com.igexin.push.extension.distribution.basic.j;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private static Object a(int i, String str, Context context) {
        if (!c.a(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            Method method = telephonyManager.getClass().getMethod(str, a(str));
            if (i >= 0) {
                return method.invoke(telephonyManager, Integer.valueOf(i));
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String a(int i, Context context) {
        try {
            Object objA = a(i, "getDeviceId", context);
            return objA != null ? (String) objA : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static Class[] a(String str) {
        Class<?>[] parameterTypes = null;
        try {
            Method[] declaredMethods = TelephonyManager.class.getDeclaredMethods();
            for (int i = 0; i < declaredMethods.length; i++) {
                if (str.equals(declaredMethods[i].getName())) {
                    parameterTypes = declaredMethods[i].getParameterTypes();
                    if (parameterTypes.length >= 1) {
                        break;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return parameterTypes;
    }
}
