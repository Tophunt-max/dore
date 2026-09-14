package com.igexin.push.util;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f440a = true;

    private j() {
    }

    public static byte[] a(String str, int i) {
        return a(str.getBytes(), i);
    }

    public static byte[] a(byte[] bArr, int i) {
        return a(bArr, 0, bArr.length, i);
    }

    public static byte[] a(byte[] bArr, int i, int i2, int i3) {
        l lVar = new l(i3, new byte[(i2 * 3) / 4]);
        if (!lVar.a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (lVar.b == lVar.f441a.length) {
            return lVar.f441a;
        }
        byte[] bArr2 = new byte[lVar.b];
        System.arraycopy(lVar.f441a, 0, bArr2, 0, lVar.b);
        return bArr2;
    }

    public static String b(byte[] bArr, int i) {
        try {
            return new String(c(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] b(byte[] bArr, int i, int i2, int i3) {
        m mVar = new m(i3, null);
        int i4 = (i2 / 3) * 4;
        if (!mVar.d) {
            int i5 = i2 % 3;
            if (i5 == 1) {
                i4 += 2;
            } else if (i5 == 2) {
                i4 += 3;
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (mVar.e && i2 > 0) {
            i4 += (((i2 - 1) / 57) + 1) * (mVar.f ? 2 : 1);
        }
        mVar.f441a = new byte[i4];
        mVar.a(bArr, i, i2, true);
        if (f440a || mVar.b == i4) {
            return mVar.f441a;
        }
        throw new AssertionError();
    }

    public static byte[] c(byte[] bArr, int i) {
        return b(bArr, 0, bArr.length, i);
    }
}
