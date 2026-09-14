package com.igexin.push.core.d;

import com.igexin.push.config.SDKUrlConfig;
import com.igexin.push.core.bean.j;
import com.igexin.push.core.c.aj;
import com.igexin.sdk.PushConsts;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.igexin.push.g.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f228a = "com.igexin.push.core.d.h";
    private String g;
    private ArrayList<j> h;

    public h(byte[] bArr, String str, ArrayList<j> arrayList) {
        super(SDKUrlConfig.getBiUploadServiceUrl());
        a(bArr, str, arrayList);
    }

    private void a(byte[] bArr, String str, ArrayList<j> arrayList) {
        this.g = str;
        this.h = arrayList;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "upload_BI");
            jSONObject.put("BIType", str);
            jSONObject.put("cid", com.igexin.push.core.f.s);
            jSONObject.put("BIData", new String(com.igexin.b.a.b.f.f(bArr, 0), "UTF-8"));
            b(jSONObject.toString().getBytes());
        } catch (Exception unused) {
        }
    }

    @Override // com.igexin.push.g.a.b
    public void a(byte[] bArr) {
        JSONObject jSONObject = new JSONObject(new String(bArr));
        if (jSONObject.has("result") && "ok".equals(jSONObject.getString("result"))) {
            aj.a().a(this.g, this.h);
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
