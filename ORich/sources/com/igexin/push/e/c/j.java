package com.igexin.push.e.c;

/* JADX INFO: loaded from: classes.dex */
public class j extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f274a;
    public byte b;

    public j() {
        this.i = 97;
    }

    @Override // com.igexin.push.e.c.e
    public void a(byte[] bArr) {
        this.f274a = bArr[0];
        this.b = bArr[1];
    }

    @Override // com.igexin.push.e.c.e
    public byte[] d() {
        return new byte[]{this.f274a, this.b};
    }
}
