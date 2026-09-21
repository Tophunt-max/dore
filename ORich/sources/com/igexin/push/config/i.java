package com.igexin.push.config;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static i f134a;

    private i() {
    }

    public static synchronized i a() {
        if (f134a == null) {
            f134a = new i();
        }
        return f134a;
    }

    public boolean b() throws Throwable {
        l.a();
        l.a(com.igexin.push.core.f.f);
        return true;
    }
}
