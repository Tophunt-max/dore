package com.dcloud.zxing2.common;

import com.dcloud.zxing2.Binarizer;
import com.dcloud.zxing2.LuminanceSource;
import com.dcloud.zxing2.NotFoundException;

/* JADX INFO: loaded from: classes.dex */
public final class HybridBinarizer extends GlobalHistogramBinarizer {
    private static final int BLOCK_SIZE = 8;
    private static final int BLOCK_SIZE_MASK = 7;
    private static final int BLOCK_SIZE_POWER = 3;
    private static final int MINIMUM_DIMENSION = 40;
    private static final int MIN_DYNAMIC_RANGE = 24;
    private BitMatrix matrix;

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008f A[PHI: r4
      0x008f: PHI (r4v3 int) = (r4v2 int), (r4v7 int), (r4v7 int) binds: [B:32:0x006d, B:34:0x0071, B:35:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int[][] calculateBlackPoints(byte[] r17, int r18, int r19, int r20, int r21) {
        /*
            r0 = r18
            r1 = r19
            r2 = 2
            int[] r3 = new int[r2]
            r4 = 1
            r3[r4] = r0
            r5 = 0
            r3[r5] = r1
            java.lang.Class<int> r6 = int.class
            java.lang.Object r3 = java.lang.reflect.Array.newInstance(r6, r3)
            int[][] r3 = (int[][]) r3
            r6 = 0
        L16:
            if (r6 >= r1) goto La4
            int r7 = r6 << 3
            r8 = 8
            int r9 = r21 + (-8)
            if (r7 <= r9) goto L21
            r7 = r9
        L21:
            r9 = 0
        L22:
            if (r9 >= r0) goto L9b
            int r10 = r9 << 3
            int r11 = r20 + (-8)
            if (r10 <= r11) goto L2b
            r10 = r11
        L2b:
            int r11 = r7 * r20
            int r11 = r11 + r10
            r10 = 255(0xff, float:3.57E-43)
            r12 = 0
            r13 = 0
            r14 = 255(0xff, float:3.57E-43)
            r15 = 0
        L35:
            r5 = 24
            if (r12 >= r8) goto L69
            r2 = 0
        L3a:
            if (r2 >= r8) goto L4c
            int r16 = r11 + r2
            r4 = r17[r16]
            r4 = r4 & r10
            int r15 = r15 + r4
            if (r4 >= r14) goto L45
            r14 = r4
        L45:
            if (r4 <= r13) goto L48
            r13 = r4
        L48:
            int r2 = r2 + 1
            r4 = 1
            goto L3a
        L4c:
            int r2 = r13 - r14
            if (r2 <= r5) goto L62
        L50:
            int r12 = r12 + 1
            int r11 = r11 + r20
            if (r12 >= r8) goto L62
            r2 = 0
        L57:
            if (r2 >= r8) goto L50
            int r4 = r11 + r2
            r4 = r17[r4]
            r4 = r4 & r10
            int r15 = r15 + r4
            int r2 = r2 + 1
            goto L57
        L62:
            r2 = 1
            int r12 = r12 + r2
            int r11 = r11 + r20
            r2 = 2
            r4 = 1
            goto L35
        L69:
            r2 = 1
            int r4 = r15 >> 6
            int r13 = r13 - r14
            if (r13 > r5) goto L8f
            int r4 = r14 / 2
            if (r6 <= 0) goto L8f
            if (r9 <= 0) goto L8f
            int r5 = r6 + (-1)
            r10 = r3[r5]
            r10 = r10[r9]
            r11 = r3[r6]
            int r12 = r9 + (-1)
            r11 = r11[r12]
            r13 = 2
            int r11 = r11 * 2
            int r10 = r10 + r11
            r5 = r3[r5]
            r5 = r5[r12]
            int r10 = r10 + r5
            int r10 = r10 / 4
            if (r14 >= r10) goto L90
            goto L91
        L8f:
            r13 = 2
        L90:
            r10 = r4
        L91:
            r4 = r3[r6]
            r4[r9] = r10
            int r9 = r9 + 1
            r2 = 2
            r4 = 1
            r5 = 0
            goto L22
        L9b:
            r2 = 1
            r13 = 2
            int r6 = r6 + 1
            r2 = 2
            r4 = 1
            r5 = 0
            goto L16
        La4:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dcloud.zxing2.common.HybridBinarizer.calculateBlackPoints(byte[], int, int, int, int):int[][]");
    }

    private static void calculateThresholdForBlock(byte[] bArr, int i, int i2, int i3, int i4, int[][] iArr, BitMatrix bitMatrix) {
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i5 << 3;
            int i7 = i4 - 8;
            if (i6 > i7) {
                i6 = i7;
            }
            for (int i8 = 0; i8 < i; i8++) {
                int i9 = i8 << 3;
                int i10 = i3 - 8;
                if (i9 <= i10) {
                    i10 = i9;
                }
                int iCap = cap(i8, 2, i - 3);
                int iCap2 = cap(i5, 2, i2 - 3);
                int i11 = 0;
                for (int i12 = -2; i12 <= 2; i12++) {
                    int[] iArr2 = iArr[iCap2 + i12];
                    i11 += iArr2[iCap - 2] + iArr2[iCap - 1] + iArr2[iCap] + iArr2[iCap + 1] + iArr2[iCap + 2];
                }
                thresholdBlock(bArr, i10, i6, i11 / 25, i3, bitMatrix);
            }
        }
    }

    private static int cap(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    private static void thresholdBlock(byte[] bArr, int i, int i2, int i3, int i4, BitMatrix bitMatrix) {
        int i5 = (i2 * i4) + i;
        int i6 = 0;
        while (i6 < 8) {
            for (int i7 = 0; i7 < 8; i7++) {
                if ((bArr[i5 + i7] & 255) <= i3) {
                    bitMatrix.set(i + i7, i2 + i6);
                }
            }
            i6++;
            i5 += i4;
        }
    }

    @Override // com.dcloud.zxing2.common.GlobalHistogramBinarizer, com.dcloud.zxing2.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }

    @Override // com.dcloud.zxing2.common.GlobalHistogramBinarizer, com.dcloud.zxing2.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        BitMatrix bitMatrix = this.matrix;
        if (bitMatrix != null) {
            return bitMatrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        if (width < 40 || height < 40) {
            this.matrix = super.getBlackMatrix();
        } else {
            byte[] matrix = luminanceSource.getMatrix();
            int i = width >> 3;
            if ((width & 7) != 0) {
                i++;
            }
            int i2 = i;
            int i3 = height >> 3;
            if ((height & 7) != 0) {
                i3++;
            }
            int i4 = i3;
            int[][] iArrCalculateBlackPoints = calculateBlackPoints(matrix, i2, i4, width, height);
            BitMatrix bitMatrix2 = new BitMatrix(width, height);
            calculateThresholdForBlock(matrix, i2, i4, width, height, iArrCalculateBlackPoints, bitMatrix2);
            this.matrix = bitMatrix2;
        }
        return this.matrix;
    }
}
