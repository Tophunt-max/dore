###### Class io.dcloud.feature.gallery.imageedit.c.f.a (io.dcloud.feature.gallery.imageedit.c.f.a)
.class public Lio/dcloud/feature/gallery/imageedit/c/f/a;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lio/dcloud/feature/gallery/imageedit/c/i/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/f/a;->a:Z

    .line 7
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/feature/gallery/imageedit/c/i/a;Lio/dcloud/feature/gallery/imageedit/c/i/a;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gallery/imageedit/c/f/a;->setObjectValues([Ljava/lang/Object;)V

    .line 2
    invoke-static {p1, p2}, Lio/dcloud/feature/gallery/imageedit/c/i/a;->a(Lio/dcloud/feature/gallery/imageedit/c/i/a;Lio/dcloud/feature/gallery/imageedit/c/i/a;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/gallery/imageedit/c/f/a;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    .line 3
    iget-boolean v0, p0, Lio/dcloud/feature/gallery/imageedit/c/f/a;->a:Z

    return v0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/f/a;->b:Lio/dcloud/feature/gallery/imageedit/c/i/b;

    if-nez p1, :cond_e

    .line 3
    new-instance p1, Lio/dcloud/feature/gallery/imageedit/c/i/b;

    invoke-direct {p1}, Lio/dcloud/feature/gallery/imageedit/c/i/b;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/f/a;->b:Lio/dcloud/feature/gallery/imageedit/c/i/b;

    .line 5
    :cond_e
    iget-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/f/a;->b:Lio/dcloud/feature/gallery/imageedit/c/i/b;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method
