package com.igexin.push.core.d;

import com.igexin.push.config.k;
import com.igexin.sdk.PushBuildConfig;
import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f extends com.igexin.push.g.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f226a = "com.igexin.push.core.d.f";

    public f(String str) {
        super(str);
        a();
    }

    /* JADX WARN: Removed duplicated region for block: B:98:0x021f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void c(byte[] r23) {
        /*
            Method dump skipped, instruction units count: 1314
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.d.f.c(byte[]):void");
    }

    private void d(byte[] bArr) {
        String str = com.igexin.push.core.f.f.getFilesDir().getPath() + "/conf_n.pid";
        com.igexin.b.a.c.b.a(f226a + "|writeNeedLook " + str);
        com.igexin.push.util.g.a(bArr, str, false);
    }

    public void a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "sdkconfig");
            jSONObject.put("cid", com.igexin.push.core.f.s);
            jSONObject.put("appid", com.igexin.push.core.f.f238a);
            jSONObject.put("sdk_version", PushBuildConfig.sdk_conf_version);
            jSONObject.put("tag", k.D);
            b(jSONObject.toString().getBytes());
        } catch (Exception unused) {
        }
    }

    @Override // com.igexin.push.g.a.b
    public void a(byte[] bArr) {
        if (bArr != null) {
            c(bArr);
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
