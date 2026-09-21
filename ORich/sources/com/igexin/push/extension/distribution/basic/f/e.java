package com.igexin.push.extension.distribution.basic.f;

import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e extends f {
    public e() {
        super(c.a());
        com.igexin.b.a.c.b.a("EXT-_ConfigHttp|post url = " + c.a());
        a();
    }

    public void a() {
        this.d = true;
        this.c = true;
        this.e = true;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "sdkconfig");
            jSONObject.put("cid", com.igexin.push.core.f.s);
            jSONObject.put("appid", com.igexin.push.core.f.f238a);
            jSONObject.put("sdk_version", "EXT-2.8.15.0");
            com.igexin.b.a.c.b.a("EXT-_ConfigHttp|post src data = " + jSONObject.toString());
            b(jSONObject.toString().getBytes());
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("EXT-_ConfigHttp|" + e.getMessage());
        }
    }

    @Override // com.igexin.push.extension.distribution.basic.f.f
    public void a(Exception exc) {
        super.a(exc);
        com.igexin.push.extension.distribution.basic.d.b.a().a(System.currentTimeMillis());
    }

    @Override // com.igexin.push.extension.distribution.basic.f.f
    public void a(byte[] bArr) {
        com.igexin.push.extension.distribution.basic.d.b.a().a(bArr);
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
