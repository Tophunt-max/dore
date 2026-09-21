package com.igexin.push.core.d;

import com.igexin.push.config.SDKUrlConfig;
import com.igexin.push.config.m;
import com.igexin.push.core.a.s;
import com.igexin.push.util.j;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.igexin.push.g.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static JSONArray f225a;

    public e(String str, JSONArray jSONArray) {
        super(str);
        a(jSONArray);
    }

    @Override // com.igexin.push.g.a.b
    public void a(Exception exc) {
        com.igexin.push.core.c.h.a().d(System.currentTimeMillis());
        com.igexin.b.a.c.b.a("-> get idc config " + exc.toString());
    }

    public void a(JSONArray jSONArray) {
        f225a = jSONArray;
    }

    @Override // com.igexin.push.g.a.b
    public void a(byte[] bArr) throws Exception {
        if (bArr != null) {
            try {
                String str = new String(com.igexin.b.b.a.c(j.a(bArr, 0)));
                com.igexin.b.a.c.b.a("->get idc config server resp data : " + str);
                com.igexin.push.config.a.a().b(str);
                m.a(str, true);
                com.igexin.push.core.c.h.a().d(0L);
                com.igexin.push.config.a.a().a(f225a.toString());
                SDKUrlConfig.setIdcConfigUrl(s.a(f225a));
            } catch (Exception e) {
                com.igexin.push.core.c.h.a().d(System.currentTimeMillis());
                throw e;
            }
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
