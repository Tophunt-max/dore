package com.igexin.push.e.c;

/* JADX INFO: loaded from: classes.dex */
public class f extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f271a;
    String b;
    String c;
    String d;

    public f() {
        this.i = 6;
        this.j = (byte) 20;
        this.f271a = "";
        this.b = "";
        this.c = "";
        this.d = "";
    }

    public f(String str, String str2, String str3, String str4) {
        this.i = 6;
        this.j = (byte) 20;
        this.f271a = str == null ? "" : str;
        this.b = str2 == null ? "" : str2;
        this.c = str3 == null ? "" : str3;
        this.d = str4 == null ? "" : str4;
    }

    @Override // com.igexin.push.e.c.e
    public void a(byte[] bArr) {
        try {
            int iA = com.igexin.b.a.b.f.a(bArr, 0);
            this.f271a = new String(bArr, 1, iA, "utf-8");
            int i = iA + 1;
            int iA2 = com.igexin.b.a.b.f.a(bArr, i);
            int i2 = i + 1;
            this.b = new String(bArr, i2, iA2, "utf-8");
            int i3 = i2 + iA2;
            int iA3 = com.igexin.b.a.b.f.a(bArr, i3);
            int i4 = i3 + 1;
            this.c = new String(bArr, i4, iA3, "utf-8");
            int i5 = i4 + iA3;
            this.d = new String(bArr, i5 + 1, com.igexin.b.a.b.f.a(bArr, i5), "utf-8");
        } catch (Exception unused) {
        }
    }

    @Override // com.igexin.push.e.c.e
    public byte[] d() {
        byte[] bytes = this.b.getBytes();
        byte[] bytes2 = this.f271a.getBytes();
        byte[] bytes3 = this.c.getBytes();
        byte[] bytes4 = this.d.getBytes();
        byte[] bArr = new byte[bytes.length + bytes2.length + bytes3.length + bytes4.length + 4];
        com.igexin.b.a.b.f.c(bytes.length, bArr, 0);
        System.arraycopy(bytes, 0, bArr, 1, bytes.length);
        int length = 1 + bytes.length;
        int i = length + 1;
        com.igexin.b.a.b.f.c(bytes2.length, bArr, length);
        System.arraycopy(bytes2, 0, bArr, i, bytes2.length);
        int length2 = i + bytes2.length;
        int i2 = length2 + 1;
        com.igexin.b.a.b.f.c(bytes3.length, bArr, length2);
        System.arraycopy(bytes3, 0, bArr, i2, bytes3.length);
        int length3 = i2 + bytes3.length;
        com.igexin.b.a.b.f.c(bytes4.length, bArr, length3);
        System.arraycopy(bytes4, 0, bArr, length3 + 1, bytes4.length);
        int length4 = bytes4.length;
        return bArr;
    }
}
