package com.igexin.push.extension.distribution.gbd.i;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class al {
    private static Object a(int i, String str, Context context) {
        if (!k.a(com.igexin.push.extension.distribution.gbd.c.c.f373a, "android.permission.READ_PHONE_STATE")) {
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
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static String a(int i, Context context) {
        boolean z = "vivo".equalsIgnoreCase(k.r()) && Build.VERSION.SDK_INT < 26;
        if (Build.VERSION.SDK_INT >= 29 || z || !k.a(com.igexin.push.extension.distribution.gbd.c.c.f373a, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        try {
            Object objA = a(i, "getDeviceId", context);
            return objA != null ? (String) objA : "";
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public static String a(Context context) {
        if (Build.VERSION.SDK_INT >= 29 || !k.a(com.igexin.push.extension.distribution.gbd.c.c.f373a, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        try {
            String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            return !TextUtils.isEmpty(deviceId) ? deviceId : "";
        } catch (Throwable th) {
            j.a(th);
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
        } catch (Throwable th) {
            j.a(th);
        }
        return parameterTypes;
    }

    public static String b(int i, Context context) {
        if (Build.VERSION.SDK_INT >= 29 || !k.a(com.igexin.push.extension.distribution.gbd.c.c.f373a, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        try {
            Object objA = a(i, "getSubscriberId", context);
            return objA != null ? (String) objA : "";
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public static String b(Context context) {
        if (Build.VERSION.SDK_INT >= 29 || !k.a(com.igexin.push.extension.distribution.gbd.c.c.f373a, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        try {
            String subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            return !TextUtils.isEmpty(subscriberId) ? subscriberId : "";
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public static String c(int i, Context context) {
        String str;
        String str2 = "";
        try {
            Object objA = a(i, "getSimSerialNumber", context);
            str = objA != null ? (String) objA : "";
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                if (str.length() < 20) {
                    return "";
                }
            }
            return str;
        } catch (Throwable th2) {
            str2 = str;
            th = th2;
            j.a(th);
            return str2;
        }
    }

    public static String c(Context context) {
        String str = "";
        if (!k.a(com.igexin.push.extension.distribution.gbd.c.c.f373a, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        try {
            String simSerialNumber = ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
            if (TextUtils.isEmpty(simSerialNumber)) {
                simSerialNumber = "";
            }
            try {
                if (!TextUtils.isEmpty(simSerialNumber)) {
                    if (simSerialNumber.length() < 20) {
                        return "";
                    }
                }
                return simSerialNumber;
            } catch (Throwable th) {
                th = th;
                str = simSerialNumber;
                j.a(th);
                return str;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004f A[PHI: r9
      0x004f: PHI (r9v5 android.database.Cursor) = (r9v4 android.database.Cursor), (r9v6 android.database.Cursor) binds: [B:18:0x004d, B:14:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int d(int r8, android.content.Context r9) {
        /*
            java.lang.String r0 = "_id"
            java.lang.String r1 = "content://telephony/siminfo"
            android.net.Uri r3 = android.net.Uri.parse(r1)
            android.content.ContentResolver r2 = r9.getContentResolver()
            android.content.Context r9 = com.igexin.push.extension.distribution.gbd.c.c.f373a
            java.lang.String r1 = "android.permission.READ_PHONE_STATE"
            boolean r9 = com.igexin.push.extension.distribution.gbd.i.k.a(r9, r1)
            r1 = -1
            if (r9 != 0) goto L18
            return r1
        L18:
            r9 = 0
            java.lang.String r4 = "sim_id"
            java.lang.String[] r4 = new java.lang.String[]{r0, r4}     // Catch: java.lang.Throwable -> L49
            java.lang.String r5 = "sim_id = ?"
            r6 = 1
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch: java.lang.Throwable -> L49
            r7 = 0
            java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L49
            r6[r7] = r8     // Catch: java.lang.Throwable -> L49
            r7 = 0
            android.database.Cursor r9 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L49
            if (r9 == 0) goto L46
            boolean r8 = r9.moveToFirst()     // Catch: java.lang.Throwable -> L49
            if (r8 == 0) goto L46
            int r8 = r9.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L49
            int r8 = r9.getInt(r8)     // Catch: java.lang.Throwable -> L49
            if (r9 == 0) goto L45
            r9.close()
        L45:
            return r8
        L46:
            if (r9 == 0) goto L52
            goto L4f
        L49:
            r8 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r8)     // Catch: java.lang.Throwable -> L53
            if (r9 == 0) goto L52
        L4f:
            r9.close()
        L52:
            return r1
        L53:
            r8 = move-exception
            if (r9 == 0) goto L59
            r9.close()
        L59:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.i.al.d(int, android.content.Context):int");
    }
}
