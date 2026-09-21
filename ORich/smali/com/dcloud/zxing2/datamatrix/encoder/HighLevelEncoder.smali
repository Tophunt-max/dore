###### Class com.dcloud.zxing2.datamatrix.encoder.HighLevelEncoder (com.dcloud.zxing2.datamatrix.encoder.HighLevelEncoder)
.class public final Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field private static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field private static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1e

    .line 4
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 5
    :cond_b
    :goto_b
    invoke-static {v2}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-ge p1, v0, :cond_1e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_b

    .line 9
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_b

    :cond_1e
    return v1
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dcloud/zxing2/datamatrix/encoder/Encoder;

    .line 2
    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/ASCIIEncoder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;

    invoke-direct {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/TextEncoder;

    invoke-direct {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/TextEncoder;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/X12Encoder;

    invoke-direct {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/X12Encoder;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EdifactEncoder;-><init>()V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/Base256Encoder;

    invoke-direct {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/Base256Encoder;-><init>()V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 7
    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;

    invoke-direct {v1, p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;)V

    .line 9
    invoke-virtual {v1, p2, p3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;)V

    const-string p1, "[)>\u001e05\u001d"

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u001e\u0004"

    if-eqz p1, :cond_5d

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5d

    const/16 p0, 0xec

    .line 12
    invoke-virtual {v1, p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 13
    invoke-virtual {v1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 14
    iget p0, v1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_79

    :cond_5d
    const-string p1, "[)>\u001e06\u001d"

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_79

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/16 p0, 0xed

    .line 16
    invoke-virtual {v1, p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 17
    invoke-virtual {v1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 18
    iget p0, v1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    .line 22
    :cond_79
    :goto_79
    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p0

    if-eqz p0, :cond_92

    .line 23
    aget-object p0, v0, v2

    invoke-interface {p0, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/Encoder;->encode(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;)V

    .line 24
    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result p0

    if-ltz p0, :cond_79

    .line 25
    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v2

    .line 26
    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_79

    .line 29
    :cond_92
    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result p0

    .line 30
    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 31
    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result p1

    if-ge p0, p1, :cond_ac

    if-eqz v2, :cond_ac

    if-eq v2, v5, :cond_ac

    const/16 p0, 0xfe

    .line 34
    invoke-virtual {v1, p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 38
    :cond_ac
    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/16 p3, 0x81

    if-ge p2, p1, :cond_bb

    .line 40
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_ce

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p3, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 46
    :cond_ce
    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findMinimums([F[II[B)I
    .registers 8

    const/4 v0, 0x0

    .line 1
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v1, v2, :cond_26

    .line 3
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    .line 4
    aget v2, p1, v1

    if-le p2, v2, :cond_1a

    .line 7
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move p2, v2

    :cond_1a
    if-ne p2, v2, :cond_23

    .line 10
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_26
    return p2
.end method

.method private static getMinimumCount([B)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_b

    .line 1
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v1
.end method

.method static illegalCharacter(C)V
    .registers 6

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static isExtendedASCII(C)Z
    .registers 2

    const/16 v0, 0x80

    if-lt p0, v0, :cond_a

    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isNativeC40(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private static isNativeEDIFACT(C)Z
    .registers 2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isNativeText(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private static isNativeX12(C)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x30

    if-lt p0, v0, :cond_12

    const/16 v0, 0x39

    if-le p0, v0, :cond_1d

    :cond_12
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method private static isSpecialB256(C)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static isX12TermSep(C)Z
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_f

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_f

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_b

    return p2

    :cond_b
    const/4 v2, 0x6

    if-nez p2, :cond_14

    new-array v3, v2, [F

    .line 7
    fill-array-data v3, :array_1e4

    goto :goto_1c

    :cond_14
    new-array v3, v2, [F

    .line 9
    fill-array-data v3, :array_1f4

    const/4 v4, 0x0

    .line 10
    aput v4, v3, p2

    :goto_1c
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1e
    add-int v6, v1, v5

    .line 16
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const v8, 0x7fffffff

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ne v6, v7, :cond_5c

    new-array v0, v2, [B

    new-array v1, v2, [I

    .line 20
    invoke-static {v3, v1, v8, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v2

    .line 21
    invoke-static {v0}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v3

    .line 23
    aget v1, v1, v4

    if-ne v1, v2, :cond_3f

    return v4

    :cond_3f
    if-ne v3, v13, :cond_46

    .line 26
    aget-byte v1, v0, v9

    if-lez v1, :cond_46

    return v9

    :cond_46
    if-ne v3, v13, :cond_4d

    .line 29
    aget-byte v1, v0, v11

    if-lez v1, :cond_4d

    return v11

    :cond_4d
    if-ne v3, v13, :cond_54

    .line 32
    aget-byte v1, v0, v10

    if-lez v1, :cond_54

    return v10

    :cond_54
    if-ne v3, v13, :cond_5b

    .line 35
    aget-byte v0, v0, v12

    if-lez v0, :cond_5b

    return v12

    :cond_5b
    return v13

    .line 41
    :cond_5c
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v5, 0x1

    .line 45
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v7, :cond_75

    .line 46
    aget v7, v3, v4

    float-to-double v8, v7

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v16

    double-to-float v7, v8

    aput v7, v3, v4

    goto :goto_9e

    .line 47
    :cond_75
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 48
    aget v7, v3, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-float v7, v7

    aput v7, v3, v4

    .line 49
    aget v7, v3, v4

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v7, v8

    aput v7, v3, v4

    goto :goto_9e

    .line 51
    :cond_8e
    aget v7, v3, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-float v7, v7

    aput v7, v3, v4

    .line 52
    aget v7, v3, v4

    add-float/2addr v7, v14

    aput v7, v3, v4

    .line 56
    :goto_9e
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v7

    const v8, 0x402aaaab

    const v9, 0x3faaaaab

    const v16, 0x3f2aaaab

    if-eqz v7, :cond_b4

    .line 57
    aget v7, v3, v13

    add-float v7, v7, v16

    aput v7, v3, v13

    goto :goto_c5

    .line 58
    :cond_b4
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 59
    aget v7, v3, v13

    add-float/2addr v7, v8

    aput v7, v3, v13

    goto :goto_c5

    .line 61
    :cond_c0
    aget v7, v3, v13

    add-float/2addr v7, v9

    aput v7, v3, v13

    .line 65
    :goto_c5
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 66
    aget v7, v3, v10

    add-float v7, v7, v16

    aput v7, v3, v10

    goto :goto_e3

    .line 67
    :cond_d2
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_de

    .line 68
    aget v7, v3, v10

    add-float/2addr v7, v8

    aput v7, v3, v10

    goto :goto_e3

    .line 70
    :cond_de
    aget v7, v3, v10

    add-float/2addr v7, v9

    aput v7, v3, v10

    .line 74
    :goto_e3
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v7

    if-eqz v7, :cond_f0

    .line 75
    aget v7, v3, v12

    add-float v7, v7, v16

    aput v7, v3, v12

    goto :goto_107

    .line 76
    :cond_f0
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 77
    aget v7, v3, v12

    const v8, 0x408aaaab

    add-float/2addr v7, v8

    aput v7, v3, v12

    goto :goto_107

    .line 79
    :cond_ff
    aget v7, v3, v12

    const v8, 0x40555555

    add-float/2addr v7, v8

    aput v7, v3, v12

    .line 83
    :goto_107
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v7

    if-eqz v7, :cond_115

    .line 84
    aget v7, v3, v11

    const/high16 v8, 0x3f400000    # 0.75f

    add-float/2addr v7, v8

    aput v7, v3, v11

    goto :goto_12a

    .line 85
    :cond_115
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_123

    .line 86
    aget v7, v3, v11

    const/high16 v8, 0x40880000    # 4.25f

    add-float/2addr v7, v8

    aput v7, v3, v11

    goto :goto_12a

    .line 88
    :cond_123
    aget v7, v3, v11

    const/high16 v8, 0x40500000    # 3.25f

    add-float/2addr v7, v8

    aput v7, v3, v11

    .line 92
    :goto_12a
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v6

    if-eqz v6, :cond_139

    const/4 v6, 0x5

    .line 93
    aget v7, v3, v6

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    aput v7, v3, v6

    goto :goto_13f

    :cond_139
    const/4 v6, 0x5

    .line 95
    aget v7, v3, v6

    add-float/2addr v7, v14

    aput v7, v3, v6

    :goto_13f
    if-lt v5, v11, :cond_1e

    new-array v7, v2, [I

    new-array v8, v2, [B

    const v9, 0x7fffffff

    .line 102
    invoke-static {v3, v7, v9, v8}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    .line 103
    invoke-static {v8}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v9

    .line 105
    aget v14, v7, v4

    aget v15, v7, v6

    move v6, v15

    if-ge v14, v6, :cond_16f

    aget v6, v7, v4

    aget v14, v7, v13

    if-ge v6, v14, :cond_16f

    aget v6, v7, v4

    aget v14, v7, v10

    if-ge v6, v14, :cond_16f

    aget v6, v7, v4

    aget v14, v7, v12

    if-ge v6, v14, :cond_16f

    aget v6, v7, v4

    aget v14, v7, v11

    if-ge v6, v14, :cond_16f

    return v4

    :cond_16f
    const/4 v6, 0x5

    .line 112
    aget v14, v7, v6

    aget v6, v7, v4

    if-lt v14, v6, :cond_1e1

    aget-byte v6, v8, v13

    aget-byte v14, v8, v10

    add-int/2addr v6, v14

    aget-byte v14, v8, v12

    add-int/2addr v6, v14

    aget-byte v14, v8, v11

    add-int/2addr v6, v14

    if-nez v6, :cond_184

    goto :goto_1e1

    :cond_184
    if-ne v9, v13, :cond_18b

    .line 116
    aget-byte v6, v8, v11

    if-lez v6, :cond_18b

    return v11

    :cond_18b
    if-ne v9, v13, :cond_192

    .line 119
    aget-byte v6, v8, v10

    if-lez v6, :cond_192

    return v10

    :cond_192
    if-ne v9, v13, :cond_199

    .line 122
    aget-byte v6, v8, v12

    if-lez v6, :cond_199

    return v12

    .line 125
    :cond_199
    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v4

    if-ge v6, v8, :cond_1e

    aget v6, v7, v13

    add-int/2addr v6, v13

    const/4 v8, 0x5

    aget v8, v7, v8

    if-ge v6, v8, :cond_1e

    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v11

    if-ge v6, v8, :cond_1e

    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v10

    if-ge v6, v8, :cond_1e

    .line 129
    aget v6, v7, v13

    aget v8, v7, v12

    if-ge v6, v8, :cond_1bd

    return v13

    .line 132
    :cond_1bd
    aget v6, v7, v13

    aget v7, v7, v12

    if-ne v6, v7, :cond_1e

    add-int/2addr v1, v5

    add-int/2addr v1, v13

    .line 134
    :goto_1c5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e0

    .line 135
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 136
    invoke-static {v2}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v3

    if-eqz v3, :cond_1d6

    return v12

    .line 139
    :cond_1d6
    invoke-static {v2}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v2

    if-nez v2, :cond_1dd

    goto :goto_1e0

    :cond_1dd
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c5

    :cond_1e0
    :goto_1e0
    return v13

    :cond_1e1
    :goto_1e1
    const/4 v0, 0x5

    return v0

    nop

    :array_1e4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1f4
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static randomize253State(CI)C
    .registers 2

    mul-int/lit16 p1, p1, 0x95

    .line 1
    rem-int/lit16 p1, p1, 0xfd

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    const/16 p1, 0xfe

    if-gt p0, p1, :cond_c

    goto :goto_d

    :cond_c
    sub-int/2addr p0, p1

    :goto_d
    int-to-char p0, p0

    return p0
.end method
