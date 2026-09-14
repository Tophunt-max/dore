package com.igexin.push.extension.distribution.gbd.f.a;

import android.text.TextUtils;
import com.igexin.push.extension.distribution.gbd.e.a.g;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import com.igexin.sdk.PushConsts;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.igexin.push.extension.distribution.gbd.f.d {
    public c() {
        super(com.igexin.push.extension.distribution.gbd.f.b.c());
        a(true);
        n();
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(int i) {
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(Throwable th) {
        j.a(th);
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(Map<String, List<String>> map, byte[] bArr) {
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            j.b("GBD_GuardListHttp", "parse = " + jSONObject);
            String strOptString = jSONObject.optString("result");
            String strOptString2 = jSONObject.optString("tag");
            if ("ok".equalsIgnoreCase(strOptString)) {
                com.igexin.push.extension.distribution.gbd.e.a.a.a().a(strOptString2);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("data");
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                    return;
                }
                g.a().b(jSONArrayOptJSONArray.toString());
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void n() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "getGuardList");
            jSONObject.put("tag", com.igexin.push.extension.distribution.gbd.c.a.ab);
            jSONObject.put("cid", com.igexin.push.core.f.s);
            jSONObject.put("appid", com.igexin.push.core.f.f238a);
            jSONObject.put("brand", k.r().toLowerCase());
            jSONObject.put("sdk_version", "GBD-1.10.3");
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.aq)) {
                g.a().a(k.o());
            }
            jSONObject.put("app_list", com.igexin.push.extension.distribution.gbd.c.c.aq);
            a(jSONObject.toString().getBytes());
            j.b("GBD_GuardListHttp", "init jsonObject = " + jSONObject);
        } catch (Exception e) {
            j.a(e);
        }
    }
}
