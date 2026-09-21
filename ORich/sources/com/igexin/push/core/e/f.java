package com.igexin.push.core.e;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f232a = null;
    private static boolean b = false;
    private static boolean c = false;
    private static final CountDownLatch d = new CountDownLatch(1);
    private String e;
    private String f;
    private String g;
    private String h;
    private i i;

    public f(String str, String str2, String str3, String str4) {
        this.e = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
    }

    long a(PackageInfo packageInfo) {
        try {
            Method declaredMethod = PackageInfo.class.getDeclaredMethod("getLongVersionCode", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Long) declaredMethod.invoke(packageInfo, new Object[0])).longValue();
        } catch (Exception unused) {
            return 0L;
        }
    }

    protected String a() {
        return null;
    }

    @Override // com.igexin.push.core.e.c
    public boolean a(Context context) {
        if (c) {
            return b;
        }
        boolean z = false;
        if (context != null && !TextUtils.isEmpty(this.e)) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(this.e, 0);
                if (Build.VERSION.SDK_INT >= 28) {
                    if (packageInfo != null) {
                        if (a(packageInfo) >= 1) {
                            return true;
                        }
                    }
                    return false;
                }
                if (packageInfo != null && packageInfo.versionCode >= 1) {
                    z = true;
                }
            } catch (Throwable unused) {
                return false;
            }
        }
        b = z;
        c = true;
        return b;
    }

    protected int b() {
        return 1;
    }

    @Override // com.igexin.push.core.e.c
    public String b(Context context) {
        i iVar;
        i iVar2;
        if (!TextUtils.isEmpty(f232a) || (iVar = this.i) == null || iVar.a() == null) {
            return f232a;
        }
        try {
            String strA = this.i.a().a(d(context), e(context), a(), b());
            f232a = strA;
            if (!TextUtils.isEmpty(strA) && (iVar2 = this.i) != null) {
                context.unbindService(iVar2);
            }
        } catch (Throwable unused) {
        }
        return f232a;
    }

    @Override // com.igexin.push.core.e.c
    public boolean c(Context context) {
        if (context == null || TextUtils.isEmpty(this.e)) {
            return false;
        }
        if (this.i == null) {
            this.i = new i(this.h, d);
        }
        Intent intent = new Intent();
        if (TextUtils.isEmpty(this.f)) {
            intent.setPackage(this.e);
        } else {
            intent.setComponent(new ComponentName(this.e, this.f));
        }
        if (!TextUtils.isEmpty(this.g)) {
            intent.setAction(this.g);
        }
        return this.i.a(context, intent);
    }

    protected String d(Context context) {
        return null;
    }

    protected String e(Context context) {
        return null;
    }
}
