package com.igexin.push.g.a;

import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends com.igexin.b.a.d.a {
    String b;
    byte[] c;
    InputStream d;
    long e;
    public boolean f;

    public b(String str) {
        this.b = str;
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
        this.c = bArr;
    }

    public String c() {
        return this.b;
    }

    public byte[] d() {
        return this.c;
    }

    public InputStream e() {
        return this.d;
    }

    public long f() {
        return this.e;
    }
}
