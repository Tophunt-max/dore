###### Class io.dcloud.f.a.c.c.a (io.dcloud.f.a.c.c.a)
.class public Lio/dcloud/f/a/c/c/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/RectF;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/RectF;

.field e:Landroid/graphics/Bitmap;

.field f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/dcloud/f/a/c/c/a;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/f/a/c/c/a;->b:Landroid/graphics/RectF;

    .line 4
    iput-object v0, p0, Lio/dcloud/f/a/c/c/a;->c:Landroid/graphics/Bitmap;

    .line 5
    iput-object v0, p0, Lio/dcloud/f/a/c/c/a;->d:Landroid/graphics/RectF;

    .line 91
    iput-object p1, p0, Lio/dcloud/f/a/c/c/a;->e:Landroid/graphics/Bitmap;

    .line 92
    iput-object p2, p0, Lio/dcloud/f/a/c/c/a;->f:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 15

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/f/a/c/c/a;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 3
    iget-object v2, p0, Lio/dcloud/f/a/c/c/a;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v3, v0

    div-float v5, v1, v2

    sub-float/2addr v4, v5

    float-to-double v6, v4

    const/4 v8, 0x0

    const-wide v9, 0x3fc3333333333333L    # 0.15

    cmpl-double v11, v6, v9

    if-lez v11, :cond_8b

    mul-float v5, v5, v0

    sub-float v5, v3, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 11
    new-instance v7, Landroid/graphics/RectF;

    sub-float v9, v3, v5

    invoke-direct {v7, v8, v5, v0, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lio/dcloud/f/a/c/c/a;->b:Landroid/graphics/RectF;

    .line 12
    iget-object v5, p0, Lio/dcloud/f/a/c/c/a;->d:Landroid/graphics/RectF;

    if-nez v5, :cond_92

    float-to-int v5, v2

    float-to-int v1, v1

    .line 14
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lio/dcloud/f/a/c/c/a;->c:Landroid/graphics/Bitmap;

    .line 15
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v9, p0, Lio/dcloud/f/a/c/c/a;->c:Landroid/graphics/Bitmap;

    invoke-direct {v7, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 17
    iget-object v10, p0, Lio/dcloud/f/a/c/c/a;->e:Landroid/graphics/Bitmap;

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v12, v12, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v10, v11, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 19
    iget-object v1, p0, Lio/dcloud/f/a/c/c/a;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lio/dcloud/f/a/c/c/a;->b(Landroid/graphics/Bitmap;)I

    move-result v1

    const/16 v5, 0x80

    if-lt v1, v5, :cond_73

    const/high16 v1, 0x66000000

    goto :goto_76

    :cond_73
    const v1, 0x66ffffff

    .line 20
    :goto_76
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    mul-float v4, v4, v2

    div-float/2addr v4, v6

    .line 24
    new-instance v1, Landroid/graphics/RectF;

    neg-float v2, v4

    add-float/2addr v0, v4

    invoke-direct {v1, v2, v8, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lio/dcloud/f/a/c/c/a;->d:Landroid/graphics/RectF;

    .line 26
    iget-object v0, p0, Lio/dcloud/f/a/c/c/a;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lio/dcloud/f/a/c/c/a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_92

    .line 29
    :cond_8b
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v8, v8, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lio/dcloud/f/a/c/c/a;->b:Landroid/graphics/RectF;

    :cond_92
    :goto_92
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 30
    iget-object v0, p0, Lio/dcloud/f/a/c/c/a;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 34
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 35
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 36
    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 37
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)I
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

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/f/a/c/c/a;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2
    iget-object v0, p0, Lio/dcloud/f/a/c/c/a;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 3
    iget-object v2, p0, Lio/dcloud/f/a/c/c/a;->d:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/dcloud/f/a/c/c/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1a

    .line 5
    :cond_17
    invoke-direct {p0}, Lio/dcloud/f/a/c/c/a;->a()V

    .line 7
    :goto_1a
    iget-object v0, p0, Lio/dcloud/f/a/c/c/a;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/dcloud/f/a/c/c/a;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/dcloud/f/a/c/c/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_23
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
