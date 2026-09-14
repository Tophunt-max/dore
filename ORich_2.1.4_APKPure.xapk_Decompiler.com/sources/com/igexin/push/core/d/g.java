package com.igexin.push.core.d;

import android.content.ContentValues;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g extends com.igexin.push.g.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f227a;
    private boolean g;
    private int h;

    public g(String str, byte[] bArr, int i, boolean z) {
        super(str);
        this.g = false;
        this.g = z;
        this.h = i;
        a(bArr, i);
    }

    private void a(byte[] bArr, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "upload_BI");
            jSONObject.put("BIType", String.valueOf(i));
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
            this.f227a = true;
            if (this.h == 10) {
                com.igexin.push.util.g.g();
            }
            if (this.g) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("type", "0");
                com.igexin.push.core.e.a().i().a("bi", contentValues, new String[]{"type"}, new String[]{AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_HW});
                com.igexin.push.core.c.h.a().c(System.currentTimeMillis());
            }
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
