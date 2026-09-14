package com.igexin.push.extension.distribution.gbd.i;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f405a = true;

    private c() {
    }

    public static String a(byte[] bArr, int i, int i2) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (i < bArr.length) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < 3 && i < bArr.length) {
                i5 |= (bArr[i] & 255) << (16 - (i4 << 3));
                i4++;
                i++;
            }
            if (i2 > 0 && i3 == i2) {
                sb.append("\r\n");
                i3 = 0;
            }
            char cCharAt = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i5 << 8) >>> 26);
            char cCharAt2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i5 << 14) >>> 26);
            char cCharAt3 = '=';
            char cCharAt4 = i4 < 2 ? '=' : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i5 << 20) >>> 26);
            if (i4 >= 3) {
                cCharAt3 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i5 << 26) >>> 26);
            }
            sb.append(cCharAt);
            sb.append(cCharAt2);
            sb.append(cCharAt4);
            sb.append(cCharAt3);
            i3 += 4;
        }
        return sb.toString();
    }

    public static byte[] a(byte[] bArr, int i) {
        return a(bArr, 0, bArr.length, i);
    }

    public static byte[] a(byte[] bArr, int i, int i2, int i3) {
        e eVar = new e(i3, new byte[(i2 * 3) / 4]);
        if (!eVar.a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (eVar.b == eVar.f406a.length) {
            return eVar.f406a;
        }
        byte[] bArr2 = new byte[eVar.b];
        System.arraycopy(eVar.f406a, 0, bArr2, 0, eVar.b);
        return bArr2;
    }

    public static byte[] a(char[] cArr, int i) throws IOException {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        char[] cArr2 = new char[4];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(cArr.length >> 1);
        while (i < cArr.length) {
            int i2 = 0;
            while (i < cArr.length) {
                int i3 = i + 1;
                char c = cArr[i];
                if ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(c) != -1 || c == '=') {
                    cArr2[i2] = c;
                    i2++;
                } else if (c != '\r' && c != '\n') {
                    throw new IOException("bad BASE 64 In->");
                }
                if (i2 >= 4) {
                    boolean z = false;
                    for (int i4 = 0; i4 < 4; i4++) {
                        if (cArr2[i4] != '=' && z) {
                            throw new IOException("bad BASE 64 In->");
                        }
                        if (!z && cArr2[i4] == '=') {
                            z = true;
                        }
                    }
                    int i5 = 3;
                    if (cArr2[3] == '=') {
                        if (i3 < cArr.length) {
                            throw new IOException("bad BASE 64 In->");
                        }
                        i5 = 2;
                        if (cArr2[2] == '=') {
                            i5 = 1;
                        }
                    }
                    int iIndexOf = 0;
                    for (int i6 = 0; i6 < 4; i6++) {
                        if (cArr2[i6] != '=') {
                            iIndexOf |= "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(cArr2[i6]) << ((3 - i6) * 6);
                        }
                    }
                    for (int i7 = 0; i7 < i5; i7++) {
                        byteArrayOutputStream.write((iIndexOf >>> ((2 - i7) * 8)) & 255);
                    }
                    i = i3;
                } else {
                    i = i3;
                }
            }
            if (i2 <= 0) {
                return byteArrayOutputStream.toByteArray();
            }
            throw new IOException("bad BASE 64 In->");
        }
        byteArrayOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    public static String b(byte[] bArr, int i) {
        try {
            return new String(c(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] b(byte[] bArr, int i, int i2, int i3) {
        f fVar = new f(i3, null);
        int i4 = (i2 / 3) * 4;
        if (!fVar.d) {
            int i5 = i2 % 3;
            if (i5 == 1) {
                i4 += 2;
            } else if (i5 == 2) {
                i4 += 3;
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (fVar.e && i2 > 0) {
            i4 += (((i2 - 1) / 57) + 1) * (fVar.f ? 2 : 1);
        }
        fVar.f406a = new byte[i4];
        fVar.a(bArr, i, i2, true);
        if (f405a || fVar.b == i4) {
            return fVar.f406a;
        }
        throw new AssertionError();
    }

    public static byte[] c(byte[] bArr, int i) {
        return b(bArr, 0, bArr.length, i);
    }
}
