package com.igexin.push.c;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f118a = "DT_" + j.class.getName();
    private String b;
    private String c;
    private int d;
    private int h;
    private int i;
    private long e = 2147483647L;
    private long f = -1;
    private boolean g = true;
    private final int j = 1;

    public j() {
    }

    public j(String str, int i) {
        this.b = str;
        this.d = i;
    }

    private void i() {
        this.c = null;
        this.h = 0;
        this.g = true;
    }

    private boolean j() {
        return this.c != null && System.currentTimeMillis() - this.f <= f.b && this.h < 1;
    }

    public synchronized String a() {
        return this.b;
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(long j) {
        this.e = j;
    }

    public synchronized void a(String str) {
        this.b = str;
    }

    public synchronized void a(String str, long j, long j2) {
        this.c = str;
        this.e = j;
        this.f = j2;
        this.h = 0;
        this.i = 0;
        this.g = false;
    }

    public void a(boolean z) {
        this.g = z;
    }

    public synchronized String b(boolean z) {
        if (j()) {
            if (z) {
                this.h++;
            }
            this.g = false;
            return this.c;
        }
        i();
        com.igexin.b.a.c.b.a(f118a + "|disc, ip is invalid, use domain = " + this.b);
        if (z) {
            this.i++;
        }
        return this.b;
    }

    public synchronized void b() {
        this.c = null;
        this.e = 2147483647L;
        this.f = -1L;
        this.g = true;
        this.h = 0;
    }

    public void b(long j) {
        this.f = j;
    }

    public void b(String str) {
        this.c = str;
    }

    public String c() {
        return this.c;
    }

    public int d() {
        return this.d;
    }

    public synchronized long e() {
        return this.e;
    }

    public synchronized boolean f() {
        if (j()) {
            return true;
        }
        if (this.i < 1) {
            return true;
        }
        this.i = 0;
        return false;
    }

    public synchronized void g() {
        this.h = 0;
        this.i = 0;
    }

    public JSONObject h() {
        if (this.b != null && this.c != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("domain", this.b);
                jSONObject.put("ip", this.c);
                long j = this.e;
                if (j != 2147483647L) {
                    jSONObject.put("consumeTime", j);
                }
                jSONObject.put("port", this.d);
                long j2 = this.f;
                if (j2 != -1) {
                    jSONObject.put("detectSuccessTime", j2);
                }
                jSONObject.put("isDomain", this.g);
                jSONObject.put("connectTryCnt", 1);
                return jSONObject;
            } catch (JSONException unused) {
            }
        }
        return null;
    }
}
