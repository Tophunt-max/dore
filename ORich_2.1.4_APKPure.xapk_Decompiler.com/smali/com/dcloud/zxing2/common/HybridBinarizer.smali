###### Class com.dcloud.zxing2.common.HybridBinarizer (com.dcloud.zxing2.common.HybridBinarizer)
.class public final Lcom/dcloud/zxing2/common/HybridBinarizer;
.super Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;
.source "SourceFile"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28

.field private static final MIN_DYNAMIC_RANGE:I = 0x18


# instance fields
.field private matrix:Lcom/dcloud/zxing2/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/dcloud/zxing2/LuminanceSource;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .registers 22

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v5, 0x0

    aput v1, v3, v5

    .line 1
    const-class v6, I

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v1, :cond_a4

    shl-int/lit8 v7, v6, 0x3

    const/16 v8, 0x8

    add-int/lit8 v9, p4, -0x8

    if-le v7, v9, :cond_21

    move v7, v9

    :cond_21
    const/4 v9, 0x0

    :goto_22
    if-ge v9, v0, :cond_9b

    shl-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, p3, -0x8

    if-le v10, v11, :cond_2b

    move v10, v11

    :cond_2b
    mul-int v11, v7, p3

    add-int/2addr v11, v10

    const/16 v10, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xff

    const/4 v15, 0x0

    :goto_35
    const/16 v5, 0x18

    if-ge v12, v8, :cond_69

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v8, :cond_4c

    add-int v16, v11, v2

    .line 19
    aget-byte v4, p0, v16

    and-int/2addr v4, v10

    add-int/2addr v15, v4

    if-ge v4, v14, :cond_45

    move v14, v4

    :cond_45
    if-le v4, v13, :cond_48

    move v13, v4

    :cond_48
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_3a

    :cond_4c
    sub-int v2, v13, v14

    if-le v2, v5, :cond_62

    :cond_50
    add-int/lit8 v12, v12, 0x1

    add-int v11, v11, p3

    if-ge v12, v8, :cond_62

    const/4 v2, 0x0

    :goto_57
    if-ge v2, v8, :cond_50

    add-int v4, v11, v2

    .line 34
    aget-byte v4, p0, v4

    and-int/2addr v4, v10

    add-int/2addr v15, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_62
    const/4 v2, 0x1

    add-int/2addr v12, v2

    add-int v11, v11, p3

    const/4 v2, 0x2

    const/4 v4, 0x1

    goto :goto_35

    :cond_69
    const/4 v2, 0x1

    shr-int/lit8 v4, v15, 0x6

    sub-int/2addr v13, v14

    if-gt v13, v5, :cond_8f

    .line 49
    div-int/lit8 v4, v14, 0x2

    if-lez v6, :cond_8f

    if-lez v9, :cond_8f

    add-int/lit8 v5, v6, -0x1

    .line 59
    aget-object v10, v3, v5

    aget v10, v10, v9

    aget-object v11, v3, v6

    add-int/lit8 v12, v9, -0x1

    aget v11, v11, v12

    const/4 v13, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    aget-object v5, v3, v5

    aget v5, v5, v12

    add-int/2addr v10, v5

    div-int/lit8 v10, v10, 0x4

    if-ge v14, v10, :cond_90

    goto :goto_91

    :cond_8f
    const/4 v13, 0x2

    :cond_90
    move v10, v4

    .line 66
    :goto_91
    aget-object v4, v3, v6

    aput v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_22

    :cond_9b
    const/4 v2, 0x1

    const/4 v13, 0x2

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_16

    :cond_a4
    return-object v3
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/dcloud/zxing2/common/BitMatrix;)V
    .registers 22

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_5a

    shl-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, p4, -0x8

    if-le v4, v5, :cond_f

    move v4, v5

    :cond_f
    const/4 v5, 0x0

    :goto_10
    if-ge v5, v0, :cond_57

    shl-int/lit8 v6, v5, 0x3

    add-int/lit8 v7, p3, -0x8

    if-le v6, v7, :cond_19

    goto :goto_1a

    :cond_19
    move v7, v6

    :goto_1a
    add-int/lit8 v6, v0, -0x3

    const/4 v8, 0x2

    .line 1
    invoke-static {v5, v8, v6}, Lcom/dcloud/zxing2/common/HybridBinarizer;->cap(III)I

    move-result v6

    add-int/lit8 v9, v1, -0x3

    .line 2
    invoke-static {v3, v8, v9}, Lcom/dcloud/zxing2/common/HybridBinarizer;->cap(III)I

    move-result v9

    const/4 v10, -0x2

    const/4 v11, 0x0

    :goto_29
    if-gt v10, v8, :cond_49

    add-int v12, v9, v10

    .line 5
    aget-object v12, p5, v12

    add-int/lit8 v13, v6, -0x2

    .line 6
    aget v13, v12, v13

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    add-int/2addr v13, v14

    aget v14, v12, v6

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x1

    aget v14, v12, v14

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x2

    aget v12, v12, v14

    add-int/2addr v13, v12

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    .line 8
    :cond_49
    div-int/lit8 v9, v11, 0x19

    move-object v6, p0

    move v8, v4

    move/from16 v10, p3

    move-object/from16 v11, p6

    .line 9
    invoke-static/range {v6 .. v11}, Lcom/dcloud/zxing2/common/HybridBinarizer;->thresholdBlock([BIIIILcom/dcloud/zxing2/common/BitMatrix;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5a
    return-void
.end method

.method private static cap(III)I
    .registers 3

    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method private static thresholdBlock([BIIIILcom/dcloud/zxing2/common/BitMatrix;)V
    .registers 13

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/16 v3, 0x8

    if-ge v2, v3, :cond_22

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_1e

    add-int v5, v0, v4

    .line 1
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    if-gt v5, p3, :cond_1b

    add-int v5, p1, v4

    add-int v6, p2, v2

    .line 2
    invoke-virtual {p5, v5, v6}, Lcom/dcloud/zxing2/common/BitMatrix;->set(II)V

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, p4

    goto :goto_5

    :cond_22
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/dcloud/zxing2/LuminanceSource;)Lcom/dcloud/zxing2/Binarizer;
    .registers 3

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/common/HybridBinarizer;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/HybridBinarizer;->matrix:Lcom/dcloud/zxing2/common/BitMatrix;

    if-eqz v0, :cond_5

    return-object v0

    .line 4
    :cond_5
    invoke-virtual {p0}, Lcom/dcloud/zxing2/Binarizer;->getLuminanceSource()Lcom/dcloud/zxing2/LuminanceSource;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v4

    .line 6
    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v5

    const/16 v1, 0x28

    if-lt v4, v1, :cond_3d

    if-lt v5, v1, :cond_3d

    .line 8
    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->getMatrix()[B

    move-result-object v1

    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v2, v4, 0x7

    if-eqz v2, :cond_23

    add-int/lit8 v0, v0, 0x1

    :cond_23
    move v2, v0

    shr-int/lit8 v0, v5, 0x3

    and-int/lit8 v3, v5, 0x7

    if-eqz v3, :cond_2c

    add-int/lit8 v0, v0, 0x1

    :cond_2c
    move v3, v0

    .line 17
    invoke-static {v1, v2, v3, v4, v5}, Lcom/dcloud/zxing2/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v6

    .line 19
    new-instance v0, Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-direct {v0, v4, v5}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    move-object v7, v0

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/dcloud/zxing2/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/dcloud/zxing2/common/BitMatrix;)V

    .line 21
    iput-object v0, p0, Lcom/dcloud/zxing2/common/HybridBinarizer;->matrix:Lcom/dcloud/zxing2/common/BitMatrix;

    goto :goto_43

    .line 24
    :cond_3d
    invoke-super {p0}, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/zxing2/common/HybridBinarizer;->matrix:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 26
    :goto_43
    iget-object v0, p0, Lcom/dcloud/zxing2/common/HybridBinarizer;->matrix:Lcom/dcloud/zxing2/common/BitMatrix;

    return-object v0
.end method
