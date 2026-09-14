package com.igexin.push.extension.distribution.gbd.i;

import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes.dex */
public final class ad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f398a = "RSA";
    private static String b = "RSA/NONE/OAEPWithSHA1AndMGF1Padding";

    public static PublicKey a(byte[] bArr) {
        try {
            return KeyFactory.getInstance(f398a).generatePublic(new X509EncodedKeySpec(bArr));
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static byte[] a(byte[] bArr, PublicKey publicKey) {
        try {
            Cipher cipher = Cipher.getInstance(b);
            cipher.init(1, publicKey);
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
