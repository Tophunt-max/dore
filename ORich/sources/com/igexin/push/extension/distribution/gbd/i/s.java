package com.igexin.push.extension.distribution.gbd.i;

import io.dcloud.common.util.Md5Utils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
public class s {
    public static byte[] a(byte[] bArr) {
        MessageDigest messageDigest;
        try {
            messageDigest = MessageDigest.getInstance(Md5Utils.ALGORITHM);
        } catch (NoSuchAlgorithmException e) {
            j.a(e);
            messageDigest = null;
        }
        if (messageDigest == null) {
            return null;
        }
        messageDigest.update(bArr);
        return messageDigest.digest();
    }

    public static byte[] b(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA-1").digest(bArr);
        } catch (Exception e) {
            j.a(e);
            return null;
        }
    }
}
