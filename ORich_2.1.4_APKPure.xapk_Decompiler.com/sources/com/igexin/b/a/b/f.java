package com.igexin.b.a.b;

import com.taobao.weex.el.parse.Operators;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static int a(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        return 4;
    }

    public static int a(long j, byte[] bArr, int i) {
        bArr[i] = (byte) ((j >> 56) & 255);
        bArr[i + 1] = (byte) ((j >> 48) & 255);
        bArr[i + 2] = (byte) ((j >> 40) & 255);
        bArr[i + 3] = (byte) ((j >> 32) & 255);
        bArr[i + 4] = (byte) ((j >> 24) & 255);
        bArr[i + 5] = (byte) ((j >> 16) & 255);
        bArr[i + 6] = (byte) ((j >> 8) & 255);
        bArr[i + 7] = (byte) (j & 255);
        return 8;
    }

    public static int a(byte[] bArr, int i) {
        return bArr[i] & 255;
    }

    public static int a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        System.arraycopy(bArr, i, bArr2, i2, i3);
        return i3;
    }

    public static String a(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        if (!strArr[0].equals("")) {
            sb.append(strArr[0]);
            sb.append("://");
        }
        if (!strArr[1].equals("")) {
            sb.append(strArr[1]);
        }
        if (!strArr[2].equals("")) {
            sb.append(Operators.CONDITION_IF_MIDDLE);
            sb.append(strArr[2]);
        }
        if (!strArr[3].equals("")) {
            sb.append(strArr[3]);
            if (!strArr[3].equals(Operators.DIV)) {
                sb.append('/');
            }
        }
        if (!strArr[4].equals("")) {
            sb.append(strArr[4]);
        }
        if (!strArr[5].equals("")) {
            sb.append(Operators.CONDITION_IF);
            sb.append(strArr[5]);
        }
        return sb.toString();
    }

    private static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    public static void a(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        a aVar = new a(outputStream, i);
        a(inputStream, aVar);
        aVar.a();
    }

    public static byte[] a(int i) {
        int i2;
        int i3 = 0;
        int i4 = 0;
        do {
            i2 = 24;
            i3 |= (i & 127) << 24;
            i >>>= 7;
            i4++;
            if (i > 0) {
                i3 = (i3 >>> 8) | Integer.MIN_VALUE;
            }
        } while (i > 0);
        byte[] bArr = new byte[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            bArr[i5] = (byte) (i3 >>> i2);
            i2 -= 8;
        }
        return bArr;
    }

    public static byte[] a(byte[] bArr) {
        return c(bArr);
    }

    public static String[] a(String str) {
        StringBuilder sb = new StringBuilder(str.toLowerCase());
        String[] strArr = new String[6];
        for (int i = 0; i < 6; i++) {
            strArr[i] = "";
        }
        int iIndexOf = str.indexOf(":");
        if (iIndexOf > 0) {
            strArr[0] = str.substring(0, iIndexOf);
            sb.delete(0, iIndexOf + 1);
        } else if (iIndexOf == 0) {
            throw new IllegalArgumentException("url format error - protocol");
        }
        if (sb.length() >= 2 && sb.charAt(0) == '/' && sb.charAt(1) == '/') {
            sb.delete(0, 2);
            int iIndexOf2 = sb.toString().indexOf(47);
            if (iIndexOf2 < 0) {
                iIndexOf2 = sb.length();
            }
            if (iIndexOf2 != 0) {
                int iLastIndexOf = sb.toString().lastIndexOf(58);
                if (iLastIndexOf < 0) {
                    iLastIndexOf = iIndexOf2;
                } else {
                    if (iLastIndexOf > iIndexOf2) {
                        throw new IllegalArgumentException("url format error - port");
                    }
                    strArr[2] = sb.toString().substring(iLastIndexOf + 1, iIndexOf2);
                }
                strArr[1] = sb.toString().substring(0, iLastIndexOf);
                sb.delete(0, iIndexOf2);
            }
        }
        if (sb.length() > 0) {
            String string = sb.toString();
            int iLastIndexOf2 = string.lastIndexOf(47);
            if (iLastIndexOf2 > 0) {
                strArr[3] = string.substring(0, iLastIndexOf2);
            } else if (iLastIndexOf2 == 0) {
                if (string.indexOf(63) > 0) {
                    throw new IllegalArgumentException("url format error - path");
                }
                strArr[3] = string;
                return strArr;
            }
            if (iLastIndexOf2 < string.length() - 1) {
                String strSubstring = string.substring(iLastIndexOf2 + 1, string.length());
                int iIndexOf3 = strSubstring.indexOf(63);
                if (iIndexOf3 >= 0) {
                    strArr[4] = strSubstring.substring(0, iIndexOf3);
                    strArr[5] = strSubstring.substring(iIndexOf3 + 1);
                } else {
                    strArr[4] = strSubstring;
                }
            }
        } else {
            strArr[3] = Operators.DIV;
        }
        return strArr;
    }

    public static int b(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        return 2;
    }

    public static short b(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public static byte[] b(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static byte[] b(byte[] bArr) {
        return d(bArr);
    }

    public static int c(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        return 1;
    }

    public static int c(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    public static byte[] c(byte[] bArr) {
        GZIPOutputStream gZIPOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] byteArray = null;
        try {
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.finish();
                byteArray = byteArrayOutputStream.toByteArray();
            } catch (Throwable unused) {
                if (gZIPOutputStream != null) {
                }
                byteArrayOutputStream.close();
                return byteArray;
            }
        } catch (Throwable unused2) {
            gZIPOutputStream = null;
        }
        try {
            gZIPOutputStream.close();
        } catch (Exception unused3) {
        }
        try {
            byteArrayOutputStream.close();
        } catch (Exception unused4) {
        }
        return byteArray;
    }

    public static int d(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|2|(4:36|3|34|4)|(8:28|5|(1:7)(1:40)|32|10|26|11|22)|8|38|9|32|10|26|11|22|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(16:0|2|36|3|34|4|(8:28|5|(1:7)(1:40)|32|10|26|11|22)|8|38|9|32|10|26|11|22|(1:(0))) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] d(byte[] r5) {
        /*
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r0.<init>(r5)
            r5 = 0
            java.util.zip.GZIPInputStream r1 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L2d
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L2d
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L2b
            r2.<init>()     // Catch: java.lang.Throwable -> L2b
        L10:
            int r3 = r1.read()     // Catch: java.lang.Throwable -> L29
            r4 = -1
            if (r3 == r4) goto L1b
            r2.write(r3)     // Catch: java.lang.Throwable -> L29
            goto L10
        L1b:
            byte[] r5 = r2.toByteArray()     // Catch: java.lang.Throwable -> L29
            r2.close()     // Catch: java.lang.Exception -> L22
        L22:
            r1.close()     // Catch: java.lang.Exception -> L25
        L25:
            r0.close()     // Catch: java.lang.Exception -> L39
            goto L39
        L29:
            goto L2f
        L2b:
            r2 = r5
            goto L2f
        L2d:
            r1 = r5
            r2 = r1
        L2f:
            if (r2 == 0) goto L36
            r2.close()     // Catch: java.lang.Exception -> L35
            goto L36
        L35:
        L36:
            if (r1 == 0) goto L25
            goto L22
        L39:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.b.a.b.f.d(byte[]):byte[]");
    }

    public static long e(byte[] bArr, int i) {
        return (((long) bArr[i + 7]) & 255) | ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
    }

    public static byte[] f(byte[] bArr, int i) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            a(byteArrayInputStream, byteArrayOutputStream, i);
            try {
                byteArrayInputStream.close();
            } catch (Throwable unused) {
            }
            try {
                byteArrayOutputStream.close();
            } catch (Throwable unused2) {
            }
            return byteArrayOutputStream.toByteArray();
        } finally {
        }
    }
}
