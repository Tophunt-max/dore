###### Class io.dcloud.nineoldandroids.animation.ValueAnimator (io.dcloud.nineoldandroids.animation.ValueAnimator)
.class public Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.super Lio/dcloud/nineoldandroids/animation/Animator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;,
        Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field static final ANIMATION_FRAME:I = 0x1

.field static final ANIMATION_START:I = 0x0

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field private static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDelayedAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sEndingAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static sFrameDelay:J

.field private static final sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static final sPendingAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 2
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 7
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;-><init>()V

    .line 8
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    .line 18
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;-><init>()V

    .line 19
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    .line 32
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;-><init>()V

    .line 33
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    .line 42
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;-><init>()V

    .line 43
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    .line 52
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;-><init>()V

    .line 53
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 64
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Lio/dcloud/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    .line 69
    new-instance v0, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    const-wide/16 v0, 0xa

    .line 142
    sput-wide v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Animator;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 78
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    const/4 v1, 0x0

    .line 83
    iput v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 88
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 104
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 114
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 120
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 126
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    const-wide/16 v1, 0x12c

    .line 133
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    const-wide/16 v1, 0x0

    .line 136
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    .line 143
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    const/4 v0, 0x1

    .line 150
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    .line 157
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lio/dcloud/nineoldandroids/animation/ValueAnimator;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    return-void
.end method

