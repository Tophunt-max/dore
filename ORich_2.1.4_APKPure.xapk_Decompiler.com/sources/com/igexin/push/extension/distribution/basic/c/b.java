package com.igexin.push.extension.distribution.basic.c;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f299a = a();

    private static String a() {
        String str = "com.gt.act.notification.bury_point";
        try {
            Method[] declaredMethods = com.igexin.push.core.b.class.getDeclaredMethods();
            Object objNewInstance = com.igexin.push.core.b.class.newInstance();
            for (Method method : declaredMethods) {
                method.setAccessible(true);
                if (method.isAnnotationPresent(Deprecated.class) && method.getParameterTypes().length == 0) {
                    str = (String) method.invoke(objNewInstance, new Object[0]);
                }
            }
        } catch (Exception unused) {
        }
        return str;
    }
}
