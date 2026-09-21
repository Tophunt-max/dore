package com.igexin.b.a.c;

import android.text.TextUtils;
import com.igexin.push.core.f;
import com.igexin.push.util.EncryptUtils;
import com.igexin.push.util.j;
import com.igexin.push.util.t;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static byte a(char c) {
        return (byte) "0123456789ABCDEF".indexOf(c);
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static CipherOutputStream a(File file, SecretKeySpec secretKeySpec) throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException, InvalidAlgorithmParameterException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        byte[] bArr = new byte[16];
        if (randomAccessFile.length() == 0) {
            randomAccessFile.write(b(a(secretKeySpec.getEncoded())));
            new SecureRandom().nextBytes(bArr);
            randomAccessFile.write(bArr);
        } else {
            if (randomAccessFile.length() < 144) {
                throw new IllegalArgumentException("Invalid file length (need 2 blocks for iv and data)");
            }
            if (randomAccessFile.length() % 16 != 0) {
                a(randomAccessFile);
            }
            randomAccessFile.seek(randomAccessFile.length() - 16);
            randomAccessFile.read(bArr);
        }
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, secretKeySpec, new IvParameterSpec(bArr));
        return new CipherOutputStream(new FileOutputStream(randomAccessFile.getFD()), cipher);
    }

    public static void a() throws NoSuchAlgorithmException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        keyGenerator.init(128);
        f.aB = keyGenerator.generateKey().getEncoded();
        t.b(f.f, "logkey2", a(EncryptUtils.getBytesEncrypted(f.aB)));
    }

    public static void a(RandomAccessFile randomAccessFile) throws IOException {
        long length = (int) (randomAccessFile.length() % 16);
        if (length >= 16 || length <= 0) {
            return;
        }
        randomAccessFile.setLength(randomAccessFile.length() - length);
    }

    public static byte[] a(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        String upperCase = str.toUpperCase();
        int length = upperCase.length() / 2;
        char[] charArray = upperCase.toCharArray();
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (a(charArray[i2 + 1]) | (a(charArray[i2]) << 4));
        }
        return bArr;
    }

    public static byte[] b() {
        if (f.aB == null) {
            String str = (String) t.c(f.f, "logkey2", "");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            f.aB = com.igexin.b.a.a.a.c(a(str), f.B);
        }
        return f.aB;
    }

    private static byte[] b(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        RSAPublicKey rSAPublicKeyC = c("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCzbMQ22qV6umuPXYWXEOGdlpJR\nBWMP68/ArS7XG8+7GmRbWMW1HOMLOOdwuIfPFp9QiwOshG0mYXlm1ecQ/fCXhRMW\nfh+OMCoBdl7vnCpoDYPmjYQBkm9fRW6oej33UhZtlnTZjECAsyC2Eybha7jg3Lft\ngYVnwaPShTmv5+Z9SQIDAQAB");
        Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA1AndMGF1Padding");
        cipher.init(1, rSAPublicKeyC);
        return cipher.doFinal(str.getBytes("UTF-8"));
    }

    private static RSAPublicKey c(String str) {
        return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(j.a(str, 0)));
    }
}
