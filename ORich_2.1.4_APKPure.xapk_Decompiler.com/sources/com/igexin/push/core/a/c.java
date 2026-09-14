package com.igexin.push.core.a;

import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f147a = com.igexin.push.config.j.f135a + "_BindAliasResultAction";

    @Override // com.igexin.push.core.a.b
    public boolean a(Object obj, JSONObject jSONObject) {
        com.igexin.b.a.c.b.a(f147a + "|bind alias result resp data = " + jSONObject);
        if (jSONObject == null) {
            return true;
        }
        try {
            if (!jSONObject.has(PushConsts.CMD_ACTION) || !jSONObject.getString(PushConsts.CMD_ACTION).equals("response_bind")) {
                return true;
            }
            com.igexin.push.core.a.a().b(jSONObject.getString("sn"), jSONObject.getString("result"));
            return true;
        } catch (Exception e) {
            com.igexin.b.a.c.b.a(f147a + "|" + e.toString());
            return true;
        }
    }
}
