###### Class io.dcloud.feature.gallery.imageedit.c.g.b (io.dcloud.feature.gallery.imageedit.c.g.b)
.class public Lio/dcloud/feature/gallery/imageedit/c/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gallery/imageedit/c/g/a;


# instance fields
.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/RectF;

.field g:Landroid/graphics/RectF;

.field h:Landroid/graphics/RectF;

.field i:Landroid/graphics/RectF;

.field j:[F

.field k:[F

.field l:[[F

.field private m:Z

.field private n:Z

.field private o:Z

.field p:Landroid/graphics/Matrix;

.field q:Landroid/graphics/Paint;

.field public r:I

.field private s:[F

.field private t:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->f:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->g:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->h:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->i:Landroid/graphics/RectF;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 15
    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->j:[F

    const/16 v0, 0x20

    new-array v0, v0, [F

    .line 17
    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->k:[F

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 19
    fill-array-data v1, :array_76

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->l:[[F

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->m:Z

    const/4 v2, 0x1

    .line 26
    iput-boolean v2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->n:Z

    .line 30
    iput-boolean v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->o:Z

    .line 32
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->p:Landroid/graphics/Matrix;

    .line 34
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 36
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    .line 47
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 52
    iput v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->r:I

    new-array v0, v0, [F

    .line 58
    fill-array-data v0, :array_7e

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->s:[F

    .line 59
    iput-boolean v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->t:Z

    return-void

    nop

    :array_76
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_7e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()Landroid/graphics/RectF;
    .registers 2

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->g:Landroid/graphics/RectF;

    return-object v0
.end method

.method public a(FF)Lio/dcloud/feature/gallery/imageedit/c/g/a$a;
    .registers 10

    .line 47
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    const/high16 v1, -0x3dc00000    # -48.0f

    invoke-static {v0, v1, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(Landroid/graphics/RectF;FFF)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    const/high16 v1, 0x42400000    # 48.0f

    .line 48
    invoke-static {v0, v1, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(Landroid/graphics/RectF;FFF)Z

    move-result v0

    if-nez v0, :cond_47

    .line 50
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(Landroid/graphics/RectF;FF)[F

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    const/4 p2, 0x0

    const/4 v4, 0x0

    .line 52
    :goto_26
    array-length v5, v0

    if-ge p2, v5, :cond_3e

    .line 53
    aget v5, v0, p2

    shr-int/lit8 v6, p2, 0x1

    aget v6, v2, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_3b

    shl-int v5, p1, p2

    or-int/2addr v4, v5

    :cond_3b
    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    .line 58
    :cond_3e
    invoke-static {v4}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(I)Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 60
    iput-boolean v3, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->o:Z

    :cond_46
    return-object p1

    :cond_47
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(F)V
    .registers 9

    .line 5
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->o:Z

    if-eqz v0, :cond_2d

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->f:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->g:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v2

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v4

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v5

    mul-float v6, v6, p1

    add-float/2addr v5, v6

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2d
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 62
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->r:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 11

    .line 9
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->n:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 16
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x0

    .line 17
    :goto_1b
    iget-object v5, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->l:[[F

    array-length v5, v5

    if-ge v2, v5, :cond_3a

    const/4 v5, 0x0

    .line 18
    :goto_21
    iget-object v6, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->l:[[F

    aget-object v7, v6, v2

    array-length v7, v7

    if-ge v5, v7, :cond_37

    .line 19
    aget-object v6, v6, v2

    aget v7, v1, v2

    sget-object v8, Lio/dcloud/feature/gallery/imageedit/c/g/a;->a:[F

    aget v8, v8, v5

    mul-float v7, v7, v8

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3a
    const/4 v1, 0x0

    .line 23
    :goto_3b
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->j:[F

    array-length v5, v2

    if-ge v1, v5, :cond_56

    .line 24
    iget-object v5, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->l:[[F

    and-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    shl-int/lit8 v6, v1, 0x1

    const v7, 0x7362dc98

    ushr-int v6, v7, v6

    and-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 27
    :cond_56
    :goto_56
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->k:[F

    array-length v2, v1

    if-ge v3, v2, :cond_80

    .line 28
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->l:[[F

    and-int/lit8 v5, v3, 0x1

    aget-object v2, v2, v5

    const v5, 0xaaff550

    ushr-int/2addr v5, v3

    and-int/2addr v5, v4

    aget v2, v2, v5

    sget-object v5, Lio/dcloud/feature/gallery/imageedit/c/g/a;->c:[F

    sget-object v6, Lio/dcloud/feature/gallery/imageedit/c/g/a;->d:[B

    aget-byte v7, v6, v3

    and-int/lit8 v7, v7, 0x3

    aget v5, v5, v7

    add-float/2addr v2, v5

    sget-object v5, Lio/dcloud/feature/gallery/imageedit/c/g/a;->b:[F

    aget-byte v6, v6, v3

    shr-int/2addr v6, v0

    aget v5, v5, v6

    add-float/2addr v2, v5

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 32
    :cond_80
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->j:[F

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 38
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 43
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->k:[F

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;F)V
    .registers 7

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->p:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, p2, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 3
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->p:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->c(FF)V

    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/g/a$a;FF)V
    .registers 11

    .line 61
    iget-boolean v6, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->t:Z

    if-eqz v6, :cond_7

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->g:Landroid/graphics/RectF;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->h:Landroid/graphics/RectF;

    :goto_9
    move-object v1, v0

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->s:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[FZ)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 7
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->m:Z

    return-void
.end method

.method public b(FF)Landroid/graphics/RectF;
    .registers 5

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->o:Z

    return-void
.end method

.method public b()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->g:Landroid/graphics/RectF;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->o:Z

    return v0
.end method

.method c(FF)V
    .registers 8

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/g/b;->c(Z)V

    .line 2
    iget-boolean v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->t:Z

    if-eqz v1, :cond_28

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->s:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    div-float v3, p1, v3

    aget v4, v1, v0

    mul-float v3, v3, v4

    cmpl-float v3, v3, p2

    if-lez v3, :cond_20

    .line 4
    aget p1, v1, v0

    div-float p1, p2, p1

    aget v0, v1, v2

    mul-float p1, p1, v0

    goto :goto_28

    .line 6
    :cond_20
    aget p2, v1, v2

    div-float p2, p1, p2

    aget v0, v1, v0

    mul-float p2, p2, v0

    .line 9
    :cond_28
    :goto_28
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->h:Landroid/graphics/RectF;

    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p1, p2, v0}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->g:Landroid/graphics/RectF;

    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 13
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->n:Z

    return-void
.end method

.method public c()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->m:Z

    return v0
.end method

.method public d(FF)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->i:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->h:Landroid/graphics/RectF;

    iget v2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->r:I

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float p2, p2, v3

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->h:Landroid/graphics/RectF;

    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    invoke-static {p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/k/a;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->g:Landroid/graphics/RectF;

    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_29
    return-void
.end method

.method public d(Z)V
    .registers 2

    return-void
.end method

.method public d()Z
    .registers 2

    .line 7
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->o:Z

    return v0
.end method

.method public e(FF)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_16

    cmpl-float v0, p2, v0

    if-lez v0, :cond_16

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1
    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->s:[F

    .line 2
    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->t:Z

    :cond_16
    return-void
.end method

.method public e()Z
    .registers 2

    .line 3
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->t:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/g/b;->n:Z

    return v0
.end method
