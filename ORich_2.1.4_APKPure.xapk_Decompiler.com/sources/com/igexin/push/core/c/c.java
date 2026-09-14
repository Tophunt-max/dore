package com.igexin.push.core.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final Object b = new Object();
    private static final Object c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f197a;

    public c(Context context) {
        if (context != null) {
            this.f197a = context.getSharedPreferences("gx_msg_sp", 0);
        }
    }

    private void a(JSONObject jSONObject) {
        try {
            if (jSONObject.length() < 150) {
                return;
            }
            boolean z = false;
            long j = Long.MAX_VALUE;
            String str = null;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                long j2 = jSONObject.getLong(next);
                if (j > j2) {
                    str = next;
                    j = j2;
                }
                if (j2 < System.currentTimeMillis() - 432000000) {
                    itKeys.remove();
                    z = true;
                }
            }
            if (z || str == null) {
                return;
            }
            jSONObject.remove(str);
        } catch (Throwable unused) {
        }
    }

    private void b(JSONObject jSONObject) {
        try {
            if (jSONObject.length() < 20) {
                return;
            }
            boolean z = false;
            long j = Long.MAX_VALUE;
            String str = null;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                long j2 = Long.parseLong(jSONObject.getJSONObject(next).getString("timestamp"));
                if (j > j2) {
                    str = next;
                    j = j2;
                }
                if (j2 < System.currentTimeMillis() - 432000000) {
                    itKeys.remove();
                    z = true;
                }
            }
            if (z || str == null) {
                return;
            }
            jSONObject.remove(str);
        } catch (Throwable unused) {
        }
    }

    public JSONObject a() {
        try {
            String string = this.f197a.getString("taskIdList", "");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return new JSONObject(string);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void a(String str, JSONObject jSONObject) {
        if (this.f197a == null || jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (b) {
            try {
                JSONObject jSONObjectB = b();
                if (jSONObjectB == null) {
                    jSONObjectB = new JSONObject();
                }
                if (jSONObjectB.length() > 0) {
                    b(jSONObjectB);
                }
                jSONObjectB.put(str, jSONObject);
                SharedPreferences.Editor editorEdit = this.f197a.edit();
                editorEdit.putString("usfdl", jSONObjectB.toString());
                editorEdit.apply();
            } catch (Throwable unused) {
            }
        }
    }

    public boolean a(String str) {
        if (this.f197a != null && !TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObjectA = a();
                if (jSONObjectA != null && jSONObjectA.has(str)) {
                    com.igexin.b.a.c.b.a("sp task " + str + " already exists");
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public JSONObject b() {
        try {
            String string = this.f197a.getString("usfdl", "");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return new JSONObject(string);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void b(String str) {
        if (this.f197a == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (c) {
            try {
                JSONObject jSONObjectA = a();
                if (jSONObjectA == null) {
                    jSONObjectA = new JSONObject();
                }
                if (jSONObjectA.length() > 0) {
                    a(jSONObjectA);
                }
                jSONObjectA.put(str, System.currentTimeMillis());
                SharedPreferences.Editor editorEdit = this.f197a.edit();
                editorEdit.putString("taskIdList", jSONObjectA.toString());
                editorEdit.apply();
            } catch (Throwable unused) {
            }
        }
    }

    public JSONObject c() {
        synchronized (b) {
            try {
                String string = this.f197a.getString("usfdl", "");
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(itKeys.next());
                    if (!jSONObject2.has("timestamp") || Long.parseLong(jSONObject2.getString("timestamp")) < System.currentTimeMillis() - 432000000) {
                        itKeys.remove();
                    }
                }
                return jSONObject;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public void c(String str) {
        try {
            SharedPreferences.Editor editorEdit = this.f197a.edit();
            editorEdit.putString("gx_vendor_token", str);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    public void d() {
        synchronized (b) {
            try {
                SharedPreferences sharedPreferences = this.f197a;
                if (sharedPreferences != null) {
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString("usfdl", "");
                    editorEdit.apply();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public String e() {
        try {
            return this.f197a.getString("gx_vendor_token", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void f() {
        try {
            if (this.f197a.contains("gx_vendor_token")) {
                SharedPreferences.Editor editorEdit = this.f197a.edit();
                editorEdit.remove("gx_vendor_token");
                editorEdit.apply();
            }
        } catch (Throwable unused) {
        }
    }
}
