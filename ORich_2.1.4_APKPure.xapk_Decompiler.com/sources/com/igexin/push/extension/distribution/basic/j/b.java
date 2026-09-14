package com.igexin.push.extension.distribution.basic.j;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class b {
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
}
