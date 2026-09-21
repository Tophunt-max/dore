package com.heytap.openid.sdk;

import android.content.Context;
import android.content.ServiceConnection;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.heytap.openid.a f50a = null;
    public String b = null;
    public String c = null;
    public final Object d = new Object();
    public ServiceConnection e = new b(this);

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f51a = new c(null);
    }

    public /* synthetic */ c(b bVar) {
    }

    public native synchronized String a(Context context, String str);

    public native boolean a(Context context);

    public final native String b(Context context, String str);
}
