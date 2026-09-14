###### Class com.dcloud.zxing2.common.detector.WhiteRectangleDetector (com.dcloud.zxing2.common.detector.WhiteRectangleDetector)
.class public final Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/dcloud/zxing2/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;III)V

    return-void
.end method

.method public constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->height:I

    .line 5
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->width:I

    .line 6
    div-int/lit8 p2, p2, 0x2

    sub-int v1, p3, p2

    .line 7
    iput v1, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/2addr p3, p2

    .line 8
    iput p3, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int v2, p4, p2

    .line 9
    iput v2, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/2addr p4, p2

    .line 10
    iput p4, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->downInit:I

    if-ltz v2, :cond_2a

    if-ltz v1, :cond_2a

    if-ge p4, v0, :cond_2a

    if-ge p3, p1, :cond_2a

    return-void

    .line 12
    :cond_2a
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private centerEdges(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)[Lcom/dcloud/zxing2/ResultPoint;
    .registers 16

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p1

    .line 3
    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v1

    .line 4
    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p2

    .line 5
    invoke-virtual {p3}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v2

    .line 6
    invoke-virtual {p3}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p3

    .line 7
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v3

    .line 8
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p4

    .line 10
    iget v4, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_58

    new-array v4, v9, [Lcom/dcloud/zxing2/ResultPoint;

    .line 11
    new-instance v9, Lcom/dcloud/zxing2/ResultPoint;

    sub-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/dcloud/zxing2/ResultPoint;

    add-float/2addr v1, v10

    add-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/dcloud/zxing2/ResultPoint;

    sub-float/2addr v2, v10

    sub-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/dcloud/zxing2/ResultPoint;

    add-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4

    :cond_58
    new-array v4, v9, [Lcom/dcloud/zxing2/ResultPoint;

    .line 17
    new-instance v9, Lcom/dcloud/zxing2/ResultPoint;

    add-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/dcloud/zxing2/ResultPoint;

    add-float/2addr v1, v10

    sub-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/dcloud/zxing2/ResultPoint;

    sub-float/2addr v2, v10

    add-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/dcloud/zxing2/ResultPoint;

    sub-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4
.end method

.method private containsBlackPoint(IIIZ)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p4, :cond_11

    :goto_3
    if-gt p1, p2, :cond_1f

    .line 1
    iget-object p4, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p4, p1, p3}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_e

    return v0

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_11
    :goto_11
    if-gt p1, p2, :cond_1f

    .line 7
    iget-object p4, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p4, p3, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/dcloud/zxing2/ResultPoint;
    .registers 10

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/zxing2/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/dcloud/zxing2/common/detector/MathUtils;->round(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_32

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    .line 6
    invoke-static {v3}, Lcom/dcloud/zxing2/common/detector/MathUtils;->round(F)I

    move-result v3

    mul-float v2, v2, p4

    add-float/2addr v2, p2

    .line 7
    invoke-static {v2}, Lcom/dcloud/zxing2/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 8
    iget-object v4, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v4, v3, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 9
    new-instance p1, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float p2, v3

    int-to-float p3, v2

    invoke-direct {p1, p2, p3}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object p1

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public detect()[Lcom/dcloud/zxing2/ResultPoint;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 2
    iget v1, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 3
    iget v2, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->upInit:I

    .line 4
    iget v3, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->downInit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_10
    :goto_10
    if-eqz v6, :cond_89

    const/4 v6, 0x1

    const/4 v12, 0x0

    :cond_14
    :goto_14
    if-nez v6, :cond_18

    if-nez v8, :cond_2c

    .line 22
    :cond_18
    iget v6, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->width:I

    if-ge v1, v6, :cond_2c

    .line 23
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_27

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x1

    goto :goto_14

    :cond_27
    if-nez v8, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 33
    :cond_2c
    iget v6, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v6, :cond_31

    goto :goto_83

    :cond_31
    const/4 v6, 0x1

    :cond_32
    :goto_32
    if-nez v6, :cond_36

    if-nez v9, :cond_4a

    .line 42
    :cond_36
    iget v6, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->height:I

    if-ge v3, v6, :cond_4a

    .line 43
    invoke-direct {p0, v0, v1, v3, v5}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_45

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    goto :goto_32

    :cond_45
    if-nez v9, :cond_32

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 53
    :cond_4a
    iget v6, p0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->height:I

    if-lt v3, v6, :cond_4f

    goto :goto_83

    :cond_4f
    const/4 v6, 0x1

    :cond_50
    :goto_50
    if-nez v6, :cond_54

    if-nez v10, :cond_66

    :cond_54
    if-ltz v0, :cond_66

    .line 63
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_61

    add-int/lit8 v0, v0, -0x1

    const/4 v10, 0x1

    const/4 v12, 0x1

    goto :goto_50

    :cond_61
    if-nez v10, :cond_50

    add-int/lit8 v0, v0, -0x1

    goto :goto_50

    :cond_66
    if-gez v0, :cond_69

    goto :goto_83

    :cond_69
    move v6, v12

    const/4 v12, 0x1

    :cond_6b
    :goto_6b
    if-nez v12, :cond_6f

    if-nez v11, :cond_81

    :cond_6f
    if-ltz v2, :cond_81

    .line 83
    invoke-direct {p0, v0, v1, v2, v5}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v12

    if-eqz v12, :cond_7c

    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x1

    const/4 v11, 0x1

    goto :goto_6b

    :cond_7c
    if-nez v11, :cond_6b

    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    :cond_81
    if-gez v2, :cond_85

    :goto_83
    const/4 v4, 0x1

    goto :goto_89

    :cond_85
    if-eqz v6, :cond_10

    const/4 v7, 0x1

    goto :goto_10

    :cond_89
    :goto_89
    if-nez v4, :cond_107

    if-eqz v7, :cond_107

    sub-int v4, v1, v0

    const/4 v6, 0x0

    move-object v8, v6

    const/4 v7, 0x1

    :goto_92
    if-ge v7, v4, :cond_a6

    int-to-float v8, v0

    sub-int v9, v3, v7

    int-to-float v9, v9

    add-int v10, v0, v7

    int-to-float v10, v10

    int-to-float v11, v3

    .line 110
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v8

    if-eqz v8, :cond_a3

    goto :goto_a6

    :cond_a3
    add-int/lit8 v7, v7, 0x1

    goto :goto_92

    :cond_a6
    :goto_a6
    if-eqz v8, :cond_102

    move-object v9, v6

    const/4 v7, 0x1

    :goto_aa
    if-ge v7, v4, :cond_be

    int-to-float v9, v0

    add-int v10, v2, v7

    int-to-float v10, v10

    add-int v11, v0, v7

    int-to-float v11, v11

    int-to-float v12, v2

    .line 123
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v9

    if-eqz v9, :cond_bb

    goto :goto_be

    :cond_bb
    add-int/lit8 v7, v7, 0x1

    goto :goto_aa

    :cond_be
    :goto_be
    if-eqz v9, :cond_fd

    move-object v7, v6

    const/4 v0, 0x1

    :goto_c2
    if-ge v0, v4, :cond_d6

    int-to-float v7, v1

    add-int v10, v2, v0

    int-to-float v10, v10

    sub-int v11, v1, v0

    int-to-float v11, v11

    int-to-float v12, v2

    .line 136
    invoke-direct {p0, v7, v10, v11, v12}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v7

    if-eqz v7, :cond_d3

    goto :goto_d6

    :cond_d3
    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    :cond_d6
    :goto_d6
    if-eqz v7, :cond_f8

    :goto_d8
    if-ge v5, v4, :cond_ec

    int-to-float v0, v1

    sub-int v2, v3, v5

    int-to-float v2, v2

    sub-int v6, v1, v5

    int-to-float v6, v6

    int-to-float v10, v3

    .line 149
    invoke-direct {p0, v0, v2, v6, v10}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v6

    if-eqz v6, :cond_e9

    goto :goto_ec

    :cond_e9
    add-int/lit8 v5, v5, 0x1

    goto :goto_d8

    :cond_ec
    :goto_ec
    if-eqz v6, :cond_f3

    .line 159
    invoke-direct {p0, v6, v8, v7, v9}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    return-object v0

    .line 160
    :cond_f3
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    .line 161
    :cond_f8
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    .line 162
    :cond_fd
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    .line 163
    :cond_102
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    .line 208
    :cond_107
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0
.end method
