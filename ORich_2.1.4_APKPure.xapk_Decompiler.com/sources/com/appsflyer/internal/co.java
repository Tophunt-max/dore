package com.appsflyer.internal;

import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public final class co {
    private static byte[] getLevel = new byte[256];
    static final byte[] AFInAppEventType = new byte[256];
    static final int[] AFKeystoreWrapper = new int[256];
    static final int[] valueOf = new int[256];
    static final int[] values = new int[256];
    static final int[] AFInAppEventParameterName = new int[256];
    private static int[] AppsFlyer2dXConversionCallback = new int[10];

    static {
        byte[] bArr;
        int i;
        byte b = 1;
        byte b2 = 1;
        do {
            b = (byte) (((b & ByteCompanionObject.MIN_VALUE) != 0 ? 27 : 0) ^ ((b << 1) ^ b));
            byte b3 = (byte) (b2 ^ (b2 << 1));
            byte b4 = (byte) (b3 ^ (b3 << 2));
            byte b5 = (byte) (b4 ^ (b4 << 4));
            b2 = (byte) (b5 ^ ((b5 & ByteCompanionObject.MIN_VALUE) != 0 ? (byte) 9 : (byte) 0));
            bArr = getLevel;
            i = b & 255;
            int i2 = b2 & 255;
            bArr[i] = (byte) (((((b2 ^ 99) ^ ((i2 << 1) | (i2 >> 7))) ^ ((i2 << 2) | (i2 >> 6))) ^ ((i2 << 3) | (i2 >> 5))) ^ ((i2 >> 4) | (i2 << 4)));
        } while (i != 1);
        bArr[0] = 99;
        for (int i3 = 0; i3 < 256; i3++) {
            int i4 = getLevel[i3] & 255;
            AFInAppEventType[i4] = (byte) i3;
            int i5 = i3 << 1;
            if (i5 >= 256) {
                i5 ^= 283;
            }
            int i6 = i5 << 1;
            if (i6 >= 256) {
                i6 ^= 283;
            }
            int i7 = i6 << 1;
            if (i7 >= 256) {
                i7 ^= 283;
            }
            int i8 = i7 ^ i3;
            int i9 = ((i5 ^ (i6 ^ i7)) << 24) | (i8 << 16) | ((i8 ^ i6) << 8) | (i8 ^ i5);
            AFKeystoreWrapper[i4] = i9;
            valueOf[i4] = (i9 >>> 8) | (i9 << 24);
            values[i4] = (i9 >>> 16) | (i9 << 16);
            AFInAppEventParameterName[i4] = (i9 << 8) | (i9 >>> 24);
        }
        AppsFlyer2dXConversionCallback[0] = 16777216;
        int i10 = 1;
        for (int i11 = 1; i11 < 10; i11++) {
            i10 <<= 1;
            if (i10 >= 256) {
                i10 ^= 283;
            }
            AppsFlyer2dXConversionCallback[i11] = i10 << 24;
        }
    }

    private static int[] valueOf(byte[] bArr, int[] iArr, int i) throws IllegalArgumentException {
        if (bArr.length != 16) {
            throw new IllegalArgumentException();
        }
        int i2 = 4;
        int[] iArr2 = new int[(i + 1) * 4];
        int i3 = i * 4;
        int i4 = i3 + 1;
        iArr2[0] = iArr[i3];
        int i5 = i4 + 1;
        int i6 = iArr[i4];
        int i7 = 1;
        iArr2[1] = i6;
        int i8 = i5 + 1;
        iArr2[2] = iArr[i5];
        iArr2[3] = iArr[i8];
        int i9 = i8 - 7;
        while (i7 < i) {
            int i10 = i9 + 1;
            int i11 = iArr[i9];
            int i12 = i2 + 1;
            int[] iArr3 = AFKeystoreWrapper;
            byte[] bArr2 = getLevel;
            int i13 = iArr3[bArr2[i11 >>> 24] & 255];
            int[] iArr4 = valueOf;
            int i14 = i13 ^ iArr4[bArr2[(i11 >>> 16) & 255] & 255];
            int[] iArr5 = values;
            int i15 = i14 ^ iArr5[bArr2[(i11 >>> 8) & 255] & 255];
            int[] iArr6 = AFInAppEventParameterName;
            iArr2[i2] = iArr6[bArr2[i11 & 255] & 255] ^ i15;
            int i16 = i10 + 1;
            int i17 = iArr[i10];
            int i18 = i12 + 1;
            iArr2[i12] = iArr6[bArr2[i17 & 255] & 255] ^ ((iArr3[bArr2[i17 >>> 24] & 255] ^ iArr4[bArr2[(i17 >>> 16) & 255] & 255]) ^ iArr5[bArr2[(i17 >>> 8) & 255] & 255]);
            int i19 = i16 + 1;
            int i20 = iArr[i16];
            int i21 = i18 + 1;
            iArr2[i18] = iArr6[bArr2[i20 & 255] & 255] ^ ((iArr3[bArr2[i20 >>> 24] & 255] ^ iArr4[bArr2[(i20 >>> 16) & 255] & 255]) ^ iArr5[bArr2[(i20 >>> 8) & 255] & 255]);
            int i22 = iArr[i19];
            int i23 = i21 + 1;
            iArr2[i21] = iArr6[bArr2[i22 & 255] & 255] ^ ((iArr3[bArr2[i22 >>> 24] & 255] ^ iArr4[bArr2[(i22 >>> 16) & 255] & 255]) ^ iArr5[bArr2[(i22 >>> 8) & 255] & 255]);
            i9 = i19 - 7;
            i7++;
            i2 = i23;
        }
        int i24 = i2 + 1;
        int i25 = i9 + 1;
        iArr2[i2] = iArr[i9];
        int i26 = i24 + 1;
        int i27 = i25 + 1;
        iArr2[i24] = iArr[i25];
        iArr2[i26] = iArr[i27];
        iArr2[i26 + 1] = iArr[i27 + 1];
        return iArr2;
    }

    public static byte[][] AFInAppEventType(int i) {
        byte[][] bArr = new byte[4][];
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = i >>> (i2 << 3);
            bArr[i2] = new byte[]{(byte) (i3 & 3), (byte) ((i3 >> 2) & 3), (byte) ((i3 >> 4) & 3), (byte) ((i3 >> 6) & 3)};
        }
        return bArr;
    }

    static int[] AFInAppEventType(byte[] bArr, int i) throws IllegalArgumentException {
        if (bArr.length != 16) {
            throw new IllegalArgumentException();
        }
        int i2 = (i + 1) * 4;
        int[] iArr = new int[i2];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i4 < 4) {
            int i6 = i5 + 1;
            int i7 = i6 + 1;
            int i8 = (bArr[i5] << 24) | ((bArr[i6] & 255) << 16);
            int i9 = i7 + 1;
            iArr[i4] = i8 | ((bArr[i7] & 255) << 8) | (bArr[i9] & 255);
            i4++;
            i5 = i9 + 1;
        }
        int i10 = 0;
        int i11 = 4;
        while (i11 < i2) {
            int i12 = iArr[i11 - 1];
            if (i3 == 0) {
                byte[] bArr2 = getLevel;
                i12 = ((bArr2[i12 >>> 24] & 255) | (((bArr2[(i12 >>> 16) & 255] << 24) | ((bArr2[(i12 >>> 8) & 255] & 255) << 16)) | ((bArr2[i12 & 255] & 255) << 8))) ^ AppsFlyer2dXConversionCallback[i10];
                i10++;
                i3 = 4;
            }
            iArr[i11] = i12 ^ iArr[i11 - 4];
            i11++;
            i3--;
        }
        return valueOf(bArr, iArr, i);
    }
}
