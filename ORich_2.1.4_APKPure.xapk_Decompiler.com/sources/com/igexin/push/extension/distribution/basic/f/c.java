package com.igexin.push.extension.distribution.basic.f;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static String a() {
        String strA = a("getConfigServiceUrl");
        return strA == null ? com.igexin.push.core.f.a() : strA;
    }

    private static String a(String str) {
        try {
            Class<?> cls = Class.forName("com.igexin.push.config.SDKUrlConfig");
            return (String) cls.getMethod(str, new Class[0]).invoke(cls, new Object[0]);
        } catch (Exception unused) {
            com.igexin.b.a.c.b.a("Basic_BasicUrl-> get method :" + str + "() error, use default");
            return null;
        }
    }
}
