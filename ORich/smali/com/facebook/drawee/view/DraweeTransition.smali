###### Class com.facebook.drawee.view.DraweeTransition (com.facebook.drawee.view.DraweeTransition)
.class public Lcom/facebook/drawee/view/DraweeTransition;
.super Landroid/transition/Transition;
.source "DraweeTransition.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "draweeTransition:bounds"


# instance fields
.field private final mFromFocusPoint:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFromScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final mToFocusPoint:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromScale",
            "toScale"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/drawee/view/DraweeTransition;-><init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 5
    .param p3    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/PointF;
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
            "fromScale",
            "toScale",
            "fromFocusPoint",
            "toFocusPoint"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition;->mFromScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 66
    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 67
    iput-object p3, p0, Lcom/facebook/drawee/view/DraweeTransition;->mFromFocusPoint:Landroid/graphics/PointF;

    .line 68
    iput-object p4, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToFocusPoint:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/drawee/view/DraweeTransition;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/drawee/view/DraweeTransition;)Landroid/graphics/PointF;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToFocusPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transitionValues"
        }
    .end annotation

    .line 129
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/drawee/view/GenericDraweeView;

    if-eqz v0, :cond_1f

    .line 130
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string p1, "draweeTransition:bounds"

    .line 130
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public static createTransitionSet(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/transition/TransitionSet;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromScale",
            "toScale"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0, v0}, Lcom/facebook/drawee/view/DraweeTransition;->createTransitionSet(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public static createTransitionSet(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/transition/TransitionSet;
    .registers 6
    .param p2    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
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
            "fromScale",
            "toScale",
            "fromFocusPoint",
            "toFocusPoint"
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 54
    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 55
    new-instance v1, Lcom/facebook/drawee/view/DraweeTransition;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/drawee/view/DraweeTransition;-><init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transitionValues"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeTransition;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transitionValues"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeTransition;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sceneRoot",
            "startValues",
            "endValues"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_62

    if-nez p3, :cond_6

    goto :goto_62

    .line 91
    :cond_6
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "draweeTransition:bounds"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/Rect;

    .line 92
    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v5, :cond_62

    if-nez v6, :cond_1f

    goto :goto_62

    .line 96
    :cond_1f
    iget-object p3, p0, Lcom/facebook/drawee/view/DraweeTransition;->mFromScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-ne p3, v0, :cond_2c

    iget-object p3, p0, Lcom/facebook/drawee/view/DraweeTransition;->mFromFocusPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToFocusPoint:Landroid/graphics/PointF;

    if-ne p3, v0, :cond_2c

    return-object p1

    .line 99
    :cond_2c
    iget-object p1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast p1, Lcom/facebook/drawee/view/GenericDraweeView;

    .line 100
    new-instance p2, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;

    iget-object v3, p0, Lcom/facebook/drawee/view/DraweeTransition;->mFromScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v4, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToScale:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v7, p0, Lcom/facebook/drawee/view/DraweeTransition;->mFromFocusPoint:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/facebook/drawee/view/DraweeTransition;->mToFocusPoint:Landroid/graphics/PointF;

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;-><init>(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 103
    invoke-virtual {p1}, Lcom/facebook/drawee/view/GenericDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {p3, p2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 105
    fill-array-data p3, :array_64

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 106
    new-instance v0, Lcom/facebook/drawee/view/DraweeTransition$1;

    invoke-direct {v0, p0, p2}, Lcom/facebook/drawee/view/DraweeTransition$1;-><init>(Lcom/facebook/drawee/view/DraweeTransition;Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    new-instance p2, Lcom/facebook/drawee/view/DraweeTransition$2;

    invoke-direct {p2, p0, p1}, Lcom/facebook/drawee/view/DraweeTransition$2;-><init>(Lcom/facebook/drawee/view/DraweeTransition;Lcom/facebook/drawee/view/GenericDraweeView;)V

    invoke-virtual {p3, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p3

    :cond_62
    :goto_62
    return-object p1

    nop

    :array_64
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

###### Class com.facebook.drawee.view.DraweeTransition.AnonymousClass1 (com.facebook.drawee.view.DraweeTransition$1)
.class Lcom/facebook/drawee/view/DraweeTransition$1;
.super Ljava/lang/Object;
.source "DraweeTransition.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/view/DraweeTransition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/drawee/view/DraweeTransition;

.field final synthetic val$scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/view/DraweeTransition;Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$scaleType"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition$1;->this$0:Lcom/facebook/drawee/view/DraweeTransition;

    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeTransition$1;->val$scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 111
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeTransition$1;->val$scaleType:Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/ScalingUtils$InterpolatingScaleType;->setValue(F)V

    return-void
.end method

###### Class com.facebook.drawee.view.DraweeTransition.AnonymousClass2 (com.facebook.drawee.view.DraweeTransition$2)
.class Lcom/facebook/drawee/view/DraweeTransition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DraweeTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/view/DraweeTransition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/drawee/view/DraweeTransition;

.field final synthetic val$draweeView:Lcom/facebook/drawee/view/GenericDraweeView;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/view/DraweeTransition;Lcom/facebook/drawee/view/GenericDraweeView;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$draweeView"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->this$0:Lcom/facebook/drawee/view/DraweeTransition;

    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->val$draweeView:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 118
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->val$draweeView:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/GenericDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->this$0:Lcom/facebook/drawee/view/DraweeTransition;

    invoke-static {v0}, Lcom/facebook/drawee/view/DraweeTransition;->access$000(Lcom/facebook/drawee/view/DraweeTransition;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 119
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->this$0:Lcom/facebook/drawee/view/DraweeTransition;

    invoke-static {p1}, Lcom/facebook/drawee/view/DraweeTransition;->access$100(Lcom/facebook/drawee/view/DraweeTransition;)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 120
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->val$draweeView:Lcom/facebook/drawee/view/GenericDraweeView;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/GenericDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeTransition$2;->this$0:Lcom/facebook/drawee/view/DraweeTransition;

    invoke-static {v0}, Lcom/facebook/drawee/view/DraweeTransition;->access$100(Lcom/facebook/drawee/view/DraweeTransition;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageFocusPoint(Landroid/graphics/PointF;)V

    :cond_2a
    return-void
.end method
