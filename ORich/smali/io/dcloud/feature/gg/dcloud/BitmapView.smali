###### Class io.dcloud.feature.gg.dcloud.BitmapView (io.dcloud.feature.gg.dcloud.BitmapView)
.class public Lio/dcloud/feature/gg/dcloud/BitmapView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field backgroundBitmap:Landroid/graphics/Bitmap;

.field backgroundRect:Landroid/graphics/RectF;

.field dest:Landroid/graphics/RectF;

.field mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field mDrawable:Landroid/graphics/Bitmap;

.field mMaxHeight:I

.field mMaxWidth:I

.field paint:Landroid/graphics/Paint;

.field src:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mMaxHeight:I

    .line 4
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mMaxWidth:I

    .line 5
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->paint:Landroid/graphics/Paint;

    .line 17
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->src:Landroid/graphics/Rect;

    .line 18
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->dest:Landroid/graphics/RectF;

    .line 19
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 20
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundRect:Landroid/graphics/RectF;

    .line 21
    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    .line 22
    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    return-void
.end method

.method private blurBitmap(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 5
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 6
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 7
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 8
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    return-void
.end method

.method private drawBackgroundImage(Landroid/graphics/Canvas;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_1d

    :cond_19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    :goto_1d
    int-to-float v2, v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_29

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_2d

    :cond_29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    :goto_2d
    int-to-float p1, p1

    div-float v3, v2, p1

    div-float v4, v0, v1

    sub-float/2addr v3, v4

    float-to-double v5, v3

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const/4 v9, 0x0

    cmpl-double v10, v5, v7

    if-lez v10, :cond_9d

    mul-float v4, v4, p1

    sub-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 9
    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v2, v4

    invoke-direct {v6, v9, v4, p1, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->dest:Landroid/graphics/RectF;

    .line 10
    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundRect:Landroid/graphics/RectF;

    if-nez v4, :cond_a4

    float-to-int v4, v1

    float-to-int v0, v0

    .line 12
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 13
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 15
    iget-object v8, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v11, v11, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v8, v10, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gg/dcloud/BitmapView;->getBright(Landroid/graphics/Bitmap;)I

    move-result v0

    const/16 v4, 0x80

    if-lt v0, v4, :cond_85

    const/high16 v0, 0x66000000

    goto :goto_88

    :cond_85
    const v0, 0x66ffffff

    .line 18
    :goto_88
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    mul-float v3, v3, v1

    div-float/2addr v3, v5

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    neg-float v1, v3

    add-float/2addr p1, v3

    invoke-direct {v0, v1, v9, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundRect:Landroid/graphics/RectF;

    .line 24
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lio/dcloud/feature/gg/dcloud/BitmapView;->blurBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a4

    .line 27
    :cond_9d
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v9, v9, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->dest:Landroid/graphics/RectF;

    :cond_a4
    :goto_a4
    return-void
.end method

.method private testData(Landroid/graphics/Canvas;)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "path="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v1, v1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "tid="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v1, Landroid/text/StaticLayout;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/TextPaint;

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->paint:Landroid/graphics/Paint;

    invoke-direct {v4, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iget v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mMaxWidth:I

    div-int/lit8 v5, v0, 0x2

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 7
    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public getBright(Landroid/graphics/Bitmap;)I
    .registers 19

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v3, v0, :cond_52

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v1, :cond_4d

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, p1

    .line 9
    invoke-virtual {v7, v3, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    const v9, -0xff0001

    or-int/2addr v9, v8

    shr-int/lit8 v9, v9, 0x10

    and-int/lit16 v9, v9, 0xff

    const v10, -0xff01

    or-int/2addr v10, v8

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    or-int/lit16 v8, v8, -0x100

    and-int/lit16 v8, v8, 0xff

    int-to-double v11, v4

    int-to-double v13, v9

    const-wide v15, 0x3fd322d0e5604189L    # 0.299

    mul-double v13, v13, v15

    add-double/2addr v11, v13

    int-to-double v9, v10

    const-wide v13, 0x3fe2c8b439581062L    # 0.587

    mul-double v9, v9, v13

    add-double/2addr v11, v9

    int-to-double v8, v8

    const-wide v13, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v8, v8, v13

    add-double/2addr v11, v8

    double-to-int v4, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_4d
    move-object/from16 v7, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 16
    :cond_52
    div-int/2addr v4, v5

    return v4
.end method

.method protected initRect()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 3
    iget v2, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mMaxHeight:I

    int-to-float v2, v2

    .line 4
    iget v3, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mMaxWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v1

    div-float/2addr v2, v3

    cmpl-float v4, v0, v2

    if-lez v4, :cond_3e

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v3, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->src:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mMaxWidth:I

    int-to-float v3, v3

    iget v4, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mMaxHeight:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->dest:Landroid/graphics/RectF;

    goto :goto_57

    :cond_3e
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->src:Landroid/graphics/Rect;

    .line 12
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mMaxWidth:I

    int-to-float v5, v5

    mul-float v3, v3, v0

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->dest:Landroid/graphics/RectF;

    :goto_57
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/feature/gg/dcloud/BitmapView;->drawBackgroundImage(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->backgroundRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5
    :cond_1a
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->mDrawable:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->dest:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/BitmapView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_25
    return-void
.end method
