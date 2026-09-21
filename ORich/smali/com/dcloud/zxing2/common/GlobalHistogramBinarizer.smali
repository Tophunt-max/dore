###### Class com.dcloud.zxing2.common.GlobalHistogramBinarizer (com.dcloud.zxing2.common.GlobalHistogramBinarizer)
.class public Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;
.super Lcom/dcloud/zxing2/Binarizer;
.source "SourceFile"


# static fields
.field private static final EMPTY:[B

.field private static final LUMINANCE_BITS:I = 0x5

.field private static final LUMINANCE_BUCKETS:I = 0x20

.field private static final LUMINANCE_SHIFT:I = 0x3


# instance fields
.field private final buckets:[I

.field private luminances:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lcom/dcloud/zxing2/LuminanceSource;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/Binarizer;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    .line 2
    sget-object p1, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->EMPTY:[B

    iput-object p1, p0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->luminances:[B

    const/16 p1, 0x20

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->buckets:[I

    return-void
.end method

.method private static estimateBlackPoint([I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6
    if-ge v2, v0, :cond_18

    .line 6
    aget v6, p0, v2

    if-le v6, v3, :cond_f

    .line 8
    aget v3, p0, v2

    move v5, v2

    .line 10
    :cond_f
    aget v6, p0, v2

    if-le v6, v4, :cond_15

    .line 11
    aget v4, p0, v2

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-ge v1, v0, :cond_2b

    sub-int v6, v1, v5

    .line 21
    aget v7, p0, v1

    mul-int v7, v7, v6

    mul-int v7, v7, v6

    if-le v7, v3, :cond_28

    move v2, v1

    move v3, v7

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2b
    if-le v5, v2, :cond_2e

    goto :goto_31

    :cond_2e
    move v8, v5

    move v5, v2

    move v2, v8

    :goto_31
    sub-int v1, v5, v2

    .line 37
    div-int/lit8 v0, v0, 0x10

    if-le v1, v0, :cond_56

    add-int/lit8 v0, v5, -0x1

    const/4 v1, -0x1

    move v1, v0

    const/4 v3, -0x1

    :goto_3c
    if-le v0, v2, :cond_53

    sub-int v6, v0, v2

    mul-int v6, v6, v6

    sub-int v7, v5, v0

    mul-int v6, v6, v7

    .line 46
    aget v7, p0, v0

    sub-int v7, v4, v7

    mul-int v6, v6, v7

    if-le v6, v3, :cond_50

    move v1, v0

    move v3, v6

    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    :cond_53
    shl-int/lit8 p0, v1, 0x3

    return p0

    .line 47
    :cond_56
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private initArrays(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->luminances:[B

    array-length v0, v0

    if-ge v0, p1, :cond_9

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->luminances:[B

    :cond_9
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_b
    const/16 v1, 0x20

    if-ge v0, v1, :cond_16

    .line 5
    iget-object v1, p0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->buckets:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/dcloud/zxing2/LuminanceSource;)Lcom/dcloud/zxing2/Binarizer;
    .registers 3

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/Binarizer;->getLuminanceSource()Lcom/dcloud/zxing2/LuminanceSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v2

    .line 4
    new-instance v3, Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-direct {v3, v1, v2}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    .line 8
    invoke-direct {p0, v1}, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 9
    iget-object v4, p0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_18
    const/4 v7, 0x5

    if-ge v6, v7, :cond_3c

    mul-int v8, v2, v6

    .line 11
    div-int/2addr v8, v7

    .line 12
    iget-object v9, p0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v0, v8, v9}, Lcom/dcloud/zxing2/LuminanceSource;->getRow(I[B)[B

    move-result-object v8

    mul-int/lit8 v9, v1, 0x4

    .line 13
    div-int/2addr v9, v7

    .line 14
    div-int/lit8 v7, v1, 0x5

    :goto_29
    if-ge v7, v9, :cond_39

    .line 15
    aget-byte v10, v8, v7

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x3

    .line 16
    aget v11, v4, v10

    add-int/2addr v11, v5

    aput v11, v4, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 19
    :cond_3c
    invoke-static {v4}, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v4

    .line 24
    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->getMatrix()[B

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_46
    if-ge v6, v2, :cond_5e

    mul-int v7, v6, v1

    const/4 v8, 0x0

    :goto_4b
    if-ge v8, v1, :cond_5b

    add-int v9, v7, v8

    .line 28
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    if-ge v9, v4, :cond_58

    .line 30
    invoke-virtual {v3, v8, v6}, Lcom/dcloud/zxing2/common/BitMatrix;->set(II)V

    :cond_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_5e
    return-object v3
.end method

.method public getBlackRow(ILcom/dcloud/zxing2/common/BitArray;)Lcom/dcloud/zxing2/common/BitArray;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/Binarizer;->getLuminanceSource()Lcom/dcloud/zxing2/LuminanceSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v1

    if-eqz p2, :cond_15

    .line 3
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    if-ge v2, v1, :cond_11

    goto :goto_15

    .line 6
    :cond_11
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->clear()V

    goto :goto_1a

    .line 7
    :cond_15
    :goto_15
    new-instance p2, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {p2, v1}, Lcom/dcloud/zxing2/common/BitArray;-><init>(I)V

    .line 12
    :goto_1a
    invoke-direct {p0, v1}, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 13
    iget-object v2, p0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v0, p1, v2}, Lcom/dcloud/zxing2/LuminanceSource;->getRow(I[B)[B

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_27
    const/4 v4, 0x1

    if-ge v3, v1, :cond_38

    .line 16
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x3

    .line 17
    aget v6, v0, v5

    add-int/2addr v6, v4

    aput v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 19
    :cond_38
    invoke-static {v0}, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v0

    .line 21
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 22
    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x1

    move v9, v3

    move v3, v2

    move v2, v9

    :goto_48
    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_61

    add-int/lit8 v6, v5, 0x1

    .line 24
    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    mul-int/lit8 v8, v2, 0x4

    sub-int/2addr v8, v3

    sub-int/2addr v8, v7

    .line 26
    div-int/lit8 v8, v8, 0x2

    if-ge v8, v0, :cond_5d

    .line 28
    invoke-virtual {p2, v5}, Lcom/dcloud/zxing2/common/BitArray;->set(I)V

    :cond_5d
    move v3, v2

    move v5, v6

    move v2, v7

    goto :goto_48

    :cond_61
    return-object p2
.end method
