package com.igexin.push.extension.distribution.gbd.f.a;

import com.igexin.push.extension.distribution.gbd.b.i;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.sdk.PushConsts;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f extends com.igexin.push.extension.distribution.gbd.f.d {
    int n;
    List<i> o;

    public f(byte[] bArr, int i, List<i> list) {
        super(com.igexin.push.extension.distribution.gbd.f.b.b());
        a(true);
        this.o = list;
        this.n = i;
        a(bArr, i);
    }

    private void a(byte[] bArr, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "upload_BI");
            jSONObject.put("BIType", String.valueOf(i));
            jSONObject.put("cid", com.igexin.push.core.f.s);
            jSONObject.put("BIData", new String(com.igexin.b.a.b.f.f(bArr, 0), "UTF-8"));
            a(jSONObject.toString().getBytes());
        } catch (Exception e) {
            j.a(e);
        }
        j.b("GBD_UBLP", "gbdreportReq|" + i);
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(int i) {
        try {
            com.igexin.push.extension.distribution.gbd.b.b bVar = new com.igexin.push.extension.distribution.gbd.b.b();
            bVar.a(false);
            bVar.a(this.o);
            this.d.a(bVar);
            j.b("GBD_UBLP", "type = " + this.n + " requestFailed doReport failed...");
        } catch (Throwable th) {
            j.a(th);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(Throwable th) {
        try {
            if (this.d != null) {
                com.igexin.push.extension.distribution.gbd.b.b bVar = new com.igexin.push.extension.distribution.gbd.b.b();
                bVar.a(false);
                bVar.a(this.o);
                this.d.a(bVar);
            }
            j.b("GBD_UBLP", "type = " + this.n + " exceptionHandler doReport error..." + th.toString());
        } catch (Throwable th2) {
            j.a(th2);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(Map<String, List<String>> map, byte[] bArr) {
        String str;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            if (jSONObject.has("result")) {
                String string = jSONObject.getString("result");
                if (this.o == null || this.d == null) {
                    str = "send list = null type = " + this.n;
                } else {
                    com.igexin.push.extension.distribution.gbd.b.b bVar = new com.igexin.push.extension.distribution.gbd.b.b();
                    bVar.a(this.o);
                    if (!string.equals("ok")) {
                        bVar.a(false);
                        this.d.a(bVar);
                        return;
                    }
                    bVar.a(true);
                    this.d.a(bVar);
                    str = "gbdreportRsp|" + this.n;
                }
                j.b("GBD_UBLP", str);
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }
}
