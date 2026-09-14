###### Class com.dcloud.zxing2.oned.ITFReader (com.dcloud.zxing2.oned.ITFReader)
.class public final Lcom/dcloud/zxing2/oned/ITFReader;
.super Lcom/dcloud/zxing2/oned/OneDReader;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.78f

.field private static final N:I = 0x1

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_6e

    sput-object v1, Lcom/dcloud/zxing2/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 12
    fill-array-data v2, :array_7c

    sput-object v2, Lcom/dcloud/zxing2/oned/ITFReader;->START_PATTERN:[I

    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 13
    fill-array-data v3, :array_88

    sput-object v3, Lcom/dcloud/zxing2/oned/ITFReader;->END_PATTERN_REVERSED:[I

    const/16 v3, 0xa

    new-array v3, v3, [[I

    new-array v4, v0, [I

    .line 18
    fill-array-data v4, :array_92

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_a0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_ae

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_bc

    aput-object v4, v3, v2

    new-array v2, v0, [I

    fill-array-data v2, :array_ca

    aput-object v2, v3, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_d8

    aput-object v1, v3, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_e6

    const/4 v2, 0x6

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_f4

    const/4 v2, 0x7

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_102

    const/16 v2, 0x8

    aput-object v1, v3, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_110

    const/16 v1, 0x9

    aput-object v0, v3, v1

    sput-object v3, Lcom/dcloud/zxing2/oned/ITFReader;->PATTERNS:[[I

    return-void

    :array_6e
    .array-data 4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    :array_7c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_88
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    :array_92
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_a0
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_ae
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_bc
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_ca
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_d8
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_e6
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_f4
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_102
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_110
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDReader;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/dcloud/zxing2/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/ITFReader;->PATTERNS:[[I

    array-length v0, v0

    const v1, 0x3ec28f5c    # 0.38f

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_1e

    .line 3
    sget-object v4, Lcom/dcloud/zxing2/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v4, v3

    const v5, 0x3f47ae14    # 0.78f

    .line 4
    invoke-static {p0, v4, v5}, Lcom/dcloud/zxing2/oned/OneDReader;->patternMatchVariance([I[IF)F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_1b

    move v2, v3

    move v1, v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1e
    if-ltz v2, :cond_21

    return v2

    .line 13
    :cond_21
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static decodeMiddle(Lcom/dcloud/zxing2/common/BitArray;IILjava/lang/StringBuilder;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x5

    new-array v3, v2, [I

    new-array v4, v2, [I

    :cond_9
    if-ge p1, p2, :cond_3d

    .line 8
    invoke-static {p0, p1, v1}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v2, :cond_21

    mul-int/lit8 v7, v6, 0x2

    .line 12
    aget v8, v1, v7

    aput v8, v3, v6

    add-int/lit8 v7, v7, 0x1

    .line 13
    aget v7, v1, v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 16
    :cond_21
    invoke-static {v3}, Lcom/dcloud/zxing2/oned/ITFReader;->decodeDigit([I)I

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    .line 17
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v4}, Lcom/dcloud/zxing2/oned/ITFReader;->decodeDigit([I)I

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    .line 19
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_35
    if-ge v5, v0, :cond_9

    .line 21
    aget v6, v1, v5

    add-int/2addr p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_3d
    return-void
.end method

.method private static findGuardPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)[I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    new-array v1, v0, [I

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    if-ge p1, v2, :cond_50

    .line 9
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v5

    const/4 v8, 0x1

    if-eqz v7, :cond_1b

    .line 10
    aget v7, v1, v6

    add-int/2addr v7, v8

    aput v7, v1, v6

    goto :goto_4d

    :cond_1b
    add-int/lit8 v7, v0, -0x1

    if-ne v6, v7, :cond_47

    const v9, 0x3f47ae14    # 0.78f

    .line 13
    invoke-static {v1, p2, v9}, Lcom/dcloud/zxing2/oned/OneDReader;->patternMatchVariance([I[IF)F

    move-result v9

    const v10, 0x3ec28f5c    # 0.38f

    const/4 v11, 0x2

    cmpg-float v9, v9, v10

    if-gez v9, :cond_35

    new-array p0, v11, [I

    aput v4, p0, v3

    aput p1, p0, v8

    return-object p0

    .line 16
    :cond_35
    aget v9, v1, v3

    aget v10, v1, v8

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    add-int/lit8 v9, v0, -0x2

    .line 17
    invoke-static {v1, v11, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    aput v3, v1, v9

    .line 19
    aput v3, v1, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_49

    :cond_47
    add-int/lit8 v6, v6, 0x1

    .line 24
    :goto_49
    aput v8, v1, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_4d
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 28
    :cond_50
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static skipWhiteSpace(Lcom/dcloud/zxing2/common/BitArray;)I
    .registers 3
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

    move-result p0

    if-eq p0, v0, :cond_c

    return p0

    .line 4
    :cond_c
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private validateQuietZone(Lcom/dcloud/zxing2/common/BitArray;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v0, v0, 0xa

    if-ge v0, p2, :cond_7

    goto :goto_8

    :cond_7
    move v0, p2

    :goto_8
    add-int/lit8 p2, p2, -0x1

    :goto_a
    if-lez v0, :cond_1a

    if-ltz p2, :cond_1a

    .line 7
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_1a

    :cond_15
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_1a
    :goto_1a
    if-nez v0, :cond_1d

    return-void

    .line 14
    :cond_1d
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method decodeEnd(Lcom/dcloud/zxing2/common/BitArray;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->reverse()V

    .line 3
    :try_start_3
    invoke-static {p1}, Lcom/dcloud/zxing2/oned/ITFReader;->skipWhiteSpace(Lcom/dcloud/zxing2/common/BitArray;)I

    move-result v0

    .line 4
    sget-object v1, Lcom/dcloud/zxing2/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v0, v1}, Lcom/dcloud/zxing2/oned/ITFReader;->findGuardPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    aget v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/dcloud/zxing2/oned/ITFReader;->validateQuietZone(Lcom/dcloud/zxing2/common/BitArray;I)V

    .line 14
    aget v2, v0, v1

    .line 15
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v3

    const/4 v4, 0x1

    aget v5, v0, v4

    sub-int/2addr v3, v5

    aput v3, v0, v1

    .line 16
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    sub-int/2addr v1, v2

    aput v1, v0, v4
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2a

    .line 21
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->reverse()V

    return-object v0

    :catchall_2a
    move-exception v0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->reverse()V

    .line 22
    throw v0
.end method

.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 14
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
            Lcom/dcloud/zxing2/FormatException;,
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/dcloud/zxing2/oned/ITFReader;->decodeStart(Lcom/dcloud/zxing2/common/BitArray;)[I

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/dcloud/zxing2/oned/ITFReader;->decodeEnd(Lcom/dcloud/zxing2/common/BitArray;)[I

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x1

    .line 5
    aget v4, v0, v3

    const/4 v5, 0x0

    aget v6, v1, v5

    invoke-static {p2, v4, v6, v2}, Lcom/dcloud/zxing2/oned/ITFReader;->decodeMiddle(Lcom/dcloud/zxing2/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p3, :cond_28

    .line 10
    sget-object v4, Lcom/dcloud/zxing2/DecodeHintType;->ALLOWED_LENGTHS:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    goto :goto_29

    :cond_28
    move-object p3, v2

    :goto_29
    if-nez p3, :cond_2d

    .line 14
    sget-object p3, Lcom/dcloud/zxing2/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 19
    :cond_2d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 22
    array-length v6, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_34
    if-ge v7, v6, :cond_42

    aget v9, p3, v7

    if-ne v4, v9, :cond_3c

    const/4 p3, 0x1

    goto :goto_43

    :cond_3c
    if-le v9, v8, :cond_3f

    move v8, v9

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_42
    const/4 p3, 0x0

    :goto_43
    if-nez p3, :cond_48

    if-le v4, v8, :cond_48

    const/4 p3, 0x1

    :cond_48
    if-eqz p3, :cond_6a

    .line 38
    new-instance p3, Lcom/dcloud/zxing2/Result;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/dcloud/zxing2/ResultPoint;

    new-instance v6, Lcom/dcloud/zxing2/ResultPoint;

    aget v0, v0, v3

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {v6, v0, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v6, v4, v5

    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    aget v1, v1, v5

    int-to-float v1, v1

    invoke-direct {v0, v1, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v0, v4, v3

    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-direct {p3, p2, v2, v4, p1}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    return-object p3

    .line 39
    :cond_6a
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p1

    throw p1
.end method

.method decodeStart(Lcom/dcloud/zxing2/common/BitArray;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/dcloud/zxing2/oned/ITFReader;->skipWhiteSpace(Lcom/dcloud/zxing2/common/BitArray;)I

    move-result v0

    .line 2
    sget-object v1, Lcom/dcloud/zxing2/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v1}, Lcom/dcloud/zxing2/oned/ITFReader;->findGuardPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    aget v1, v0, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/dcloud/zxing2/oned/ITFReader;->narrowLineWidth:I

    .line 9
    aget v1, v0, v2

    invoke-direct {p0, p1, v1}, Lcom/dcloud/zxing2/oned/ITFReader;->validateQuietZone(Lcom/dcloud/zxing2/common/BitArray;I)V

    return-object v0
.end method
