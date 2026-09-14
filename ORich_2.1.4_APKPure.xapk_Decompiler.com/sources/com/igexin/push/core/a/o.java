package com.igexin.push.core.a;

import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class o extends com.igexin.push.g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f156a;

    o(l lVar) {
        this.f156a = lVar;
    }

    @Override // com.igexin.push.g.b
    protected void a() {
        try {
            com.igexin.push.core.c.c cVar = new com.igexin.push.core.c.c(com.igexin.push.core.f.f);
            JSONObject jSONObjectC = cVar.c();
            if (jSONObjectC == null) {
                return;
            }
            Iterator<String> itKeys = jSONObjectC.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObject = jSONObjectC.getJSONObject(next);
                com.igexin.b.a.c.b.a("LoginResultAction|send unFeedback taskid = " + next);
                jSONObject.put("appid", com.igexin.push.core.f.f238a);
                jSONObject.put("appkey", com.igexin.push.core.f.b);
                f.a().a(jSONObject, jSONObject.getString("multaid"));
                itKeys.remove();
            }
            cVar.d();
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("LoginResultAction|feedbackMultiBrandPushMessage exception :" + th.toString());
        }
    }
}
