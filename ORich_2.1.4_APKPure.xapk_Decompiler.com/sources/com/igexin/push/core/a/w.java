package com.igexin.push.core.a;

import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class w extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f161a = com.igexin.push.config.j.f135a + "_SetTagResultAction";

    @Override // com.igexin.push.core.a.b
    public boolean a(Object obj, JSONObject jSONObject) {
        com.igexin.b.a.c.b.a(f161a + "|set tag result resp data = " + jSONObject);
        if (jSONObject == null) {
            return true;
        }
        try {
            if (!jSONObject.has(PushConsts.CMD_ACTION) || !jSONObject.getString(PushConsts.CMD_ACTION).equals("settag_result")) {
                return true;
            }
            com.igexin.push.core.a.a().a(jSONObject.getString("sn"), jSONObject.getString("error_code"));
            return true;
        } catch (Exception e) {
            com.igexin.b.a.c.b.a(f161a + "|" + e.toString());
            return true;
        }
    }
}
