package com.igexin.push.core.a;

import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends b {
    @Override // com.igexin.push.core.a.b
    public boolean a(Object obj, JSONObject jSONObject) {
        try {
            if (!jSONObject.has(PushConsts.CMD_ACTION) || !jSONObject.getString(PushConsts.CMD_ACTION).equals("block_client") || !jSONObject.has("duration")) {
                return true;
            }
            long j = jSONObject.getLong("duration") * 1000;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (j == 0) {
                return true;
            }
            com.igexin.push.config.k.c = jCurrentTimeMillis + j;
            com.igexin.push.config.a.a().e();
            com.igexin.push.a.a.c.c().d();
            return true;
        } catch (Exception unused) {
            return true;
        }
    }
}
