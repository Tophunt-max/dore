package com.igexin.push.e.c;

import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f270a;
    public int b;
    public long c;
    public String d;
    public Object e;
    public Object f;
    public String g = "";
    public String h = "UTF-8";

    public d() {
        this.i = 25;
        this.j = (byte) 20;
    }

    public final void a() {
        this.b = 128;
    }

    @Override // com.igexin.push.e.c.e
    public void a(byte[] bArr) {
        int i;
        int i2;
        this.f270a = com.igexin.b.a.b.f.c(bArr, 0);
        this.b = bArr[2] & 192;
        this.h = a(bArr[2]);
        this.c = com.igexin.b.a.b.f.e(bArr, 3);
        int i3 = bArr[11] & 255;
        try {
            this.d = new String(bArr, 12, i3, this.h);
        } catch (Exception unused) {
        }
        int i4 = 12 + i3;
        int i5 = 0;
        while (true) {
            i = i5 | (bArr[i4] & 127);
            if ((bArr[i4] & ByteCompanionObject.MIN_VALUE) == 0) {
                break;
            }
            i5 = i << 7;
            i4++;
        }
        int i6 = i4 + 1;
        if (i > 0) {
            if (this.b == 192) {
                byte[] bArr2 = new byte[i];
                this.e = bArr2;
                System.arraycopy(bArr, i6, bArr2, 0, i);
            } else {
                try {
                    this.e = new String(bArr, i6, i, this.h);
                } catch (Exception unused2) {
                }
            }
        }
        int i7 = i6 + i;
        int i8 = 0;
        while (true) {
            i2 = i8 | (bArr[i7] & 127);
            if ((bArr[i7] & ByteCompanionObject.MIN_VALUE) == 0) {
                break;
            }
            i8 = i2 << 7;
            i7++;
        }
        int i9 = i7 + 1;
        if (i2 > 0) {
            byte[] bArr3 = new byte[i2];
            this.f = bArr3;
            System.arraycopy(bArr, i9, bArr3, 0, i2);
        }
        int i10 = i9 + i2;
        if (bArr.length > i10) {
            try {
                this.g = new String(bArr, i10 + 1, bArr[i10] & 255, this.h);
            } catch (Exception unused3) {
            }
        }
    }

    @Override // com.igexin.push.e.c.e
    public byte[] d() {
        byte[] bArr = null;
        try {
            byte[] bytes = this.d.getBytes(this.h);
            byte[] bytes2 = !"".equals(this.e) ? this.b == 192 ? (byte[]) this.e : ((String) this.e).getBytes(this.h) : null;
            Object obj = this.f;
            byte[] bArr2 = obj != null ? (byte[]) obj : null;
            byte[] bytes3 = this.g.getBytes(this.h);
            int length = bytes2 == null ? 0 : bytes2.length;
            int length2 = bArr2 == null ? 0 : bArr2.length;
            byte[] bArrA = com.igexin.b.a.b.f.a(length);
            byte[] bArrA2 = com.igexin.b.a.b.f.a(length2);
            bArr = new byte[bytes.length + 13 + bArrA.length + length + bArrA2.length + length2 + bytes3.length];
            int iB = com.igexin.b.a.b.f.b(this.f270a, bArr, 0);
            int iC = iB + com.igexin.b.a.b.f.c(this.b | a(this.h), bArr, iB);
            int iA = iC + com.igexin.b.a.b.f.a(this.c, bArr, iC);
            int iC2 = iA + com.igexin.b.a.b.f.c(bytes.length, bArr, iA);
            int iA2 = iC2 + com.igexin.b.a.b.f.a(bytes, 0, bArr, iC2, bytes.length);
            int iA3 = iA2 + com.igexin.b.a.b.f.a(bArrA, 0, bArr, iA2, bArrA.length);
            if (length > 0) {
                iA3 += com.igexin.b.a.b.f.a(bytes2, 0, bArr, iA3, length);
            }
            int iA4 = iA3 + com.igexin.b.a.b.f.a(bArrA2, 0, bArr, iA3, bArrA2.length);
            if (length2 > 0) {
                iA4 += com.igexin.b.a.b.f.a(bArr2, 0, bArr, iA4, length2);
            }
            com.igexin.b.a.b.f.a(bytes3, 0, bArr, iA4 + com.igexin.b.a.b.f.c(bytes3.length, bArr, iA4), bytes3.length);
        } catch (Exception unused) {
        }
        if (bArr != null && bArr.length >= 512) {
            this.j = (byte) (this.j | ByteCompanionObject.MIN_VALUE);
        }
        return bArr;
    }
}
