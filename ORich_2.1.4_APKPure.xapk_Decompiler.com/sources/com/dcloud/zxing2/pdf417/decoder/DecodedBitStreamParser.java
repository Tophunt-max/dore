package com.dcloud.zxing2.pdf417.decoder;

import com.dcloud.zxing2.FormatException;
import com.dcloud.zxing2.pdf417.PDF417ResultMetadata;
import com.taobao.weex.el.parse.Operators;
import com.taobao.weex.ui.component.list.template.TemplateDom;
import com.taobao.weex.utils.WXUtils;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.Arrays;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
final class DecodedBitStreamParser {
    private static final int AL = 28;
    private static final int AS = 27;
    private static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
    private static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
    private static final int BYTE_COMPACTION_MODE_LATCH = 901;
    private static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final BigInteger[] EXP900;
    private static final int LL = 27;
    private static final int MACRO_PDF417_TERMINATOR = 922;
    private static final int MAX_NUMERIC_CODEWORDS = 15;
    private static final int ML = 28;
    private static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
    private static final int NUMBER_OF_SEQUENCE_CODEWORDS = 2;
    private static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
    private static final int PAL = 29;
    private static final int PL = 25;
    private static final int PS = 29;
    private static final int TEXT_COMPACTION_MODE_LATCH = 900;
    private static final char[] PUNCT_CHARS = {';', Typography.less, Typography.greater, TemplateDom.SEPARATOR, Operators.ARRAY_START, '\\', Operators.ARRAY_END, '_', '`', '~', '!', '\r', '\t', Operators.ARRAY_SEPRATOR, Operators.CONDITION_IF_MIDDLE, '\n', '-', Operators.DOT, '$', '/', '\"', '|', '*', Operators.BRACKET_START, Operators.BRACKET_END, Operators.CONDITION_IF, Operators.BLOCK_START, Operators.BLOCK_END, Operators.SINGLE_QUOTE};
    private static final char[] MIXED_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', Typography.amp, '\r', '\t', Operators.ARRAY_SEPRATOR, Operators.CONDITION_IF_MIDDLE, '#', '-', Operators.DOT, '$', '/', '+', WXUtils.PERCENT, '*', '=', '^'};
    private static final Charset DEFAULT_ENCODING = Charset.forName("ISO-8859-1");

