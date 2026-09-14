###### Class com.dcloud.zxing2.pdf417.detector.Detector (com.dcloud.zxing2.pdf417.detector.Detector)
.class public final Lcom/dcloud/zxing2/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BARCODE_MIN_HEIGHT:I = 0xa

.field private static final INDEXES_START_PATTERN:[I

.field private static final INDEXES_STOP_PATTERN:[I

.field private static final MAX_AVG_VARIANCE:F = 0.42f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.8f

.field private static final MAX_PATTERN_DRIFT:I = 0x5

.field private static final MAX_PIXEL_DRIFT:I = 0x3

.field private static final ROW_STEP:I = 0x5

.field private static final SKIPPED_ROW_COUNT_MAX:I = 0x19

.field private static final START_PATTERN:[I

.field private static final STOP_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_22

    sput-object v1, Lcom/dcloud/zxing2/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_2e

    sput-object v0, Lcom/dcloud/zxing2/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_3a

    sput-object v0, Lcom/dcloud/zxing2/pdf417/detector/Detector;->START_PATTERN:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_4e

    sput-object v0, Lcom/dcloud/zxing2/pdf417/detector/Detector;->STOP_PATTERN:[I

    return-void

    :array_22
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_4e
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyToResult([Lcom/dcloud/zxing2/ResultPoint;[Lcom/dcloud/zxing2/ResultPoint;[I)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_d

    .line 2
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method public static detect(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;Z)Lcom/dcloud/zxing2/pdf417/detector/PDF417DetectorResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;Z)",
            "Lcom/dcloud/zxing2/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/BinaryBitmap;->getBlackMatrix()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p0

    .line 3
    invoke-static {p2, p0}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->detect(ZLcom/dcloud/zxing2/common/BitMatrix;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->clone()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->rotate180()V

    .line 7
    invoke-static {p2, p0}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->detect(ZLcom/dcloud/zxing2/common/BitMatrix;)Ljava/util/List;

    move-result-object p1

    .line 9
    :cond_19
    new-instance p2, Lcom/dcloud/zxing2/pdf417/detector/PDF417DetectorResult;

    invoke-direct {p2, p0, p1}, Lcom/dcloud/zxing2/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;Ljava/util/List;)V

    return-object p2
.end method

.method private static detect(ZLcom/dcloud/zxing2/common/BitMatrix;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/dcloud/zxing2/common/BitMatrix;",
            ")",
            "Ljava/util/List<",
            "[",
            "Lcom/dcloud/zxing2/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 14
    :goto_a
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_7e

    .line 15
    invoke-static {p1, v3, v4}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->findVertices(Lcom/dcloud/zxing2/common/BitMatrix;II)[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v4

    .line 17
    aget-object v6, v4, v2

    if-nez v6, :cond_53

    const/4 v6, 0x3

    aget-object v7, v4, v6

    if-nez v7, :cond_53

    if-nez v5, :cond_20

    goto :goto_7e

    .line 26
    :cond_20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/dcloud/zxing2/ResultPoint;

    .line 27
    aget-object v7, v5, v1

    if-eqz v7, :cond_40

    int-to-float v3, v3

    .line 28
    aget-object v7, v5, v1

    invoke-virtual {v7}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    .line 30
    :cond_40
    aget-object v7, v5, v6

    if-eqz v7, :cond_24

    .line 31
    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_24

    :cond_50
    add-int/lit8 v3, v3, 0x5

    goto :goto_8

    .line 38
    :cond_53
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p0, :cond_59

    goto :goto_7e

    :cond_59
    const/4 v3, 0x2

    .line 44
    aget-object v5, v4, v3

    if-eqz v5, :cond_6c

    .line 45
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 46
    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v3

    goto :goto_7a

    :cond_6c
    const/4 v3, 0x4

    .line 48
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 49
    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v3

    :goto_7a
    float-to-int v3, v3

    move v4, v5

    const/4 v5, 0x1

    goto :goto_a

    :cond_7e
    :goto_7e
    return-object v0
.end method

.method private static findGuardPattern(Lcom/dcloud/zxing2/common/BitMatrix;IIIZ[I[I)[I
    .registers 16

    .line 1
    array-length v0, p6

    const/4 v1, 0x0

    invoke-static {p6, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2
    array-length v0, p5

    const/4 v2, 0x0

    .line 8
    :goto_7
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_18

    if-lez p1, :cond_18

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x3

    if-ge v2, v4, :cond_18

    add-int/lit8 p1, p1, -0x1

    move v2, v3

    goto :goto_7

    :cond_18
    move v2, p4

    const/4 v3, 0x0

    move p4, p1

    :goto_1b
    const v4, 0x3ed70a3d    # 0.42f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge p1, p3, :cond_60

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_32

    .line 16
    aget v4, p6, v3

    add-int/2addr v4, v7

    aput v4, p6, v3

    goto :goto_5d

    :cond_32
    add-int/lit8 v8, v0, -0x1

    if-ne v3, v8, :cond_57

    .line 19
    invoke-static {p6, p5, v5}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result v5

    cmpg-float v4, v5, v4

    if-gez v4, :cond_45

    new-array p0, v6, [I

    aput p4, p0, v1

    aput p1, p0, v7

    return-object p0

    .line 22
    :cond_45
    aget v4, p6, v1

    aget v5, p6, v7

    add-int/2addr v4, v5

    add-int/2addr p4, v4

    add-int/lit8 v4, v0, -0x2

    .line 23
    invoke-static {p6, v6, p6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    aput v1, p6, v4

    .line 25
    aput v1, p6, v8

    add-int/lit8 v3, v3, -0x1

    goto :goto_59

    :cond_57
    add-int/lit8 v3, v3, 0x1

    .line 30
    :goto_59
    aput v7, p6, v3

    xor-int/lit8 v2, v2, 0x1

    :goto_5d
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_60
    sub-int/2addr v0, v7

    if-ne v3, v0, :cond_73

    .line 35
    invoke-static {p6, p5, v5}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result p0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_73

    new-array p0, v6, [I

    aput p4, p0, v1

    sub-int/2addr p1, v7

    aput p1, p0, v7

    return-object p0

    :cond_73
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findRowsWithPattern(Lcom/dcloud/zxing2/common/BitMatrix;IIII[I)[Lcom/dcloud/zxing2/ResultPoint;
    .registers 25

    move/from16 v0, p1

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/dcloud/zxing2/ResultPoint;

    move-object/from16 v10, p5

    .line 3
    array-length v3, v10

    new-array v11, v3, [I

    move/from16 v12, p3

    :goto_c
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ge v12, v0, :cond_5c

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p4

    move v5, v12

    move/from16 v6, p2

    move-object/from16 v8, p5

    move-object v9, v11

    .line 5
    invoke-static/range {v3 .. v9}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->findGuardPattern(Lcom/dcloud/zxing2/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_59

    move/from16 v18, v12

    move-object v12, v3

    move/from16 v3, v18

    :goto_26
    if-lez v3, :cond_40

    add-int/lit8 v15, v3, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p4

    move v5, v15

    move/from16 v6, p2

    move-object/from16 v8, p5

    move-object v9, v11

    .line 8
    invoke-static/range {v3 .. v9}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->findGuardPattern(Lcom/dcloud/zxing2/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_3e

    move-object v12, v3

    move v3, v15

    goto :goto_26

    :cond_3e
    add-int/2addr v15, v14

    goto :goto_41

    :cond_40
    move v15, v3

    .line 16
    :goto_41
    new-instance v3, Lcom/dcloud/zxing2/ResultPoint;

    aget v4, v12, v13

    int-to-float v4, v4

    int-to-float v5, v15

    invoke-direct {v3, v4, v5}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v3, v2, v13

    .line 17
    new-instance v3, Lcom/dcloud/zxing2/ResultPoint;

    aget v4, v12, v14

    int-to-float v4, v4

    invoke-direct {v3, v4, v5}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v3, v2, v14

    move v12, v15

    const/4 v3, 0x1

    goto :goto_5d

    :cond_59
    add-int/lit8 v12, v12, 0x5

    goto :goto_c

    :cond_5c
    const/4 v3, 0x0

    :goto_5d
    add-int/lit8 v4, v12, 0x1

    if-eqz v3, :cond_d3

    const/4 v15, 0x2

    new-array v3, v15, [I

    .line 26
    aget-object v5, v2, v13

    invoke-virtual {v5}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v5

    float-to-int v5, v5

    aput v5, v3, v13

    aget-object v5, v2, v14

    invoke-virtual {v5}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v5

    float-to-int v5, v5

    aput v5, v3, v14

    move-object/from16 v16, v3

    move v9, v4

    const/4 v8, 0x0

    :goto_7a
    if-ge v9, v0, :cond_b6

    .line 28
    aget v4, v16, v13

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move v5, v9

    move/from16 v6, p2

    move v1, v8

    move-object/from16 v8, p5

    move/from16 v17, v9

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->findGuardPattern(Lcom/dcloud/zxing2/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v3

    if-eqz v3, :cond_ab

    .line 33
    aget v4, v16, v13

    aget v5, v3, v13

    sub-int/2addr v4, v5

    .line 34
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_ab

    aget v4, v16, v14

    aget v6, v3, v14

    sub-int/2addr v4, v6

    .line 35
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v5, :cond_ab

    move-object/from16 v16, v3

    const/4 v8, 0x0

    goto :goto_b2

    :cond_ab
    const/16 v3, 0x19

    if-le v1, v3, :cond_b0

    goto :goto_b9

    :cond_b0
    add-int/lit8 v8, v1, 0x1

    :goto_b2
    add-int/lit8 v9, v17, 0x1

    const/4 v1, 0x4

    goto :goto_7a

    :cond_b6
    move v1, v8

    move/from16 v17, v9

    :goto_b9
    add-int/lit8 v8, v1, 0x1

    sub-int v4, v17, v8

    .line 47
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    aget v1, v16, v13

    int-to-float v1, v1

    int-to-float v3, v4

    invoke-direct {v0, v1, v3}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v0, v2, v15

    .line 48
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    aget v1, v16, v14

    int-to-float v1, v1

    invoke-direct {v0, v1, v3}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v0, v2, v1

    :cond_d3
    sub-int/2addr v4, v12

    const/16 v0, 0xa

    if-ge v4, v0, :cond_e1

    const/4 v0, 0x4

    :goto_d9
    if-ge v13, v0, :cond_e1

    const/4 v1, 0x0

    .line 52
    aput-object v1, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_d9

    :cond_e1
    return-object v2
.end method

.method private static findVertices(Lcom/dcloud/zxing2/common/BitMatrix;II)[Lcom/dcloud/zxing2/ResultPoint;
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v6

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v7

    const/16 v0, 0x8

    new-array v8, v0, [Lcom/dcloud/zxing2/ResultPoint;

    .line 5
    sget-object v5, Lcom/dcloud/zxing2/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->findRowsWithPattern(Lcom/dcloud/zxing2/common/BitMatrix;IIII[I)[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    sget-object v1, Lcom/dcloud/zxing2/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    invoke-static {v8, v0, v1}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->copyToResult([Lcom/dcloud/zxing2/ResultPoint;[Lcom/dcloud/zxing2/ResultPoint;[I)V

    const/4 v0, 0x4

    .line 8
    aget-object v1, v8, v0

    if-eqz v1, :cond_2f

    .line 9
    aget-object p1, v8, v0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result p1

    float-to-int p2, p1

    .line 10
    aget-object p1, v8, v0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p1

    float-to-int p1, p1

    :cond_2f
    move v3, p1

    move v4, p2

    .line 12
    sget-object v5, Lcom/dcloud/zxing2/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->findRowsWithPattern(Lcom/dcloud/zxing2/common/BitMatrix;IIII[I)[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object p0

    sget-object p1, Lcom/dcloud/zxing2/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    invoke-static {v8, p0, p1}, Lcom/dcloud/zxing2/pdf417/detector/Detector;->copyToResult([Lcom/dcloud/zxing2/ResultPoint;[Lcom/dcloud/zxing2/ResultPoint;[I)V

    return-object v8
.end method

.method private static patternMatchVariance([I[IF)F
    .registers 12

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    if-ge v2, v0, :cond_10

    .line 5
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 6
    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v3, v4, :cond_15

    return v2

    :cond_15
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v4, v3, v4

    mul-float p2, p2, v4

    const/4 v5, 0x0

    :goto_1c
    if-ge v1, v0, :cond_37

    .line 21
    aget v6, p0, v1

    .line 22
    aget v7, p1, v1

    int-to-float v7, v7

    mul-float v7, v7, v4

    int-to-float v6, v6

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2c

    sub-float/2addr v6, v7

    goto :goto_2e

    :cond_2c
    sub-float v6, v7, v6

    :goto_2e
    cmpl-float v7, v6, p2

    if-lez v7, :cond_33

    return v2

    :cond_33
    add-float/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_37
    div-float/2addr v5, v3

    return v5
.end method
