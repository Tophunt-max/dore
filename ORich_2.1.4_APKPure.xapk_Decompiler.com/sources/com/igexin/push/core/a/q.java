package com.igexin.push.core.a;

import com.igexin.assist.action.MessageManger;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class q extends b {
    @Override // com.igexin.push.core.a.b
    public boolean a(Object obj, JSONObject jSONObject) {
        f fVarA;
        String str;
        try {
            com.igexin.push.e.c.o oVar = (com.igexin.push.e.c.o) obj;
            if (jSONObject.has(PushConsts.CMD_ACTION) && jSONObject.getString(PushConsts.CMD_ACTION).equals("pushmessage")) {
                byte[] bArr = oVar.f instanceof byte[] ? (byte[]) oVar.f : null;
                String string = jSONObject.getString("taskid");
                if (com.igexin.push.core.f.ag.containsKey(string)) {
                    com.igexin.push.core.f.ag.get(string).cancel();
                    com.igexin.push.core.f.ag.remove(string);
                }
                com.igexin.b.a.c.b.a("getui receive message : " + jSONObject.toString());
                if (bArr == null || !com.igexin.assist.sdk.a.c(com.igexin.push.core.f.f)) {
                    com.igexin.push.core.r.a().a(jSONObject, bArr, true);
                } else {
                    com.igexin.push.core.c.c cVar = new com.igexin.push.core.c.c(com.igexin.push.core.f.f);
                    if (cVar.a(string)) {
                        fVarA = f.a();
                        str = AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT + MessageManger.getInstance().getBrandCode(com.igexin.push.core.f.f);
                    } else {
                        cVar.b(string);
                        com.igexin.push.core.r.a().a(jSONObject, bArr, true);
                        fVarA = f.a();
                        str = "10";
                    }
                    fVarA.a(jSONObject, str);
                }
            }
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("PushmessageAction|" + e.toString());
        }
        return true;
    }
}
