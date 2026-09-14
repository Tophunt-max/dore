###### Class io.dcloud.common.ui.GifImageView (io.dcloud.common.ui.GifImageView)
.class public Lio/dcloud/common/ui/GifImageView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/GifImageView$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/graphics/Movie;

.field private c:J

.field private d:J

.field private e:J

.field f:F

.field private g:I

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private k:Z

.field private l:Lio/dcloud/common/ui/GifImageView$a;

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/ui/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/common/ui/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lio/dcloud/common/ui/GifImageView;->a:F

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lio/dcloud/common/ui/GifImageView;->g:I

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->h:Z

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->k:Z

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/ui/GifImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 1
    sget-object v0, Lio/dcloud/PdrR;->STYLE_GIFVIEW:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lio/dcloud/PdrR;->STYLE_GIFVIEW_gifSrc:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 5
    sget p3, Lio/dcloud/PdrR;->STYLE_GIFVIEW_authPlay:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 6
    sget v1, Lio/dcloud/PdrR;->STYLE_GIFVIEW_playCount:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lio/dcloud/common/ui/GifImageView;->g:I

    const/4 v1, 0x0

    if-lez p2, :cond_2a

    .line 8
    invoke-virtual {p0, p2, v1}, Lio/dcloud/common/ui/GifImageView;->setGifResource(ILio/dcloud/common/ui/GifImageView$a;)V

    if-eqz p3, :cond_2a

    .line 9
    iget p2, p0, Lio/dcloud/common/ui/GifImageView;->g:I

    invoke-virtual {p0, p2}, Lio/dcloud/common/ui/GifImageView;->play(I)V

    .line 11
    :cond_2a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget v0, p0, Lio/dcloud/common/ui/GifImageView;->a:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 15
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    iget v1, p0, Lio/dcloud/common/ui/GifImageView;->p:F

    iget v2, p0, Lio/dcloud/common/ui/GifImageView;->a:F

    div-float/2addr v1, v2

    iget v3, p0, Lio/dcloud/common/ui/GifImageView;->q:F

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->k:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_7
    return-void
.end method

.method private c()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->h:Z

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lio/dcloud/common/ui/GifImageView;->c:J

    .line 3
    iput-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->i:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->j:Z

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lio/dcloud/common/ui/GifImageView;->d:J

    .line 6
    iput-wide v0, p0, Lio/dcloud/common/ui/GifImageView;->e:J

    return-void
.end method

.method private getCurrentFrameTime()I
    .registers 9

    .line 1
    iget v0, p0, Lio/dcloud/common/ui/GifImageView;->m:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/dcloud/common/ui/GifImageView;->e:J

    sub-long/2addr v2, v4

    .line 4
    iget-wide v4, p0, Lio/dcloud/common/ui/GifImageView;->c:J

    sub-long v4, v2, v4

    iget v0, p0, Lio/dcloud/common/ui/GifImageView;->m:I

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 5
    iget v4, p0, Lio/dcloud/common/ui/GifImageView;->g:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    if-lt v0, v4, :cond_26

    .line 6
    iput-boolean v1, p0, Lio/dcloud/common/ui/GifImageView;->j:Z

    .line 7
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    if-eqz v0, :cond_26

    .line 8
    invoke-interface {v0}, Lio/dcloud/common/ui/GifImageView$a;->c()V

    .line 11
    :cond_26
    iget-wide v0, p0, Lio/dcloud/common/ui/GifImageView;->c:J

    sub-long/2addr v2, v0

    iget v0, p0, Lio/dcloud/common/ui/GifImageView;->m:I

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-float v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 12
    iput v0, p0, Lio/dcloud/common/ui/GifImageView;->f:F

    .line 13
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->j:Z

    if-eqz v0, :cond_5e

    .line 14
    new-instance v0, Ljava/math/BigDecimal;

    iget v2, p0, Lio/dcloud/common/ui/GifImageView;->f:F

    float-to-double v2, v2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v0, v2, v4

    if-nez v0, :cond_58

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 17
    :cond_58
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    double-to-float v2, v2

    invoke-interface {v0, v2}, Lio/dcloud/common/ui/GifImageView$a;->a(F)V

    :cond_5e
    float-to-int v0, v1

    return v0
.end method


# virtual methods
.method public getDuration()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->i:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->i:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->j:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_33

    .line 3
    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->i:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->j:Z

    if-eqz v0, :cond_30

    .line 4
    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->h:Z

    if-eqz v0, :cond_20

    .line 5
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    iget v1, p0, Lio/dcloud/common/ui/GifImageView;->m:I

    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->getCurrentFrameTime()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    goto :goto_29

    .line 7
    :cond_20
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->getCurrentFrameTime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 9
    :goto_29
    invoke-direct {p0, p1}, Lio/dcloud/common/ui/GifImageView;->a(Landroid/graphics/Canvas;)V

    .line 10
    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->b()V

    goto :goto_33

    .line 12
    :cond_30
    invoke-direct {p0, p1}, Lio/dcloud/common/ui/GifImageView;->a(Landroid/graphics/Canvas;)V

    :cond_33
    :goto_33
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Lio/dcloud/common/ui/GifImageView;->n:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lio/dcloud/common/ui/GifImageView;->p:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p3, p0, Lio/dcloud/common/ui/GifImageView;->o:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lio/dcloud/common/ui/GifImageView;->q:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    iput-boolean p1, p0, Lio/dcloud/common/ui/GifImageView;->k:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 1
    iget-object p2, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    if-eqz p2, :cond_26

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Movie;->width()I

    move-result p2

    .line 3
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p2, p2

    int-to-float v1, p1

    div-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p2

    .line 6
    iput v1, p0, Lio/dcloud/common/ui/GifImageView;->a:F

    .line 7
    iput p1, p0, Lio/dcloud/common/ui/GifImageView;->n:I

    int-to-float p2, v0

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 8
    iput p2, p0, Lio/dcloud/common/ui/GifImageView;->o:I

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_31

    .line 11
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p2

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_31
    return-void
