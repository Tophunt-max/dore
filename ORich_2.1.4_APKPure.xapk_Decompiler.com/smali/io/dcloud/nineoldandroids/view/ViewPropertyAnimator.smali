###### Class io.dcloud.nineoldandroids.view.ViewPropertyAnimator (io.dcloud.nineoldandroids.view.ViewPropertyAnimator)
.class public abstract Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANIMATORS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 2
    sput-object v0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;->ANIMATORS:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;->ANIMATORS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;

    if-nez v1, :cond_30

    .line 3
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1e

    .line 5
    new-instance v1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;

    invoke-direct {v1, p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;-><init>(Landroid/view/View;)V

    goto :goto_2d

    :cond_1e
    const/16 v2, 0xb

    if-lt v1, v2, :cond_28

    .line 7
    new-instance v1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-direct {v1, p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;-><init>(Landroid/view/View;)V

    goto :goto_2d

    .line 9
    :cond_28
    new-instance v1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-direct {v1, p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorPreHC;-><init>(Landroid/view/View;)V

    .line 11
    :goto_2d
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-object v1
.end method


# virtual methods
.method public abstract alpha(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract alphaBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract cancel()V
.end method

.method public abstract getDuration()J
.end method

.method public abstract getStartDelay()J
.end method

.method public abstract rotation(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setDuration(J)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setStartDelay(J)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract start()V
.end method

.method public abstract translationX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract translationXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract translationY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract translationYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract x(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract xBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract y(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract yBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
.end method
