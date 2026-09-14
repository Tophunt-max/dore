package com.igexin.push.e.c;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class k extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f275a;
    public byte b;
    public int c;
    public String d;
    public List<l> e;

    public k() {
        this.i = 4;
        this.j = (byte) 20;
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
        this.f275a = com.igexin.b.a.b.f.e(bArr, 0);
        this.b = bArr[8];
        this.c = com.igexin.b.a.b.f.d(bArr, 9) & (-1);
        int i = 13;
        if (bArr.length > 13) {
            int i2 = 14;
            int i3 = bArr[13] & 255;
            if (i3 > 0) {
                this.e = new ArrayList();
                int i4 = i3 + 14;
                while (i2 < i4) {
                    l lVar = new l();
                    this.e.add(lVar);
                    int i5 = i2 + 1;
                    int iA = com.igexin.b.a.b.f.a(bArr, i2) & 255;
                    int i6 = i5 + 1;
                    int iA2 = com.igexin.b.a.b.f.a(bArr, i5) & 255;
                    lVar.f276a = (byte) iA;
                    if ((iA == 1 || iA == 4) && iA2 > 0) {
                        try {
                            lVar.b = new String(bArr, i6, iA2, "UTF-8");
                        } catch (Exception unused) {
                        }
                    }
                    i2 = i6 + iA2;
                }
                i = i2;
            } else {
                i = 14;
            }
        }
        if (bArr.length > i) {
            this.d = a(bArr, i + 1, bArr[i] & 255);
        }
    }

    @Override // com.igexin.push.e.c.e
    public byte[] d() {
        int length;
        int i;
        List<l> list = this.e;
        byte[] byteArray = null;
        if (list != null && list.size() > 0) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Iterator<l> it = this.e.iterator();
            while (it.hasNext()) {
                try {
                    byteArrayOutputStream.write(it.next().d());
                    byteArray = byteArrayOutputStream.toByteArray();
                } catch (IOException unused) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused2) {
            }
        }
        if (byteArray != null) {
            length = byteArray.length;
            i = length + 1;
        } else {
            length = 0;
            i = 1;
        }
        byte[] bArr = new byte[i + 12 + this.d.getBytes().length + 1];
        int iA = com.igexin.b.a.b.f.a(this.f275a, bArr, 0);
        int iA2 = iA + com.igexin.b.a.b.f.a(((this.b & 255) << 24) | this.c, bArr, iA);
        int iC = iA2 + com.igexin.b.a.b.f.c(length, bArr, iA2);
        if (length > 0) {
            iC += com.igexin.b.a.b.f.a(byteArray, 0, bArr, iC, length);
        }
        byte[] bytes = this.d.getBytes();
        com.igexin.b.a.b.f.c(bytes.length, bArr, iC);
        System.arraycopy(bytes, 0, bArr, iC + 1, bytes.length);
        int length2 = bytes.length;
        return bArr;
    }
}
