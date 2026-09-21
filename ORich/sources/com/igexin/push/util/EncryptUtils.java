package com.igexin.push.util;

import android.text.TextUtils;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.igexin.push.extension.mod.SecurityUtils;
import io.dcloud.common.util.Md5Utils;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class EncryptUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f432a = "com.igexin.push.util.EncryptUtils";
    private static boolean b = false;
    private static int c = 0;
    private static byte[] d = null;
    private static byte[] e = null;
    public static String errorMsg = "";

    static {
        try {
            if (SecurityUtils.b) {
                d = initSocketAESKey();
                byte[] bArrInitHttpAESKey = initHttpAESKey();
                e = bArrInitHttpAESKey;
                b = (d == null || bArrInitHttpAESKey == null || getSocketAESKey() == null || getHttpAESKey() == null || getRSAKeyId() == null || getVersion() == null) ? false : true;
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f432a + "|load so error = " + th.toString());
            b = false;
            errorMsg = th.getMessage();
        }
        if (TextUtils.isEmpty(errorMsg)) {
            errorMsg = SecurityUtils.c;
        }
        if (b) {
            com.igexin.b.a.c.b.a(f432a + "|load so success ~~~~~~~");
            return;
        }
        com.igexin.b.a.c.b.a(f432a + "|load so error ++++++++");
        if (TextUtils.isEmpty(errorMsg)) {
            errorMsg = "value = null, normal error";
        }
    }

    public static byte[] aesDecHttp(byte[] bArr, byte[] bArr2) {
        return SecurityUtils.c(e, bArr, bArr2);
    }

    public static byte[] aesDecSocket(byte[] bArr, byte[] bArr2) {
        return SecurityUtils.g(d, bArr, bArr2);
    }

    public static byte[] aesEncHttp(byte[] bArr, byte[] bArr2) {
        return SecurityUtils.b(e, bArr, bArr2);
    }

    public static byte[] aesEncSocket(byte[] bArr, byte[] bArr2) {
        return SecurityUtils.f(d, bArr, bArr2);
    }

    public static byte[] altAesDecSocket(byte[] bArr, byte[] bArr2) {
        return SecurityUtils.m(bArr, bArr2);
    }

    public static byte[] altAesEncSocket(byte[] bArr, byte[] bArr2) {
        return SecurityUtils.l(bArr, bArr2);
    }

    public static byte[] getBytesEncrypted(byte[] bArr) {
        return com.igexin.b.a.a.a.d(bArr, com.igexin.push.core.f.B);
    }

    public static byte[] getHttpAESKey() {
        return SecurityUtils.d(e);
    }

    public static String getHttpGTCV() {
        byte[] httpAESKey = getHttpAESKey();
        byte[] bytes = u.a(16).getBytes();
        byte[] bArr = new byte[bytes.length + httpAESKey.length];
        com.igexin.b.a.b.f.a(httpAESKey, 0, bArr, com.igexin.b.a.b.f.a(bytes, 0, bArr, 0, bytes.length), httpAESKey.length);
        return j.b(bArr, 2);
    }

    public static String getHttpSignature(String str, byte[] bArr) {
        byte[] bytes = str.getBytes();
        byte[] bArr2 = new byte[bytes.length + bArr.length];
        int iA = com.igexin.b.a.b.f.a(bytes, 0, bArr2, 0, bytes.length);
        if (bArr.length > 0) {
            com.igexin.b.a.b.f.a(bArr, 0, bArr2, iA, bArr.length);
        }
        return j.b(sha1(bArr2), 2);
    }

    public static byte[] getIV(byte[] bArr) {
        return md5(bArr);
    }

    public static int getPacketId() {
        int i = c;
        c = i + 1;
        return i;
    }

    public static byte[] getRSAKeyId() {
        return SecurityUtils.j();
    }

    public static byte[] getSocketAESKey() {
        return SecurityUtils.h(d);
    }

    public static byte[] getSocketSignature(com.igexin.push.e.c.b bVar, int i, int i2) {
        byte[] bArr = new byte[bVar.f268a + 11];
        int iA = com.igexin.b.a.b.f.a(i, bArr, 0);
        int iA2 = iA + com.igexin.b.a.b.f.a(i2, bArr, iA);
        int iB = iA2 + com.igexin.b.a.b.f.b((short) bVar.f268a, bArr, iA2);
        com.igexin.b.a.b.f.a(bVar.e, 0, bArr, iB + com.igexin.b.a.b.f.c(bVar.b, bArr, iB), bVar.f268a);
        return sha1(bArr);
    }

    public static String getVersion() {
        byte[] bArrK = SecurityUtils.k();
        if (bArrK == null) {
            return null;
        }
        String str = new String(bArrK);
        com.igexin.b.a.c.b.a(f432a + "| so version is " + str);
        return str;
    }

    public static byte[] initHttpAESKey() {
        return SecurityUtils.a();
    }

    public static byte[] initSocketAESKey() {
        return SecurityUtils.e();
    }

    public static boolean isLoadSuccess() {
        return b;
    }

    public static byte[] md5(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(Md5Utils.ALGORITHM);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean reset() {
        StringBuilder sb;
        String str;
        try {
            if (SecurityUtils.b) {
                d = initSocketAESKey();
                byte[] bArrInitHttpAESKey = initHttpAESKey();
                e = bArrInitHttpAESKey;
                b = (d == null || bArrInitHttpAESKey == null || getSocketAESKey() == null || getHttpAESKey() == null || getRSAKeyId() == null || getVersion() == null) ? false : true;
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f432a + "|load so error = " + th.toString());
            b = false;
        }
        if (b) {
            sb = new StringBuilder();
            sb.append(f432a);
            str = "|load so success ~~~~~~~";
        } else {
            sb = new StringBuilder();
            sb.append(f432a);
            str = "|load so error ++++++++";
        }
        sb.append(str);
        com.igexin.b.a.c.b.a(sb.toString());
        return b;
    }

    public static byte[] rsaEnc(byte[] bArr) {
        int length = bArr.length;
        if (length <= 214) {
            return SecurityUtils.i(bArr);
        }
        int i = length % ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION == 0 ? length / ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION : (length / ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION) + 1;
        byte[] bArr2 = new byte[i * 256];
        int i2 = 0;
        int iA = 0;
        while (i2 < i) {
            int i3 = i2 < i + (-1) ? ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION : length - (i2 * ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
            byte[] bArr3 = new byte[i3];
            com.igexin.b.a.b.f.a(bArr, i2 * ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, bArr3, 0, i3);
            byte[] bArrI = SecurityUtils.i(bArr3);
            iA += com.igexin.b.a.b.f.a(bArrI, 0, bArr2, iA, bArrI.length);
            i2++;
        }
        return bArr2;
    }

    public static byte[] sha1(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA-1").digest(bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
