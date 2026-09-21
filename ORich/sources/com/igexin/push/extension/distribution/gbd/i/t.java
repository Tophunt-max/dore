package com.igexin.push.extension.distribution.gbd.i;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f413a = "";
    private boolean b = false;
    private boolean c = false;
    private final CountDownLatch d = new CountDownLatch(1);
    private String e;
    private String f;
    private String g;
    private String h;
    private v i;

    public t(String str, String str2, String str3, String str4) {
        this.e = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
    }

    protected String a() {
        return null;
    }

    public boolean a(Context context) {
        if (this.c) {
            return this.b;
        }
        boolean z = false;
        if (context != null && !TextUtils.isEmpty(this.e)) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(this.e, 0);
                if (Build.VERSION.SDK_INT >= 28 && packageInfo != null) {
                    return ((Long) packageInfo.getClass().getMethod("getLongVersionCode", new Class[0]).invoke(packageInfo, new Object[0])).longValue() >= 1;
                }
                if (packageInfo != null && packageInfo.versionCode >= 1) {
                    z = true;
                }
            } catch (Throwable unused) {
                return false;
            }
        }
        this.b = z;
        this.c = true;
        return this.b;
    }

    protected int b() {
        return 1;
    }

    public boolean b(Context context) {
        if (context == null || TextUtils.isEmpty(this.e)) {
            return false;
        }
        if (this.i == null) {
            this.i = new v(this, this.h, this.d);
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

    public String c(Context context) {
        v vVar;
        v vVar2;
        if (!TextUtils.isEmpty(this.f413a) || (vVar = this.i) == null || vVar.a() == null) {
            return this.f413a;
        }
        try {
            String strA = this.i.a().a(d(context), e(context), a(), b());
            this.f413a = strA;
            if (!TextUtils.isEmpty(strA) && (vVar2 = this.i) != null) {
                context.unbindService(vVar2);
            }
        } catch (Throwable th) {
            j.a(th);
        }
        return this.f413a;
    }

    protected String d(Context context) {
        return null;
    }

    protected String e(Context context) {
        return null;
    }
}
