package com.igexin.push.core.a;

import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class r extends b {
    @Override // com.igexin.push.core.a.b
    public boolean a(Object obj, JSONObject jSONObject) {
        try {
            if (jSONObject.has(PushConsts.CMD_ACTION) && jSONObject.getString(PushConsts.CMD_ACTION).equals("received")) {
                String string = jSONObject.getString("id");
                com.igexin.b.a.c.b.a("ReceivedAction received, cmd id :" + string);
                try {
                    com.igexin.push.core.c.d.a().a(Long.parseLong(string), true, false);
                    f.a().d();
                } catch (NumberFormatException e) {
                    com.igexin.b.a.c.b.a("ReceivedAction|" + e.toString());
                }
            }
        } catch (Exception e2) {
            com.igexin.b.a.c.b.a("ReceivedAction|" + e2.toString());
        }
        return true;
    }
}
