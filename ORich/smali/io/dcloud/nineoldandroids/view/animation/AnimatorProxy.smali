###### Class io.dcloud.nineoldandroids.view.animation.AnimatorProxy (io.dcloud.nineoldandroids.view.animation.AnimatorProxy)
.class public final Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# static fields
.field public static final NEEDS_PROXY:Z

.field private static final PROXIES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAfter:Landroid/graphics/RectF;

.field private mAlpha:F

.field private final mBefore:Landroid/graphics/RectF;

.field private final mCamera:Landroid/graphics/Camera;

.field private mHasPivot:Z

.field private mPivotX:F

.field private mPivotY:F

.field private mRotationX:F

.field private mRotationY:F

.field private mRotationZ:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    sput-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 5
    sput-object v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    .line 11
    iput v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    .line 12
    iput v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    const-wide/16 v0, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 9
    invoke-direct {p0, v0, p2}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 15
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_34

    .line 17
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 18
    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 20
    :cond_34
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_40

    .line 22
    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 23
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_40
    return-void
.end method

.method private invalidateAfterUpdate()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_44

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_44

    .line 6
    :cond_11
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    .line 7
    invoke-direct {p0, v1, v0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 8
    iget-object v2, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 11
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 12
    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 13
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 14
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 15
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    :cond_44
    :goto_44
    return-void
.end method

.method private prepareForUpdate()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 3
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method private transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V
    .registers 11

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    .line 3
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_13

    .line 4
    iget v3, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    goto :goto_15

    :cond_13
    div-float v3, v0, v2

    :goto_15
    if-eqz v1, :cond_1a

    .line 5
    iget v1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    goto :goto_1c

    :cond_1a
    div-float v1, p2, v2

    .line 7
    :goto_1c
    iget v2, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    .line 8
    iget v4, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    .line 9
    iget v5, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-nez v7, :cond_2f

    cmpl-float v7, v4, v6

    if-nez v7, :cond_2f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4c

    .line 11
    :cond_2f
    iget-object v6, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    .line 12
    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 13
    invoke-virtual {v6, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 14
    invoke-virtual {v6, v4}, Landroid/graphics/Camera;->rotateY(F)V

    neg-float v2, v5

    .line 15
    invoke-virtual {v6, v2}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 16
    invoke-virtual {v6, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 17
    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    neg-float v2, v3

    neg-float v4, v1

    .line 18
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 19
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 22
    :cond_4c
    iget v2, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    .line 23
    iget v4, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v5

    if-nez v6, :cond_5a

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6e

    .line 25
    :cond_5a
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v3, v0

    neg-float v3, v3

    mul-float v2, v2, v0

    sub-float/2addr v2, v0

    mul-float v3, v3, v2

    div-float/2addr v1, p2

    neg-float v0, v1

    mul-float v4, v4, p2

    sub-float/2addr v4, p2

    mul-float v0, v0, v4

    .line 28
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 31
    :cond_6e
    iget p2, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    if-eqz v1, :cond_10

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eq v1, v2, :cond_18

    .line 4
    :cond_10
    new-instance v1, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    invoke-direct {v1, p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;-><init>(Landroid/view/View;)V

    .line 5
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v1
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_16

    .line 3
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    return v0
.end method

.method public getPivotX()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    return v0
.end method

.method public getRotation()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    return v0
.end method

.method public getRotationX()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    return v0
.end method

.method public getRotationY()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    return v0
.end method

.method public getScrollX()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getTranslationX()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    return v0
.end method

.method public getX()F
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public setAlpha(F)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    .line 2
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    .line 3
    iget-object p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_15

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_15
    return-void
.end method

.method public setPivotX(F)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    .line 2
    :cond_a
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    .line 4
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    .line 5
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_15
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    .line 2
    :cond_a
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    .line 4
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    .line 5
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_15
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 3
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    .line 4
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_e
    return-void
.end method

.method public setRotationX(F)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 3
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    .line 4
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_e
    return-void
.end method

.method public setRotationY(F)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 3
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    .line 4
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_e
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 3
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    .line 4
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_e
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 3
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    .line 4
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_e
    return-void
.end method

.method public setScrollX(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_11
    return-void
.end method

.method public setScrollY(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_11
    return-void
.end method

.method public setTranslationX(F)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 3
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    .line 4
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_e
    return-void
.end method

.method public setTranslationY(F)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 3
    iput p1, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    .line 4
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_e
    return-void
.end method

.method public setX(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    :cond_13
    return-void
.end method

.method public setY(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    :cond_13
    return-void
.end method
