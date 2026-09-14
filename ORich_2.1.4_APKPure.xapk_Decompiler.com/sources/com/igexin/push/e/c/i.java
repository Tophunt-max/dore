package com.igexin.push.e.c;

import com.igexin.push.util.EncryptUtils;

/* JADX INFO: loaded from: classes.dex */
public class i extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f273a;
    public byte[] b;
    public byte c;
    public String d;

    public i() {
        this.i = 96;
        this.j = (byte) 4;
        this.k = (byte) (this.k | 16);
    }

    private String a(byte[] bArr, int i, int i2) {
        try {
            return new String(bArr, i, i2, "UTF-8");
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.igexin.push.e.c.e
    public void a(byte[] bArr) {
        try {
            this.c = bArr[0];
            int i = bArr[1] & 255;
            this.f273a = a(bArr, 2, i);
            int i2 = 2 + i;
            int i3 = i2 + 1;
            int i4 = bArr[i2] & 255;
            byte[] bArr2 = new byte[i4];
            this.b = bArr2;
            System.arraycopy(bArr, i3, bArr2, 0, i4);
            int i5 = i3 + i4;
            this.d = a(bArr, i5 + 1, bArr[i5] & 255);
        } catch (Exception unused) {
        }
    }

    @Override // com.igexin.push.e.c.e
    public byte[] d() {
        byte[] bytes = this.f273a.getBytes();
        byte[] iv = EncryptUtils.getIV(com.igexin.b.a.b.f.b((int) (System.currentTimeMillis() / 1000)));
        byte[] socketAESKey = EncryptUtils.getSocketAESKey();
        byte[] bArr = new byte[bytes.length + 2 + 2 + socketAESKey.length + 1 + iv.length];
        int iC = com.igexin.b.a.b.f.c(0, bArr, 0);
        int iC2 = iC + com.igexin.b.a.b.f.c((byte) bytes.length, bArr, iC);
        int iA = iC2 + com.igexin.b.a.b.f.a(bytes, 0, bArr, iC2, bytes.length);
        int iB = iA + com.igexin.b.a.b.f.b((short) socketAESKey.length, bArr, iA);
        int iA2 = iB + com.igexin.b.a.b.f.a(socketAESKey, 0, bArr, iB, socketAESKey.length);
        com.igexin.b.a.b.f.a(iv, 0, bArr, iA2 + com.igexin.b.a.b.f.c((byte) iv.length, bArr, iA2), iv.length);
        return bArr;
    }
}
