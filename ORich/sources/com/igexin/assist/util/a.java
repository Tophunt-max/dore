package com.igexin.assist.util;

import com.igexin.push.util.j;
import io.dcloud.common.util.Md5Utils;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static String a(String str, String str2) {
        try {
            byte[] bArrA = j.a(str, 0);
            SecretKeySpec secretKeySpec = new SecretKeySpec(a(new StringBuilder(str2).reverse().toString().getBytes()), "AES");
            Cipher cipher = Cipher.getInstance("AES/CFB128/NoPadding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(a("".getBytes())));
            byte[] bArrDoFinal = cipher.doFinal(bArrA);
            if (bArrDoFinal != null) {
                return new String(bArrDoFinal);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static byte[] a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(Md5Utils.ALGORITHM);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
