###### Class com.dcloud.zxing2.common.DefaultGridSampler (com.dcloud.zxing2.common.DefaultGridSampler)
.class public final Lcom/dcloud/zxing2/common/DefaultGridSampler;
.super Lcom/dcloud/zxing2/common/GridSampler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static/range {p4 .. p19}, Lcom/dcloud/zxing2/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/dcloud/zxing2/common/PerspectiveTransform;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dcloud/zxing2/common/DefaultGridSampler;->sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;IILcom/dcloud/zxing2/common/PerspectiveTransform;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;IILcom/dcloud/zxing2/common/PerspectiveTransform;)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    if-lez p2, :cond_4d

    if-lez p3, :cond_4d

    .line 6
    new-instance v0, Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-direct {v0, p2, p3}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    mul-int/lit8 p2, p2, 0x2

    .line 7
    new-array v1, p2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, p3, :cond_4c

    int-to-float v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    const/4 v6, 0x0

    :goto_16
    if-ge v6, p2, :cond_25

    .line 12
    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v7, v6, 0x1

    .line 13
    aput v4, v1, v7

    add-int/lit8 v6, v6, 0x2

    goto :goto_16

    .line 15
    :cond_25
    invoke-virtual {p4, v1}, Lcom/dcloud/zxing2/common/PerspectiveTransform;->transformPoints([F)V

    .line 18
    invoke-static {p1, v1}, Lcom/dcloud/zxing2/common/GridSampler;->checkAndNudgePoints(Lcom/dcloud/zxing2/common/BitMatrix;[F)V

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, p2, :cond_49

    .line 21
    :try_start_2e
    aget v5, v1, v4

    float-to-int v5, v5

    add-int/lit8 v6, v4, 0x1

    aget v6, v1, v6

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 23
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v0, v5, v3}, Lcom/dcloud/zxing2/common/BitMatrix;->set(II)V
    :try_end_41
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2e .. :try_end_41} :catch_44

    :cond_41
    add-int/lit8 v4, v4, 0x2

    goto :goto_2c

    .line 34
    :catch_44
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_4c
    return-object v0

    .line 35
    :cond_4d
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method
