package com.igexin.push.core.a.a;

import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d implements a {
    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("do") || !jSONObject.has("actionid") || !jSONObject.has("duration")) {
                return null;
            }
            com.igexin.push.core.bean.d dVar = new com.igexin.push.core.bean.d();
            dVar.setType(jSONObject.getString("type"));
            dVar.setActionId(jSONObject.getString("actionid"));
            dVar.setDoActionId(jSONObject.getString("do"));
            if (jSONObject.has("duration")) {
                dVar.a(Long.valueOf(jSONObject.getString("duration")).longValue());
            }
            return dVar;
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        return com.igexin.push.core.c.success;
    }

    @Override // com.igexin.push.core.a.a.a
    public boolean b(PushTaskBean pushTaskBean, BaseAction baseAction) {
        long jCurrentTimeMillis = System.currentTimeMillis() + (((com.igexin.push.core.bean.d) baseAction).a() * 1000);
        com.igexin.push.core.c.h.a().a(true);
        com.igexin.push.core.c.h.a().f(jCurrentTimeMillis);
        return true;
    }
}
