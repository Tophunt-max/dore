###### Class com.dcloud.zxing2.common.detector.MonochromeRectangleDetector (com.dcloud.zxing2.common.detector.MonochromeRectangleDetector)
.class public final Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/dcloud/zxing2/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .registers 11

    add-int v0, p3, p4

    const/4 v1, 0x2

    .line 1
    div-int/2addr v0, v1

    move v2, v0

    :goto_5
    if-lt v2, p3, :cond_3e

    if-eqz p5, :cond_12

    .line 6
    iget-object v3, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, v2, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1a

    :cond_12
    iget-object v3, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, p1, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_1d
    move v3, v2

    :cond_1e
    add-int/lit8 v3, v3, -0x1

    if-lt v3, p3, :cond_35

    if-eqz p5, :cond_2d

    .line 12
    iget-object v4, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v4, v3, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_35

    :cond_2d
    iget-object v4, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 13
    invoke-virtual {v4, p1, v3}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_35
    :goto_35
    sub-int v4, v2, v3

    if-lt v3, p3, :cond_3e

    if-le v4, p2, :cond_3c

    goto :goto_3e

    :cond_3c
    move v2, v3

    goto :goto_5

    :cond_3e
    :goto_3e
    const/4 p3, 0x1

    add-int/2addr v2, p3

    :goto_40
    if-ge v0, p4, :cond_78

    if-eqz p5, :cond_4d

    .line 26
    iget-object v3, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, v0, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_55

    :cond_4d
    iget-object v3, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, p1, v0}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_58

    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    move v3, v0

    :cond_59
    add-int/2addr v3, p3

    if-ge v3, p4, :cond_6f

    if-eqz p5, :cond_67

    .line 32
    iget-object v4, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v4, v3, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_6f

    :cond_67
    iget-object v4, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 33
    invoke-virtual {v4, p1, v3}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_59

    :cond_6f
    :goto_6f
    sub-int v4, v3, v0

    if-ge v3, p4, :cond_78

    if-le v4, p2, :cond_76

    goto :goto_78

    :cond_76
    move v0, v3

    goto :goto_40

    :cond_78
    :goto_78
    add-int/lit8 v0, v0, -0x1

    if-le v0, v2, :cond_84

    new-array p1, v1, [I

    const/4 p2, 0x0

    aput v2, p1, p2

    aput v0, p1, p3

    goto :goto_85

    :cond_84
    const/4 p1, 0x0

    :goto_85
    return-object p1
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p5

    const/4 v2, 0x0

    move/from16 v9, p8

    move v11, v0

    move v10, v1

    :goto_9
    if-ge v10, v9, :cond_a2

    move/from16 v12, p7

    if-lt v10, v12, :cond_a2

    move/from16 v13, p4

    if-ge v11, v13, :cond_a2

    move/from16 v14, p3

    if-lt v11, v14, :cond_a2

    if-nez p2, :cond_27

    const/4 v8, 0x1

    move-object v3, p0

    move v4, v10

    move/from16 v5, p9

    move/from16 v6, p3

    move/from16 v7, p4

    .line 1
    invoke-direct/range {v3 .. v8}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v3

    goto :goto_34

    :cond_27
    const/4 v8, 0x0

    move-object v3, p0

    move v4, v11

    move/from16 v5, p9

    move/from16 v6, p7

    move/from16 v7, p8

    .line 4
    invoke-direct/range {v3 .. v8}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v3

    :goto_34
    if-nez v3, :cond_9b

    if-eqz v2, :cond_96

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_69

    sub-int v10, v10, p6

    .line 13
    aget v1, v2, v4

    if-ge v1, v0, :cond_5f

    .line 14
    aget v1, v2, v3

    if-le v1, v0, :cond_55

    .line 16
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    if-lez p6, :cond_4d

    aget v1, v2, v4

    goto :goto_4f

    :cond_4d
    aget v1, v2, v3

    :goto_4f
    int-to-float v1, v1

    int-to-float v2, v10

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object v0

    .line 18
    :cond_55
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    aget v1, v2, v4

    int-to-float v1, v1

    int-to-float v2, v10

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object v0

    .line 20
    :cond_5f
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    aget v1, v2, v3

    int-to-float v1, v1

    int-to-float v2, v10

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object v0

    :cond_69
    sub-int v11, v11, p2

    .line 24
    aget v0, v2, v4

    if-ge v0, v1, :cond_8c

    .line 25
    aget v0, v2, v3

    if-le v0, v1, :cond_82

    .line 26
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float v1, v11

    if-gez p2, :cond_7b

    aget v2, v2, v4

    goto :goto_7d

    :cond_7b
    aget v2, v2, v3

    :goto_7d
    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object v0

    .line 28
    :cond_82
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float v1, v11

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object v0

    .line 30
    :cond_8c
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float v1, v11

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object v0

    .line 31
    :cond_96
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9b
    add-int v10, v10, p6

    add-int v11, v11, p2

    move-object v2, v3

    goto/16 :goto_9

    .line 59
    :cond_a2
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public detect()[Lcom/dcloud/zxing2/ResultPoint;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v11

    .line 2
    iget-object v0, v10, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v12

    .line 3
    div-int/lit8 v13, v11, 0x2

    .line 4
    div-int/lit8 v14, v12, 0x2

    .line 5
    div-int/lit16 v0, v11, 0x100

    const/4 v15, 0x1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 6
    div-int/lit16 v0, v12, 0x100

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v7, v9

    .line 12
    div-int/lit8 v16, v14, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move v4, v12

    move v5, v13

    move v6, v7

    move/from16 v18, v7

    move/from16 v7, v17

    move/from16 v19, v8

    move v8, v11

    move/from16 v17, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v20, v0, -0x1

    move/from16 v9, v19

    neg-int v2, v9

    .line 15
    div-int/lit8 v19, v13, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v20

    move/from16 v21, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v22

    .line 17
    invoke-virtual/range {v22 .. v22}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v23, v0, -0x1

    move-object/from16 v0, p0

    move/from16 v2, v21

    move/from16 v3, v23

    .line 18
    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v12

    .line 20
    invoke-virtual {v12}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v19, v0, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v19

    move/from16 v6, v17

    move/from16 v9, v16

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v11

    .line 23
    invoke-virtual {v11}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v8, v0, 0x1

    .line 26
    div-int/lit8 v9, v14, 0x4

    move-object/from16 v0, p0

    move/from16 v6, v18

    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/dcloud/zxing2/ResultPoint;

    aput-object v0, v1, v2

    aput-object v22, v1, v15

    const/4 v0, 0x2

    aput-object v12, v1, v0

    const/4 v0, 0x3

    aput-object v11, v1, v0

    return-object v1
.end method