.end method

.method public onScreenStateChanged(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 2
    :goto_8
    iput-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->k:Z

    .line 3
    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->b()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 2
    :goto_8
    iput-boolean p1, p0, Lio/dcloud/common/ui/GifImageView;->k:Z

    .line 3
    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->b()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 2
    :goto_8
    iput-boolean p1, p0, Lio/dcloud/common/ui/GifImageView;->k:Z

    .line 3
    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->b()V

    return-void
.end method

.method public pause()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->i:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->j:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->i:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lio/dcloud/common/ui/GifImageView;->d:J

    .line 5
    iget-object v1, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    if-eqz v1, :cond_28

    .line 6
    invoke-interface {v1, v0}, Lio/dcloud/common/ui/GifImageView$a;->a(Z)V

    goto :goto_28

    .line 9
    :cond_20
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lio/dcloud/common/ui/GifImageView$a;->a(Z)V

    :cond_28
    :goto_28
    return-void
.end method

.method public play()V
    .registers 6

    .line 7
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    if-nez v0, :cond_5

    return-void

    .line 9
    :cond_5
    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->j:Z

    if-eqz v0, :cond_2f

    .line 10
    iget-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->i:Z

    if-eqz v0, :cond_34

    iget-wide v0, p0, Lio/dcloud/common/ui/GifImageView;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_34

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->i:Z

    .line 12
    iget-wide v0, p0, Lio/dcloud/common/ui/GifImageView;->e:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/dcloud/common/ui/GifImageView;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/dcloud/common/ui/GifImageView;->e:J

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    if-eqz v0, :cond_34

    .line 15
    invoke-interface {v0}, Lio/dcloud/common/ui/GifImageView$a;->b()V

    goto :goto_34

    .line 19
    :cond_2f
    iget v0, p0, Lio/dcloud/common/ui/GifImageView;->g:I

    invoke-virtual {p0, v0}, Lio/dcloud/common/ui/GifImageView;->play(I)V

    :cond_34
    :goto_34
    return-void
.end method

.method public play(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/ui/GifImageView;->g:I

    .line 2
    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->c()V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    if-eqz p1, :cond_c

    .line 4
    invoke-interface {p1}, Lio/dcloud/common/ui/GifImageView$a;->a()V

    .line 6
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public playOver()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/common/ui/GifImageView;->play(I)V

    :cond_8
    return-void
.end method

.method public playReverse()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_14

    .line 2
    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->c()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/common/ui/GifImageView;->h:Z

    .line 4
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    if-eqz v0, :cond_11

    .line 5
    invoke-interface {v0}, Lio/dcloud/common/ui/GifImageView$a;->a()V

    .line 7
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_14
    return-void
.end method

.method public setGifResource(I)V
    .registers 3

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/ui/GifImageView;->setGifResource(ILio/dcloud/common/ui/GifImageView$a;)V

    return-void
.end method

.method public setGifResource(ILio/dcloud/common/ui/GifImageView$a;)V
    .registers 3

    if-eqz p2, :cond_4

    .line 1
    iput-object p2, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    .line 3
    :cond_4
    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->c()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result p1

    if-nez p1, :cond_1e

    const/16 p1, 0x3e8

    goto :goto_24

    :cond_1e
    iget-object p1, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result p1

    :goto_24
    iput p1, p0, Lio/dcloud/common/ui/GifImageView;->m:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setGifResource(Ljava/lang/String;Lio/dcloud/common/ui/GifImageView$a;)V
    .registers 3

    .line 8
    invoke-static {p1}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    .line 9
    iput-object p2, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    .line 10
    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->c()V

    .line 11
    iget-object p1, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result p1

    if-nez p1, :cond_16

    const/16 p1, 0x3e8

    goto :goto_1c

    :cond_16
    iget-object p1, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result p1

    :goto_1c
    iput p1, p0, Lio/dcloud/common/ui/GifImageView;->m:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    iget-object p1, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    if-eqz p1, :cond_28

    .line 14
    invoke-interface {p1}, Lio/dcloud/common/ui/GifImageView$a;->a()V

    :cond_28
    return-void
.end method

.method public setOnPlayListener(Lio/dcloud/common/ui/GifImageView$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    return-void
.end method

.method public setPercent(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_1b

    iget v1, p0, Lio/dcloud/common/ui/GifImageView;->m:I

    if-lez v1, :cond_1b

    .line 2
    iput p1, p0, Lio/dcloud/common/ui/GifImageView;->f:F

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 4
    invoke-direct {p0}, Lio/dcloud/common/ui/GifImageView;->b()V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/ui/GifImageView;->l:Lio/dcloud/common/ui/GifImageView$a;

    if-eqz v0, :cond_1b

    .line 6
    invoke-interface {v0, p1}, Lio/dcloud/common/ui/GifImageView$a;->a(F)V

    :cond_1b
    return-void
.end method

###### Class io.dcloud.common.ui.GifImageView.a (io.dcloud.common.ui.GifImageView$a)
.class public interface abstract Lio/dcloud/common/ui/GifImageView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/ui/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(F)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method
