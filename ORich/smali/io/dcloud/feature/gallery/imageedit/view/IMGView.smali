###### Class io.dcloud.feature.gallery.imageedit.view.IMGView (io.dcloud.feature.gallery.imageedit.view.IMGView)
.class public Lio/dcloud/feature/gallery/imageedit/view/IMGView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lio/dcloud/feature/gallery/imageedit/c/j/e$a;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;,
        Lio/dcloud/feature/gallery/imageedit/view/IMGView$b;
    }
.end annotation


# instance fields
.field private a:Lio/dcloud/feature/gallery/imageedit/c/b;

.field private b:Lio/dcloud/feature/gallery/imageedit/c/a;

.field private c:Landroid/view/GestureDetector;

.field private d:Landroid/view/ScaleGestureDetector;

.field private e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

.field private f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p2, Lio/dcloud/feature/gallery/imageedit/c/b;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    iput-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    .line 6
    new-instance p2, Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-direct {p2}, Lio/dcloud/feature/gallery/imageedit/c/a;-><init>()V

    iput-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    .line 14
    new-instance p2, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;-><init>(Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;)V

    iput-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->g:I

    .line 18
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    .line 20
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->i:Landroid/graphics/Paint;

    .line 26
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    const/high16 p3, 0x41600000    # 14.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/CornerPathEffect;

    invoke-direct {v0, p3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 30
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 31
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 34
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->i:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->i:Landroid/graphics/Paint;

    const/high16 p3, 0x42900000    # 72.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->i:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/CornerPathEffect;

    invoke-direct {v0, p3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 38
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->i:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 39
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->i:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 52
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Landroid/content/Context;)V

    .line 53
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/feature/gallery/imageedit/c/k/b;->a(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/c;->a(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    .line 4
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lio/dcloud/feature/gallery/imageedit/view/IMGView$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$b;-><init>(Lio/dcloud/feature/gallery/imageedit/view/IMGView;Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->c:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 6
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->d:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->b()Landroid/graphics/RectF;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 23
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(Landroid/graphics/Canvas;)V

    .line 26
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->k()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_93

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->e()Z

    move-result v0

    if-nez v0, :cond_93

    .line 27
    :cond_39
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c(Landroid/graphics/Canvas;)I

    move-result v0

    .line 28
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v1

    sget-object v2, Lio/dcloud/feature/gallery/imageedit/c/b;->c:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v1, v2, :cond_8e

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->e()Z

    move-result v1

    if-nez v1, :cond_8e

    .line 29
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    const/high16 v2, 0x42900000    # 72.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->b()Landroid/graphics/RectF;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v2}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/c/c;->c()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 37
    :cond_8e
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v1, p1, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Landroid/graphics/Canvas;I)V

    .line 41
    :cond_93
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Landroid/graphics/Canvas;)V

    .line 42
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_f2

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->e()Z

    move-result v0

    if-nez v0, :cond_f2

    .line 43
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/c/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->b()Landroid/graphics/RectF;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/c;->c()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    :cond_f2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 56
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->f(Landroid/graphics/Canvas;)V

    .line 59
    :cond_ff
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->d(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 64
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->i()Z

    move-result v0

    if-nez v0, :cond_119

    .line 66
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->e(Landroid/graphics/Canvas;)V

    .line 67
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->f(Landroid/graphics/Canvas;)V

    .line 71
    :cond_119
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_145

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Landroid/graphics/Canvas;FF)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_145
    return-void
.end method

.method private a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    iget v1, p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;->c:F

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->d(F)V

    .line 101
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    iget v1, p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;->d:F

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c(F)V

    .line 102
    iget v0, p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p1, p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;->b:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(II)Z

    move-result p1

    if-nez p1, :cond_23

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_23
    return-void
.end method

.method private a(Lio/dcloud/feature/gallery/imageedit/c/i/a;Lio/dcloud/feature/gallery/imageedit/c/i/a;)V
    .registers 4

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    if-nez v0, :cond_13

    .line 8
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/c/f/a;

    invoke-direct {v0}, Lio/dcloud/feature/gallery/imageedit/c/f/a;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    .line 9
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    :cond_13
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/f/a;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e()V

    return-void
.end method

.method private a(FF)Z
    .registers 8

    .line 113
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    neg-float v3, p1

    neg-float v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(FFFF)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 115
    invoke-direct {p0, v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    const/4 p1, 0x1

    return p1

    .line 118
    :cond_19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(II)Z

    move-result p1

    return p1
.end method

.method private a(II)Z
    .registers 4

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-eq v0, p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    .line 105
    :cond_f
    :goto_f
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lio/dcloud/feature/gallery/imageedit/view/IMGView;FF)Z
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)Lio/dcloud/feature/gallery/imageedit/c/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    return-object p0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->b(FF)V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->c(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->a(FF)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_1f
    return v1
.end method

.method private e()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->j()V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/a;->c(FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object v1

    .line 5
    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    return-void
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private f()Z
    .registers 5

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 13
    :cond_a
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->g()Lio/dcloud/feature/gallery/imageedit/c/c;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Lio/dcloud/feature/gallery/imageedit/c/c;FF)V

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->f()V

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x1

    return v0
.end method

.method private f(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 v3, 0x3

    if-eq v0, v3, :cond_16

    return v2

    .line 5
    :cond_11
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 8
    :cond_16
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->b(I)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f()Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    return v1

    .line 9
    :cond_2b
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->u()V

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->setMode(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
            ">(TV;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    move-object p2, p1

    check-cast p2, Lio/dcloud/feature/gallery/imageedit/c/j/e;

    invoke-interface {p2, p0}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->a(Lio/dcloud/feature/gallery/imageedit/c/j/e$a;)V

    .line 79
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    check-cast p1, Lio/dcloud/feature/gallery/imageedit/c/j/a;

    invoke-virtual {p2, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    :cond_12
    return-void
.end method

.method public a(Lio/dcloud/feature/gallery/imageedit/c/d;)V
    .registers 4

    .line 80
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGStickerTextView;->setText(Lio/dcloud/feature/gallery/imageedit/c/d;)V

    .line 84
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 90
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 95
    invoke-virtual {p0, v0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method a(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 96
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->d()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 97
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->j()V

    return v0

    .line 99
    :cond_b
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object p1

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne p1, v1, :cond_16

    return v0

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
            ">(TV;)Z"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    if-eqz v0, :cond_a

    .line 107
    move-object v1, p1

    check-cast v1, Lio/dcloud/feature/gallery/imageedit/c/j/a;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->e(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    .line 109
    :cond_a
    move-object v0, p1

    check-cast v0, Lio/dcloud/feature/gallery/imageedit/c/j/e;

    invoke-interface {v0, p0}, Lio/dcloud/feature/gallery/imageedit/c/j/e;->b(Lio/dcloud/feature/gallery/imageedit/c/j/e$a;)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 112
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->setMode(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    .line 4
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e()V

    return-void
.end method

.method public b(II)V
    .registers 4

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    if-eqz v0, :cond_7

    .line 6
    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(II)V

    :cond_7
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
            ">(TV;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    check-cast p1, Lio/dcloud/feature/gallery/imageedit/c/j/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->d(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->d()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    const/16 v1, -0x5a

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(I)V

    .line 3
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e()V

    :cond_10
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lio/dcloud/feature/gallery/imageedit/c/j/a;",
            ">(TV;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    check-cast p1, Lio/dcloud/feature/gallery/imageedit/c/j/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->f(Lio/dcloud/feature/gallery/imageedit/c/j/a;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method d(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 3
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->g:I

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->d:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 12
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v1

    .line 14
    sget-object v2, Lio/dcloud/feature/gallery/imageedit/c/b;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_35

    sget-object v2, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v1, v2, :cond_24

    goto :goto_35

    .line 16
    :cond_24
    iget v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->g:I

    if-le v1, v3, :cond_30

    .line 17
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f()Z

    .line 18
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_39

    .line 20
    :cond_30
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_39

    .line 21
    :cond_35
    :goto_35
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_39
    or-int/2addr v0, v1

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_59

    if-eq v1, v3, :cond_46

    const/4 p1, 0x3

    if-eq v1, p1, :cond_46

    goto :goto_73

    .line 38
    :cond_46
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/a;->g(FF)V

    .line 39
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e()V

    goto :goto_73

    .line 40
    :cond_59
    iget-object v1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->f(FF)V

    .line 41
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object p1

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->d:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne p1, v1, :cond_73

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_73
    :goto_73
    return v0
.end method

.method g()Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSteady: isHoming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMGView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->d()Z

    move-result v0

    if-nez v0, :cond_34

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/a;->e(FF)V

    .line 5
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e()V

    const/4 v0, 0x1

    return v0

    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method public getMode()Lio/dcloud/feature/gallery/imageedit/c/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->s()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e()V

    return-void
.end method

.method public i()Landroid/graphics/Bitmap;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->t()V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->e()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v2}, Lio/dcloud/feature/gallery/imageedit/c/a;->b()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 8
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    iget-object v3, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v3}, Lio/dcloud/feature/gallery/imageedit/c/a;->d()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 10
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 13
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 14
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 16
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 17
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 18
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 21
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    iget v4, v0, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v1, v1, v4, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 27
    invoke-direct {p0, v3}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public k()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->w()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public l()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->x()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "IMGView"

    const-string v0, "onAnimationCancel"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/f/a;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "IMGView"

    const-string v0, "onAnimationEnd"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    invoke-virtual {v2}, Lio/dcloud/feature/gallery/imageedit/c/f/a;->a()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(FFZ)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(FF)Lio/dcloud/feature/gallery/imageedit/c/i/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    :cond_32
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "IMGView"

    const-string v0, "onAnimationStart"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e:Lio/dcloud/feature/gallery/imageedit/c/f/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/f/a;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(Z)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(F)V

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/gallery/imageedit/c/i/a;

    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->r()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_17

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1

    .line 4
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_e

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p5, p3

    int-to-float p3, p5

    invoke-virtual {p1, p2, p3}, Lio/dcloud/feature/gallery/imageedit/c/a;->h(FF)V

    :cond_e
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 7

    .line 1
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->g:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_26

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    add-float/2addr v3, v4

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    add-float/2addr v4, p1

    .line 5
    invoke-virtual {v0, v2, v3, v4}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(FFF)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    .line 1
    iget p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->g:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_b

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->p()V

    return v0

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->q()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_16

    :cond_d
    const-wide/16 v0, 0x4b0

    .line 7
    invoke-virtual {p0, p0, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    .line 8
    :cond_13
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    :goto_16
    invoke-virtual {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->g()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x1f4

    .line 2
    invoke-virtual {p0, p0, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method

.method public setDoodleTouchListener(Lio/dcloud/feature/gallery/imageedit/c/a$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Lio/dcloud/feature/gallery/imageedit/c/a$b;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setMode(Lio/dcloud/feature/gallery/imageedit/c/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->c()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a:Lio/dcloud/feature/gallery/imageedit/c/b;

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/c;->a(Lio/dcloud/feature/gallery/imageedit/c/b;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    invoke-virtual {p1}, Lio/dcloud/feature/gallery/imageedit/c/a;->j()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 9
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->e()V

    goto :goto_28

    .line 11
    :cond_1e
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b:Lio/dcloud/feature/gallery/imageedit/c/a;

    new-instance v0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;-><init>(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)V

    invoke-virtual {p1, v0}, Lio/dcloud/feature/gallery/imageedit/c/a;->a(Lio/dcloud/feature/gallery/imageedit/c/a$c;)V

    :goto_28
    return-void
.end method

.method public setPenColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->f:Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/gallery/imageedit/c/c;->a(I)V

    return-void
.end method

###### Class io.dcloud.feature.gallery.imageedit.view.IMGView.a (io.dcloud.feature.gallery.imageedit.view.IMGView$a)
.class Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gallery/imageedit/c/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gallery/imageedit/view/IMGView;->setMode(Lio/dcloud/feature/gallery/imageedit/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-static {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-static {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)Lio/dcloud/feature/gallery/imageedit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(Lio/dcloud/feature/gallery/imageedit/c/a$c;)V

    return-void
.end method

###### Class io.dcloud.feature.gallery.imageedit.view.IMGView.b (io.dcloud.feature.gallery.imageedit.view.IMGView$b)
.class Lio/dcloud/feature/gallery/imageedit/view/IMGView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gallery/imageedit/view/IMGView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;


# direct methods
.method private constructor <init>(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$b;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/gallery/imageedit/view/IMGView;Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$b;-><init>(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$b;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-static {p1, p3, p4}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Lio/dcloud/feature/gallery/imageedit/view/IMGView;FF)Z

    move-result p1

    return p1
.end method

###### Class io.dcloud.feature.gallery.imageedit.view.IMGView.c (io.dcloud.feature.gallery.imageedit.view.IMGView$c)
.class Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;
.super Lio/dcloud/feature/gallery/imageedit/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gallery/imageedit/view/IMGView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private e:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/c/c;-><init>()V

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;-><init>()V

    return-void
.end method


# virtual methods
.method a(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method b(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 p1, -0x80000000

    .line 3
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->e:I

    return-void
.end method

.method b(I)Z
    .registers 3

    .line 4
    iget v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->e:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method c(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->e:I

    return-void
.end method

.method e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$c;->e:I

    return-void
.end method

.method g()Lio/dcloud/feature/gallery/imageedit/c/c;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/c;->b()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v0

    sget-object v1, Lio/dcloud/feature/gallery/imageedit/c/b;->b:Lio/dcloud/feature/gallery/imageedit/c/b;

    if-ne v0, v1, :cond_e

    const/high16 v0, 0x41600000    # 14.0f

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/c;->a(F)V

    goto :goto_13

    :cond_e
    const/high16 v0, 0x42900000    # 72.0f

    .line 4
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/c;->a(F)V

    .line 6
    :goto_13
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/c/c;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lio/dcloud/feature/gallery/imageedit/c/c;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/c;->b()Lio/dcloud/feature/gallery/imageedit/c/b;

    move-result-object v2

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/c;->a()I

    move-result v3

    invoke-virtual {p0}, Lio/dcloud/feature/gallery/imageedit/c/c;->d()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dcloud/feature/gallery/imageedit/c/c;-><init>(Landroid/graphics/Path;Lio/dcloud/feature/gallery/imageedit/c/b;IF)V

    return-object v0
.end method
