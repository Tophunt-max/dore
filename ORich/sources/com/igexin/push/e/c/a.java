package com.igexin.push.e.c;

import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public class a extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f267a;
    public int b;
    public Object c;
    public String d;
    private int f = 0;
    private int g = 0;
    public String e = "UTF-8";

    public a() {
        this.i = 28;
    }

    public int a() {
        return this.f;
    }

    public void a(int i) {
        this.f = i;
    }

    @Override // com.igexin.push.e.c.e
    public void a(byte[] bArr) {
        int i;
        this.f267a = com.igexin.b.a.b.f.c(bArr, 0);
        this.b = bArr[2] & 192;
        this.e = a(bArr[2]);
        int i2 = 3;
        int i3 = 0;
        while (true) {
            i = i3 | (bArr[i2] & 127);
            if ((bArr[i2] & ByteCompanionObject.MIN_VALUE) == 0) {
                break;
            }
            i3 = i << 7;
            i2++;
        }
        int i4 = i2 + 1;
        if (i > 0) {
            if (this.b == 192) {
                byte[] bArr2 = new byte[i];
                this.c = bArr2;
                System.arraycopy(bArr, i4, bArr2, 0, i);
            } else {
                try {
                    this.c = new String(bArr, i4, i, this.e);
                } catch (Exception unused) {
                }
            }
        }
        int i5 = i4 + i;
        int i6 = bArr[i5] & 255;
        int i7 = i5 + 1;
        if (bArr.length > i7) {
            try {
                this.d = new String(bArr, i7, i6, this.e);
            } catch (Exception unused2) {
            }
        }
    }

    public void b(int i) {
        this.g = i;
    }

    public int c() {
        return this.g;
    }

    @Override // com.igexin.push.e.c.e
    public byte[] d() {
        byte[] bArr = null;
        try {
            byte[] bytes = this.d.getBytes(this.e);
            byte[] bytes2 = !"".equals(this.c) ? this.b == 192 ? (byte[]) this.c : ((String) this.c).getBytes(this.e) : null;
            int length = bytes2 == null ? 0 : bytes2.length;
            byte[] bArrA = com.igexin.b.a.b.f.a(length);
            bArr = new byte[bArrA.length + 4 + length + bytes.length];
            int iB = com.igexin.b.a.b.f.b(this.f267a, bArr, 0);
            int iC = iB + com.igexin.b.a.b.f.c(this.b | a(this.e), bArr, iB);
            int iA = iC + com.igexin.b.a.b.f.a(bArrA, 0, bArr, iC, bArrA.length);
            if (length > 0) {
                iA += com.igexin.b.a.b.f.a(bytes2, 0, bArr, iA, length);
            }
            com.igexin.b.a.b.f.a(bytes, 0, bArr, iA + com.igexin.b.a.b.f.c(bytes.length, bArr, iA), bytes.length);
        } catch (Exception unused) {
        }
        return bArr;
    }
}
