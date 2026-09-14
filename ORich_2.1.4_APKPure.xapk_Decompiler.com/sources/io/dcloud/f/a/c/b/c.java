package io.dcloud.f.a.c.b;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static String a(Context context) {
        return Settings.System.getString(context.getContentResolver(), "android_id");
    }

    public static String b(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String c(Context context) {
        String strB;
        if (context == null) {
            return "";
        }
        try {
            int iB = b(0, context);
            int iB2 = b(1, context);
            if (iB == -1 && iB2 == -1) {
                strB = b(context);
            } else {
                String str = (String) a(iB, context);
                String str2 = (String) a(iB2, context);
                if (TextUtils.isEmpty(str)) {
                    strB = !TextUtils.isEmpty(str2) ? str2 : b(context);
                } else if (TextUtils.isEmpty(str2) || str.equals(str2)) {
                    strB = str;
                } else {
                    strB = str + "," + str2;
                }
            }
            return strB;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00cb A[PHI: r5
      0x00cb: PHI (r5v6 java.lang.String) = (r5v4 java.lang.String), (r5v7 java.lang.String), (r5v7 java.lang.String) binds: [B:34:0x00b6, B:36:0x00c0, B:38:0x00c6] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] d(android.content.Context r11) {
        /*
            Method dump skipped, instruction units count: 270
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.f.a.c.b.c.d(android.content.Context):java.lang.String[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
    
        r6 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(int r6, android.content.Context r7) {
        /*
            java.lang.String r0 = "phone"
            java.lang.Object r7 = r7.getSystemService(r0)     // Catch: java.lang.Exception -> L48
            java.lang.String r0 = "getSubscriberId"
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L48
            r2 = 21
            r3 = 0
            r4 = 1
            if (r1 <= r2) goto L2b
            java.lang.Class r1 = r7.getClass()     // Catch: java.lang.Exception -> L48
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Exception -> L48
            java.lang.Class[] r2 = new java.lang.Class[r4]     // Catch: java.lang.Exception -> L48
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L48
            r2[r3] = r5     // Catch: java.lang.Exception -> L48
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Exception -> L48
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Exception -> L48
            r4[r3] = r6     // Catch: java.lang.Exception -> L48
            java.lang.Object r6 = a(r1, r0, r7, r2, r4)     // Catch: java.lang.Exception -> L48
            goto L49
        L2b:
            if (r1 != r2) goto L48
            java.lang.Class r1 = r7.getClass()     // Catch: java.lang.Exception -> L48
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Exception -> L48
            java.lang.Class[] r2 = new java.lang.Class[r4]     // Catch: java.lang.Exception -> L48
            java.lang.Class r5 = java.lang.Long.TYPE     // Catch: java.lang.Exception -> L48
            r2[r3] = r5     // Catch: java.lang.Exception -> L48
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Exception -> L48
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Exception -> L48
            r4[r3] = r6     // Catch: java.lang.Exception -> L48
            java.lang.Object r6 = a(r1, r0, r7, r2, r4)     // Catch: java.lang.Exception -> L48
            goto L49
        L48:
            r6 = 0
        L49:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.f.a.c.b.c.a(int, android.content.Context):java.lang.Object");
    }

    public static int b(int i, Context context) {
        Uri uri = Uri.parse("content://telephony/siminfo");
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursorQuery = null;
        try {
            cursorQuery = contentResolver.query(uri, new String[]{"_id", "sim_id"}, "sim_id = ?", new String[]{String.valueOf(i)}, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return i2;
            }
            if (cursorQuery == null) {
                return -1;
            }
        } catch (Exception unused) {
            if (cursorQuery == null) {
                return -1;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        cursorQuery.close();
        return -1;
    }

    private static Object a(String str, String str2, Object obj, Class[] clsArr, Object[] objArr) {
        try {
            Method method = Class.forName(str).getMethod(str2, clsArr);
            if (method != null) {
                method.setAccessible(true);
                return method.invoke(obj, objArr);
            }
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
        }
        return null;
    }

    private static boolean a(String str) {
        return TextUtils.isEmpty(str) || str.contains("Unknown") || str.contains("00000000");
    }
}
