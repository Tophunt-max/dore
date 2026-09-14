package com.igexin.push.core.a;

import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class u extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f160a = com.igexin.push.config.j.f135a;

    @Override // com.igexin.push.core.a.b
    public boolean a(Object obj, JSONObject jSONObject) {
        try {
            if (!jSONObject.has(PushConsts.CMD_ACTION) || !jSONObject.getString(PushConsts.CMD_ACTION).equals("response_deviceid")) {
                return true;
            }
            String string = jSONObject.getString("deviceid");
            StringBuilder sb = new StringBuilder();
            String str = f160a;
            sb.append(str);
            sb.append(" get devid resp, devid : ");
            sb.append(string);
            sb.append(", save 2db and file");
            com.igexin.b.a.c.b.a(sb.toString());
            com.igexin.push.core.c.h.a().c(string);
            if (com.igexin.push.core.f.ap != null) {
                com.igexin.b.a.c.b.a(str + " deviceid arrived cancel addPhoneInfoTimerTask...");
                com.igexin.push.core.f.ap.t();
                com.igexin.push.core.f.ap = null;
            }
            if (com.igexin.push.core.f.x != null) {
                com.igexin.push.core.e.a().h().f();
            }
            com.igexin.b.a.c.b.a("deviceidRsp|" + com.igexin.push.core.f.x);
            return true;
        } catch (Exception unused) {
            return true;
        }
    }
}
