###### Class com.dcloud.zxing2.oned.UPCEANReader (com.dcloud.zxing2.oned.UPCEANReader)
.class public abstract Lcom/dcloud/zxing2/oned/UPCEANReader;
.super Lcom/dcloud/zxing2/oned/OneDReader;
.source "SourceFile"


# static fields
.field static final END_PATTERN:[I

.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.48f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/dcloud/zxing2/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_98

    sput-object v1, Lcom/dcloud/zxing2/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 6
    fill-array-data v2, :array_a2

    sput-object v2, Lcom/dcloud/zxing2/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    const/4 v2, 0x6

    new-array v3, v2, [I

    .line 10
    fill-array-data v3, :array_b0

    sput-object v3, Lcom/dcloud/zxing2/oned/UPCEANReader;->END_PATTERN:[I

    const/16 v3, 0xa

    new-array v4, v3, [[I

    const/4 v5, 0x4

    new-array v6, v5, [I

    .line 14
    fill-array-data v6, :array_c0

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_cc

    const/4 v8, 0x1

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_d8

    const/4 v9, 0x2

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_e4

    aput-object v6, v4, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_f0

    aput-object v0, v4, v5

    new-array v0, v5, [I

    fill-array-data v0, :array_fc

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_108

    aput-object v0, v4, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_114

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_120

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_12c

    const/16 v1, 0x9

    aput-object v0, v4, v1

    sput-object v4, Lcom/dcloud/zxing2/oned/UPCEANReader;->L_PATTERNS:[[I

    const/16 v0, 0x14

    new-array v1, v0, [[I

    .line 33
    sput-object v1, Lcom/dcloud/zxing2/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 34
    invoke-static {v4, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_76
    if-ge v3, v0, :cond_96

    .line 36
    sget-object v1, Lcom/dcloud/zxing2/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v2, v3, -0xa

    aget-object v1, v1, v2

    .line 37
    array-length v2, v1

    new-array v2, v2, [I

    const/4 v4, 0x0

    .line 38
    :goto_82
    array-length v5, v1

    if-ge v4, v5, :cond_8f

    .line 39
    array-length v5, v1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    aget v5, v1, v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 41
    :cond_8f
    sget-object v1, Lcom/dcloud/zxing2/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    :cond_96
    return-void

    nop

    :array_98
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_a2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_b0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_c0
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_cc
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_d8
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_e4
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_f0
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_fc
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_108
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_114
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_120
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_12c
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDReader;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANReader;->extensionReader:Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;

    .line 4
    new-instance v0, Lcom/dcloud/zxing2/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANReader;->eanManSupport:Lcom/dcloud/zxing2/oned/EANManufacturerOrgSupport;

    return-void
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    add-int/lit8 v2, v0, -0x2

    const/4 v3, 0x0

    :goto_b
    const/16 v4, 0x9

    if-ltz v2, :cond_22

    .line 8
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_1d

    if-gt v5, v4, :cond_1d

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x2

    goto :goto_b

    .line 10
    :cond_1d
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_22
    mul-int/lit8 v3, v3, 0x3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_26
    if-ltz v0, :cond_3b

    .line 16
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_36

    if-gt v5, v4, :cond_36

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_26

    .line 18
    :cond_36
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 22
    :cond_3b
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_40

    const/4 v1, 0x1

    :cond_40
    return v1
.end method

.method static decodeDigit(Lcom/dcloud/zxing2/common/BitArray;[II[[I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p1}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    .line 4
    array-length p0, p3

    const p2, 0x3ef5c28f    # 0.48f

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p0, :cond_1d

    .line 6
    aget-object v2, p3, v1

    const v3, 0x3f333333    # 0.7f

    .line 7
    invoke-static {p1, v2, v3}, Lcom/dcloud/zxing2/oned/OneDReader;->patternMatchVariance([I[IF)F

    move-result v2

    cmpg-float v3, v2, p2

    if-gez v3, :cond_1a

    move v0, v1

    move p2, v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    if-ltz v0, :cond_20

    return v0

    .line 16
    :cond_20
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method static findGuardPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/dcloud/zxing2/oned/UPCEANReader;->findGuardPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private static findGuardPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I[I)[I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 2
    array-length v0, p3

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-eqz p2, :cond_c

    .line 5
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result p1

    goto :goto_10

    :cond_c
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result p1

    :goto_10
    const/4 v2, 0x0

    move v3, p2

    const/4 v4, 0x0

    move p2, p1

    :goto_14
    if-ge p1, v1, :cond_59

    .line 9
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_24

    .line 10
    aget v5, p4, v4

    add-int/2addr v5, v6

    aput v5, p4, v4

    goto :goto_56

    :cond_24
    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_50

    const v7, 0x3f333333    # 0.7f

    .line 13
    invoke-static {p4, p3, v7}, Lcom/dcloud/zxing2/oned/OneDReader;->patternMatchVariance([I[IF)F

    move-result v7

    const v8, 0x3ef5c28f    # 0.48f

    const/4 v9, 0x2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3e

    new-array p0, v9, [I

    aput p2, p0, v2

    aput p1, p0, v6

    return-object p0

    .line 16
    :cond_3e
    aget v7, p4, v2

    aget v8, p4, v6

    add-int/2addr v7, v8

    add-int/2addr p2, v7

    add-int/lit8 v7, v0, -0x2

    .line 17
    invoke-static {p4, v9, p4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    aput v2, p4, v7

    .line 19
    aput v2, p4, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_52

    :cond_50
    add-int/lit8 v4, v4, 0x1

    .line 24
    :goto_52
    aput v6, p4, v4

    xor-int/lit8 v3, v3, 0x1

    :goto_56
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 28
    :cond_59
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method static findStartGuardPattern(Lcom/dcloud/zxing2/common/BitArray;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-nez v3, :cond_26

    .line 3
    sget-object v2, Lcom/dcloud/zxing2/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v5, v2

    invoke-static {v0, v1, v5, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 4
    invoke-static {p0, v4, v1, v2, v0}, Lcom/dcloud/zxing2/oned/UPCEANReader;->findGuardPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I[I)[I

    move-result-object v2

    .line 5
    aget v4, v2, v1

    const/4 v5, 0x1

    .line 6
    aget v5, v2, v5

    sub-int v6, v5, v4

    sub-int v6, v4, v6

    if-ltz v6, :cond_24

    .line 12
    invoke-virtual {p0, v6, v4, v1}, Lcom/dcloud/zxing2/common/BitArray;->isRange(IIZ)Z

    move-result v3

    :cond_24
    move v4, v5

    goto :goto_9

    :cond_26
    return-object v2
.end method


# virtual methods
.method checkChecksum(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/dcloud/zxing2/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method decodeEnd(Lcom/dcloud/zxing2/common/BitArray;I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/dcloud/zxing2/oned/UPCEANReader;->findGuardPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method protected abstract decodeMiddle(Lcom/dcloud/zxing2/common/BitArray;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation
.end method

.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 5
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
    invoke-static {p2}, Lcom/dcloud/zxing2/oned/UPCEANReader;->findStartGuardPattern(Lcom/dcloud/zxing2/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/dcloud/zxing2/oned/UPCEANReader;->decodeRow(ILcom/dcloud/zxing2/common/BitArray;[ILjava/util/Map;)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;[ILjava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "[I",
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

    const/4 v0, 0x0

    if-nez p4, :cond_5

    move-object v1, v0

    goto :goto_d

    .line 2
    :cond_5
    sget-object v1, Lcom/dcloud/zxing2/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/dcloud/zxing2/DecodeHintType;

    .line 3
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dcloud/zxing2/ResultPointCallback;

    :goto_d
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    .line 6
    new-instance v5, Lcom/dcloud/zxing2/ResultPoint;

    aget v6, p3, v4

    aget v7, p3, v3

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v2

    int-to-float v7, p1

    invoke-direct {v5, v6, v7}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    invoke-interface {v1, v5}, Lcom/dcloud/zxing2/ResultPointCallback;->foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V

    .line 11
    :cond_23
    iget-object v5, p0, Lcom/dcloud/zxing2/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 13
    invoke-virtual {p0, p2, p3, v5}, Lcom/dcloud/zxing2/oned/UPCEANReader;->decodeMiddle(Lcom/dcloud/zxing2/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v6

    if-eqz v1, :cond_38

    .line 16
    new-instance v7, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float v8, v6

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    invoke-interface {v1, v7}, Lcom/dcloud/zxing2/ResultPointCallback;->foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V

    .line 21
    :cond_38
    invoke-virtual {p0, p2, v6}, Lcom/dcloud/zxing2/oned/UPCEANReader;->decodeEnd(Lcom/dcloud/zxing2/common/BitArray;I)[I

    move-result-object v6

    if-eqz v1, :cond_4e

    .line 24
    new-instance v7, Lcom/dcloud/zxing2/ResultPoint;

    aget v8, v6, v4

    aget v9, v6, v3

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v2

    int-to-float v9, p1

    invoke-direct {v7, v8, v9}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    invoke-interface {v1, v7}, Lcom/dcloud/zxing2/ResultPointCallback;->foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V

    .line 32
    :cond_4e
    aget v1, v6, v3

    .line 33
    aget v7, v6, v4

    sub-int v7, v1, v7

    add-int/2addr v7, v1

    .line 34
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v8

    if-ge v7, v8, :cond_108

    invoke-virtual {p2, v1, v7, v4}, Lcom/dcloud/zxing2/common/BitArray;->isRange(IIZ)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x8

    if-lt v5, v7, :cond_103

    .line 43
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 47
    aget v5, p3, v3

    aget p3, p3, v4

    add-int/2addr v5, p3

    int-to-float p3, v5

    div-float/2addr p3, v2

    .line 48
    aget v5, v6, v3

    aget v7, v6, v4

    add-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 49
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/UPCEANReader;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v2

    .line 50
    new-instance v7, Lcom/dcloud/zxing2/Result;

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/dcloud/zxing2/ResultPoint;

    new-instance v9, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float v10, p1

    invoke-direct {v9, p3, v10}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v9, v8, v4

    new-instance p3, Lcom/dcloud/zxing2/ResultPoint;

    invoke-direct {p3, v5, v10}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p3, v8, v3

    invoke-direct {v7, v1, v0, v8, v2}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    .line 60
    :try_start_9c
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/UPCEANReader;->extensionReader:Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;

    aget v5, v6, v3

    invoke-virtual {p3, p1, p2, v5}, Lcom/dcloud/zxing2/oned/UPCEANExtensionSupport;->decodeRow(ILcom/dcloud/zxing2/common/BitArray;I)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    .line 61
    sget-object p2, Lcom/dcloud/zxing2/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p2, p3}, Lcom/dcloud/zxing2/Result;->putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/dcloud/zxing2/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 63
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/dcloud/zxing2/Result;->addResultPoints([Lcom/dcloud/zxing2/ResultPoint;)V

    .line 64
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_c3
    .catch Lcom/dcloud/zxing2/ReaderException; {:try_start_9c .. :try_end_c3} :catch_c4

    goto :goto_c5

    :catch_c4
    const/4 p1, 0x0

    :goto_c5
    if-nez p4, :cond_c8

    goto :goto_d1

    .line 69
    :cond_c8
    sget-object p2, Lcom/dcloud/zxing2/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/dcloud/zxing2/DecodeHintType;

    .line 70
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, [I

    :goto_d1
    if-eqz v0, :cond_e8

    .line 73
    array-length p2, v0

    const/4 p3, 0x0

    :goto_d5
    if-ge p3, p2, :cond_df

    aget p4, v0, p3

    if-ne p1, p4, :cond_dc

    goto :goto_e0

    :cond_dc
    add-int/lit8 p3, p3, 0x1

    goto :goto_d5

    :cond_df
    const/4 v3, 0x0

    :goto_e0
    if-eqz v3, :cond_e3

    goto :goto_e8

    .line 80
    :cond_e3
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 84
    :cond_e8
    :goto_e8
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    if-eq v2, p1, :cond_f0

    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne v2, p1, :cond_fd

    .line 85
    :cond_f0
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/UPCEANReader;->eanManSupport:Lcom/dcloud/zxing2/oned/EANManufacturerOrgSupport;

    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_fd

    .line 87
    sget-object p2, Lcom/dcloud/zxing2/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-virtual {v7, p2, p1}, Lcom/dcloud/zxing2/Result;->putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V

    :cond_fd
    return-object v7

    .line 88
    :cond_fe
    invoke-static {}, Lcom/dcloud/zxing2/ChecksumException;->getChecksumInstance()Lcom/dcloud/zxing2/ChecksumException;

    move-result-object p1

    throw p1

    .line 89
    :cond_103
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p1

    throw p1

    .line 90
    :cond_108
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method abstract getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;
.end method
