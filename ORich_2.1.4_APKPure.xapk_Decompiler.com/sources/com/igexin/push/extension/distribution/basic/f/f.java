package com.igexin.push.extension.distribution.basic.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends com.igexin.b.a.d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f311a;
    byte[] b;
    protected boolean c;
    protected boolean d;
    protected boolean e;
    public boolean f;

    public f(String str) {
        this.f311a = str;
    }

    public void a(Exception exc) {
    }

    public void a(byte[] bArr) {
        this.f = false;
        if (bArr != null && bArr.length >= 7 && bArr[5] == 111 && bArr[6] == 107) {
            this.f = true;
        }
    }

    public void b(byte[] bArr) {
        this.b = bArr;
    }

    public String c() {
        return this.f311a;
    }

    public byte[] d() {
        return this.b;
    }

    public boolean e() {
        return this.c;
    }

    public boolean f() {
        return this.d;
    }
}
