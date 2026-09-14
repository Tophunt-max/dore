package com.igexin.push.core.a.a;

import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.taobao.weex.WXEnvironment;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b implements a {
    private boolean a(String str) {
        try {
            return com.igexin.push.core.f.f.getPackageManager().getPackageInfo(str, 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("type") || !jSONObject.has("actionid")) {
                return null;
            }
            com.igexin.push.core.bean.b bVar = new com.igexin.push.core.bean.b();
            bVar.setType("checkapp");
            bVar.setActionId(jSONObject.getString("actionid"));
            if (!jSONObject.has("appstartupid")) {
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("appstartupid");
            if (!jSONObject2.has(WXEnvironment.OS)) {
                return null;
            }
            bVar.a(jSONObject2.getString(WXEnvironment.OS));
            if (!jSONObject.has("do_installed") && !jSONObject.has("do_uninstalled")) {
                return null;
            }
            if (jSONObject.has("do_installed")) {
                bVar.b(jSONObject.getString("do_installed"));
            }
            if (jSONObject.has("do_uninstalled")) {
                bVar.c(jSONObject.getString("do_uninstalled"));
            }
            return bVar;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        return com.igexin.push.core.c.success;
    }

    @Override // com.igexin.push.core.a.a.a
    public boolean b(PushTaskBean pushTaskBean, BaseAction baseAction) {
        com.igexin.push.core.a.f fVarA;
        String strC;
        com.igexin.push.core.bean.b bVar = (com.igexin.push.core.bean.b) baseAction;
        String taskId = pushTaskBean.getTaskId();
        String messageId = pushTaskBean.getMessageId();
        if (a(bVar.a())) {
            if (bVar.b() == null || bVar.b().equals("")) {
                return true;
            }
            fVarA = com.igexin.push.core.a.f.a();
            strC = bVar.b();
        } else {
            if (bVar.c() == null || bVar.c().equals("")) {
                return true;
            }
            fVarA = com.igexin.push.core.a.f.a();
            strC = bVar.c();
        }
        fVarA.a(taskId, messageId, strC);
        return true;
    }
}
