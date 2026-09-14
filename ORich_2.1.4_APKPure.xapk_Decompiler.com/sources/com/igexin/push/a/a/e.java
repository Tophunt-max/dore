package com.igexin.push.a.a;

import android.text.TextUtils;
import com.igexin.push.config.SDKUrlConfig;
import com.igexin.push.util.g;

/* JADX INFO: loaded from: classes.dex */
class e extends com.igexin.push.g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f104a;

    e(d dVar) {
        this.f104a = dVar;
    }

    @Override // com.igexin.push.g.b
    protected void a() {
        try {
            String strH = g.h();
            if (TextUtils.isEmpty(strH)) {
                return;
            }
            com.igexin.b.a.b.c.b().a(new com.igexin.push.g.a.c(new com.igexin.push.core.d.g(SDKUrlConfig.getBiUploadServiceUrl(), strH.getBytes(), 10, false)), false, true);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("UploadBITask|" + th.toString());
        }
    }
}
