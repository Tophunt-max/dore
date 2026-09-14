package com.igexin.push.extension.distribution.gbd.f;

import android.os.Build;
import android.text.TextUtils;
import com.igexin.push.core.f;
import com.igexin.push.extension.distribution.gbd.i.aj;
import com.igexin.push.extension.distribution.gbd.i.j;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static String a() {
        String strA = a("getBiUploadServiceUrl");
        return strA == null ? f.a() : strA;
    }

    private static String a(String str) {
        try {
            Class<?> cls = Class.forName("com.igexin.push.config.SDKUrlConfig");
            return (String) cls.getMethod(str, new Class[0]).invoke(cls, new Object[0]);
        } catch (Exception unused) {
            j.b("GBDGBDUrl", "GBD_GBDUrl-> get method :" + str + "() error, use default");
            return null;
        }
    }

    public static String b() {
        if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.ag)) {
            com.igexin.push.extension.distribution.gbd.c.c.ag = a() + "&d=" + aj.a(f.s) + "&k=" + (Build.VERSION.SDK_INT < 28 ? 2 : 3);
        }
        j.b("GBDGBDUrl", " bi new url: " + com.igexin.push.extension.distribution.gbd.c.c.ag);
        return com.igexin.push.extension.distribution.gbd.c.c.ag;
    }

    public static String c() {
        String strA = a("getConfigServiceUrl");
        return strA == null ? f.a() : strA;
    }
}
