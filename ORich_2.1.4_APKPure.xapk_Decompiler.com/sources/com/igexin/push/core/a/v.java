package com.igexin.push.core.a;

import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class v extends b {
    @Override // com.igexin.push.core.a.b
    public boolean a(Object obj, JSONObject jSONObject) {
        try {
            if (!jSONObject.has(PushConsts.CMD_ACTION) || !jSONObject.getString(PushConsts.CMD_ACTION).equals("sendmessage_feedback")) {
                return true;
            }
            String string = jSONObject.getString("appid");
            String string2 = jSONObject.getString("taskid");
            String string3 = jSONObject.getString("actionid");
            String string4 = jSONObject.getString("result");
            long j = jSONObject.getLong("timestamp");
            com.igexin.b.a.c.b.a("SendMessageFeedbackAction|appid:" + string + "|taskid:" + string2 + "|actionid:" + string3);
            com.igexin.push.core.a.a().a(string, string2, string3, string4, j);
            return true;
        } catch (Exception unused) {
            return true;
        }
    }
}
