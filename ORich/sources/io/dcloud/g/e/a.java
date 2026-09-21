package io.dcloud.g.e;

import android.os.Build;
import android.os.Process;
import android.util.Base64;
import android.util.Log;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import io.dcloud.common.util.StringUtil;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final AtomicBoolean f791a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: io.dcloud.g.e.a$a, reason: collision with other inner class name */
    public static class C0069a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte[] f792a;
        private final byte[] b;
        private final byte[] c;

        public C0069a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            byte[] bArr4 = new byte[bArr.length];
            this.f792a = bArr4;
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
            byte[] bArr5 = new byte[bArr2.length];
            this.b = bArr5;
            System.arraycopy(bArr2, 0, bArr5, 0, bArr2.length);
            byte[] bArr6 = new byte[bArr3.length];
            this.c = bArr6;
            System.arraycopy(bArr3, 0, bArr6, 0, bArr3.length);
        }

        public byte[] a() {
            return this.f792a;
        }

        public byte[] b() {
            return this.b;
        }

        public byte[] c() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0069a.class != obj.getClass()) {
                return false;
            }
            C0069a c0069a = (C0069a) obj;
            return Arrays.equals(this.f792a, c0069a.f792a) && Arrays.equals(this.b, c0069a.b) && Arrays.equals(this.c, c0069a.c);
        }

        public int hashCode() {
            return ((((Arrays.hashCode(this.f792a) + 31) * 31) + Arrays.hashCode(this.b)) * 31) + Arrays.hashCode(this.c);
        }

        public String toString() {
            String strEncodeToString = Base64.encodeToString(this.b, 2);
            String strEncodeToString2 = Base64.encodeToString(this.f792a, 2);
            return StringUtil.format(strEncodeToString + ":" + Base64.encodeToString(this.c, 2) + ":" + strEncodeToString2, new Object[0]);
        }

        public static byte[] a(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[bArr.length + bArr2.length];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
            return bArr3;
        }

        public C0069a(String str) {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length == 3) {
                this.b = Base64.decode(strArrSplit[0], 2);
                this.c = Base64.decode(strArrSplit[1], 2);
                this.f792a = Base64.decode(strArrSplit[2], 2);
                return;
            }
            throw new IllegalArgumentException("Cannot parse iv:ciphertext:mac");
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final byte[] f793a = e();

        /* JADX INFO: renamed from: io.dcloud.g.e.a$b$a, reason: collision with other inner class name */
        public static class C0070a extends SecureRandomSpi {
            private static final File b = new File("/dev/urandom");
            private static final Object c = new Object();
            private static DataInputStream d;
            private static OutputStream e;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private boolean f794a;

            private DataInputStream a() {
                DataInputStream dataInputStream;
                synchronized (c) {
                    if (d == null) {
                        try {
                            d = new DataInputStream(new FileInputStream(b));
                        } catch (IOException e2) {
                            throw new SecurityException("Failed to open " + b + " for reading", e2);
                        }
                    }
                    dataInputStream = d;
                }
                return dataInputStream;
            }

            private OutputStream b() throws IOException {
                OutputStream outputStream;
                synchronized (c) {
                    if (e == null) {
                        e = new FileOutputStream(b);
                    }
                    outputStream = e;
                }
                return outputStream;
            }

            @Override // java.security.SecureRandomSpi
            protected byte[] engineGenerateSeed(int i) {
                byte[] bArr = new byte[i];
                engineNextBytes(bArr);
                return bArr;
            }

            @Override // java.security.SecureRandomSpi
            protected void engineNextBytes(byte[] bArr) {
                DataInputStream dataInputStreamA;
                if (!this.f794a) {
                    engineSetSeed(b.d());
                }
                try {
                    synchronized (c) {
                        dataInputStreamA = a();
                    }
                    synchronized (dataInputStreamA) {
                        dataInputStreamA.readFully(bArr);
                    }
                } catch (IOException e2) {
                    throw new SecurityException("Failed to read from " + b, e2);
                }
            }

            @Override // java.security.SecureRandomSpi
            protected void engineSetSeed(byte[] bArr) {
                OutputStream outputStreamB;
                try {
                    try {
                        synchronized (c) {
                            outputStreamB = b();
                        }
                        outputStreamB.write(bArr);
                        outputStreamB.flush();
                    } catch (IOException unused) {
                        Log.w(b.class.getSimpleName(), "Failed to mix seed into " + b);
                    }
                } finally {
                    this.f794a = true;
                }
            }
        }

        /* JADX INFO: renamed from: io.dcloud.g.e.a$b$b, reason: collision with other inner class name */
        private static class C0071b extends Provider {
            public C0071b() {
                super("LinuxPRNG", 1.0d, "A Linux-specific random number provider that uses /dev/urandom");
                put("SecureRandom.SHA1PRNG", C0070a.class.getName());
                put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
            }
        }

        private b() {
        }

        public static void b() {
            c();
            g();
        }

        private static void c() throws SecurityException {
            int i = Build.VERSION.SDK_INT;
            if (i < 16 || i > 18) {
                return;
            }
            try {
                Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_seed", byte[].class).invoke(null, d());
                int iIntValue = ((Integer) Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_load_file", String.class, Long.TYPE).invoke(null, "/dev/urandom", 1024)).intValue();
                if (iIntValue == 1024) {
                    return;
                }
                throw new IOException("Unexpected number of bytes read from Linux PRNG: " + iIntValue);
            } catch (Exception e) {
                throw new SecurityException("Failed to seed OpenSSL PRNG", e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] d() {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                dataOutputStream.writeLong(System.currentTimeMillis());
                dataOutputStream.writeLong(System.nanoTime());
                dataOutputStream.writeInt(Process.myPid());
                dataOutputStream.writeInt(Process.myUid());
                dataOutputStream.write(f793a);
                dataOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new SecurityException("Failed to generate seed", e);
            }
        }

        private static byte[] e() {
            StringBuilder sb = new StringBuilder();
            String str = Build.FINGERPRINT;
            if (str != null) {
                sb.append(str);
            }
            String strF = f();
            if (strF != null) {
                sb.append(strF);
            }
            try {
                return sb.toString().getBytes("UTF-8");
            } catch (UnsupportedEncodingException unused) {
                throw new RuntimeException("UTF-8 encoding not supported");
            }
        }

        private static String f() {
            try {
                return (String) Build.class.getField("SERIAL").get(null);
            } catch (Exception unused) {
                return null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002d A[Catch: all -> 0x00ba, TryCatch #0 {, blocks: (B:9:0x0013, B:11:0x0016, B:14:0x0035, B:17:0x0053, B:21:0x0062, B:23:0x007a, B:25:0x007c, B:26:0x009a, B:20:0x005b, B:27:0x009b, B:28:0x00b9, B:13:0x002d), top: B:32:0x0013, inners: #1 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static void g() throws java.lang.SecurityException {
            /*
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 18
                if (r0 <= r1) goto L7
                return
            L7:
                java.lang.String r0 = "SecureRandom.SHA1PRNG"
                java.security.Provider[] r0 = java.security.Security.getProviders(r0)
                java.lang.Class<java.security.Security> r1 = java.security.Security.class
                monitor-enter(r1)
                r2 = 1
                if (r0 == 0) goto L2d
                int r3 = r0.length     // Catch: java.lang.Throwable -> Lba
                if (r3 < r2) goto L2d
                r3 = 0
                r0 = r0[r3]     // Catch: java.lang.Throwable -> Lba
                java.lang.Class r0 = r0.getClass()     // Catch: java.lang.Throwable -> Lba
                java.lang.String r0 = r0.getSimpleName()     // Catch: java.lang.Throwable -> Lba
                java.lang.Class<io.dcloud.g.e.a$b$b> r3 = io.dcloud.g.e.a.b.C0071b.class
                java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> Lba
                boolean r0 = r0.equals(r3)     // Catch: java.lang.Throwable -> Lba
                if (r0 != 0) goto L35
            L2d:
                io.dcloud.g.e.a$b$b r0 = new io.dcloud.g.e.a$b$b     // Catch: java.lang.Throwable -> Lba
                r0.<init>()     // Catch: java.lang.Throwable -> Lba
                java.security.Security.insertProviderAt(r0, r2)     // Catch: java.lang.Throwable -> Lba
            L35:
                java.security.SecureRandom r0 = new java.security.SecureRandom     // Catch: java.lang.Throwable -> Lba
                r0.<init>()     // Catch: java.lang.Throwable -> Lba
                java.security.Provider r2 = r0.getProvider()     // Catch: java.lang.Throwable -> Lba
                java.lang.Class r2 = r2.getClass()     // Catch: java.lang.Throwable -> Lba
                java.lang.String r2 = r2.getSimpleName()     // Catch: java.lang.Throwable -> Lba
                java.lang.Class<io.dcloud.g.e.a$b$b> r3 = io.dcloud.g.e.a.b.C0071b.class
                java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> Lba
                boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> Lba
                if (r2 == 0) goto L9b
                r0 = 0
                java.lang.String r2 = "SHA1PRNG"
                java.security.SecureRandom r0 = java.security.SecureRandom.getInstance(r2)     // Catch: java.security.NoSuchAlgorithmException -> L5a java.lang.Throwable -> Lba
                goto L62
            L5a:
                r2 = move-exception
                java.lang.SecurityException r3 = new java.lang.SecurityException     // Catch: java.lang.Throwable -> Lba
                java.lang.String r4 = "SHA1PRNG not available"
                r3.<init>(r4, r2)     // Catch: java.lang.Throwable -> Lba
            L62:
                java.security.Provider r2 = r0.getProvider()     // Catch: java.lang.Throwable -> Lba
                java.lang.Class r2 = r2.getClass()     // Catch: java.lang.Throwable -> Lba
                java.lang.String r2 = r2.getSimpleName()     // Catch: java.lang.Throwable -> Lba
                java.lang.Class<io.dcloud.g.e.a$b$b> r3 = io.dcloud.g.e.a.b.C0071b.class
                java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> Lba
                boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> Lba
                if (r2 == 0) goto L7c
                monitor-exit(r1)     // Catch: java.lang.Throwable -> Lba
                return
            L7c:
                java.lang.SecurityException r2 = new java.lang.SecurityException     // Catch: java.lang.Throwable -> Lba
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lba
                r3.<init>()     // Catch: java.lang.Throwable -> Lba
                java.lang.String r4 = "SecureRandom.getInstance(\"SHA1PRNG\") backed by wrong Provider: "
                r3.append(r4)     // Catch: java.lang.Throwable -> Lba
                java.security.Provider r0 = r0.getProvider()     // Catch: java.lang.Throwable -> Lba
                java.lang.Class r0 = r0.getClass()     // Catch: java.lang.Throwable -> Lba
                r3.append(r0)     // Catch: java.lang.Throwable -> Lba
                java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> Lba
                r2.<init>(r0)     // Catch: java.lang.Throwable -> Lba
                throw r2     // Catch: java.lang.Throwable -> Lba
            L9b:
                java.lang.SecurityException r2 = new java.lang.SecurityException     // Catch: java.lang.Throwable -> Lba
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lba
                r3.<init>()     // Catch: java.lang.Throwable -> Lba
                java.lang.String r4 = "new SecureRandom() backed by wrong Provider: "
                r3.append(r4)     // Catch: java.lang.Throwable -> Lba
                java.security.Provider r0 = r0.getProvider()     // Catch: java.lang.Throwable -> Lba
                java.lang.Class r0 = r0.getClass()     // Catch: java.lang.Throwable -> Lba
                r3.append(r0)     // Catch: java.lang.Throwable -> Lba
                java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> Lba
                r2.<init>(r0)     // Catch: java.lang.Throwable -> Lba
                throw r2     // Catch: java.lang.Throwable -> Lba
            Lba:
                r0 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> Lba
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.dcloud.g.e.a.b.g():void");
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SecretKey f795a;
        private SecretKey b;

        public c(SecretKey secretKey, SecretKey secretKey2) {
            a(secretKey);
            b(secretKey2);
        }

        public SecretKey a() {
            return this.f795a;
        }

        public SecretKey b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.b.equals(cVar.b) && this.f795a.equals(cVar.f795a);
        }

        public int hashCode() {
            return ((this.f795a.hashCode() + 31) * 31) + this.b.hashCode();
        }

        public String toString() {
            return Base64.encodeToString(a().getEncoded(), 2) + ":" + Base64.encodeToString(b().getEncoded(), 2);
        }

        public void a(SecretKey secretKey) {
            this.f795a = secretKey;
        }

        public void b(SecretKey secretKey) {
            this.b = secretKey;
        }
    }

    public static c a(String str) throws InvalidKeyException {
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Cannot parse aesKey:hmacKey");
        }
        byte[] bArrDecode = Base64.decode(strArrSplit[0], 2);
        if (bArrDecode.length != 16) {
            throw new InvalidKeyException("Base64 decoded key is not 128 bytes");
        }
        byte[] bArrDecode2 = Base64.decode(strArrSplit[1], 2);
        if (bArrDecode2.length == 32) {
            return new c(new SecretKeySpec(bArrDecode, 0, bArrDecode.length, "AES"), new SecretKeySpec(bArrDecode2, "HmacSHA256"));
        }
        throw new InvalidKeyException("Base64 decoded key is not 256 bytes");
    }

    public static byte[] b() throws GeneralSecurityException {
        return a(16);
    }

    public static c c() throws GeneralSecurityException {
        a();
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        keyGenerator.init(128);
        return new c(keyGenerator.generateKey(), new SecretKeySpec(a(32), "HmacSHA256"));
    }

    public static String b(C0069a c0069a, c cVar) throws GeneralSecurityException, UnsupportedEncodingException {
        return a(c0069a, cVar, "UTF-8");
    }

    public static c a(String str, byte[] bArr, int i) throws GeneralSecurityException {
        a();
        byte[] encoded = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(str.toCharArray(), bArr, i, BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT)).getEncoded();
        return new c(new SecretKeySpec(a(encoded, 0, 16), "AES"), new SecretKeySpec(a(encoded, 16, 48), "HmacSHA256"));
    }

    private static byte[] a(int i) throws GeneralSecurityException {
        a();
        byte[] bArr = new byte[i];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    public static C0069a a(String str, c cVar) throws GeneralSecurityException, UnsupportedEncodingException {
        return a(str, cVar, "UTF-8");
    }

    public static C0069a a(String str, c cVar, String str2) throws GeneralSecurityException, UnsupportedEncodingException {
        return a(str.getBytes(str2), cVar);
    }

    public static C0069a a(byte[] bArr, c cVar) throws GeneralSecurityException {
        byte[] bArrB = b();
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, cVar.a(), new IvParameterSpec(bArrB));
        byte[] iv = cipher.getIV();
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        return new C0069a(bArrDoFinal, iv, a(C0069a.a(iv, bArrDoFinal), cVar.b()));
    }

    private static void a() {
        AtomicBoolean atomicBoolean = f791a;
        if (atomicBoolean.get()) {
            return;
        }
        synchronized (b.class) {
            if (!atomicBoolean.get()) {
                b.b();
                atomicBoolean.set(true);
            }
        }
    }

    public static String a(C0069a c0069a, c cVar, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        return new String(a(c0069a, cVar), str);
    }

    public static byte[] a(C0069a c0069a, c cVar) throws GeneralSecurityException {
        if (a(a(C0069a.a(c0069a.b(), c0069a.a()), cVar.b()), c0069a.c())) {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, cVar.a(), new IvParameterSpec(c0069a.b()));
            return cipher.doFinal(c0069a.a());
        }
        throw new GeneralSecurityException("MAC stored in civ does not match computed MAC.");
    }

    public static byte[] a(byte[] bArr, SecretKey secretKey) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKey);
        return mac.doFinal(bArr);
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i |= bArr[i2] ^ bArr2[i2];
        }
        return i == 0;
    }

    private static byte[] a(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return bArr2;
    }
}
