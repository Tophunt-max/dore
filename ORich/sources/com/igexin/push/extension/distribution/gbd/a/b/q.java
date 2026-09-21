package com.igexin.push.extension.distribution.gbd.a.b;

import android.text.TextUtils;
import com.taobao.weex.common.Constants;

/* JADX INFO: loaded from: classes.dex */
class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ p f343a;

    q(p pVar) {
        this.f343a = pVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f343a.f342a.get("pkgName") == null || this.f343a.f342a.get("srvName") == null || this.f343a.f342a.get(Constants.Value.DATETIME) == null || TextUtils.isEmpty(this.f343a.f342a.get("pkgName").toString()) || TextUtils.isEmpty(this.f343a.f342a.get("srvName").toString()) || TextUtils.isEmpty(this.f343a.f342a.get(Constants.Value.DATETIME).toString())) {
                return;
            }
            String str = this.f343a.f342a.get("pkgName").toString() + "," + this.f343a.f342a.get("srvName").toString();
            o.a(str);
            o.a(str, this.f343a.b, this.f343a.f342a.get(Constants.Value.DATETIME).toString(), 1);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GTT", "gbd guard success type = " + this.f343a.b + " pkg = " + this.f343a.f342a.get("pkgName").toString());
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }
}
