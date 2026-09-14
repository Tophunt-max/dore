package com.igexin.push.d;

import android.text.TextUtils;
import com.igexin.push.config.k;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f260a;
    private d b;

    public a(String str) {
        this.f260a = str;
    }

    @Override // com.igexin.push.d.d
    public void a() {
        if (TextUtils.isEmpty(this.f260a) || !k.E || !com.igexin.push.util.a.a(this.f260a, "com.igexin.sdk.GActivity")) {
            d dVar = this.b;
            if (dVar != null) {
                dVar.a();
                return;
            }
            return;
        }
        try {
            com.igexin.push.core.e.a().a(new b(this, (new Random().nextInt(6) + 1) * 1000));
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("ActivityGuardTask|startActivity pkgName = " + this.f260a + ", exception : " + th.toString());
        }
    }

    public void a(d dVar) {
        this.b = dVar;
    }
}
