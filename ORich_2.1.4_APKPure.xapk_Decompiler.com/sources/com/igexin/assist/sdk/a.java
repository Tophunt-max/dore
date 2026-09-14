package com.igexin.assist.sdk;

import android.content.Context;
import com.igexin.assist.control.AbstractPushManager;
import com.igexin.push.config.k;
import com.igexin.push.core.c.h;
import io.dcloud.common.constant.AbsoluteConst;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f71a;

    static AbstractPushManager a(Context context) throws NoSuchMethodException {
        try {
            if (b(context) && k.T) {
                com.igexin.b.a.c.b.a("Assist_PushMangerFactory|FcmPushManager checkDevice flag = true");
                Constructor<?> constructor = Class.forName("com.igexin.assist.control.fcm.FcmPushManager").getConstructor(Context.class);
                if (constructor != null) {
                    return (AbstractPushManager) constructor.newInstance(context);
                }
            } else {
                com.igexin.b.a.c.b.a("Assist_PushMangerFactory|getPushManager = null, setToken = false");
                h.a().d(AbsoluteConst.FALSE);
            }
        } catch (Throwable unused) {
        }
        com.igexin.b.a.c.b.a("Assist_PushMangerFactory|OtherPushManager = null");
        return null;
    }

    public static boolean b(Context context) {
        int i = f71a;
        boolean zBooleanValue = false;
        if ((i & 1) != 0) {
            return (i & 2) != 0;
        }
        try {
            zBooleanValue = ((Boolean) Class.forName("com.igexin.assist.control.fcm.FcmPushManager").getMethod("checkFcmDevice", Context.class).invoke(null, context)).booleanValue();
            int i2 = f71a | 1;
            f71a = i2;
            if (zBooleanValue) {
                f71a = i2 | 2;
            }
        } catch (Throwable unused) {
        }
        f71a |= 1;
        return zBooleanValue;
    }

    public static boolean c(Context context) {
        return false;
    }
}
