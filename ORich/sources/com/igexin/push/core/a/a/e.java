package com.igexin.push.core.a.a;

import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e implements a {
    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            BaseAction baseAction = new BaseAction();
            baseAction.setType("null");
            baseAction.setActionId(jSONObject.getString("actionid"));
            return baseAction;
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
        String strA = com.igexin.push.core.a.f.a().a(pushTaskBean.getTaskId(), pushTaskBean.getMessageId());
        com.igexin.b.a.c.b.a("EndAction execute, remove pushMessage from pushMessageMap, key = " + strA);
        try {
            com.igexin.push.core.f.ad.remove(strA);
            return true;
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("EndAction|" + e.toString());
            return true;
        }
    }
}
