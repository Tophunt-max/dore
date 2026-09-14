###### Class io.dcloud.feature.barcode2.camera.PlanarYUVLuminanceSource (io.dcloud.feature.barcode2.camera.PlanarYUVLuminanceSource)
.class public final Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;
.super Lcom/dcloud/zxing2/LuminanceSource;
.source "SourceFile"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private rotateLuminanceSource:Lcom/dcloud/zxing2/LuminanceSource;

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIII)V
    .registers 9

    .line 1
    invoke-direct {p0, p6, p7}, Lcom/dcloud/zxing2/LuminanceSource;-><init>(II)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->rotateLuminanceSource:Lcom/dcloud/zxing2/LuminanceSource;

    if-gt p6, p2, :cond_15

    if-gt p7, p3, :cond_15

    .line 70
    iput-object p1, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->yuvData:[B

    .line 71
    iput p2, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataWidth:I

    .line 72
    iput p3, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataHeight:I

    .line 73
    iput p4, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->left:I

    .line 74
    iput p5, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->top:I

    return-void

    .line 75
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Crop rectangle does not fit within image data.width="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ";dataWidth="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";height="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";dataHeight="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDataHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataWidth:I

    return v0
.end method

.method public getMatrix()[B
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v1

    .line 6
    iget v2, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_13

    iget v3, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v3, :cond_13

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->yuvData:[B

    return-object v0

    :cond_13
    mul-int v3, v0, v1

    .line 11
    new-array v4, v3, [B

    .line 12
    iget v5, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->top:I

    mul-int v5, v5, v2

    iget v6, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_27

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->yuvData:[B

    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    .line 21
    :cond_27
    iget-object v2, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->yuvData:[B

    :goto_29
    if-ge v6, v1, :cond_36

    mul-int v3, v6, v0

    .line 24
    invoke-static {v2, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget v3, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_36
    return-object v4
.end method

.method public getRow(I[B)[B
    .registers 6

    if-ltz p1, :cond_24

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_24

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_11

    .line 5
    array-length v1, p2

    if-ge v1, v0, :cond_13

    .line 6
    :cond_11
    new-array p2, v0, [B

    .line 8
    :cond_13
    iget v1, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int p1, p1, v1

    iget v1, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr p1, v1

    .line 9
    iget-object v1, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 10
    :cond_24
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested row is outside the image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isCropSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isRotateSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public renderCroppedGreyscaleBitmap(Z)Landroid/graphics/Bitmap;
    .registers 14

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v6

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 4
    new-array v1, v0, [I

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->yuvData:[B

    const/high16 v2, -0x1000000

    const v3, 0x10101

    const/4 v4, 0x0

    if-eqz p1, :cond_41

    .line 8
    iget p1, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->top:I

    add-int/2addr p1, v7

    iget v5, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int p1, p1, v5

    iget v5, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr p1, v5

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v7, :cond_68

    mul-int v8, v5, v6

    const/4 v9, 0x0

    :goto_26
    if-ge v9, v6, :cond_3c

    .line 12
    iget v10, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v10, v10, v9

    sub-int v10, p1, v10

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    add-int v11, v8, v9

    mul-int v10, v10, v3

    or-int/2addr v10, v2

    .line 13
    aput v10, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_3c
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 18
    :cond_41
    iget p1, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->top:I

    iget v5, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int p1, p1, v5

    iget v5, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr p1, v5

    const/4 v5, 0x0

    :goto_4b
    if-ge v5, v7, :cond_68

    mul-int v8, v5, v6

    const/4 v9, 0x0

    :goto_50
    if-ge v9, v6, :cond_62

    add-int v10, p1, v9

    .line 22
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    add-int v11, v8, v9

    mul-int v10, v10, v3

    or-int/2addr v10, v2

    .line 23
    aput v10, v1, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    .line 25
    :cond_62
    iget v8, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr p1, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 28
    :cond_68
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v6

    .line 30
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method public rotateCounterClockwise()Lcom/dcloud/zxing2/LuminanceSource;
    .registers 12

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->rotateLuminanceSource:Lcom/dcloud/zxing2/LuminanceSource;

    if-nez v0, :cond_3e

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->getMatrix()[B

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v8

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v7

    .line 5
    array-length v1, v0

    new-array v2, v1, [B

    add-int/lit8 v1, v8, -0x1

    mul-int v1, v1, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v8, :cond_32

    mul-int v5, v4, v7

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v7, :cond_2d

    add-int v9, v5, v6

    mul-int v10, v6, v7

    sub-int v10, v1, v10

    .line 10
    aget-byte v10, v0, v10

    aput-byte v10, v2, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 15
    :cond_32
    new-instance v0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v8}, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    iput-object v0, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->rotateLuminanceSource:Lcom/dcloud/zxing2/LuminanceSource;

    .line 17
    :cond_3e
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->rotateLuminanceSource:Lcom/dcloud/zxing2/LuminanceSource;

    return-object v0
.end method
