###### Class com.dcloud.zxing2.oned.Code39Reader (com.dcloud.zxing2.oned.Code39Reader)
.class public final Lcom/dcloud/zxing2/oned/Code39Reader;
.super Lcom/dcloud/zxing2/oned/OneDReader;
.source "SourceFile"


# static fields
.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

.field static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I

.field private static final CHECK_DIGIT_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x2c

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_10

    sput-object v0, Lcom/dcloud/zxing2/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x27

    .line 9
    aget v0, v0, v1

    sput v0, Lcom/dcloud/zxing2/oned/Code39Reader;->ASTERISK_ENCODING:I

    return-void

    :array_10
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0x94
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/Code39Reader;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/dcloud/zxing2/oned/Code39Reader;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDReader;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/dcloud/zxing2/oned/Code39Reader;->usingCheckDigit:Z

    .line 5
    iput-boolean p2, p0, Lcom/dcloud/zxing2/oned/Code39Reader;->extendedMode:Z

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/dcloud/zxing2/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    new-array p1, p1, [I

    .line 7
    iput-object p1, p0, Lcom/dcloud/zxing2/oned/Code39Reader;->counters:[I

    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_84

    .line 4
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    const/16 v6, 0x25

    const/16 v7, 0x24

    const/16 v8, 0x2b

    if-eq v4, v8, :cond_26

    if-eq v4, v7, :cond_26

    if-eq v4, v6, :cond_26

    if-ne v4, v5, :cond_22

    goto :goto_26

    .line 50
    :cond_22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    .line 51
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x5a

    const/16 v11, 0x41

    if-eq v4, v7, :cond_72

    if-eq v4, v6, :cond_59

    if-eq v4, v8, :cond_4d

    if-eq v4, v5, :cond_3a

    const/4 v4, 0x0

    goto :goto_79

    :cond_3a
    if-lt v9, v11, :cond_43

    const/16 v4, 0x4f

    if-gt v9, v4, :cond_43

    add-int/lit8 v9, v9, -0x20

    goto :goto_78

    :cond_43
    if-ne v9, v10, :cond_48

    const/16 v4, 0x3a

    goto :goto_79

    .line 87
    :cond_48
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_4d
    if-lt v9, v11, :cond_54

    if-gt v9, v10, :cond_54

    add-int/lit8 v9, v9, 0x20

    goto :goto_78

    .line 88
    :cond_54
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_59
    if-lt v9, v11, :cond_62

    const/16 v4, 0x45

    if-gt v9, v4, :cond_62

    add-int/lit8 v9, v9, -0x26

    goto :goto_78

    :cond_62
    const/16 v4, 0x46

    if-lt v9, v4, :cond_6d

    const/16 v4, 0x57

    if-gt v9, v4, :cond_6d

    add-int/lit8 v9, v9, -0xb

    goto :goto_78

    .line 106
    :cond_6d
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_72
    if-lt v9, v11, :cond_7f

    if-gt v9, v10, :cond_7f

    add-int/lit8 v9, v9, -0x40

    :goto_78
    int-to-char v4, v9

    .line 120
    :goto_79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 121
    :cond_7f
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 152
    :cond_84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findAsteriskPattern(Lcom/dcloud/zxing2/common/BitArray;[I)[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 7
    array-length v3, p1

    move v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v2, v0, :cond_5b

    .line 10
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v5

    const/4 v8, 0x1

    if-eqz v7, :cond_1d

    .line 11
    aget v7, p1, v6

    add-int/2addr v7, v8

    aput v7, p1, v6

    goto :goto_58

    :cond_1d
    add-int/lit8 v7, v3, -0x1

    if-ne v6, v7, :cond_52

    .line 15
    invoke-static {p1}, Lcom/dcloud/zxing2/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v9

    sget v10, Lcom/dcloud/zxing2/oned/Code39Reader;->ASTERISK_ENCODING:I

    const/4 v11, 0x2

    if-ne v9, v10, :cond_40

    sub-int v9, v2, v4

    div-int/2addr v9, v11

    sub-int v9, v4, v9

    .line 16
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v9, v4, v1}, Lcom/dcloud/zxing2/common/BitArray;->isRange(IIZ)Z

    move-result v9

    if-eqz v9, :cond_40

    new-array p0, v11, [I

    aput v4, p0, v1

    aput v2, p0, v8

    return-object p0

    .line 19
    :cond_40
    aget v9, p1, v1

    aget v10, p1, v8

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    add-int/lit8 v9, v3, -0x2

    .line 20
    invoke-static {p1, v11, p1, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    aput v1, p1, v9

    .line 22
    aput v1, p1, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_54

    :cond_52
    add-int/lit8 v6, v6, 0x1

    .line 27
    :goto_54
    aput v8, p1, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 31
    :cond_5b
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static patternToChar(I)C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    sget-object v1, Lcom/dcloud/zxing2/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 2
    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    const-string p0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_14
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static toNarrowWidePattern([I)I
    .registers 11

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const v3, 0x7fffffff

    .line 6
    array-length v4, p0

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_14

    aget v6, p0, v5

    if-ge v6, v3, :cond_11

    if-le v6, v2, :cond_11

    move v3, v6

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_18
    if-ge v2, v0, :cond_2b

    .line 16
    aget v7, p0, v2

    if-le v7, v3, :cond_28

    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v2

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v7

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2b
    const/4 v2, 0x3

    const/4 v7, -0x1

    if-ne v4, v2, :cond_42

    :goto_2f
    if-ge v1, v0, :cond_41

    if-lez v4, :cond_41

    .line 28
    aget v2, p0, v1

    if-le v2, v3, :cond_3e

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v2, v2, 0x2

    if-lt v2, v5, :cond_3e

    return v7

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_41
    return v6

    :cond_42
    if-gt v4, v2, :cond_45

    return v7

    :cond_45
    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/ChecksumException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/Code39Reader;->counters:[I

    const/4 v0, 0x0

    .line 2
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6
    invoke-static {p2, p3}, Lcom/dcloud/zxing2/oned/Code39Reader;->findAsteriskPattern(Lcom/dcloud/zxing2/common/BitArray;[I)[I

    move-result-object v2

    const/4 v3, 0x1

    .line 8
    aget v4, v2, v3

    invoke-virtual {p2, v4}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result v4

    .line 9
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v5

    .line 14
    :goto_1a
    invoke-static {p2, v4, p3}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    .line 15
    invoke-static {p3}, Lcom/dcloud/zxing2/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v6

    if-ltz v6, :cond_d4

    .line 19
    invoke-static {v6}, Lcom/dcloud/zxing2/oned/Code39Reader;->patternToChar(I)C

    move-result v6

    .line 20
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    array-length v7, p3

    move v9, v4

    const/4 v8, 0x0

    :goto_2d
    if-ge v8, v7, :cond_35

    aget v10, p3, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 26
    :cond_35
    invoke-virtual {p2, v9}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result v7

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_d1

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 32
    array-length p2, p3

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_48
    if-ge v6, p2, :cond_50

    aget v9, p3, v6

    add-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_50
    sub-int p2, v7, v4

    sub-int/2addr p2, v8

    const/4 p3, 0x2

    if-eq v7, v5, :cond_60

    mul-int/lit8 p2, p2, 0x2

    if-lt p2, v8, :cond_5b

    goto :goto_60

    .line 39
    :cond_5b
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 42
    :cond_60
    :goto_60
    iget-boolean p2, p0, Lcom/dcloud/zxing2/oned/Code39Reader;->usingCheckDigit:Z

    if-eqz p2, :cond_92

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6b
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge v5, p2, :cond_7d

    .line 46
    iget-object v9, p0, Lcom/dcloud/zxing2/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 48
    :cond_7d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    rem-int/lit8 v6, v6, 0x2b

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_8d

    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_92

    .line 52
    :cond_8d
    invoke-static {}, Lcom/dcloud/zxing2/ChecksumException;->getChecksumInstance()Lcom/dcloud/zxing2/ChecksumException;

    move-result-object p1

    throw p1

    .line 57
    :cond_92
    :goto_92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_cc

    .line 63
    iget-boolean p2, p0, Lcom/dcloud/zxing2/oned/Code39Reader;->extendedMode:Z

    if-eqz p2, :cond_a1

    .line 64
    invoke-static {v1}, Lcom/dcloud/zxing2/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_a5

    .line 66
    :cond_a1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 69
    :goto_a5
    aget v1, v2, v3

    aget v2, v2, v0

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v4, v4

    int-to-float v5, v8

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 71
    new-instance v2, Lcom/dcloud/zxing2/Result;

    new-array p3, p3, [Lcom/dcloud/zxing2/ResultPoint;

    new-instance v5, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v5, v1, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v5, p3, v0

    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    invoke-direct {v0, v4, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v0, p3, v3

    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 v0, 0x0

    invoke-direct {v2, p2, v0, p3, p1}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    return-object v2

    .line 72
    :cond_cc
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_d1
    move v4, v7

    goto/16 :goto_1a

    .line 73
    :cond_d4
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method
