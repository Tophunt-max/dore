package com.igexin.push.extension.mod;

import android.util.Log;
import com.igexin.a.c;
import com.igexin.b.a.c.b;
import com.igexin.push.core.s;
import com.igexin.sdk.PushConsts;

/* JADX INFO: loaded from: classes.dex */
public class SecurityUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f420a = "com.igexin.push.extension.mod.SecurityUtils";
    public static boolean b = false;
    public static String c = "";

    static {
        String name = SecurityUtils.class.getName();
        try {
            try {
                b.a(name + "|load so by system start #######");
                System.loadLibrary("getuiext3");
                b = true;
                b.a(name + "|load so by system success ^_^");
            } catch (UnsatisfiedLinkError e) {
                Log.e(PushConsts.KEY_CLIENT_ID, "load1 so error = " + e.toString());
                StringBuilder sb = new StringBuilder();
                String str = f420a;
                sb.append(str);
                sb.append("|load so by system error = ");
                sb.append(e.toString());
                b.a(sb.toString());
                c = e.getMessage() + " + ";
                b.a(str + "|load so by new start !!");
                if (s.f255a == null) {
                    b.a(str + "|load so by new context = null ~~~~");
                    b = false;
                    c = e.getMessage();
                } else {
                    c.a(null).a().b().a(s.f255a, "getuiext3", null, new a());
                }
            }
        } catch (Throwable th) {
            StringBuilder sb2 = new StringBuilder();
            String str2 = f420a;
            sb2.append(str2);
            sb2.append("|load so error not UnsatisfiedLinkError");
            b.a(sb2.toString());
            b.a(str2 + "|load so error e = " + th.toString());
            b = false;
            c += th.toString() + " + " + th.getMessage();
        }
    }

    public static native byte[] a();

    public static native byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3);

    public static native byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3);

    public static native byte[] d(byte[] bArr);

    public static native byte[] e();

    public static native byte[] f(byte[] bArr, byte[] bArr2, byte[] bArr3);

    public static native byte[] g(byte[] bArr, byte[] bArr2, byte[] bArr3);

    public static native byte[] h(byte[] bArr);

    public static native byte[] i(byte[] bArr);

    public static native byte[] j();

    public static native byte[] k();

    public static native byte[] l(byte[] bArr, byte[] bArr2);

    public static native byte[] m(byte[] bArr, byte[] bArr2);
}
