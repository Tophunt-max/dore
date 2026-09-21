package com.igexin.push.extension.distribution.gbd.a.b;

import android.content.ContentValues;
import android.os.Build;
import com.nostra13.dcloudimageloader.core.download.BaseImageDownloader;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class o {
    public static void a(String str) {
        String strA = com.igexin.b.b.a.a(str);
        if (com.igexin.push.extension.distribution.gbd.c.c.s == null) {
            com.igexin.push.extension.distribution.gbd.c.c.s = new HashMap();
        }
        if (com.igexin.push.extension.distribution.gbd.c.c.s.containsKey(strA)) {
            return;
        }
        com.igexin.push.extension.distribution.gbd.c.c.s.put(strA, str);
    }

    public static void a(String str, int i, String str2, int i2) {
        if ((i == 1 || i == 2 || i == 3 || i == 4 || i == 5) && !com.igexin.push.extension.distribution.gbd.c.a.at) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", com.igexin.b.b.a.a(str));
        contentValues.put("t", str2);
        contentValues.put("type", Integer.valueOf(i));
        contentValues.put("status", Integer.valueOf(i2));
        com.igexin.push.extension.distribution.gbd.c.c.b.a("look", contentValues);
    }

    public static void a(Map<String, Object> map, int i, int i2) {
        if (map == null || Build.VERSION.SDK_INT >= 26) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_GTT", "Android version over 8.0, no check.");
        } else {
            com.igexin.push.core.e.a().a(new p(BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT, map, i2, i));
        }
    }
}
