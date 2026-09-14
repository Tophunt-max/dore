package com.igexin.push.extension.distribution.gbd.b;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f369a;
    private int b;
    private String c;
    private long d;
    private int e;

    public int a() {
        return this.f369a;
    }

    public void a(int i) {
        this.f369a = i;
    }

    public void a(long j) {
        this.d = j;
    }

    public void a(String str) {
        this.c = str;
    }

    public int b() {
        return this.b;
    }

    public void b(int i) {
        this.b = i;
    }

    public String c() {
        return this.c;
    }

    public void c(int i) {
        this.e = i;
    }

    public long d() {
        return this.d;
    }

    public int e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        try {
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            if (TextUtils.isEmpty(iVar.c()) || TextUtils.isEmpty(c())) {
                return false;
            }
            return iVar.c().equals(c());
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return false;
        }
    }

    public int hashCode() {
        int i = ((this.f369a * 31) + this.b) * 31;
        String str = this.c;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        long j = this.d;
        return iHashCode + ((int) (j ^ (j >>> 32)));
    }
}
