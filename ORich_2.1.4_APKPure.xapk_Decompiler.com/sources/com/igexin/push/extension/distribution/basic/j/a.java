package com.igexin.push.extension.distribution.basic.j;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f315a;
    private static int b;

    public static boolean a(Context context) {
        int i = b;
        boolean zBooleanValue = false;
        if ((i & 1) != 0) {
            return (i & 2) != 0;
        }
        try {
            zBooleanValue = ((Boolean) Class.forName("com.igexin.assist.control.xiaomi.MiuiPushManager").getMethod("checkXMDevice", Context.class).invoke(null, context)).booleanValue();
            if (zBooleanValue) {
                b |= 2;
            }
        } catch (Throwable unused) {
        }
        b |= 1;
        return zBooleanValue;
    }

    public static boolean b(Context context) {
        int i = f315a;
        boolean zBooleanValue = false;
        if ((i & 1) != 0) {
            return (i & 2) != 0;
        }
        try {
            zBooleanValue = ((Boolean) Class.forName("com.igexin.assist.control.meizu.FlymePushManager").getMethod("checkMZDevice", Context.class).invoke(null, context)).booleanValue();
            if (zBooleanValue) {
                f315a |= 2;
            }
        } catch (Throwable unused) {
        }
        f315a |= 1;
        return zBooleanValue;
    }

    public static void c(Context context) {
        String str;
        try {
            if (a(context)) {
                Class.forName("com.xiaomi.mipush.sdk.MiPushClient").getDeclaredMethod("clearNotification", Context.class).invoke(null, context);
                str = "AssistUtil | cancelAllAssistNotification() XM ";
            } else {
                if (!b(context)) {
                    return;
                }
                Class.forName("com.meizu.cloud.pushsdk.PushManager").getDeclaredMethod("clearNotification", Context.class).invoke(null, context);
                str = "AssistUtil | cancelAllAssistNotification() MZ ";
            }
            com.igexin.b.a.c.b.a(str);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("AssistUtil | cancelAllAssistNotification() err " + th.toString());
        }
    }
}
