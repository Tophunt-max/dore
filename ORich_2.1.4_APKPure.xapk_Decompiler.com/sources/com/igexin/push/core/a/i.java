package com.igexin.push.core.a;

import com.igexin.sdk.PushConsts;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class i extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f151a = com.igexin.push.config.j.f135a;
    private static Map<String, b> b;

    public i() {
        HashMap map = new HashMap();
        b = map;
        map.put("redirect_server", new s());
        b.put("response_deviceid", new u());
        b.put("pushmessage", new q());
        b.put("received", new r());
        b.put("sendmessage_feedback", new v());
        b.put("block_client", new d());
        b.put("settag_result", new w());
        b.put("response_bind", new c());
        b.put("response_unbind", new x());
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(com.igexin.b.a.d.e eVar) {
        return false;
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(Object obj) {
        if (!(obj instanceof com.igexin.push.e.c.o)) {
            return false;
        }
        com.igexin.push.e.c.o oVar = (com.igexin.push.e.c.o) obj;
        if (!oVar.a() || oVar.e == null) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject((String) oVar.e);
            if (jSONObject.has(PushConsts.CMD_ACTION) && !jSONObject.getString(PushConsts.CMD_ACTION).equals("received") && !jSONObject.getString(PushConsts.CMD_ACTION).equals("redirect_server") && jSONObject.has("id")) {
                f.a().a(jSONObject.getString("id"));
            }
            if (!jSONObject.has(PushConsts.CMD_ACTION)) {
                return false;
            }
            b bVar = b.get(jSONObject.getString(PushConsts.CMD_ACTION));
            if (bVar != null) {
                return bVar.a(obj, jSONObject);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
