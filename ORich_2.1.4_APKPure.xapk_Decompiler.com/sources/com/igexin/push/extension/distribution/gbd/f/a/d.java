package com.igexin.push.extension.distribution.gbd.f.a;

import com.igexin.push.extension.distribution.gbd.e.a.g;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.sdk.PushConsts;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends com.igexin.push.extension.distribution.gbd.f.d {
    public d() {
        super(com.igexin.push.extension.distribution.gbd.f.b.c());
        a(true);
        n();
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(int i) {
        g.a().q(System.currentTimeMillis());
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(Throwable th) {
        g.a().q(System.currentTimeMillis());
        j.a(th);
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(Map<String, List<String>> map, byte[] bArr) {
        try {
            g.a().q(System.currentTimeMillis());
            com.igexin.push.extension.distribution.gbd.e.a.a.a().a(bArr);
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void n() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "sdkconfig");
            jSONObject.put("tag", com.igexin.push.extension.distribution.gbd.c.a.aa);
            jSONObject.put("cid", com.igexin.push.core.f.s);
            jSONObject.put("appid", com.igexin.push.core.f.f238a);
            jSONObject.put("sdk_version", "GBD-1.10.3");
            a(jSONObject.toString().getBytes());
            j.b("GBD_ConfigHttp", "init jsonObject = " + jSONObject);
        } catch (Exception e) {
            j.a(e);
        }
    }
}
