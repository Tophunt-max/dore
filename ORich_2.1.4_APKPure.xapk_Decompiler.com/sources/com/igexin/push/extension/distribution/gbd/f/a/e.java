package com.igexin.push.extension.distribution.gbd.f.a;

import com.igexin.push.extension.distribution.gbd.e.a.h;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import com.igexin.sdk.PushConsts;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.igexin.push.extension.distribution.gbd.f.d {
    public e() {
        super(com.igexin.push.extension.distribution.gbd.f.b.c());
        a(true);
        n();
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(Map<String, List<String>> map, byte[] bArr) {
        if (bArr != null) {
            try {
                h.a().a(bArr);
            } catch (Throwable th) {
                j.a(th);
            }
        }
    }

    public void n() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "fetchus");
            jSONObject.put("cid", com.igexin.push.core.f.s);
            jSONObject.put("appid", com.igexin.push.core.f.f238a);
            jSONObject.put("pkgs", k.a(com.igexin.push.extension.distribution.gbd.c.c.f373a, 0));
            a(jSONObject.toString().getBytes());
            j.b("GBD_GSSHP", "init jsonObject = " + jSONObject);
        } catch (Exception e) {
            j.a(e);
        }
    }
}