    /* JADX INFO: renamed from: com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode = iArr;
            try {
                iArr[Mode.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        EXP900 = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = bigIntegerValueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = EXP900;
            if (i >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(bigIntegerValueOf);
            i++;
        }
    }

    private DecodedBitStreamParser() {
    }

    private static int byteCompaction(int i, int[] iArr, Charset charset, int i2, StringBuilder sb) {
        int i3;
        int i4;
        int i5;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i6 = MACRO_PDF417_TERMINATOR;
        int i7 = BEGIN_MACRO_PDF417_OPTIONAL_FIELD;
        int i8 = 928;
        int i9 = NUMERIC_COMPACTION_MODE_LATCH;
        long j = 900;
        if (i == BYTE_COMPACTION_MODE_LATCH) {
            int[] iArr2 = new int[6];
            i3 = i2 + 1;
            int i10 = iArr[i2];
            boolean z = false;
            loop0: while (true) {
                i4 = 0;
                long j2 = 0;
                while (i3 < iArr[0] && !z) {
                    int i11 = i4 + 1;
                    iArr2[i4] = i10;
                    j2 = (j2 * j) + ((long) i10);
                    int i12 = i3 + 1;
                    i10 = iArr[i3];
                    if (i10 == TEXT_COMPACTION_MODE_LATCH || i10 == BYTE_COMPACTION_MODE_LATCH || i10 == NUMERIC_COMPACTION_MODE_LATCH || i10 == BYTE_COMPACTION_MODE_LATCH_6 || i10 == 928 || i10 == i7 || i10 == i6) {
                        i3 = i12 - 1;
                        i4 = i11;
                        i6 = MACRO_PDF417_TERMINATOR;
                        i7 = BEGIN_MACRO_PDF417_OPTIONAL_FIELD;
                        j = 900;
                        z = true;
                    } else if (i11 % 5 != 0 || i11 <= 0) {
                        i3 = i12;
                        i4 = i11;
                        i6 = MACRO_PDF417_TERMINATOR;
                        i7 = BEGIN_MACRO_PDF417_OPTIONAL_FIELD;
                        j = 900;
                    } else {
                        int i13 = 0;
                        while (i13 < 6) {
                            byteArrayOutputStream.write((byte) (j2 >> ((5 - i13) * 8)));
                            i13++;
                            i6 = MACRO_PDF417_TERMINATOR;
                            i7 = BEGIN_MACRO_PDF417_OPTIONAL_FIELD;
                        }
                        i3 = i12;
                        j = 900;
                    }
                }
                break loop0;
            }
            if (i3 != iArr[0] || i10 >= TEXT_COMPACTION_MODE_LATCH) {
                i5 = i4;
            } else {
                i5 = i4 + 1;
                iArr2[i4] = i10;
            }
            for (int i14 = 0; i14 < i5; i14++) {
                byteArrayOutputStream.write((byte) iArr2[i14]);
            }
        } else if (i == BYTE_COMPACTION_MODE_LATCH_6) {
            int i15 = i2;
            boolean z2 = false;
            int i16 = 0;
            long j3 = 0;
            while (i15 < iArr[0] && !z2) {
                int i17 = i15 + 1;
                int i18 = iArr[i15];
                if (i18 < TEXT_COMPACTION_MODE_LATCH) {
                    i16++;
                    j3 = (j3 * 900) + ((long) i18);
                    i15 = i17;
                } else {
                    if (i18 != TEXT_COMPACTION_MODE_LATCH && i18 != BYTE_COMPACTION_MODE_LATCH && i18 != i9 && i18 != BYTE_COMPACTION_MODE_LATCH_6 && i18 != i8) {
                        if (i18 != BEGIN_MACRO_PDF417_OPTIONAL_FIELD && i18 != MACRO_PDF417_TERMINATOR) {
                            i15 = i17;
                        }
                    }
                    i15 = i17 - 1;
                    z2 = true;
                }
                if (i16 % 5 == 0 && i16 > 0) {
                    for (int i19 = 0; i19 < 6; i19++) {
                        byteArrayOutputStream.write((byte) (j3 >> ((5 - i19) * 8)));
                    }
                    i16 = 0;
                    j3 = 0;
                }
                i8 = 928;
                i9 = NUMERIC_COMPACTION_MODE_LATCH;
            }
            i3 = i15;
        } else {
            i3 = i2;
        }
        sb.append(new String(byteArrayOutputStream.toByteArray(), charset));
        return i3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static com.dcloud.zxing2.common.DecoderResult decode(int[] r7, java.lang.String r8) throws com.dcloud.zxing2.FormatException {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r1 = r7.length
            r2 = 2
            int r1 = r1 * 2
            r0.<init>(r1)
            java.nio.charset.Charset r1 = com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser.DEFAULT_ENCODING
            r3 = 1
            r3 = r7[r3]
            com.dcloud.zxing2.pdf417.PDF417ResultMetadata r4 = new com.dcloud.zxing2.pdf417.PDF417ResultMetadata
            r4.<init>()
        L13:
            r5 = 0
            r5 = r7[r5]
            if (r2 >= r5) goto L75
            r5 = 913(0x391, float:1.28E-42)
            if (r3 == r5) goto L5c
            switch(r3) {
                case 900: goto L2e;
                case 901: goto L52;
                case 902: goto L29;
                default: goto L1f;
            }
        L1f:
            switch(r3) {
                case 922: goto L57;
                case 923: goto L57;
                case 924: goto L52;
                case 925: goto L4f;
                case 926: goto L4c;
                case 927: goto L38;
                case 928: goto L33;
                default: goto L22;
            }
        L22:
            int r2 = r2 + (-1)
            int r2 = textCompaction(r7, r2, r0)
            goto L65
        L29:
            int r2 = numericCompaction(r7, r2, r0)
            goto L65
        L2e:
            int r2 = textCompaction(r7, r2, r0)
            goto L65
        L33:
            int r2 = decodeMacroBlock(r7, r2, r4)
            goto L65
        L38:
            int r1 = r2 + 1
            r2 = r7[r2]
            com.dcloud.zxing2.common.CharacterSetECI r2 = com.dcloud.zxing2.common.CharacterSetECI.getCharacterSetECIByValue(r2)
            java.lang.String r2 = r2.name()
            java.nio.charset.Charset r2 = java.nio.charset.Charset.forName(r2)
            r6 = r2
            r2 = r1
            r1 = r6
            goto L65
        L4c:
            int r2 = r2 + 2
            goto L65
        L4f:
            int r2 = r2 + 1
            goto L65
        L52:
            int r2 = byteCompaction(r3, r7, r1, r2, r0)
            goto L65
        L57:
            com.dcloud.zxing2.FormatException r7 = com.dcloud.zxing2.FormatException.getFormatInstance()
            throw r7
        L5c:
            int r3 = r2 + 1
            r2 = r7[r2]
            char r2 = (char) r2
            r0.append(r2)
            r2 = r3
        L65:
            int r3 = r7.length
            if (r2 >= r3) goto L70
            int r3 = r2 + 1
            r2 = r7[r2]
            r6 = r3
            r3 = r2
            r2 = r6
            goto L13
        L70:
            com.dcloud.zxing2.FormatException r7 = com.dcloud.zxing2.FormatException.getFormatInstance()
            throw r7
        L75:
            int r7 = r0.length()
            if (r7 == 0) goto L89
            com.dcloud.zxing2.common.DecoderResult r7 = new com.dcloud.zxing2.common.DecoderResult
            java.lang.String r0 = r0.toString()
            r1 = 0
            r7.<init>(r1, r0, r1, r8)
            r7.setOther(r4)
            return r7
        L89:
            com.dcloud.zxing2.FormatException r7 = com.dcloud.zxing2.FormatException.getFormatInstance()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser.decode(int[], java.lang.String):com.dcloud.zxing2.common.DecoderResult");
    }

    private static String decodeBase900toBase10(int[] iArr, int i) throws FormatException {
        BigInteger bigIntegerAdd = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigIntegerAdd = bigIntegerAdd.add(EXP900[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String string = bigIntegerAdd.toString();
        if (string.charAt(0) == '1') {
            return string.substring(1);
        }
        throw FormatException.getFormatInstance();
    }

    private static int decodeMacroBlock(int[] iArr, int i, PDF417ResultMetadata pDF417ResultMetadata) throws FormatException {
        if (i + 2 > iArr[0]) {
            throw FormatException.getFormatInstance();
        }
        int[] iArr2 = new int[2];
        int i2 = 0;
        while (i2 < 2) {
            iArr2[i2] = iArr[i];
            i2++;
            i++;
        }
        pDF417ResultMetadata.setSegmentIndex(Integer.parseInt(decodeBase900toBase10(iArr2, 2)));
        StringBuilder sb = new StringBuilder();
        int iTextCompaction = textCompaction(iArr, i, sb);
        pDF417ResultMetadata.setFileId(sb.toString());
        if (iArr[iTextCompaction] != BEGIN_MACRO_PDF417_OPTIONAL_FIELD) {
            if (iArr[iTextCompaction] != MACRO_PDF417_TERMINATOR) {
                return iTextCompaction;
            }
            pDF417ResultMetadata.setLastSegment(true);
            return iTextCompaction + 1;
        }
        int i3 = iTextCompaction + 1;
        int[] iArr3 = new int[iArr[0] - i3];
        boolean z = false;
        int i4 = 0;
        while (i3 < iArr[0] && !z) {
            int i5 = i3 + 1;
            int i6 = iArr[i3];
            if (i6 < TEXT_COMPACTION_MODE_LATCH) {
                iArr3[i4] = i6;
                i3 = i5;
                i4++;
            } else {
                if (i6 != MACRO_PDF417_TERMINATOR) {
                    throw FormatException.getFormatInstance();
                }
                pDF417ResultMetadata.setLastSegment(true);
                i3 = i5 + 1;
                z = true;
            }
        }
        pDF417ResultMetadata.setOptionalData(Arrays.copyOf(iArr3, i4));
        return i3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void decodeTextCompaction(int[] iArr, int[] iArr2, int i, StringBuilder sb) {
        Mode mode;
        int i2;
        char c;
        Mode mode2 = Mode.ALPHA;
        Mode mode3 = mode2;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            char c2 = ' ';
            switch (AnonymousClass1.$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode[mode2.ordinal()]) {
                case 1:
                    if (i4 < 26) {
                        i2 = i4 + 65;
                        c2 = (char) i2;
                    } else if (i4 != 26) {
                        if (i4 == 27) {
                            mode = Mode.LOWER;
                        } else if (i4 == 28) {
                            mode = Mode.MIXED;
                        } else if (i4 == 29) {
                            mode3 = Mode.PUNCT_SHIFT;
                            c2 = 0;
                            Mode mode4 = mode3;
                            mode3 = mode2;
                            mode2 = mode4;
                        } else {
                            if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                sb.append((char) iArr2[i3]);
                            } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                                mode = Mode.ALPHA;
                            }
                            c2 = 0;
                        }
                        c2 = 0;
                        Mode mode5 = mode3;
                        mode3 = mode;
                        mode2 = mode5;
                        Mode mode42 = mode3;
                        mode3 = mode2;
                        mode2 = mode42;
                    }
                    break;
                case 2:
                    if (i4 < 26) {
                        i2 = i4 + 97;
                        c2 = (char) i2;
                    } else if (i4 != 26) {
                        if (i4 != 27) {
                            if (i4 == 28) {
                                mode = Mode.MIXED;
                            } else if (i4 != 29) {
                                if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                    sb.append((char) iArr2[i3]);
                                } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                                    mode = Mode.ALPHA;
                                }
                                c2 = 0;
                            } else {
                                mode3 = Mode.PUNCT_SHIFT;
                            }
                            c2 = 0;
                            Mode mode52 = mode3;
                            mode3 = mode;
                            mode2 = mode52;
                            Mode mode422 = mode3;
                            mode3 = mode2;
                            mode2 = mode422;
                        } else {
                            mode3 = Mode.ALPHA_SHIFT;
                        }
                        c2 = 0;
                        Mode mode4222 = mode3;
                        mode3 = mode2;
                        mode2 = mode4222;
                    }
                    break;
                case 3:
                    if (i4 < 25) {
                        c2 = MIXED_CHARS[i4];
                    } else {
                        if (i4 == 25) {
                            mode = Mode.PUNCT;
                        } else if (i4 != 26) {
                            if (i4 == 27) {
                                mode = Mode.LOWER;
                            } else if (i4 == 28) {
                                mode = Mode.ALPHA;
                            } else if (i4 == 29) {
                                mode3 = Mode.PUNCT_SHIFT;
                                c2 = 0;
                                Mode mode42222 = mode3;
                                mode3 = mode2;
                                mode2 = mode42222;
                            } else {
                                if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                    sb.append((char) iArr2[i3]);
                                } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                                    mode = Mode.ALPHA;
                                }
                                c2 = 0;
                            }
                        }
                        c2 = 0;
                        Mode mode522 = mode3;
                        mode3 = mode;
                        mode2 = mode522;
                        Mode mode422222 = mode3;
                        mode3 = mode2;
                        mode2 = mode422222;
                    }
                    break;
                case 4:
                    if (i4 < 29) {
                        c2 = PUNCT_CHARS[i4];
                    } else {
                        if (i4 != 29) {
                            if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                sb.append((char) iArr2[i3]);
                            } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                                mode = Mode.ALPHA;
                            }
                            c2 = 0;
                        } else {
                            mode = Mode.ALPHA;
                        }
                        c2 = 0;
                        Mode mode5222 = mode3;
                        mode3 = mode;
                        mode2 = mode5222;
                        Mode mode4222222 = mode3;
                        mode3 = mode2;
                        mode2 = mode4222222;
                    }
                    break;
                case 5:
                    if (i4 < 26) {
                        c = (char) (i4 + 65);
                        c2 = c;
                        mode2 = mode3;
                        Mode mode42222222 = mode3;
                        mode3 = mode2;
                        mode2 = mode42222222;
                    } else {
                        if (i4 != 26) {
                            if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                                mode = Mode.ALPHA;
                                c2 = 0;
                                Mode mode52222 = mode3;
                                mode3 = mode;
                                mode2 = mode52222;
                                Mode mode422222222 = mode3;
                                mode3 = mode2;
                                mode2 = mode422222222;
                            }
                            mode2 = mode3;
                            c2 = 0;
                            Mode mode4222222222 = mode3;
                            mode3 = mode2;
                            mode2 = mode4222222222;
                        }
                        mode2 = mode3;
                        Mode mode42222222222 = mode3;
                        mode3 = mode2;
                        mode2 = mode42222222222;
                    }
                    break;
                case 6:
                    if (i4 < 29) {
                        c = PUNCT_CHARS[i4];
                        c2 = c;
                        mode2 = mode3;
                        Mode mode422222222222 = mode3;
                        mode3 = mode2;
                        mode2 = mode422222222222;
                    } else {
                        if (i4 != 29) {
                            if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                sb.append((char) iArr2[i3]);
                            } else if (i4 == TEXT_COMPACTION_MODE_LATCH) {
                                mode = Mode.ALPHA;
                            }
                            mode2 = mode3;
                            c2 = 0;
                            Mode mode4222222222222 = mode3;
                            mode3 = mode2;
                            mode2 = mode4222222222222;
                        } else {
                            mode = Mode.ALPHA;
                        }
                        c2 = 0;
                        Mode mode522222 = mode3;
                        mode3 = mode;
                        mode2 = mode522222;
                        Mode mode42222222222222 = mode3;
                        mode3 = mode2;
                        mode2 = mode42222222222222;
                    }
                    break;
                default:
                    c2 = 0;
                    break;
            }
            if (c2 != 0) {
                sb.append(c2);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0035. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0038. Please report as an issue. */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private static int textCompaction(int[] r8, int r9, java.lang.StringBuilder r10) {
        /*
            r0 = 0
            r1 = r8[r0]
            int r1 = r1 - r9
            int r1 = r1 * 2
            int[] r1 = new int[r1]
            r2 = r8[r0]
            int r2 = r2 - r9
            int r2 = r2 * 2
            int[] r2 = new int[r2]
            r3 = 0
            r4 = 0
        L11:
            r5 = r8[r0]
            if (r9 >= r5) goto L51
            if (r3 != 0) goto L51
            int r5 = r9 + 1
            r9 = r8[r9]
            r6 = 900(0x384, float:1.261E-42)
            if (r9 >= r6) goto L2d
            int r6 = r9 / 30
            r1[r4] = r6
            int r6 = r4 + 1
            int r9 = r9 % 30
            r1[r6] = r9
            int r4 = r4 + 2
        L2b:
            r9 = r5
            goto L11
        L2d:
            r7 = 913(0x391, float:1.28E-42)
            if (r9 == r7) goto L46
            r7 = 928(0x3a0, float:1.3E-42)
            if (r9 == r7) goto L42
            switch(r9) {
                case 900: goto L3c;
                case 901: goto L42;
                case 902: goto L42;
                default: goto L38;
            }
        L38:
            switch(r9) {
                case 922: goto L42;
                case 923: goto L42;
                case 924: goto L42;
                default: goto L3b;
            }
        L3b:
            goto L2b
        L3c:
            int r9 = r4 + 1
            r1[r4] = r6
            r4 = r9
            goto L2b
        L42:
            int r9 = r5 + (-1)
            r3 = 1
            goto L11
        L46:
            r1[r4] = r7
            int r9 = r5 + 1
            r5 = r8[r5]
            r2[r4] = r5
            int r4 = r4 + 1
            goto L11
        L51:
            decodeTextCompaction(r1, r2, r4, r10)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser.textCompaction(int[], int, java.lang.StringBuilder):int");
    }

    private static int numericCompaction(int[] iArr, int i, StringBuilder sb) throws FormatException {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i3 == iArr[0]) {
                z = true;
            }
            if (i4 < TEXT_COMPACTION_MODE_LATCH) {
                iArr2[i2] = i4;
                i2++;
            } else if (i4 == TEXT_COMPACTION_MODE_LATCH || i4 == BYTE_COMPACTION_MODE_LATCH || i4 == BYTE_COMPACTION_MODE_LATCH_6 || i4 == 928 || i4 == BEGIN_MACRO_PDF417_OPTIONAL_FIELD || i4 == MACRO_PDF417_TERMINATOR) {
                i3--;
                z = true;
            }
            if ((i2 % 15 == 0 || i4 == NUMERIC_COMPACTION_MODE_LATCH || z) && i2 > 0) {
                sb.append(decodeBase900toBase10(iArr2, i2));
                i2 = 0;
            }
            i = i3;
        }
        return i;
    }
}
