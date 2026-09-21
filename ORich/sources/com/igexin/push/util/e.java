package com.igexin.push.util;

import android.content.Context;
import com.igexin.push.config.SDKUrlConfig;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.feature.gg.dcloud.ADSim;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f436a;
    final /* synthetic */ f b;

    e(Context context, f fVar) {
        this.f436a = context;
        this.b = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z = false;
        try {
            if (d.c(this.f436a)) {
                g.a(String.valueOf(System.currentTimeMillis()).getBytes(), this.f436a.getFilesDir().getPath() + Operators.DIV + "init_er.pid", false);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(PushConsts.CMD_ACTION, "upload_BI");
                jSONObject.put("BIType", "25");
                jSONObject.put("cid", "0");
                jSONObject.put("BIData", new String(com.igexin.b.a.b.f.f(d.d(this.f436a).getBytes(), 0), "UTF-8"));
                byte[] bArrA = v.a(SDKUrlConfig.getBiUploadServiceUrl(), com.igexin.b.b.a.b(jSONObject.toString().getBytes()), ADSim.INTISPLSH, ADSim.INTISPLSH);
                if (bArrA != null) {
                    new String(bArrA);
                }
                z = true;
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("ErrorReport|report 25 ex = " + th.toString());
        }
        f fVar = this.b;
        if (fVar != null) {
            fVar.a(z);
        }
    }
}
