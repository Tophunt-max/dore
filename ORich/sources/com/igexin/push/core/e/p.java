package com.igexin.push.core.e;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class p implements c {
    private static String b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Class f237a = null;

    @Override // com.igexin.push.core.e.c
    public boolean a(Context context) {
        try {
            this.f237a = Class.forName("com.android.id.impl.IdProviderImpl");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.igexin.push.core.e.c
    public String b(Context context) {
        if (TextUtils.isEmpty(b)) {
            try {
                b = String.valueOf(this.f237a.getMethod("getOAID", Context.class).invoke(this.f237a.newInstance(), context));
            } catch (Throwable unused) {
                b = null;
            }
        }
        return b;
    }

    @Override // com.igexin.push.core.e.c
    public boolean c(Context context) {
        return true;
    }
}
