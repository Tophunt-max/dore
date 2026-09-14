package com.igexin.push.extension.distribution.gbd.i;

import android.os.Build;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static String a() {
        try {
            byte[] bArr = new byte[20];
            SecureRandom.getInstance("SHA1PRNG").nextBytes(bArr);
            return b(bArr);
        } catch (Exception e) {
            j.a(e);
            return null;
        }
    }

    private static void a(StringBuffer stringBuffer, byte b) {
        stringBuffer.append("0123456789ABCDEF".charAt((b >> 4) & 15));
        stringBuffer.append("0123456789ABCDEF".charAt(b & 15));
    }

    public static byte[] a(byte[] bArr) {
        SecureRandom secureRandom;
        byte[] encoded;
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            if (Build.VERSION.SDK_INT < 28) {
                if (Build.VERSION.SDK_INT >= 24) {
                    secureRandom = SecureRandom.getInstance("SHA1PRNG", new b());
                } else if (Build.VERSION.SDK_INT >= 17) {
                    secureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
                }
                secureRandom.setSeed(bArr);
                keyGenerator.init(128, secureRandom);
                encoded = keyGenerator.generateKey().getEncoded();
                if (Build.VERSION.SDK_INT >= 28 && com.igexin.push.extension.distribution.gbd.c.c.aj == null) {
                    com.igexin.push.extension.distribution.gbd.c.c.aj = encoded;
                }
                return encoded;
            }
            if (com.igexin.push.extension.distribution.gbd.c.c.aj != null) {
                return com.igexin.push.extension.distribution.gbd.c.c.aj;
            }
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
            secureRandom.setSeed(bArr);
            keyGenerator.init(128, secureRandom);
            encoded = keyGenerator.generateKey().getEncoded();
            if (Build.VERSION.SDK_INT >= 28) {
                com.igexin.push.extension.distribution.gbd.c.c.aj = encoded;
            }
            return encoded;
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(a(bArr), "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
            Cipher cipher = Cipher.getInstance("AES/CFB/NoPadding");
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr2);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b : bArr) {
            a(stringBuffer, b);
        }
        return stringBuffer.toString();
    }

    public static String b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr != null && bArr2 != null && bArr3 != null) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
                Cipher cipher = Cipher.getInstance("AES/CFB/NoPadding");
                cipher.init(1, secretKeySpec, ivParameterSpec);
                return b(cipher.doFinal(bArr2));
            } catch (Throwable th) {
                j.a(th);
            }
        }
        return null;
    }

    public static byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(a(bArr), "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
            Cipher cipher = Cipher.getInstance("AES/CFB/NoPadding");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr2);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }
}
