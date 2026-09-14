package com.igexin.push.extension.distribution.basic.d;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.igexin.push.extension.distribution.basic.c.g;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f305a;
    private SharedPreferences b = g.f304a.getSharedPreferences("gx_sp", 0);

    private a() {
    }

    public static a a() {
        if (f305a == null) {
            f305a = new a();
        }
        return f305a;
    }

    public static String c() {
        return g.f304a.getSharedPreferences("getui_sp", 0).getString("us", "");
    }

    public static String d() {
        return g.f304a.getSharedPreferences("getui_sp", 0).getString("uis", "");
    }

    public String a(String str) {
        try {
            String strB = b();
            if (TextUtils.isEmpty(strB)) {
                return null;
            }
            String string = new JSONObject(strB).getString(str);
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            String[] strArrSplit = string.split("\\|");
            if (strArrSplit.length > 0) {
                return strArrSplit[0];
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String b() {
        try {
            return new String(com.igexin.b.a.a.a.a(com.igexin.push.extension.distribution.basic.j.b.a(this.b.getString("sp_guard_services", "").toCharArray(), 0), "dj1om0z0za9kwzxrphkqxsu9oc21tez1"), "utf-8");
        } catch (Throwable unused) {
            return "";
        }
    }
}
