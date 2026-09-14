package com.igexin.push.extension.distribution.basic.i;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static a b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f314a;

    private a(Context context) {
        this.f314a = context;
    }

    public static a a(Context context) {
        if (b == null) {
            b = new a(context);
        }
        return b;
    }

    public int a(String str, String str2) {
        return this.f314a.getResources().getIdentifier(str, str2, this.f314a.getApplicationInfo().packageName);
    }
}