.method static synthetic access$11(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method static synthetic access$12()J
    .registers 2

    .line 1
    sget-wide v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$2()Ljava/lang/ThreadLocal;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/ThreadLocal;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/ThreadLocal;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$5(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$6(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$7()Ljava/lang/ThreadLocal;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/ThreadLocal;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$9(Lio/dcloud/nineoldandroids/animation/ValueAnimator;J)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result p0

    return p0
.end method

.method public static clearAllAnimations()V
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .registers 9

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 2
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 3
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    goto :goto_1b

    .line 5
    :cond_a
    iget-wide v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v2, p1, v2

    .line 6
    iget-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1b

    sub-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 9
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 10
    iput v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    return v1

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    return p1
.end method

.method private endAnimation()V
    .registers 6

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 5
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_46

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_37
    if-lt v3, v2, :cond_3a

    goto :goto_46

    .line 10
    :cond_3a
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 13
    :cond_46
    :goto_46
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 14
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .registers 2

    .line 1
    sget-wide v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static setFrameDelay(J)V
    .registers 2

    .line 1
    sput-wide p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method private start(Z)V
    .registers 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 4
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 6
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 8
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 9
    sget-object v1, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_4e

    .line 12
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 13
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 14
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 16
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4e

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3f
    if-lt v2, v1, :cond_42

    goto :goto_4e

    .line 21
    :cond_42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 25
    :cond_4e
    :goto_4e
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    if-nez v0, :cond_63

    .line 27
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V

    .line 28
    sget-object v1, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    :cond_63
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 31
    :cond_67
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startAnimation()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 2
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_34

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_34

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_25
    if-lt v2, v1, :cond_28

    goto :goto_34

    .line 10
    :cond_28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateValue(F)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-lt v2, v0, :cond_29

    .line 7
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_28

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_17
    if-lt v1, p1, :cond_1a

    goto :goto_28

    .line 10
    :cond_1a
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_28
    :goto_28
    return-void

    .line 11
    :cond_29
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method animationFrame(J)Z
    .registers 12

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1a

    .line 2
    iput v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 3
    iget-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_12

    .line 4
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    goto :goto_1a

    :cond_12
    sub-long v4, p1, v4

    .line 6
    iput-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v4, -0x1

    .line 8
    iput-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 11
    :cond_1a
    :goto_1a
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v3, :cond_23

    if-eq v0, v4, :cond_23

    goto :goto_83

    .line 14
    :cond_23
    iget-wide v6, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    const/high16 v0, 0x3f800000    # 1.0f

    cmp-long v8, v6, v1

    if-lez v8, :cond_32

    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    long-to-float p2, v6

    div-float/2addr p1, p2

    goto :goto_34

    :cond_32
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_34
    cmpl-float p2, p1, v0

    if-ltz p2, :cond_78

    .line 16
    iget p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    iget v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lt p2, v1, :cond_47

    const/4 p2, -0x1

    if-ne v1, p2, :cond_42

    goto :goto_47

    .line 32
    :cond_42
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_79

    .line 33
    :cond_47
    :goto_47
    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_61

    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_50
    if-lt v1, p2, :cond_53

    goto :goto_61

    .line 36
    :cond_53
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v2, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 39
    :cond_61
    :goto_61
    iget p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    if-ne p2, v4, :cond_6a

    .line 40
    iget-boolean p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 42
    :cond_6a
    iget p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v1, p1

    add-int/2addr p2, v1

    iput p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    rem-float/2addr p1, v0

    .line 44
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    :cond_78
    const/4 v3, 0x0

    .line 50
    :goto_79
    iget-boolean p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz p2, :cond_7f

    sub-float p1, v0, p1

    .line 53
    :cond_7f
    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    move v5, v3

    :goto_83
    return v5
.end method

.method public cancel()V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_20

    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4
    :cond_20
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_43

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 8
    invoke-interface {v1, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_32

    .line 11
    :cond_43
    :goto_43
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    :cond_46
    return-void
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->clone()Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 8

    .line 2
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/Animator;->clone()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 3
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_17
    if-lt v4, v3, :cond_1a

    goto :goto_28

    .line 8
    :cond_1a
    iget-object v5, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_28
    :goto_28
    const-wide/16 v3, -0x1

    .line 11
    iput-wide v3, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 12
    iput-boolean v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 13
    iput v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 14
    iput-boolean v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 15
    iput v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 16
    iput-boolean v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 17
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_5f

    .line 19
    array-length v3, v1

    .line 20
    new-array v4, v3, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    iput-object v4, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 21
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    :goto_46
    if-lt v2, v3, :cond_49

    goto :goto_5f

    .line 23
    :cond_49
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v4

    .line 24
    iget-object v5, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v4, v5, v2

    .line 25
    iget-object v5, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public end()V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 4
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    goto :goto_2a

    .line 5
    :cond_23
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_2a

    .line 6
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 10
    :cond_2a
    :goto_2a
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_37

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_37

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    goto :goto_3c

    :cond_37
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    .line 15
    :goto_3c
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method public getAnimatedFraction()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz p1, :cond_f

    .line 5
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentPlayTime()J
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_9

    goto :goto_11

    .line 4
    :cond_9
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_11
    :goto_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getValues()[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_18

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_8
    if-lt v1, v0, :cond_e

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_18

    .line 7
    :cond_e
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    :goto_18
    return-void
.end method

.method public isRunning()Z
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    return v1
.end method

.method public isStarted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public removeUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_13
    return-void
.end method

.method public reverse()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 2
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-ne v0, v1, :cond_19

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v2, v0, v2

    .line 5
    iget-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 6
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    goto :goto_1c

    .line 8
    :cond_19
    invoke-direct {p0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start(Z)V

    :goto_1c
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    .line 4
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    :cond_11
    sub-long p1, v0, p1

    .line 7
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 8
    invoke-virtual {p0, v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    return-void
.end method

.method public bridge synthetic setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 2
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    return-object p0

    .line 3
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    :cond_f
    return-void
.end method

.method public varargs setFloatValues([F)V
    .registers 5

    if-eqz p1, :cond_25

    .line 1
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_25

    .line 4
    :cond_6
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    if-nez v2, :cond_f

    goto :goto_15

    .line 7
    :cond_f
    aget-object v0, v0, v1

    .line 8
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_23

    :cond_15
    :goto_15
    const/4 v0, 0x1

    new-array v0, v0, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    .line 9
    invoke-static {v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 15
    :goto_23
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_25
    :goto_25
    return-void
.end method

.method public varargs setIntValues([I)V
    .registers 5

    if-eqz p1, :cond_25

    .line 1
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_25

    .line 4
    :cond_6
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    if-nez v2, :cond_f

    goto :goto_15

    .line 7
    :cond_f
    aget-object v0, v0, v1

    .line 8
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_23

    :cond_15
    :goto_15
    const/4 v0, 0x1

    new-array v0, v0, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    .line 9
    invoke-static {v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 15
    :goto_23
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_25
    :goto_25
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_c

    .line 3
    :cond_5
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_c
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 6

    if-eqz p1, :cond_26

    .line 1
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_26

    .line 4
    :cond_6
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    array-length v2, v0

    if-nez v2, :cond_f

    goto :goto_15

    .line 8
    :cond_f
    aget-object v0, v0, v1

    .line 9
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_24

    :cond_15
    :goto_15
    const/4 v0, 0x1

    new-array v0, v0, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    const-string v3, ""

    .line 10
    invoke-static {v3, v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 17
    :goto_24
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_26
    :goto_26
    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-void
.end method

.method public varargs setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V
    .registers 8

    .line 1
    array-length v0, p1

    .line 2
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v0, :cond_11

    .line 9
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    return-void

    .line 10
    :cond_11
    aget-object v3, p1, v2

    .line 11
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    .line 3
    :goto_1b
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lt v1, v2, :cond_21

    goto :goto_41

    .line 4
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_41
    :goto_41
    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass1 (io.dcloud.nineoldandroids.animation.ValueAnimator$1)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass2 (io.dcloud.nineoldandroids.animation.ValueAnimator$2)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass3 (io.dcloud.nineoldandroids.animation.ValueAnimator$3)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass4 (io.dcloud.nineoldandroids.animation.ValueAnimator$4)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnonymousClass5 (io.dcloud.nineoldandroids.animation.ValueAnimator$5)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/ArrayList<",
        "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnimationHandler (io.dcloud.nineoldandroids.animation.ValueAnimator$AnimationHandler)
.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 1
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$2()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$3()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_22

    if-eq p1, v5, :cond_20

    goto/16 :goto_c5

    :cond_20
    const/4 v7, 0x1

    goto :goto_43

    .line 7
    :cond_22
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$4()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_3b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v6, 0x1

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v6, 0x0

    .line 16
    :goto_3c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_f7

    move v7, v6

    .line 35
    :goto_43
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 36
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$7()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/util/ArrayList;

    .line 37
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$8()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 p1, 0x0

    :goto_62
    if-lt p1, v12, :cond_e4

    .line 48
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_83

    const/4 v6, 0x0

    :goto_6b
    if-lt v6, p1, :cond_71

    .line 56
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_83

    .line 57
    :cond_71
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 58
    invoke-static {v12}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$6(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    .line 59
    invoke-static {v12, v5}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$10(Lio/dcloud/nineoldandroids/animation/ValueAnimator;Z)V

    .line 60
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    .line 67
    :cond_83
    :goto_83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v6, 0x0

    :goto_88
    if-lt v6, p1, :cond_c6

    .line 88
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a6

    .line 89
    :goto_90
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v4, p1, :cond_9a

    .line 92
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto :goto_a6

    .line 93
    :cond_9a
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$11(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    :cond_a6
    :goto_a6
    if-eqz v7, :cond_c5

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b4

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c5

    .line 101
    :cond_b4
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$12()J

    move-result-wide v0

    .line 102
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    sub-long/2addr v0, v6

    .line 103
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c5
    :goto_c5
    return-void

    .line 104
    :cond_c6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 105
    invoke-virtual {v10, v8, v9}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    move-result v12

    if-eqz v12, :cond_d5

    .line 106
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_d5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, p1, :cond_de

    add-int/lit8 v6, v6, 0x1

    goto :goto_88

    :cond_de
    add-int/lit8 p1, p1, -0x1

    .line 119
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_88

    .line 120
    :cond_e4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 121
    invoke-static {v6, v8, v9}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$9(Lio/dcloud/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v13

    if-eqz v13, :cond_f3

    .line 122
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_62

    .line 123
    :cond_f7
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 125
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_105
    if-lt v9, v8, :cond_109

    goto/16 :goto_3c

    .line 127
    :cond_109
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 129
    invoke-static {v10}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$5(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v11

    cmp-long v13, v11, v2

    if-nez v13, :cond_11b

    .line 130
    invoke-static {v10}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$6(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    goto :goto_11e

    .line 132
    :cond_11b
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11e
    add-int/lit8 v9, v9, 0x1

    goto :goto_105
.end method

###### Class io.dcloud.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener (io.dcloud.nineoldandroids.animation.ValueAnimator$AnimatorUpdateListener)
.class public interface abstract Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimatorUpdateListener"
.end annotation


# virtual methods
.method public abstract onAnimationUpdate(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
.end method
