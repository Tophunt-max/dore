###### Class io.dcloud.feature.gallery.imageedit.c.j.d (io.dcloud.feature.gallery.imageedit.c.j.d)
.class public Lio/dcloud/feature/gallery/imageedit/c/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Landroid/graphics/Matrix;


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/c/j/d;->d:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/c/j/d;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_c

    return v3

    :cond_c
    new-array v0, v2, [F

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lio/dcloud/feature/gallery/imageedit/c/j/d;->b:F

    sub-float/2addr v2, v4

    aput v2, v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v2, p0, Lio/dcloud/feature/gallery/imageedit/c/j/d;->c:F

    sub-float/2addr p2, v2

    aput p2, v0, v1

    .line 10
    sget-object p2, Lio/dcloud/feature/gallery/imageedit/c/j/d;->d:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 11
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/j/d;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    aget v2, v0, v3

    add-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 12
    iget-object p2, p0, Lio/dcloud/feature/gallery/imageedit/c/j/d;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    aget v0, v0, v1

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return v1

    .line 13
    :cond_3e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/gallery/imageedit/c/j/d;->b:F

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lio/dcloud/feature/gallery/imageedit/c/j/d;->c:F

    .line 15
    sget-object p2, Lio/dcloud/feature/gallery/imageedit/c/j/d;->d:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    return v1
.end method
