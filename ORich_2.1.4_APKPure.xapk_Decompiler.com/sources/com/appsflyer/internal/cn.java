package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class cn extends FilterInputStream {
    private final byte[][] AFLogger$LogLevel;
    private final int[] AFVersionDeclaration;
    private final int[] AppsFlyer2dXConversionCallback;
    private final byte[] getLevel;
    private final int init;
    private int onAppOpenAttributionNative;
    private int onAttributionFailureNative;
    private int onInstallConversionDataLoadedNative;
    private final byte[] onInstallConversionFailureNative;
    private static final byte[] values = co.AFInAppEventType;
    private static final int[] AFInAppEventType = co.AFKeystoreWrapper;
    private static final int[] AFKeystoreWrapper = co.valueOf;
    private static final int[] AFInAppEventParameterName = co.values;
    private static final int[] valueOf = co.AFInAppEventParameterName;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    public cn(InputStream inputStream, int i, byte[] bArr, byte[][] bArr2) {
        super(inputStream);
        this.AppsFlyer2dXConversionCallback = new int[4];
        this.getLevel = new byte[16];
        this.onInstallConversionFailureNative = new byte[16];
        this.onAttributionFailureNative = Integer.MAX_VALUE;
        this.onAppOpenAttributionNative = 16;
        this.onInstallConversionDataLoadedNative = 16;
        this.init = i;
        this.AFVersionDeclaration = co.AFInAppEventType(bArr, i);
        this.AFLogger$LogLevel = AFKeystoreWrapper(bArr2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        values();
        int i = this.onAppOpenAttributionNative;
        if (i >= this.onInstallConversionDataLoadedNative) {
            return -1;
        }
        byte[] bArr = this.onInstallConversionFailureNative;
        this.onAppOpenAttributionNative = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            values();
            int i5 = this.onAppOpenAttributionNative;
            if (i5 >= this.onInstallConversionDataLoadedNative) {
                if (i4 == i) {
                    return -1;
                }
                return i2 - (i3 - i4);
            }
            byte[] bArr2 = this.onInstallConversionFailureNative;
            this.onAppOpenAttributionNative = i5 + 1;
            bArr[i4] = bArr2[i5];
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long j2 = 0;
        while (j2 < j && read() != -1) {
            j2++;
        }
        return j2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        values();
        return this.onInstallConversionDataLoadedNative - this.onAppOpenAttributionNative;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
    }

    private static byte[][] AFKeystoreWrapper(byte[][] bArr) {
        byte[][] bArr2 = new byte[bArr.length][];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = new byte[bArr[i].length];
            for (int i2 = 0; i2 < bArr[i].length; i2++) {
                bArr2[i][bArr[i][i2]] = (byte) i2;
            }
        }
        return bArr2;
    }

    private int values() throws IOException {
        if (this.onAttributionFailureNative == Integer.MAX_VALUE) {
            this.onAttributionFailureNative = ((FilterInputStream) this).in.read();
        }
        if (this.onAppOpenAttributionNative == 16) {
            byte[] bArr = this.getLevel;
            int i = this.onAttributionFailureNative;
            bArr[0] = (byte) i;
            if (i < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i2 = 1;
            do {
                int i3 = ((FilterInputStream) this).in.read(this.getLevel, i2, 16 - i2);
                if (i3 <= 0) {
                    break;
                }
                i2 += i3;
            } while (i2 < 16);
            if (i2 < 16) {
                throw new IllegalStateException("unexpected block size");
            }
            AFInAppEventParameterName(this.getLevel, this.onInstallConversionFailureNative);
            int i4 = ((FilterInputStream) this).in.read();
            this.onAttributionFailureNative = i4;
            this.onAppOpenAttributionNative = 0;
            this.onInstallConversionDataLoadedNative = i4 < 0 ? 16 - (this.onInstallConversionFailureNative[15] & 255) : 16;
        }
        return this.onInstallConversionDataLoadedNative;
    }

    private void AFInAppEventParameterName(byte[] bArr, byte[] bArr2) {
        int[] iArr = this.AppsFlyer2dXConversionCallback;
        char c = 1;
        int i = (bArr[0] << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        int[] iArr2 = this.AFVersionDeclaration;
        iArr[0] = i ^ iArr2[0];
        iArr[1] = ((((bArr[4] << 24) | ((bArr[5] & 255) << 16)) | ((bArr[6] & 255) << 8)) | (bArr[7] & 255)) ^ iArr2[1];
        iArr[2] = ((((bArr[8] << 24) | ((bArr[9] & 255) << 16)) | ((bArr[10] & 255) << 8)) | (bArr[11] & 255)) ^ iArr2[2];
        iArr[3] = iArr2[3] ^ (((((bArr[13] & 255) << 16) | (bArr[12] << 24)) | ((bArr[14] & 255) << 8)) | (bArr[15] & 255));
        int i2 = 1;
        int i3 = 4;
        while (i2 < this.init) {
            int[] iArr3 = AFInAppEventType;
            int[] iArr4 = this.AppsFlyer2dXConversionCallback;
            byte[][] bArr3 = this.AFLogger$LogLevel;
            int i4 = iArr3[iArr4[bArr3[0][0]] >>> 24];
            int[] iArr5 = AFKeystoreWrapper;
            int i5 = i4 ^ iArr5[(iArr4[bArr3[c][0]] >>> 16) & 255];
            int[] iArr6 = AFInAppEventParameterName;
            int i6 = iArr6[(iArr4[bArr3[2][0]] >>> 8) & 255] ^ i5;
            int[] iArr7 = valueOf;
            int i7 = iArr7[iArr4[bArr3[3][0]] & 255] ^ i6;
            int[] iArr8 = this.AFVersionDeclaration;
            int i8 = i7 ^ iArr8[i3];
            int i9 = ((iArr6[(iArr4[bArr3[2][c]] >>> 8) & 255] ^ (iArr3[iArr4[bArr3[0][c]] >>> 24] ^ iArr5[(iArr4[bArr3[c][c]] >>> 16) & 255])) ^ iArr7[iArr4[bArr3[3][c]] & 255]) ^ iArr8[i3 + 1];
            int i10 = (((iArr5[(iArr4[bArr3[c][2]] >>> 16) & 255] ^ iArr3[iArr4[bArr3[0][2]] >>> 24]) ^ iArr6[(iArr4[bArr3[2][2]] >>> 8) & 255]) ^ iArr7[iArr4[bArr3[3][2]] & 255]) ^ iArr8[i3 + 2];
            int i11 = (((iArr3[iArr4[bArr3[0][3]] >>> 24] ^ iArr5[(iArr4[bArr3[1][3]] >>> 16) & 255]) ^ iArr6[(iArr4[bArr3[2][3]] >>> 8) & 255]) ^ iArr7[iArr4[bArr3[3][3]] & 255]) ^ iArr8[i3 + 3];
            iArr4[0] = i8;
            iArr4[1] = i9;
            iArr4[2] = i10;
            iArr4[3] = i11;
            i2++;
            i3 += 4;
            c = 1;
        }
        int[] iArr9 = this.AFVersionDeclaration;
        int i12 = iArr9[i3];
        byte[] bArr4 = values;
        int[] iArr10 = this.AppsFlyer2dXConversionCallback;
        byte[][] bArr5 = this.AFLogger$LogLevel;
        bArr2[0] = (byte) (bArr4[iArr10[bArr5[0][0]] >>> 24] ^ (i12 >>> 24));
        bArr2[1] = (byte) (bArr4[(iArr10[bArr5[1][0]] >>> 16) & 255] ^ (i12 >>> 16));
        bArr2[2] = (byte) (bArr4[(iArr10[bArr5[2][0]] >>> 8) & 255] ^ (i12 >>> 8));
        bArr2[3] = (byte) (i12 ^ bArr4[iArr10[bArr5[3][0]] & 255]);
        int i13 = iArr9[i3 + 1];
        bArr2[4] = (byte) (bArr4[iArr10[bArr5[0][1]] >>> 24] ^ (i13 >>> 24));
        bArr2[5] = (byte) (bArr4[(iArr10[bArr5[1][1]] >>> 16) & 255] ^ (i13 >>> 16));
        bArr2[6] = (byte) (bArr4[(iArr10[bArr5[2][1]] >>> 8) & 255] ^ (i13 >>> 8));
        bArr2[7] = (byte) (i13 ^ bArr4[iArr10[bArr5[3][1]] & 255]);
        int i14 = iArr9[i3 + 2];
        bArr2[8] = (byte) (bArr4[iArr10[bArr5[0][2]] >>> 24] ^ (i14 >>> 24));
        bArr2[9] = (byte) (bArr4[(iArr10[bArr5[1][2]] >>> 16) & 255] ^ (i14 >>> 16));
        bArr2[10] = (byte) (bArr4[(iArr10[bArr5[2][2]] >>> 8) & 255] ^ (i14 >>> 8));
        bArr2[11] = (byte) (i14 ^ bArr4[iArr10[bArr5[3][2]] & 255]);
        int i15 = iArr9[i3 + 3];
        bArr2[12] = (byte) (bArr4[iArr10[bArr5[0][3]] >>> 24] ^ (i15 >>> 24));
        bArr2[13] = (byte) (bArr4[(iArr10[bArr5[1][3]] >>> 16) & 255] ^ (i15 >>> 16));
        bArr2[14] = (byte) (bArr4[(iArr10[bArr5[2][3]] >>> 8) & 255] ^ (i15 >>> 8));
        bArr2[15] = (byte) (i15 ^ bArr4[iArr10[bArr5[3][3]] & 255]);
    }
}
