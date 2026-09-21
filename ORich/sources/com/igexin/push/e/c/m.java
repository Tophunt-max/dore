package com.igexin.push.e.c;

import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public class m extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f277a;
    public boolean b;
    public String c;
    public String d;
    public long e;

    public m() {
        this.i = 5;
    }

    @Override // com.igexin.push.e.c.e
    public void a(byte[] bArr) {
        byte b = bArr[0];
        int i = 1;
        this.f277a = (b & 64) != 0;
        boolean z = (b & ByteCompanionObject.MIN_VALUE) != 0;
        this.b = z;
        if (z) {
            this.c = a(b);
            int iC = com.igexin.b.a.b.f.c(bArr, 1);
            i = 1 + iC + 2;
            try {
                this.d = new String(bArr, 3, iC, this.c);
            } catch (Exception unused) {
            }
        }
        if (bArr.length > i) {
            this.e = com.igexin.b.a.b.f.e(bArr, i);
            com.igexin.b.a.c.b.a("LoginResult|session = " + this.e);
        }
    }

    @Override // com.igexin.push.e.c.e
    public byte[] d() {
        int i;
        int length;
        byte bA = this.f277a ? (byte) 64 : (byte) 0;
        byte[] bytes = null;
        if (this.b) {
            byte b = (byte) (bA | ByteCompanionObject.MIN_VALUE);
            i = 3;
            try {
                bytes = this.d.getBytes(this.c);
                length = bytes.length;
                i = 3 + length;
            } catch (Exception unused) {
                length = 0;
            }
            bA = (byte) (b | a(this.c));
        } else {
            i = 1;
            length = 0;
        }
        byte[] bArr = new byte[i + 8];
        int iC = com.igexin.b.a.b.f.c(bA, bArr, 0);
        if (this.b) {
            iC = com.igexin.b.a.b.f.b(length, bArr, iC);
            if (bytes != null) {
                iC += com.igexin.b.a.b.f.a(bytes, 0, bArr, iC, length);
            }
        }
        com.igexin.b.a.b.f.a(this.e, bArr, iC);
        return bArr;
    }
}
