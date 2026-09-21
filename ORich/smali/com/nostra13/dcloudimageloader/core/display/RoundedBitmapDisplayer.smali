###### Class com.nostra13.dcloudimageloader.core.display.RoundedBitmapDisplayer (com.nostra13.dcloudimageloader.core.display.RoundedBitmapDisplayer)
.class public Lcom/nostra13/dcloudimageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;


# instance fields
.field private final roundPixels:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    return-void
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .registers 8

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 2
    new-instance p5, Landroid/graphics/Canvas;

    invoke-direct {p5, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 p3, 0x1

    .line 5
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p5, p3, p3, p3, p3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 p3, -0x1000000

    .line 7
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p1

    .line 8
    invoke-virtual {p5, v1, p1, p1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 9
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 10
    invoke-virtual {p5, p0, p2, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p4
.end method

.method public static roundCorners(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;I)Landroid/graphics/Bitmap;
    .registers 15

    .line 1
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v7, 0x0

    if-nez v0, :cond_f

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "View is collected probably. Can\'t round bitmap corners without view properties."

    .line 3
    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 6
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 8
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->getWidth()I

    move-result v3

    .line 9
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->getHeight()I

    move-result v4

    if-gtz v3, :cond_22

    move v3, v1

    :cond_22
    if-gtz v4, :cond_25

    move v4, v2

    .line 18
    :cond_25
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_2c

    return-object p0

    .line 30
    :cond_2c
    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_bd

    const/4 v5, 0x5

    if-eq v0, v5, :cond_8e

    const/4 v5, 0x6

    if-eq v0, v5, :cond_7e

    const/4 v5, 0x7

    if-eq v0, v5, :cond_5e

    const/16 v5, 0x8

    if-eq v0, v5, :cond_5e

    int-to-float v0, v3

    int-to-float v5, v4

    div-float v6, v0, v5

    int-to-float v8, v1

    int-to-float v9, v2

    div-float v10, v8, v9

    cmpl-float v6, v6, v10

    if-lez v6, :cond_50

    div-float/2addr v9, v5

    div-float/2addr v8, v9

    float-to-int v3, v8

    goto :goto_53

    :cond_50
    div-float/2addr v8, v0

    div-float/2addr v9, v8

    float-to-int v4, v9

    .line 65
    :goto_53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_88

    .line 98
    :cond_5e
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 99
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v1, v0

    .line 100
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v3

    .line 101
    div-int/lit8 v2, v2, 0x2

    .line 102
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v1, v0

    add-int v6, v2, v3

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_7a
    move v5, v0

    move v6, v3

    move-object v3, v4

    goto :goto_8b

    .line 104
    :cond_7e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_88
    move v5, v3

    move v6, v4

    move-object v3, v0

    :goto_8b
    move-object v4, v1

    goto/16 :goto_f4

    :cond_8e
    int-to-float v0, v3

    int-to-float v3, v4

    div-float v4, v0, v3

    int-to-float v5, v1

    int-to-float v6, v2

    div-float v8, v5, v6

    cmpl-float v4, v4, v8

    if-lez v4, :cond_a5

    div-float/2addr v5, v0

    mul-float v3, v3, v5

    float-to-int v0, v3

    sub-int/2addr v2, v0

    .line 106
    div-int/lit8 v2, v2, 0x2

    move v3, v0

    move v0, v1

    const/4 v1, 0x0

    goto :goto_ae

    :cond_a5
    div-float/2addr v6, v3

    mul-float v0, v0, v6

    float-to-int v0, v0

    sub-int/2addr v1, v0

    .line 110
    div-int/lit8 v1, v1, 0x2

    move v3, v2

    const/4 v2, 0x0

    .line 116
    :goto_ae
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v1, v0

    add-int v6, v2, v3

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7a

    :cond_bd
    int-to-float v0, v3

    int-to-float v5, v4

    div-float/2addr v0, v5

    int-to-float v5, v1

    int-to-float v6, v2

    div-float v8, v5, v6

    cmpl-float v0, v0, v8

    if-lez v0, :cond_d1

    .line 118
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v8, v0

    div-float/2addr v6, v8

    div-float/2addr v5, v6

    float-to-int v5, v5

    goto :goto_dc

    .line 121
    :cond_d1
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v8, v0

    div-float/2addr v5, v8

    div-float/2addr v6, v5

    float-to-int v5, v6

    move v11, v5

    move v5, v0

    move v0, v11

    :goto_dc
    sub-int v6, v3, v5

    .line 125
    div-int/lit8 v6, v6, 0x2

    sub-int v8, v4, v0

    .line 126
    div-int/lit8 v8, v8, 0x2

    .line 127
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v5, v6

    add-int/2addr v0, v8

    invoke-direct {v1, v6, v8, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move v5, v3

    move v6, v4

    move-object v3, v9

    goto :goto_8b

    :goto_f4
    move-object v1, p0

    move v2, p2

    .line 189
    :try_start_f6
    invoke-static/range {v1 .. v6}, Lcom/nostra13/dcloudimageloader/core/display/RoundedBitmapDisplayer;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_fa
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f6 .. :try_end_fa} :catch_fb

    goto :goto_105

    :catch_fb
    move-exception v0

    move-object v1, v0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "Can\'t create bitmap with rounded corners. Not enough memory."

    .line 191
    invoke-static {v1, v2, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    :goto_105
    return-object v0
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    instance-of p3, p2, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;

    if-eqz p3, :cond_11

    .line 4
    move-object p3, p2

    check-cast p3, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;

    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    invoke-static {p1, p3, v0}, Lcom/nostra13/dcloudimageloader/core/display/RoundedBitmapDisplayer;->roundCorners(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-interface {p2, p1}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z

    return-object p1

    .line 6
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
