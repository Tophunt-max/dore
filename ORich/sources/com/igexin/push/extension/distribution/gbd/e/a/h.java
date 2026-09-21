package com.igexin.push.extension.distribution.gbd.e.a;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.igexin.push.extension.distribution.gbd.i.ac;
import com.igexin.push.extension.distribution.gbd.i.j;
import io.dcloud.common.DHInterface.IApp;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static h f391a;
    private SharedPreferences b = com.igexin.push.extension.distribution.gbd.c.c.f373a.getSharedPreferences("gx_sp", 0);

    private h() {
    }

    public static h a() {
        if (f391a == null) {
            f391a = new h();
        }
        return f391a;
    }

    public void a(byte[] bArr) {
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            j.b("GBD_SPM", "parseServiceConfig : " + jSONObject);
            if (jSONObject.has("result") && jSONObject.has(IApp.ConfigProperty.CONFIG_SERVICES)) {
                String string = jSONObject.getString(IApp.ConfigProperty.CONFIG_SERVICES);
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                SharedPreferences.Editor editorEdit = this.b.edit();
                editorEdit.putString("sp_guard_services", com.igexin.push.extension.distribution.gbd.i.c.a(ac.b(string.getBytes("UTF-8"), com.igexin.push.extension.distribution.gbd.c.b.f372a), 0, 102400));
                editorEdit.apply();
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public String b() {
        try {
            String string = this.b.getString("sp_guard_services", "");
            if (TextUtils.isEmpty(string)) {
                return string;
            }
            String str = new String(ac.a(com.igexin.push.extension.distribution.gbd.i.c.a(string.toCharArray(), 0), com.igexin.push.extension.distribution.gbd.c.b.f372a), "utf-8");
            j.b("GBD_SPM", "readServiceConfig : " + str);
            return str;
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }
}
