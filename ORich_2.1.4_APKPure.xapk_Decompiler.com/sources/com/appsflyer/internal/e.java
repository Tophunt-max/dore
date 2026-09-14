package com.appsflyer.internal;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static int AppsFlyerConversionListener = 0;
    public static final int AppsFlyerInAppPurchaseValidatorListener = 0;
    private static Object onAppOpenAttribution = null;
    private static long onAttributionFailure = 0;
    private static Object onConversionDataFail = null;
    private static byte onConversionDataSuccess = 0;
    public static byte[] onDeepLinking = null;
    public static byte[] onInstallConversionFailureNative = null;
    public static final byte[] onValidateInApp = null;
    private static int onValidateInAppFailure = 1;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038 A[PHI: r1 r3 r5 r9 r10
      0x0038: PHI (r1v9 byte[]) = (r1v6 byte[]), (r1v10 byte[]) binds: [B:18:0x0069, B:12:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x0038: PHI (r3v8 byte[]) = (r3v5 byte[]), (r3v9 byte[]) binds: [B:18:0x0069, B:12:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x0038: PHI (r5v14 int) = (r5v3 int), (r5v17 int) binds: [B:18:0x0069, B:12:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x0038: PHI (r9v27 int) = (r9v4 int), (r9v28 int) binds: [B:18:0x0069, B:12:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x0038: PHI (r10v17 int) = (r10v3 int), (r10v18 int) binds: [B:18:0x0069, B:12:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006c A[PHI: r1 r3 r5 r9
      0x006c: PHI (r1v7 byte[]) = (r1v6 byte[]), (r1v10 byte[]) binds: [B:18:0x0069, B:12:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x006c: PHI (r3v6 byte[]) = (r3v5 byte[]), (r3v9 byte[]) binds: [B:18:0x0069, B:12:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x006c: PHI (r5v4 int) = (r5v3 int), (r5v17 int) binds: [B:18:0x0069, B:12:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x006c: PHI (r9v5 int) = (r9v4 int), (r9v28 int) binds: [B:18:0x0069, B:12:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String $$c(byte r8, int r9, short r10) {
        /*
            int r0 = com.appsflyer.internal.e.AppsFlyerConversionListener
            r1 = r0 ^ 111(0x6f, float:1.56E-43)
            r0 = r0 & 111(0x6f, float:1.56E-43)
            r2 = 1
            int r0 = r0 << r2
            int r1 = r1 + r0
            int r0 = r1 % 128
            com.appsflyer.internal.e.onValidateInAppFailure = r0
            int r1 = r1 % 2
            r3 = 45
            if (r1 != 0) goto L16
            r1 = 45
            goto L18
        L16:
            r1 = 18
        L18:
            r4 = 0
            if (r1 == r3) goto L3a
            int r10 = r10 + 41
            byte[] r1 = com.appsflyer.internal.e.onValidateInApp
            int r9 = r9 + 4
            int r8 = -r8
            int r8 = ~r8
            int r8 = 36 - r8
            int r8 = r8 - r2
            byte[] r3 = new byte[r8]
            int r8 = r8 + 92
            int r8 = r8 - r2
            r5 = r8 | (-92)
            int r5 = r5 << r2
            r8 = r8 ^ (-92)
            int r5 = r5 - r8
            if (r1 != 0) goto L35
            r8 = 0
            goto L36
        L35:
            r8 = 1
        L36:
            if (r8 == 0) goto L6c
        L38:
            r0 = 0
            goto L93
        L3a:
            r1 = r10 ^ 93
            r10 = r10 & 93
            int r10 = r10 << r2
            int r10 = r10 + r1
            byte[] r1 = com.appsflyer.internal.e.onValidateInApp
            r3 = r9 ^ 135(0x87, float:1.89E-43)
            r9 = r9 & 135(0x87, float:1.89E-43)
            int r9 = r9 << r2
            int r3 = r3 + r9
            r9 = r3 & (-63)
            r3 = r3 | (-63)
            int r9 = r9 + r3
            r3 = 74
            int r8 = r3 >>> r8
            byte[] r3 = new byte[r8]
            r5 = r8 ^ 46
            r8 = r8 & 46
            int r8 = r8 << r2
            int r5 = r5 + r8
            r8 = r5 | (-4)
            int r8 = r8 << r2
            r5 = r5 ^ (-4)
            int r5 = r8 - r5
            r8 = 23
            if (r1 != 0) goto L67
            r6 = 23
            goto L69
        L67:
            r6 = 26
        L69:
            if (r6 == r8) goto L6c
            goto L38
        L6c:
            r8 = r0 & 95
            r10 = r0 | 95
            int r8 = r8 + r10
            int r10 = r8 % 128
            com.appsflyer.internal.e.AppsFlyerConversionListener = r10
            int r8 = r8 % 2
            r8 = r10 & 41
            r10 = r10 | 41
            int r8 = r8 + r10
            int r10 = r8 % 128
            com.appsflyer.internal.e.onValidateInAppFailure = r10
            int r8 = r8 % 2
            r8 = r9
            r10 = r5
            r0 = 0
        L85:
            int r5 = -r5
            r6 = r9 ^ r5
            r9 = r9 & r5
            int r9 = r9 << r2
            int r6 = r6 + r9
            r9 = r6 & (-3)
            r5 = r6 | (-3)
            int r9 = r9 + r5
            r5 = r10
            r10 = r9
            r9 = r8
        L93:
            r8 = r9 ^ 1
            r9 = r9 & r2
            int r9 = r9 << r2
            int r8 = r8 + r9
            byte r9 = (byte) r10
            r3[r0] = r9
            if (r0 != r5) goto Lb0
            java.lang.String r8 = new java.lang.String
            r8.<init>(r3, r4)
            int r9 = com.appsflyer.internal.e.onValidateInAppFailure
            r10 = r9 & 73
            r9 = r9 | 73
            int r10 = r10 + r9
            int r9 = r10 % 128
            com.appsflyer.internal.e.AppsFlyerConversionListener = r9
            int r10 = r10 % 2
            return r8
        Lb0:
            int r0 = r0 + 117
            int r0 = r0 - r2
            r9 = r0 ^ (-115(0xffffffffffffff8d, float:NaN))
            r0 = r0 & (-115(0xffffffffffffff8d, float:NaN))
            int r0 = r0 << r2
            int r0 = r0 + r9
            r9 = r1[r8]
            r7 = r5
            r5 = r9
            r9 = r10
            r10 = r7
            goto L85
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.e.$$c(byte, int, short):java.lang.String");
    }

    public static int AFInAppEventType(int i) throws Throwable {
        int i2 = AppsFlyerConversionListener;
        int i3 = i2 + 111;
        onValidateInAppFailure = i3 % 128;
        int i4 = i3 % 2;
        Object obj = onAppOpenAttribution;
        int i5 = (i2 ^ 69) + ((i2 & 69) << 1);
        onValidateInAppFailure = i5 % 128;
        int i6 = i5 % 2;
        int i7 = (i2 + 96) - 1;
        onValidateInAppFailure = i7 % 128;
        int i8 = i7 % 2;
        try {
            Object[] objArr = {Integer.valueOf(i)};
            byte[] bArr = onValidateInApp;
            return ((Integer) Class.forName($$c(bArr[17], (short) 889, bArr[135]), true, (ClassLoader) onConversionDataFail).getMethod($$c(bArr[347], (short) 557, bArr[19]), Integer.TYPE).invoke(obj, objArr)).intValue();
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static Object AFInAppEventType(int i, char c, int i2) throws Throwable {
        int i3 = AppsFlyerConversionListener;
        int i4 = i3 + 95;
        onValidateInAppFailure = i4 % 128;
        int i5 = i4 % 2;
        Object obj = onAppOpenAttribution;
        int i6 = (i3 + 82) - 1;
        onValidateInAppFailure = i6 % 128;
        int i7 = i6 % 2;
        try {
            Object[] objArr = {Integer.valueOf(i), Character.valueOf(c), Integer.valueOf(i2)};
            byte[] bArr = onValidateInApp;
            Object objInvoke = Class.forName($$c(bArr[17], (short) 889, bArr[135]), true, (ClassLoader) onConversionDataFail).getMethod($$c(bArr[325], (short) 303, bArr[19]), Integer.TYPE, Character.TYPE, Integer.TYPE).invoke(obj, objArr);
            int i8 = onValidateInAppFailure + 59;
            AppsFlyerConversionListener = i8 % 128;
            int i9 = i8 % 2;
            return objInvoke;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    static void init$0() {
        int i;
        int i2 = onValidateInAppFailure;
        int i3 = (i2 & 33) + (i2 | 33);
        AppsFlyerConversionListener = i3 % 128;
        if (!(i3 % 2 != 0)) {
            byte[] bArr = new byte[975];
            System.arraycopy("OSÙÚ\u0006è\u00120Â÷>éÊ\fýþð\nþ\u0018Øûøþ\u001eÜÿ\n\u0001ñ\u0006è\u00120¿\bð\u00046Ø×\u0003ü\fõë\u0000ý\nô÷0Îý\u0001\u0000\u0003ÿê\b÷þ\u0006è\u00120½\u0002÷>éÆ\u0002\f Ê\fýþðð\u0007ï\u0000\u0003\u00023¼ùBéÊ\tú\u0005=Ë\u000eðü\u0007÷þ\u0006è\u00120Â÷>éÆ\u0002\f!Ìý\u000eå-Øûøþ\u001eÜÿ\n\u0001ñ\u0000òó\nû:¸÷\u0003ü\fõ<âØ\u001eåõûúö2Üê2Ô\bëý$Ú\u000búüð\n\u0001ú\u001bÎ\u0006ýðñÿ;Ëîýú\n÷ð\u0011ð@Ãø÷\fð\u0001\nò:É<ýÿî+Úú\u0004ï,Øôø\u0007üê&æ\u0002\u0006ò\fÿî.ßûø\u0000\u001eØô\n\u0001ú\u0000òó\nû:¸÷\u0003ü\fõ<çÜê/Úú\u0004ñ\bü\u0003ùÿûø\u0000\u0000òó\nû:¸÷\u0003ü\fõ<éÞë\u000b\u001eÜê2Ô\bëý$Ú\u000búüðÿî.Ñ\bü\u001fßûø\u0000\u001eØô÷\b\bøúØ*Îý(Ì\u000eô÷\u001dØ\u0006\b\u0012ö\u0014õ·üL·\u0002òý\u0007þûõõP±\u0004üïH\u0012÷\u0013õ\u0012ù\u0011õ\u0012õ\u0015õ\u0006è\u00120¿\bð\u00046èÔ\bëý$Ú\u000búüðð\u0007ï\u0000\u0003\u00023Êîý?êÎý&Øú\nþòöÿî,Ê\u0001\fð\u0001\nò\u0016Ü\u0002ú\u000e÷ÿ\u001eØô\nÿì\u0002úöÉñÿ;Ëîýú\n÷ð\u0011ð@Ãø÷\fð\u0001\nò:Ê2\u0006è\u00120Â÷>çàê\u0010\u0015Øûøþ\u001eÜÿ\n\u0001ñú\u000bú\u001dÜê\u0006è\u00120Â÷>éÆ\u0002\f!Ìý\u000eå'×þ\u0001øþ\u001eÜÿ\n\u0001ñð\u0007ï\u0000\u0003\u00023¼ùBæÔõ\nô\u0000þþ\u0005ô÷\u0012òô\rï\u0005ÿöÿî.Ô\bëý$Ú\u000búüðÈ\u0000ê\u0010/È\u0000ê\u0010/üö\u0004î\føøãé\u0003ü\u0002ú\n\u000bâ\u000eîý\bðÿî+ÿ\föé\u0013ø÷\nê\bð\u000e\u0016à\u0004í\u000eìö&ìê\t Ö\u0004õ\u0005ô÷þôúù\u000bñÿ;Ëîýú\n÷ð\u0011ð@Ãø÷\fð\u0001\nò:Ç>»Éñÿ;Ëîýú\n÷ð\u0011ð@Ãø÷\fð\u0001\nò:Ë1\u0006è\u00120Â÷>·\u0004ú\tøôÿî!Û\u0000ü\bðûøÿî0Üì\u0001\u0000ôþ\f\u0012ìê\tð\u0007ï\u0000\u0003\u00023Êîý?êÛì\bð\nòø\"éó\n\u0001ú\u0006è\u00120Â÷>åÚú\u0004\u0013×þ\u0001øþ\u001eÜÿ\n\u0001ñÿð\u0014â\u0006ò\f\u0006è\u00120Â÷>â÷\u0007Ê\u0012ûòù\b÷þð\u0007ï\u0000\u0003\u00023·\fê\u0001C×ìê\u0001\u001cÞ\búö\fê\t\u0019àóüÿî(Ø\u0002ò\b\u0005ò(Îý\u0001\u0000\u0003ÿê\b÷þ\u0006è\u00120Â÷>åÚú\u0004\u0012ú\u0010õë\u0000ý\nô÷\u001dèù\u0005\u0015áúý\u0000ó\u0006è\u00120Â÷>åÚú\u0004\u001eÜï\rî\u0006öù\u0002ú\u0002*Æ\u0002\f!Ìý\u000eåú\u000bú\u001eÔ\bëýñÿ<Êîýú\n÷ð\u0011ðAÂø÷\fð\u0001\nò;È<ýñÿ<Êîýú\n÷ð\u0011ð\u0002\u000eî\nê\bð\u000e\u0016à\u0004í\u000eìö2Øô\nÿì\u0002ú\u0006\u0001ï\u0006è\u00120Â÷>âØûøþ\u001eÜÿ\n\u0001ñ".getBytes("ISO-8859-1"), 0, bArr, 0, 975);
            onValidateInApp = bArr;
            i = 18;
        } else {
            byte[] bArr2 = new byte[975];
            System.arraycopy("OSÙÚ\u0006è\u00120Â÷>éÊ\fýþð\nþ\u0018Øûøþ\u001eÜÿ\n\u0001ñ\u0006è\u00120¿\bð\u00046Ø×\u0003ü\fõë\u0000ý\nô÷0Îý\u0001\u0000\u0003ÿê\b÷þ\u0006è\u00120½\u0002÷>éÆ\u0002\f Ê\fýþðð\u0007ï\u0000\u0003\u00023¼ùBéÊ\tú\u0005=Ë\u000eðü\u0007÷þ\u0006è\u00120Â÷>éÆ\u0002\f!Ìý\u000eå-Øûøþ\u001eÜÿ\n\u0001ñ\u0000òó\nû:¸÷\u0003ü\fõ<âØ\u001eåõûúö2Üê2Ô\bëý$Ú\u000búüð\n\u0001ú\u001bÎ\u0006ýðñÿ;Ëîýú\n÷ð\u0011ð@Ãø÷\fð\u0001\nò:É<ýÿî+Úú\u0004ï,Øôø\u0007üê&æ\u0002\u0006ò\fÿî.ßûø\u0000\u001eØô\n\u0001ú\u0000òó\nû:¸÷\u0003ü\fõ<çÜê/Úú\u0004ñ\bü\u0003ùÿûø\u0000\u0000òó\nû:¸÷\u0003ü\fõ<éÞë\u000b\u001eÜê2Ô\bëý$Ú\u000búüðÿî.Ñ\bü\u001fßûø\u0000\u001eØô÷\b\bøúØ*Îý(Ì\u000eô÷\u001dØ\u0006\b\u0012ö\u0014õ·üL·\u0002òý\u0007þûõõP±\u0004üïH\u0012÷\u0013õ\u0012ù\u0011õ\u0012õ\u0015õ\u0006è\u00120¿\bð\u00046èÔ\bëý$Ú\u000búüðð\u0007ï\u0000\u0003\u00023Êîý?êÎý&Øú\nþòöÿî,Ê\u0001\fð\u0001\nò\u0016Ü\u0002ú\u000e÷ÿ\u001eØô\nÿì\u0002úöÉñÿ;Ëîýú\n÷ð\u0011ð@Ãø÷\fð\u0001\nò:Ê2\u0006è\u00120Â÷>çàê\u0010\u0015Øûøþ\u001eÜÿ\n\u0001ñú\u000bú\u001dÜê\u0006è\u00120Â÷>éÆ\u0002\f!Ìý\u000eå'×þ\u0001øþ\u001eÜÿ\n\u0001ñð\u0007ï\u0000\u0003\u00023¼ùBæÔõ\nô\u0000þþ\u0005ô÷\u0012òô\rï\u0005ÿöÿî.Ô\bëý$Ú\u000búüðÈ\u0000ê\u0010/È\u0000ê\u0010/üö\u0004î\føøãé\u0003ü\u0002ú\n\u000bâ\u000eîý\bðÿî+ÿ\föé\u0013ø÷\nê\bð\u000e\u0016à\u0004í\u000eìö&ìê\t Ö\u0004õ\u0005ô÷þôúù\u000bñÿ;Ëîýú\n÷ð\u0011ð@Ãø÷\fð\u0001\nò:Ç>»Éñÿ;Ëîýú\n÷ð\u0011ð@Ãø÷\fð\u0001\nò:Ë1\u0006è\u00120Â÷>·\u0004ú\tøôÿî!Û\u0000ü\bðûøÿî0Üì\u0001\u0000ôþ\f\u0012ìê\tð\u0007ï\u0000\u0003\u00023Êîý?êÛì\bð\nòø\"éó\n\u0001ú\u0006è\u00120Â÷>åÚú\u0004\u0013×þ\u0001øþ\u001eÜÿ\n\u0001ñÿð\u0014â\u0006ò\f\u0006è\u00120Â÷>â÷\u0007Ê\u0012ûòù\b÷þð\u0007ï\u0000\u0003\u00023·\fê\u0001C×ìê\u0001\u001cÞ\búö\fê\t\u0019àóüÿî(Ø\u0002ò\b\u0005ò(Îý\u0001\u0000\u0003ÿê\b÷þ\u0006è\u00120Â÷>åÚú\u0004\u0012ú\u0010õë\u0000ý\nô÷\u001dèù\u0005\u0015áúý\u0000ó\u0006è\u00120Â÷>åÚú\u0004\u001eÜï\rî\u0006öù\u0002ú\u0002*Æ\u0002\f!Ìý\u000eåú\u000bú\u001eÔ\bëýñÿ<Êîýú\n÷ð\u0011ðAÂø÷\fð\u0001\nò;È<ýñÿ<Êîýú\n÷ð\u0011ð\u0002\u000eî\nê\bð\u000e\u0016à\u0004í\u000eìö2Øô\nÿì\u0002ú\u0006\u0001ï\u0006è\u00120Â÷>âØûøþ\u001eÜÿ\n\u0001ñ".getBytes("ISO-8859-1"), 0, bArr2, 0, 975);
            onValidateInApp = bArr2;
            i = 118;
        }
        AppsFlyerInAppPurchaseValidatorListener = i;
    }

    public static int valueOf(Object obj) throws Throwable {
        Object obj2;
        int i = AppsFlyerConversionListener;
        int i2 = (i ^ 115) + ((i & 115) << 1);
        onValidateInAppFailure = i2 % 128;
        if (i2 % 2 != 0) {
            obj2 = onAppOpenAttribution;
        } else {
            obj2 = onAppOpenAttribution;
            int i3 = 59 / 0;
        }
        int i4 = (i ^ 111) + ((i & 111) << 1);
        onValidateInAppFailure = i4 % 128;
        int i5 = i4 % 2;
        try {
            Object[] objArr = {obj};
            byte[] bArr = onValidateInApp;
            Class<?> cls = Class.forName($$c(bArr[17], (short) 889, bArr[135]), true, (ClassLoader) onConversionDataFail);
            byte b = bArr[329];
            return ((Integer) cls.getMethod($$c(bArr[24], (short) 521, (byte) (((b | 1) << 1) - (b ^ 1))), Object.class).invoke(obj2, objArr)).intValue();
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    private e() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:389:0x0dc9, code lost:
    
        r3 = com.appsflyer.internal.e.onValidateInApp;
        r4 = r3[13];
        r6 = com.appsflyer.internal.e.AppsFlyerInAppPurchaseValidatorListener;
        r4 = java.lang.Class.forName($$c(r4, (short) ((r6 ^ 705) | (r6 & 705)), r3[906(0x38a, float:1.27E-42)])).getMethod($$c(r3[297(0x129, float:4.16E-43)], (short) 573, r3[10]), null).invoke(r2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x0dfd, code lost:
    
        r8 = java.lang.Class.forName($$c(r3[97], (short) (r6 | 832), r3[906(0x38a, float:1.27E-42)]));
        r9 = r3[74];
        r8.getMethod($$c(r9, (short) ((r9 ^ 268) | (r9 & 268)), r12), null).invoke(r4, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x0e27, code lost:
    
        r4 = java.lang.Class.forName($$c(r3[13], (short) (r6 | 705), r3[906(0x38a, float:1.27E-42)]));
        r8 = r3[297(0x129, float:4.16E-43)];
        r4.getMethod($$c(r8, (short) ((r8 ^ 576) | (r8 & 576)), r3[135(0x87, float:1.89E-43)]), null).invoke(r2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0e56, code lost:
    
        r2 = java.lang.Class.forName($$c((byte) (-r3[29]), (short) 226, r3[175(0xaf, float:2.45E-43)])).getDeclaredMethod($$c(r3[319(0x13f, float:4.47E-43)], (short) ((r6 ^ 448) | (r6 & 448)), r3[787(0x313, float:1.103E-42)]), java.lang.String.class, java.lang.String.class, java.lang.Integer.TYPE);
        r8 = new java.lang.Object[3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x0e99, code lost:
    
        r10 = (short) 684;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0eca, code lost:
    
        r8[0] = java.lang.Class.forName($$c(r3[19], (short) ((r6 ^ 801) | (r6 & 801)), r3[906(0x38a, float:1.27E-42)])).getMethod($$c(r3[355(0x163, float:4.97E-43)], r10, r3[10]), null).invoke(r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0ef9, code lost:
    
        r8[1] = java.lang.Class.forName($$c(r3[19], (short) (r6 | 801), r3[906(0x38a, float:1.27E-42)])).getMethod($$c(r3[355(0x163, float:4.97E-43)], r10, r3[10]), null).invoke(r5, null);
        r8[2] = 0;
        r2 = r2.invoke(null, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x0f09, code lost:
    
        r9 = (short) 552;
        ((java.lang.Boolean) java.lang.Class.forName($$c(r3[19], (short) ((r6 ^ 801) | (r6 & 801)), r3[906(0x38a, float:1.27E-42)])).getMethod($$c(r3[24], r9, r3[175(0xaf, float:2.45E-43)]), null).invoke(r7, null)).booleanValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x0f40, code lost:
    
        ((java.lang.Boolean) java.lang.Class.forName($$c(r3[19], (short) ((r6 & 801) | (r6 ^ 801)), r3[906(0x38a, float:1.27E-42)])).getMethod($$c(r3[24], r9, r3[175(0xaf, float:2.45E-43)]), null).invoke(r5, null)).booleanValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x0f72, code lost:
    
        r4 = com.appsflyer.internal.e.AppsFlyerConversionListener;
        r5 = ((r4 | 97) << 1) - (r4 ^ 97);
        com.appsflyer.internal.e.onValidateInAppFailure = r5 % 128;
        r5 = r5 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x0f84, code lost:
    
        if (com.appsflyer.internal.e.onConversionDataFail != null) goto L411;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x0f86, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x0f88, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x0f89, code lost:
    
        if (r4 == false) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x0faa, code lost:
    
        com.appsflyer.internal.e.onConversionDataFail = java.lang.Class.class.getMethod($$c(r3[408(0x198, float:5.72E-43)], (short) 529, r3[10]), null).invoke(com.appsflyer.internal.e.class, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x0fac, code lost:
    
        r9 = r48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x0fb1, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x0fb2, code lost:
    
        r3 = r0.getCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0fb7, code lost:
    
        if (r3 != null) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x0fb9, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0fba, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0fbb, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0fbc, code lost:
    
        r3 = r0.getCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x0fc1, code lost:
    
        if (r3 != null) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x0fc3, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x0fc4, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x0fc5, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x0fc6, code lost:
    
        r3 = r0.getCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:430:0x0fcb, code lost:
    
        if (r3 != null) goto L431;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x0fcd, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x0fce, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x0fcf, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:435:0x0fd1, code lost:
    
        r3 = r0.getCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x0fd5, code lost:
    
        if (r3 != null) goto L437;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0fd7, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0fd8, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:439:0x0fd9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0fda, code lost:
    
        r3 = r0.getCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x0fdf, code lost:
    
        if (r3 != null) goto L442;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x0fe1, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:443:0x0fe2, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x0fe3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x0fe4, code lost:
    
        r3 = r0.getCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0fe9, code lost:
    
        if (r3 != null) goto L447;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x0feb, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0fec, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x0fed, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x0fee, code lost:
    
        r3 = r0.getCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x0ff3, code lost:
    
        if (r3 != null) goto L452;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0ff5, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x0ff6, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x0ff7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:455:0x0ff8, code lost:
    
        r3 = r0.getCause();
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x0ffd, code lost:
    
        if (r3 != null) goto L457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x0fff, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x1000, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x1115, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x111a, code lost:
    
        r2 = r0;
        r40 = r40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1047:0x1a20 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1051:0x19da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0c5f  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0c62  */
    /* JADX WARN: Removed duplicated region for block: B:574:0x14a6  */
    /* JADX WARN: Removed duplicated region for block: B:582:0x14da  */
    /* JADX WARN: Removed duplicated region for block: B:708:0x185b A[Catch: all -> 0x19ae, TryCatch #52 {all -> 0x19ae, blocks: (B:762:0x190e, B:764:0x1929, B:765:0x192a, B:766:0x192b, B:772:0x19a6, B:774:0x19ac, B:775:0x19ad, B:637:0x1703, B:642:0x1718, B:644:0x171f, B:645:0x1720, B:647:0x1722, B:649:0x172b, B:650:0x172c, B:652:0x172e, B:654:0x1737, B:655:0x1738, B:658:0x173e, B:666:0x176b, B:671:0x1793, B:677:0x1802, B:679:0x1808, B:680:0x1809, B:682:0x180b, B:684:0x1817, B:685:0x1818, B:687:0x181a, B:689:0x1826, B:690:0x1827, B:692:0x1829, B:694:0x1835, B:695:0x1836, B:697:0x1838, B:699:0x1844, B:700:0x1845, B:706:0x1855, B:708:0x185b, B:709:0x185c, B:711:0x185e, B:713:0x186b, B:714:0x186c, B:718:0x1871, B:720:0x1880, B:721:0x1881, B:723:0x1883, B:725:0x1892, B:726:0x1893, B:731:0x18a4, B:733:0x18ac, B:734:0x18ad, B:740:0x18bb, B:742:0x18cc, B:743:0x18cd, B:745:0x18cf, B:747:0x18e0, B:748:0x18e1, B:750:0x18e3, B:752:0x18f4, B:753:0x18f5, B:755:0x18f7, B:757:0x1908, B:758:0x1909, B:632:0x16a1, B:546:0x12b3, B:630:0x165a, B:525:0x11e4, B:504:0x1131, B:339:0x0bf5, B:336:0x0b80, B:768:0x1979, B:769:0x19a3, B:303:0x0984, B:298:0x0935, B:296:0x08fe, B:294:0x08c0, B:673:0x17ca, B:674:0x17ff, B:568:0x13cd, B:142:0x0459, B:565:0x135b), top: B:952:0x192b, inners: #0, #1, #2, #4, #21, #29, #33, #47, #58, #66, #73, #78, #81, #86, #89, #97 }] */
    /* JADX WARN: Removed duplicated region for block: B:709:0x185c A[Catch: all -> 0x19ae, TryCatch #52 {all -> 0x19ae, blocks: (B:762:0x190e, B:764:0x1929, B:765:0x192a, B:766:0x192b, B:772:0x19a6, B:774:0x19ac, B:775:0x19ad, B:637:0x1703, B:642:0x1718, B:644:0x171f, B:645:0x1720, B:647:0x1722, B:649:0x172b, B:650:0x172c, B:652:0x172e, B:654:0x1737, B:655:0x1738, B:658:0x173e, B:666:0x176b, B:671:0x1793, B:677:0x1802, B:679:0x1808, B:680:0x1809, B:682:0x180b, B:684:0x1817, B:685:0x1818, B:687:0x181a, B:689:0x1826, B:690:0x1827, B:692:0x1829, B:694:0x1835, B:695:0x1836, B:697:0x1838, B:699:0x1844, B:700:0x1845, B:706:0x1855, B:708:0x185b, B:709:0x185c, B:711:0x185e, B:713:0x186b, B:714:0x186c, B:718:0x1871, B:720:0x1880, B:721:0x1881, B:723:0x1883, B:725:0x1892, B:726:0x1893, B:731:0x18a4, B:733:0x18ac, B:734:0x18ad, B:740:0x18bb, B:742:0x18cc, B:743:0x18cd, B:745:0x18cf, B:747:0x18e0, B:748:0x18e1, B:750:0x18e3, B:752:0x18f4, B:753:0x18f5, B:755:0x18f7, B:757:0x1908, B:758:0x1909, B:632:0x16a1, B:546:0x12b3, B:630:0x165a, B:525:0x11e4, B:504:0x1131, B:339:0x0bf5, B:336:0x0b80, B:768:0x1979, B:769:0x19a3, B:303:0x0984, B:298:0x0935, B:296:0x08fe, B:294:0x08c0, B:673:0x17ca, B:674:0x17ff, B:568:0x13cd, B:142:0x0459, B:565:0x135b), top: B:952:0x192b, inners: #0, #1, #2, #4, #21, #29, #33, #47, #58, #66, #73, #78, #81, #86, #89, #97 }] */
    /* JADX WARN: Removed duplicated region for block: B:788:0x19d1  */
    /* JADX WARN: Removed duplicated region for block: B:789:0x19d4  */
    /* JADX WARN: Removed duplicated region for block: B:793:0x19df  */
    /* JADX WARN: Removed duplicated region for block: B:812:0x1a11  */
    /* JADX WARN: Removed duplicated region for block: B:813:0x1a13  */
    /* JADX WARN: Removed duplicated region for block: B:815:0x1a16 A[Catch: Exception -> 0x1ae5, TryCatch #7 {Exception -> 0x1ae5, blocks: (B:3:0x0010, B:5:0x0028, B:46:0x0150, B:51:0x01a0, B:53:0x01a6, B:54:0x01a7, B:78:0x0263, B:79:0x0277, B:86:0x02dd, B:88:0x02e3, B:89:0x02e4, B:80:0x027e, B:92:0x031c, B:94:0x03a2, B:98:0x03de, B:102:0x03e7, B:106:0x03f0, B:114:0x0401, B:122:0x041d, B:127:0x0427, B:815:0x1a16, B:829:0x1aab, B:816:0x1a20, B:822:0x1a6e, B:824:0x1a74, B:825:0x1a75, B:795:0x19ec, B:797:0x19f1, B:826:0x1a76, B:804:0x1a04, B:832:0x1ac8, B:834:0x1acf, B:835:0x1ad0, B:62:0x01b6, B:837:0x1ad2, B:839:0x1ad9, B:840:0x1ada, B:842:0x1adc, B:844:0x1ae3, B:845:0x1ae4, B:818:0x1a39, B:819:0x1a6b, B:47:0x0175, B:90:0x02e5, B:66:0x021a, B:64:0x01d4, B:82:0x0293), top: B:869:0x0010, inners: #26, #45, #65, #68, #71, #72 }] */
    /* JADX WARN: Type inference failed for: r10v210 */
    /* JADX WARN: Type inference failed for: r40v1 */
    /* JADX WARN: Type inference failed for: r40v10 */
    /* JADX WARN: Type inference failed for: r40v14 */
    /* JADX WARN: Type inference failed for: r40v15 */
    /* JADX WARN: Type inference failed for: r40v16 */
    /* JADX WARN: Type inference failed for: r40v2 */
    /* JADX WARN: Type inference failed for: r40v20 */
    /* JADX WARN: Type inference failed for: r40v21 */
    /* JADX WARN: Type inference failed for: r40v22 */
    /* JADX WARN: Type inference failed for: r40v23 */
    /* JADX WARN: Type inference failed for: r40v24 */
    /* JADX WARN: Type inference failed for: r40v25 */
    /* JADX WARN: Type inference failed for: r40v26 */
    /* JADX WARN: Type inference failed for: r40v27 */
    /* JADX WARN: Type inference failed for: r40v28 */
    /* JADX WARN: Type inference failed for: r40v29 */
    /* JADX WARN: Type inference failed for: r40v3 */
    /* JADX WARN: Type inference failed for: r40v30 */
    /* JADX WARN: Type inference failed for: r40v31 */
    /* JADX WARN: Type inference failed for: r40v33 */
    /* JADX WARN: Type inference failed for: r40v34 */
    /* JADX WARN: Type inference failed for: r40v35 */
    /* JADX WARN: Type inference failed for: r40v36 */
    /* JADX WARN: Type inference failed for: r40v37 */
    /* JADX WARN: Type inference failed for: r40v38 */
    /* JADX WARN: Type inference failed for: r40v39 */
    /* JADX WARN: Type inference failed for: r40v4 */
    /* JADX WARN: Type inference failed for: r40v40 */
    /* JADX WARN: Type inference failed for: r40v41 */
    /* JADX WARN: Type inference failed for: r40v42 */
    /* JADX WARN: Type inference failed for: r40v43 */
    /* JADX WARN: Type inference failed for: r40v44 */
    /* JADX WARN: Type inference failed for: r40v45 */
    /* JADX WARN: Type inference failed for: r40v46 */
    /* JADX WARN: Type inference failed for: r40v47 */
    /* JADX WARN: Type inference failed for: r40v48 */
    /* JADX WARN: Type inference failed for: r40v49 */
    /* JADX WARN: Type inference failed for: r40v5 */
    /* JADX WARN: Type inference failed for: r40v50 */
    /* JADX WARN: Type inference failed for: r40v51 */
    /* JADX WARN: Type inference failed for: r40v52 */
    /* JADX WARN: Type inference failed for: r40v53 */
    /* JADX WARN: Type inference failed for: r40v6 */
    /* JADX WARN: Type inference failed for: r40v7 */
    /* JADX WARN: Type inference failed for: r40v8 */
    /* JADX WARN: Type inference failed for: r40v9 */
    /* JADX WARN: Type inference failed for: r8v146 */
    /* JADX WARN: Type inference failed for: r8v257 */
    /* JADX WARN: Type inference failed for: r8v35 */
    static {
        /*
            Method dump skipped, instruction units count: 6893
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.e.<clinit>():void");
    }
}
