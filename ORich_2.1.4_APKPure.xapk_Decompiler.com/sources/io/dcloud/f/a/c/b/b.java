package io.dcloud.f.a.c.b;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static void a(Context context, String str, String str2, String str3, int i, String str4, String str5, String str6, HashMap<String, Object> map) {
        try {
            Class.forName("io.dcloud.common.util.TestUtil$PointTime").getDeclaredMethod("commitTid", Context.class, String.class, String.class, String.class, Integer.TYPE, String.class, String.class, String.class, HashMap.class).invoke(null, context, str, str2, str3, Integer.valueOf(i), str4, str5, str6, map);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
