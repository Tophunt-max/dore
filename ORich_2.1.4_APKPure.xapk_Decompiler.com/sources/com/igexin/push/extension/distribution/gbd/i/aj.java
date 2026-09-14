package com.igexin.push.extension.distribution.gbd.i;

import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class aj {
    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return a.b(Base64.decode(Build.VERSION.SDK_INT >= 28 ? com.igexin.push.extension.distribution.gbd.c.c.X : com.igexin.push.extension.distribution.gbd.c.c.W, 0), str.getBytes("UTF-8"), s.a(com.igexin.push.extension.distribution.gbd.c.b.b.getBytes("UTF-8")));
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static String a(String str, byte[] bArr) {
        try {
            if (e()) {
                return (String) a("getHttpSignature", (Class<?>[]) new Class[]{String.class, byte[].class}).invoke(null, str, bArr);
            }
            byte[] bytes = str.getBytes("UTF-8");
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            int iA = g.a(bytes, 0, bArr2, 0, bytes.length);
            if (bArr.length > 0) {
                g.a(bArr, 0, bArr2, iA, bArr.length);
            }
            return c.b(s.b(bArr2), 2);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    private static Method a(String str, Class<?>... clsArr) {
        try {
            return Class.forName("com.igexin.push.util.EncryptUtils").getMethod(str, clsArr);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static void a() {
        com.igexin.push.extension.distribution.gbd.c.c.V = a.a();
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        try {
            return e() ? (byte[]) a("aesEncHttp", (Class<?>[]) new Class[]{byte[].class, byte[].class}).invoke(null, bArr, bArr2) : a.a(com.igexin.push.extension.distribution.gbd.c.c.V.getBytes("UTF-8"), bArr, bArr2);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static byte[] b() {
        try {
            return e() ? (byte[]) a("getRSAKeyId", (Class<?>[]) new Class[0]).invoke(null, new Object[0]) : "0378965443503246e2e8ff0ab1fd3221".getBytes("UTF-8");
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        try {
            return e() ? (byte[]) a("aesDecHttp", (Class<?>[]) new Class[]{byte[].class, byte[].class}).invoke(null, bArr, bArr2) : a.c(com.igexin.push.extension.distribution.gbd.c.c.V.getBytes("UTF-8"), bArr, bArr2);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static byte[] c() {
        try {
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.V)) {
                a();
            }
            return ad.a(a.a(com.igexin.push.extension.distribution.gbd.c.c.V.getBytes("UTF-8")), ad.a(c.a("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDfHwDefVViKHb6LkTQ3LGK4c5dZESsTAUe/Tf7GlvOIfhl5LjvFcplMztQRIR/vrF1vNzgc/c76fDBlkhg0E6U86PP4JKFbXdJ4n55PfAaYnFprnhLT71vNw1ZURVbd33rYl27nuOmm92YKg+TbL7H+ozzZWMRGTtLnwRig/CdGwIDAQAB".getBytes("UTF-8"), 0)));
        } catch (Throwable th) {
            j.a(th);
            return new byte[0];
        }
    }

    public static String d() {
        try {
            if (e()) {
                return (String) a("getHttpGTCV", (Class<?>[]) new Class[0]).invoke(null, new Object[0]);
            }
            byte[] bArrC = c();
            byte[] bytes = am.a(16).getBytes("UTF-8");
            byte[] bArr = new byte[bytes.length + bArrC.length];
            g.a(bArrC, 0, bArr, g.a(bytes, 0, bArr, 0, bytes.length), bArrC.length);
            return c.b(bArr, 2);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static boolean e() {
        try {
            Class.forName("com.igexin.push.util.EncryptUtils");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
