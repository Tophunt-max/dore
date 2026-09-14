package com.igexin.push.d;

import android.content.Intent;
import android.text.TextUtils;
import com.igexin.push.core.f;

/* JADX INFO: loaded from: classes.dex */
public class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f263a;
    private String b;

    public e(String str, String str2) {
        this.f263a = str;
        this.b = str2;
    }

    @Override // com.igexin.push.d.d
    public void a() {
        String str;
        if (TextUtils.isEmpty(this.f263a) || TextUtils.isEmpty(this.b)) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setPackage(this.f263a);
            intent.setAction("com.igexin.sdk.action.service.message");
            if (com.igexin.push.util.a.a(intent, f.f)) {
                f.f.startService(intent);
                str = "ServiceGuardTask|startService by action";
            } else {
                Intent intent2 = new Intent();
                intent2.setClassName(this.f263a, this.b);
                f.f.startService(intent2);
                str = "ServiceGuardTask|startService by service name";
            }
            com.igexin.b.a.c.b.a(str);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("ServiceGuardTask|startService pkgName = " + this.f263a + " srvName = " + this.b + ", exception : " + th.toString());
        }
    }
}
