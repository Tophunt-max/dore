###### Class com.dcloud.zxing2.oned.Code93Reader (com.dcloud.zxing2.oned.Code93Reader)
.class public final Lcom/dcloud/zxing2/oned/Code93Reader;
.super Lcom/dcloud/zxing2/oned/OneDReader;
.source "SourceFile"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/oned/Code93Reader;->ALPHABET:[C

    const/16 v0, 0x30

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_18

    sput-object v0, Lcom/dcloud/zxing2/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    .line 15
    aget v0, v0, v1

    sput v0, Lcom/dcloud/zxing2/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    :array_18
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDReader;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/dcloud/zxing2/oned/Code93Reader;->counters:[I

    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/ChecksumException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    .line 2
    invoke-static {p0, v1, v2}, Lcom/dcloud/zxing2/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xf

    .line 3
    invoke-static {p0, v0, v1}, Lcom/dcloud/zxing2/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/ChecksumException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_5
    if-ltz v0, :cond_1b

    .line 1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_18

    const/4 v3, 0x1

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 6
    :cond_1b
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sget-object p1, Lcom/dcloud/zxing2/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v2, v2, 0x2f

    aget-char p1, p1, v2

    if-ne p0, p1, :cond_28

    return-void

    .line 7
    :cond_28
    invoke-static {}, Lcom/dcloud/zxing2/ChecksumException;->getChecksumInstance()Lcom/dcloud/zxing2/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
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
    if-ge v3, v0, :cond_9f

    .line 4
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_98

    const/16 v5, 0x64

    if-gt v4, v5, :cond_98

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_93

    add-int/lit8 v3, v3, 0x1

    .line 9
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x4f

    const/16 v7, 0x5a

    const/16 v8, 0x41

    packed-switch v4, :pswitch_data_a4

    const/4 v4, 0x0

    goto/16 :goto_8f

    :pswitch_2f
    if-lt v5, v8, :cond_36

    if-gt v5, v7, :cond_36

    add-int/lit8 v5, v5, 0x20

    goto :goto_88

    .line 17
    :cond_36
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :pswitch_3b
    if-lt v5, v8, :cond_42

    if-gt v5, v6, :cond_42

    add-int/lit8 v5, v5, -0x20

    goto :goto_88

    :cond_42
    if-ne v5, v7, :cond_47

    const/16 v4, 0x3a

    goto :goto_8f

    .line 55
    :cond_47
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :pswitch_4c
    if-lt v5, v8, :cond_55

    const/16 v4, 0x45

    if-gt v5, v4, :cond_55

    add-int/lit8 v5, v5, -0x26

    goto :goto_88

    :cond_55
    const/16 v4, 0x46

    if-lt v5, v4, :cond_60

    const/16 v4, 0x4a

    if-gt v5, v4, :cond_60

    add-int/lit8 v5, v5, -0xb

    goto :goto_88

    :cond_60
    const/16 v4, 0x4b

    if-lt v5, v4, :cond_69

    if-gt v5, v6, :cond_69

    add-int/lit8 v5, v5, 0x10

    goto :goto_88

    :cond_69
    const/16 v4, 0x50

    if-lt v5, v4, :cond_74

    const/16 v4, 0x53

    if-gt v5, v4, :cond_74

    add-int/lit8 v5, v5, 0x2b

    goto :goto_88

    :cond_74
    const/16 v4, 0x54

    if-lt v5, v4, :cond_7d

    if-gt v5, v7, :cond_7d

    const/16 v4, 0x7f

    goto :goto_8f

    .line 56
    :cond_7d
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :pswitch_82
    if-lt v5, v8, :cond_8a

    if-gt v5, v7, :cond_8a

    add-int/lit8 v5, v5, -0x40

    :goto_88
    int-to-char v4, v5

    goto :goto_8f

    .line 57
    :cond_8a
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 91
    :goto_8f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9b

    .line 92
    :cond_93
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 148
    :cond_98
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    .line 151
    :cond_9f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_a4
    .packed-switch 0x61
        :pswitch_82
        :pswitch_4c
        :pswitch_3b
        :pswitch_2f
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/dcloud/zxing2/common/BitArray;)[I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/Code93Reader;->counters:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 5
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/Code93Reader;->counters:[I

    .line 8
    array-length v4, v3

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_14
    if-ge v2, v0, :cond_53

    .line 12
    invoke-virtual {p1, v2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v6

    const/4 v9, 0x1

    if-eqz v8, :cond_24

    .line 13
    aget v8, v3, v7

    add-int/2addr v8, v9

    aput v8, v3, v7

    goto :goto_50

    :cond_24
    add-int/lit8 v8, v4, -0x1

    if-ne v7, v8, :cond_4a

    .line 16
    invoke-static {v3}, Lcom/dcloud/zxing2/oned/Code93Reader;->toPattern([I)I

    move-result v10

    sget v11, Lcom/dcloud/zxing2/oned/Code93Reader;->ASTERISK_ENCODING:I

    const/4 v12, 0x2

    if-ne v10, v11, :cond_38

    new-array p1, v12, [I

    aput v5, p1, v1

    aput v2, p1, v9

    return-object p1

    .line 19
    :cond_38
    aget v10, v3, v1

    aget v11, v3, v9

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    add-int/lit8 v10, v4, -0x2

    .line 20
    invoke-static {v3, v12, v3, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    aput v1, v3, v10

    .line 22
    aput v1, v3, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_4c

    :cond_4a
    add-int/lit8 v7, v7, 0x1

    .line 27
    :goto_4c
    aput v9, v3, v7

    xor-int/lit8 v6, v6, 0x1

    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 31
    :cond_53
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
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
    sget-object v1, Lcom/dcloud/zxing2/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 2
    aget v1, v1, v0

    if-ne v1, p0, :cond_f

    .line 3
    sget-object p0, Lcom/dcloud/zxing2/oned/Code93Reader;->ALPHABET:[C

    aget-char p0, p0, v0

    return p0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_12
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static toPattern([I)I
    .registers 9

    .line 1
    array-length v0, p0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    if-ge v3, v1, :cond_d

    aget v5, p0, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v1, v0, :cond_38

    .line 8
    aget v5, p0, v1

    int-to-float v5, v5

    const/high16 v6, 0x41100000    # 9.0f

    mul-float v5, v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_36

    const/4 v7, 0x4

    if-le v5, v7, :cond_25

    goto :goto_36

    :cond_25
    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_32

    const/4 v7, 0x0

    :goto_2a
    if-ge v7, v5, :cond_33

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_32
    shl-int/2addr v3, v5

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_36
    :goto_36
    const/4 p0, -0x1

    return p0

    :cond_38
    return v3
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
    invoke-direct {p0, p2}, Lcom/dcloud/zxing2/oned/Code93Reader;->findAsteriskPattern(Lcom/dcloud/zxing2/common/BitArray;)[I

    move-result-object p3

    const/4 v0, 0x1

    .line 3
    aget v1, p3, v0

    invoke-virtual {p2, v1}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result v1

    .line 4
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/Code93Reader;->counters:[I

    const/4 v4, 0x0

    .line 7
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 8
    iget-object v5, p0, Lcom/dcloud/zxing2/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    :goto_1a
    invoke-static {p2, v1, v3}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    .line 15
    invoke-static {v3}, Lcom/dcloud/zxing2/oned/Code93Reader;->toPattern([I)I

    move-result v6

    if-ltz v6, :cond_a2

    .line 19
    invoke-static {v6}, Lcom/dcloud/zxing2/oned/Code93Reader;->patternToChar(I)C

    move-result v6

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    array-length v7, v3

    move v9, v1

    const/4 v8, 0x0

    :goto_2d
    if-ge v8, v7, :cond_35

    aget v10, v3, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 26
    :cond_35
    invoke-virtual {p2, v9}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result v7

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_9f

    .line 28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 31
    array-length v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_48
    if-ge v8, v6, :cond_50

    aget v10, v3, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_50
    if-eq v7, v2, :cond_9a

    .line 36
    invoke-virtual {p2, v7}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_95

    .line 45
    invoke-static {v5}, Lcom/dcloud/zxing2/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 49
    invoke-static {v5}, Lcom/dcloud/zxing2/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 51
    aget v3, p3, v0

    aget p3, p3, v4

    add-int/2addr v3, p3

    int-to-float p3, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p3, v3

    int-to-float v1, v1

    int-to-float v5, v9

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 53
    new-instance v3, Lcom/dcloud/zxing2/Result;

    new-array v2, v2, [Lcom/dcloud/zxing2/ResultPoint;

    new-instance v5, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v5, v2, v4

    new-instance p3, Lcom/dcloud/zxing2/ResultPoint;

    invoke-direct {p3, v1, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p3, v2, v0

    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 p3, 0x0

    invoke-direct {v3, p2, p3, v2, p1}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    return-object v3

    .line 54
    :cond_95
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 55
    :cond_9a
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_9f
    move v1, v7

    goto/16 :goto_1a

    .line 56
    :cond_a2
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method
