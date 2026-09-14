###### Class com.facebook.drawee.drawable.ScalingUtils (com.facebook.drawee.drawable.ScalingUtils)
.class public Lcom/facebook/drawee/drawable/ScalingUtils;
.super Ljava/lang/Object;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;,
        Lcom/facebook/drawee/drawable/ScalingUtils$StatefulScaleType;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitY;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitX;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFocusCrop;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitEnd;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitCenter;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitBottomStart;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitXY;,
        Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;,
        Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveScaleTypeDrawable(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;
    .registers 5
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 131
    :cond_4
    instance-of v1, p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    if-eqz v1, :cond_b

    .line 132
    check-cast p0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    return-object p0

    .line 133
    :cond_b
    instance-of v1, p0, Lcom/facebook/drawee/drawable/DrawableParent;

    if-eqz v1, :cond_1a

    .line 134
    check-cast p0, Lcom/facebook/drawee/drawable/DrawableParent;

    invoke-interface {p0}, Lcom/facebook/drawee/drawable/DrawableParent;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 135
    invoke-static {p0}, Lcom/facebook/drawee/drawable/ScalingUtils;->getActiveScaleTypeDrawable(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    move-result-object p0

    return-object p0

    .line 136
    :cond_1a
    instance-of v1, p0, Lcom/facebook/drawee/drawable/ArrayDrawable;

    if-eqz v1, :cond_35

    .line 137
    check-cast p0, Lcom/facebook/drawee/drawable/ArrayDrawable;

    .line 138
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/ArrayDrawable;->getNumberOfLayers()I

    move-result v1

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_35

    .line 141
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/drawable/ArrayDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 142
    invoke-static {v3}, Lcom/facebook/drawee/drawable/ScalingUtils;->getActiveScaleTypeDrawable(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    move-result-object v3

    if-eqz v3, :cond_32

    return-object v3

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_35
    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.AbstractScaleType (com.facebook.drawee.drawable.ScalingUtils$AbstractScaleType)
.class public abstract Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.super Ljava/lang/Object;
.source "ScalingUtils.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractScaleType"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .registers 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY"
        }
    .end annotation

    .line 162
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    move v4, p3

    int-to-float v1, v4

    div-float v8, v0, v1

    .line 163
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    move v5, p4

    int-to-float v1, v5

    div-float v9, v0, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    move/from16 v7, p6

    .line 164
    invoke-virtual/range {v1 .. v9}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;->getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V

    return-object p1
.end method

.method public abstract getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.InterpolatingScaleType (com.facebook.drawee.drawable.ScalingUtils$InterpolatingScaleType)
.class public Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;
.super Ljava/lang/Object;
.source "ScalingUtils.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
.implements Lcom/facebook/drawee/drawable/ScalingUtils$StatefulScaleType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterpolatingScaleType"
.end annotation


# instance fields
.field private final mBoundsFrom:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBoundsTo:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFocusPointFrom:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFocusPointTo:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInterpolatingValue:F

.field private final mMatrixValuesFrom:[F

.field private final mMatrixValuesInterpolated:[F

.field private final mMatrixValuesTo:[F

.field private final mScaleTypeFrom:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final mScaleTypeTo:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaleTypeFrom",
            "scaleTypeTo"
        }
    .end annotation

    const/4 v0, 0x0

    .line 543
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;-><init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleTypeFrom",
            "scaleTypeTo",
            "boundsFrom",
            "boundsTo"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 539
    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;-><init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 9
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleTypeFrom",
            "scaleTypeTo",
            "boundsFrom",
            "boundsTo",
            "focusPointFrom",
            "focusPointTo"
        }
    .end annotation

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 513
    iput-object v1, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mMatrixValuesFrom:[F

    new-array v1, v0, [F

    .line 514
    iput-object v1, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mMatrixValuesTo:[F

    new-array v0, v0, [F

    .line 515
    iput-object v0, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mMatrixValuesInterpolated:[F

    .line 526
    iput-object p1, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mScaleTypeFrom:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 527
    iput-object p2, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mScaleTypeTo:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 528
    iput-object p3, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mBoundsFrom:Landroid/graphics/Rect;

    .line 529
    iput-object p4, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mBoundsTo:Landroid/graphics/Rect;

    .line 530
    iput-object p5, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointFrom:Landroid/graphics/PointF;

    .line 531
    iput-object p6, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointTo:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getBoundsFrom()Landroid/graphics/Rect;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mBoundsFrom:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBoundsTo()Landroid/graphics/Rect;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mBoundsTo:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFocusPointFrom()Landroid/graphics/PointF;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointFrom:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getFocusPointTo()Landroid/graphics/PointF;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointTo:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getScaleTypeFrom()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mScaleTypeFrom:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public getScaleTypeTo()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 2

    .line 551
    iget-object v0, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mScaleTypeTo:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .registers 2

    .line 588
    iget v0, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mInterpolatingValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .registers 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "parentBounds",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY"
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    .line 599
    iget-object v1, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mBoundsFrom:Landroid/graphics/Rect;

    if-eqz v1, :cond_8

    move-object v3, v1

    goto :goto_9

    :cond_8
    move-object v3, p2

    .line 600
    :goto_9
    iget-object v1, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mBoundsTo:Landroid/graphics/Rect;

    if-eqz v1, :cond_f

    move-object v9, v1

    goto :goto_10

    :cond_f
    move-object v9, p2

    .line 602
    :goto_10
    iget-object v1, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mScaleTypeFrom:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v2, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointFrom:Landroid/graphics/PointF;

    if-nez v2, :cond_18

    move v6, p5

    goto :goto_1b

    :cond_18
    iget v2, v2, Landroid/graphics/PointF;->x:F

    move v6, v2

    :goto_1b
    iget-object v2, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointFrom:Landroid/graphics/PointF;

    if-nez v2, :cond_22

    move/from16 v7, p6

    goto :goto_25

    :cond_22
    iget v2, v2, Landroid/graphics/PointF;->y:F

    move v7, v2

    :goto_25
    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 609
    iget-object v1, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mMatrixValuesFrom:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 610
    iget-object v1, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mScaleTypeTo:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v2, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointTo:Landroid/graphics/PointF;

    if-nez v2, :cond_38

    move v6, p5

    goto :goto_3b

    :cond_38
    iget v2, v2, Landroid/graphics/PointF;->x:F

    move v6, v2

    :goto_3b
    iget-object v2, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointTo:Landroid/graphics/PointF;

    if-nez v2, :cond_42

    move/from16 v7, p6

    goto :goto_45

    :cond_42
    iget v2, v2, Landroid/graphics/PointF;->y:F

    move v7, v2

    :goto_45
    move-object v2, p1

    move-object v3, v9

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 617
    iget-object v1, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mMatrixValuesTo:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    :goto_52
    const/16 v2, 0x9

    if-ge v1, v2, :cond_6f

    .line 620
    iget-object v2, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mMatrixValuesInterpolated:[F

    iget-object v3, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mMatrixValuesFrom:[F

    aget v3, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mInterpolatingValue:F

    sub-float/2addr v4, v5

    mul-float v3, v3, v4

    iget-object v4, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mMatrixValuesTo:[F

    aget v4, v4, v1

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 624
    :cond_6f
    iget-object v1, v0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mMatrixValuesInterpolated:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v8
.end method

.method public getValue()F
    .registers 2

    .line 583
    iget v0, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mInterpolatingValue:F

    return v0
.end method

.method public setValue(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 578
    iput p1, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mInterpolatingValue:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 630
    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mScaleTypeFrom:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 632
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointFrom:Landroid/graphics/PointF;

    .line 633
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mScaleTypeTo:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 634
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->mFocusPointTo:Landroid/graphics/PointF;

    .line 635
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "InterpolatingScaleType(%s (%s) -> %s (%s))"

    .line 630
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleType (com.facebook.drawee.drawable.ScalingUtils$ScaleType)
.class public interface abstract Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
.super Ljava/lang/Object;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScaleType"
.end annotation


# static fields
.field public static final CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final FIT_BOTTOM_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final FIT_X:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final FIT_Y:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitXY;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 43
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitX;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_X:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 50
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitY;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_Y:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 57
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 64
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitCenter;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 71
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitEnd;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 74
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 81
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 88
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 98
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFocusCrop;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 105
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitBottomStart;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_BOTTOM_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method


# virtual methods
.method public abstract getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentBounds",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY"
        }
    .end annotation
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeCenter (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeCenter)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeCenter"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 315
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenter;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 327
    iget p5, p2, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p6

    sub-int/2addr p6, p3

    int-to-float p3, p6

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float p3, p3, p6

    add-float/2addr p5, p3

    .line 328
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p2, p4

    int-to-float p2, p2

    mul-float p2, p2, p6

    add-float/2addr p3, p2

    add-float/2addr p5, p6

    float-to-int p2, p5

    int-to-float p2, p2

    add-float/2addr p3, p6

    float-to-int p3, p3

    int-to-float p3, p3

    .line 329
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "center"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeCenterCrop (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeCenterCrop)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeCenterCrop"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 367
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterCrop;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    const/high16 p5, 0x3f000000    # 0.5f

    cmpl-float p6, p8, p7

    if-lez p6, :cond_1a

    .line 382
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p6

    int-to-float p6, p6

    int-to-float p3, p3

    mul-float p3, p3, p8

    sub-float/2addr p6, p3

    mul-float p6, p6, p5

    add-float/2addr p4, p6

    .line 383
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    move p7, p8

    goto :goto_2d

    .line 386
    :cond_1a
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 387
    iget p6, p2, Landroid/graphics/Rect;->top:I

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p7

    sub-float/2addr p2, p4

    mul-float p2, p2, p5

    add-float/2addr p2, p6

    move p4, p3

    .line 389
    :goto_2d
    invoke-virtual {p1, p7, p7}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p4, p5

    float-to-int p3, p4

    int-to-float p3, p3

    add-float/2addr p2, p5

    float-to-int p2, p2

    int-to-float p2, p2

    .line 390
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "center_crop"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeCenterInside (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeCenterInside)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeCenterInside"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 340
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 338
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 352
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result p5

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-static {p5, p6}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 353
    iget p6, p2, Landroid/graphics/Rect;->left:I

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p7

    int-to-float p7, p7

    int-to-float p3, p3

    mul-float p3, p3, p5

    sub-float/2addr p7, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p7, p7, p3

    add-float/2addr p6, p7

    .line 354
    iget p7, p2, Landroid/graphics/Rect;->top:I

    int-to-float p7, p7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p5

    sub-float/2addr p2, p4

    mul-float p2, p2, p3

    add-float/2addr p7, p2

    .line 355
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p6, p3

    float-to-int p2, p6

    int-to-float p2, p2

    add-float/2addr p7, p3

    float-to-int p3, p7

    int-to-float p3, p3

    .line 356
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "center_inside"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeFitBottomStart (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeFitBottomStart)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitBottomStart;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFitBottomStart"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 234
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitBottomStart;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitBottomStart;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitBottomStart;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 246
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 247
    iget p5, p2, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    .line 248
    iget p6, p2, Landroid/graphics/Rect;->top:I

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p3

    sub-float/2addr p2, p4

    add-float/2addr p6, p2

    .line 249
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p5, p2

    float-to-int p3, p5

    int-to-float p3, p3

    add-float/2addr p6, p2

    float-to-int p2, p6

    int-to-float p2, p2

    .line 250
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "fit_bottom_start"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeFitCenter (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeFitCenter)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitCenter;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFitCenter"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 261
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitCenter;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitCenter;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitCenter;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 273
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 274
    iget p6, p2, Landroid/graphics/Rect;->left:I

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p7

    int-to-float p7, p7

    int-to-float p3, p3

    mul-float p3, p3, p5

    sub-float/2addr p7, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p7, p7, p3

    add-float/2addr p6, p7

    .line 275
    iget p7, p2, Landroid/graphics/Rect;->top:I

    int-to-float p7, p7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p5

    sub-float/2addr p2, p4

    mul-float p2, p2, p3

    add-float/2addr p7, p2

    .line 276
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p6, p3

    float-to-int p2, p6

    int-to-float p2, p2

    add-float/2addr p7, p3

    float-to-int p3, p7

    int-to-float p3, p3

    .line 277
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "fit_center"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeFitEnd (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeFitEnd)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitEnd;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFitEnd"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 288
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitEnd;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitEnd;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitEnd;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 300
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result p5

    .line 301
    iget p6, p2, Landroid/graphics/Rect;->left:I

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p7

    int-to-float p7, p7

    int-to-float p3, p3

    mul-float p3, p3, p5

    sub-float/2addr p7, p3

    add-float/2addr p6, p7

    .line 302
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p5

    sub-float/2addr p2, p4

    add-float/2addr p3, p2

    .line 303
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p6, p2

    float-to-int p4, p6

    int-to-float p4, p4

    add-float/2addr p3, p2

    float-to-int p2, p3

    int-to-float p2, p2

    .line 304
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "fit_end"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeFitStart (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeFitStart)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFitStart"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitStart;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 205
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 219
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 220
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    .line 221
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 222
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p4, p3

    float-to-int p4, p4

    int-to-float p4, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    .line 223
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "fit_start"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeFitX (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeFitX)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitX;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFitX"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 437
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitX;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitX;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitX;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 435
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 451
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 452
    iget p5, p2, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p7

    sub-float/2addr p2, p4

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float p2, p2, p4

    add-float/2addr p5, p2

    .line 453
    invoke-virtual {p1, p7, p7}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p3, p4

    float-to-int p2, p3

    int-to-float p2, p2

    add-float/2addr p5, p4

    float-to-int p3, p5

    int-to-float p3, p3

    .line 454
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "fit_x"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeFitXY (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeFitXY)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitXY;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFitXY"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 181
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitXY;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitXY;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitXY;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 193
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 194
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 195
    invoke-virtual {p1, p7, p8}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p3, p4

    float-to-int p3, p3

    int-to-float p3, p3

    add-float/2addr p2, p4

    float-to-int p2, p2

    int-to-float p2, p2

    .line 196
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "fit_xy"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeFitY (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeFitY)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitY;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFitY"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 465
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitY;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitY;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFitY;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 463
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    .line 479
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    int-to-float p3, p3

    mul-float p3, p3, p8

    sub-float/2addr p5, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p5, p5, p3

    add-float/2addr p4, p5

    .line 480
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 481
    invoke-virtual {p1, p8, p8}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p4, p3

    float-to-int p4, p4

    int-to-float p4, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    .line 482
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "fit_y"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.ScaleTypeFocusCrop (com.facebook.drawee.drawable.ScalingUtils$ScaleTypeFocusCrop)
.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFocusCrop;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeFocusCrop"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 401
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFocusCrop;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFocusCrop;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeFocusCrop;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 399
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY",
            "scaleX",
            "scaleY"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v2, p8, p7

    if-lez v2, :cond_2b

    .line 416
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, v1

    int-to-float p3, p3

    mul-float p3, p3, p8

    mul-float p5, p5, p3

    sub-float/2addr p4, p5

    .line 417
    iget p5, p2, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p6

    int-to-float p6, p6

    sub-float/2addr p6, p3

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    add-float/2addr p5, p3

    .line 418
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    move p7, p8

    goto :goto_4d

    .line 421
    :cond_2b
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p5, p3

    .line 422
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v1

    int-to-float p4, p4

    mul-float p4, p4, p7

    mul-float p6, p6, p4

    sub-float/2addr p3, p6

    .line 423
    iget p6, p2, Landroid/graphics/Rect;->top:I

    int-to-float p6, p6

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p4

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr p2, p6

    .line 425
    :goto_4d
    invoke-virtual {p1, p7, p7}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p5, v1

    float-to-int p3, p5

    int-to-float p3, p3

    add-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    .line 426
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "focus_crop"

    return-object v0
.end method

###### Class com.facebook.drawee.drawable.ScalingUtils.StatefulScaleType (com.facebook.drawee.drawable.ScalingUtils$StatefulScaleType)
.class public interface abstract Lcom/facebook/drawee/drawable/ScalingUtils$StatefulScaleType;
.super Ljava/lang/Object;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatefulScaleType"
.end annotation


# virtual methods
.method public abstract getState()Ljava/lang/Object;
.end method
