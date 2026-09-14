###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout)
.class public Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;
.super Landroid/view/ViewGroup;
.source "DCWeexBaseRefreshLayout.java"

# interfaces
.implements Lcom/dcloud/android/v4/view/NestedScrollingParent;
.implements Lcom/dcloud/android/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnChildScrollUpCallback;,
        Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String; = "DCWeexBaseRefreshLayout"

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field mBeginRefresh:Z

.field private mChildScrollUpCallback:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field private mCircleLatyouOffsetTop:I

.field private mCircleLayout:Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;

.field private mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

.field private mCircleViewIndex:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mListener:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;

.field private mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mReturningToStart:Z

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field protected mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTarget:Landroid/view/View;

.field protected mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field private mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    .line 136
    sput-object v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 321
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 110
    iput v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 118
    iput-object v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mParentScrollConsumed:[I

    new-array v1, v1, [I

    .line 119
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, -0x1

    .line 128
    iput v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    .line 142
    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLatyouOffsetTop:I

    .line 143
    iput v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleViewIndex:I

    .line 174
    new-instance v1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 420
    iput-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mBeginRefresh:Z

    .line 1159
    new-instance v1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1183
    new-instance v1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$8;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$8;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 323
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTouchSlop:I

    .line 325
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mMediumAnimationDuration:I

    .line 328
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setWillNotDraw(Z)V

    .line 329
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 331
    sget-object v1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 332
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setEnabled(Z)V

    .line 333
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 336
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleDiameter:I

    .line 338
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->createProgressView()V

    .line 339
    invoke-static {p0, p2}, Lcom/dcloud/android/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    .line 341
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42800000    # 64.0f

    mul-float p1, p1, v0

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mSpinnerFinalOffset:F

    .line 342
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    .line 343
    new-instance p1, Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingParentHelper:Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;

    .line 345
    new-instance p1, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    .line 346
    invoke-virtual {p0, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 348
    iget p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleDiameter:I

    neg-int p1, p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mOriginalOffsetTop:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 349
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    return p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;
    .registers 1

    .line 68
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    return-object p0
.end method

.method static synthetic access$1000(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScale:Z

    return p0
.end method

.method static synthetic access$1100(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1200(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mUsingCustomStart:Z

    return p0
.end method

.method static synthetic access$1300(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;IZ)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method static synthetic access$1400(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method static synthetic access$1500(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)F
    .registers 1

    .line 68
    iget p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mStartingScale:F

    return p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNotify:Z

    return p0
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;
    .registers 1

    .line 68
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mListener:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;

    return-object p0
.end method

.method static synthetic access$402(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;I)I
    .registers 2

    .line 68
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    return p1
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;
    .registers 1

    .line 68
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    return-object p0
.end method

.method static synthetic access$600(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->reset()V

    return-void
.end method

.method static synthetic access$700(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->moveSpinner(F)V

    return-void
.end method

.method static synthetic access$800(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;ZZ)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setRefreshing(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    .line 1131
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mFrom:I

    .line 1132
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 1133
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1134
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1c

    .line 1136
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1138
    :cond_1c
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->clearAnimation()V

    .line 1139
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    .line 1143
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScale:Z

    if-eqz v0, :cond_8

    .line 1145
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_30

    .line 1147
    :cond_8
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mFrom:I

    .line 1148
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 1149
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1150
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_24

    .line 1152
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1154
    :cond_24
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->clearAnimation()V

    .line 1155
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_30
    return-void
.end method

.method private createProgressView()V
    .registers 5

    .line 369
    new-instance v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v2, v3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    .line 370
    new-instance v0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    .line 371
    invoke-virtual {v0, v2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 372
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setVisibility(I)V

    .line 374
    new-instance v0, Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLayout:Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;

    .line 375
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLayout:Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLayout:Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private ensureTarget()V
    .registers 4

    .line 607
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    .line 608
    :goto_5
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 609
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 610
    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLayout:Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 611
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    goto :goto_1d

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    :goto_1d
    return-void
.end method

.method private finishSpinner(F)V
    .registers 4

    .line 1004
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    const/4 p1, 0x1

    .line 1005
    invoke-direct {p0, p1, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_28

    :cond_b
    const/4 p1, 0x0

    .line 1008
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    .line 1009
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    const/4 v0, 0x0

    .line 1011
    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScale:Z

    if-nez v1, :cond_1e

    .line 1012
    new-instance v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$6;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$6;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V

    .line 1031
    :cond_1e
    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1032
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    :goto_28
    return-void
.end method

.method private isAlphaUsedForScale()Z
    .registers 3

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 951
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private moveSpinner(F)V
    .registers 14

    .line 955
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    .line 956
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    .line 958
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    .line 959
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 960
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    sub-float/2addr v4, v5

    .line 961
    iget-boolean v5, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mUsingCustomStart:Z

    if-eqz v5, :cond_3b

    iget v5, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mSpinnerFinalOffset:F

    iget v6, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    goto :goto_3d

    :cond_3b
    iget v5, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mSpinnerFinalOffset:F

    :goto_3d
    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    .line 963
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v5

    const/4 v7, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v4, v8

    float-to-double v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 965
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v4, v8

    mul-float v4, v4, v6

    mul-float v8, v5, v4

    mul-float v8, v8, v6

    .line 969
    iget v9, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mOriginalOffsetTop:I

    mul-float v5, v5, v0

    add-float/2addr v5, v8

    float-to-int v0, v5

    add-int/2addr v9, v0

    .line 971
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_72

    .line 972
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setVisibility(I)V

    .line 974
    :cond_72
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScale:Z

    if-nez v0, :cond_80

    .line 975
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-static {v0, v2}, Lcom/dcloud/android/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 976
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-static {v0, v2}, Lcom/dcloud/android/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 979
    :cond_80
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScale:Z

    if-eqz v0, :cond_8f

    .line 980
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setAnimationProgress(F)V

    .line 982
    :cond_8f
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_ab

    .line 983
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0x4c

    if-le p1, v0, :cond_c0

    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 984
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_c0

    .line 986
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startProgressAlphaStartAnimation()V

    goto :goto_c0

    .line 989
    :cond_ab
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0xff

    if-ge p1, v0, :cond_c0

    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_c0

    .line 991
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startProgressAlphaMaxAnimation()V

    :cond_c0
    :goto_c0
    const p1, 0x3f4ccccd    # 0.8f

    mul-float v0, v3, p1

    .line 995
    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v5, v7, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 996
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    const/high16 p1, -0x41800000    # -0.25f

    const v0, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v0

    add-float/2addr v3, p1

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v3, v3, p1

    .line 999
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p1, v3}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 1000
    iget p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v9, p1

    invoke-direct {p0, v9, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method private moveToStart(F)V
    .registers 4

    .line 1178
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mFrom:I

    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    .line 1179
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 1180
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1224
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1225
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1226
    iget v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_17

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1230
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    :cond_17
    return-void
.end method

.method private reset()V
    .registers 3

    .line 202
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->clearAnimation()V

    .line 203
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->stop()V

    .line 204
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setVisibility(I)V

    const/16 v0, 0xff

    .line 205
    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setColorViewAlpha(I)V

    .line 207
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScale:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setAnimationProgress(F)V

    goto :goto_28

    .line 210
    :cond_1f
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 213
    :goto_28
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method private setAnimationProgress(F)V
    .registers 3

    .line 470
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_f

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 471
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setColorViewAlpha(I)V

    goto :goto_19

    .line 473
    :cond_f
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-static {v0, p1}, Lcom/dcloud/android/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 474
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-static {v0, p1}, Lcom/dcloud/android/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    :goto_19
    return-void
.end method

.method private setColorViewAlpha(I)V
    .registers 3

    .line 231
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 232
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private setRefreshing(ZZ)V
    .registers 4

    .line 479
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1a

    .line 480
    iput-boolean p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNotify:Z

    .line 481
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->ensureTarget()V

    .line 482
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    if-eqz p1, :cond_15

    .line 484
    iget p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1a

    .line 486
    :cond_15
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .registers 4

    .line 1215
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLayout:Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;->bringToFront()V

    .line 1216
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-static {v0, p1}, Lcom/dcloud/android/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1217
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getTop()I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    if-eqz p2, :cond_1d

    .line 1218
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-ge p1, p2, :cond_1d

    .line 1219
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->invalidate()V

    :cond_1d
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .registers 5

    .line 515
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->isAlphaUsedForScale()Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 518
    :cond_c
    new-instance v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$5;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$5;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;II)V

    const-wide/16 p1, 0x12c

    .line 525
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 527
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 528
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->clearAnimation()V

    .line 529
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private startDragging(F)V
    .registers 5

    .line 1122
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mInitialDownY:F

    sub-float/2addr p1, v0

    .line 1123
    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTouchSlop:I

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1c

    iget-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mIsBeingDragged:Z

    if-nez p1, :cond_1c

    int-to-float p1, v1

    add-float/2addr v0, p1

    .line 1124
    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mInitialMotionY:F

    const/4 p1, 0x1

    .line 1125
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mIsBeingDragged:Z

    .line 1126
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    :cond_1c
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .registers 3

    .line 509
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .registers 3

    .line 505
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    .line 492
    new-instance v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$4;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$4;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    .line 498
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 499
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 500
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->clearAnimation()V

    .line 501
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    .line 1192
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mFrom:I

    .line 1193
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->isAlphaUsedForScale()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1194
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mStartingScale:F

    goto :goto_1a

    .line 1196
    :cond_12
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mStartingScale:F

    .line 1198
    :goto_1a
    new-instance p1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$9;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$9;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    .line 1206
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p2, :cond_2d

    .line 1208
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1210
    :cond_2d
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->clearAnimation()V

    .line 1211
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 5

    .line 444
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setVisibility(I)V

    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 449
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 451
    :cond_13
    new-instance v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$3;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 457
    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_27

    .line 459
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 461
    :cond_27
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->clearAnimation()V

    .line 462
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public beginRefresh()V
    .registers 2

    .line 422
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mBeginRefresh:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    .line 423
    new-instance v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V

    .line 438
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 439
    iput-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mBeginRefresh:Z

    :cond_17
    return-void
.end method

.method public canChildScrollUp()Z
    .registers 6

    .line 697
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_7

    .line 698
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->ensureTarget()V

    .line 700
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 703
    :cond_d
    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mChildScrollUpCallback:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnChildScrollUpCallback;

    if-eqz v2, :cond_16

    .line 704
    invoke-interface {v2, p0, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;Landroid/view/View;)Z

    move-result v0

    return v0

    .line 706
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/4 v3, -0x1

    if-ge v0, v2, :cond_52

    .line 707
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v2, v0, Landroid/widget/AbsListView;

    const/4 v4, 0x1

    if-eqz v2, :cond_42

    .line 708
    check-cast v0, Landroid/widget/AbsListView;

    .line 709
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_41

    .line 710
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_40

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 711
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v2, v0, :cond_41

    :cond_40
    const/4 v1, 0x1

    :cond_41
    return v1

    .line 713
    :cond_42
    invoke-static {v0, v3}, Lcom/dcloud/android/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_51

    :cond_50
    const/4 v1, 0x1

    :cond_51
    return v1

    .line 716
    :cond_52
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/dcloud/android/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public clearTarget()V
    .registers 2

    const/4 v0, 0x0

    .line 619
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 942
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 947
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .line 924
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .line 918
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    .line 354
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_5

    return p2

    :cond_5
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_a

    return v0

    :cond_a
    if-lt p2, v0, :cond_e

    add-int/lit8 p2, p2, 0x1

    :cond_e
    return p2
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .line 852
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingParentHelper:Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .registers 2

    .line 689
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 912
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 897
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .registers 2

    .line 601
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 226
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 227
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->reset()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 731
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->ensureTarget()V

    .line 733
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 736
    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mReturningToStart:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    .line 737
    iput-boolean v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mReturningToStart:Z

    .line 740
    :cond_10
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_81

    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_81

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_81

    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_81

    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_29

    goto :goto_81

    :cond_29
    const/4 v1, 0x1

    if-eqz v0, :cond_5d

    const/4 v3, -0x1

    if-eq v0, v1, :cond_58

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_58

    const/4 v1, 0x6

    if-eq v0, v1, :cond_39

    goto :goto_7e

    .line 774
    :cond_39
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_7e

    .line 760
    :cond_3d
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    if-ne v0, v3, :cond_49

    .line 761
    sget-object p1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 765
    :cond_49
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_50

    return v2

    .line 769
    :cond_50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 770
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startDragging(F)V

    goto :goto_7e

    .line 779
    :cond_58
    iput-boolean v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mIsBeingDragged:Z

    .line 780
    iput v3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    goto :goto_7e

    .line 748
    :cond_5d
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mOriginalOffsetTop:I

    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 749
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    .line 750
    iput-boolean v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mIsBeingDragged:Z

    .line 752
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_78

    return v2

    .line 756
    :cond_78
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mInitialDownY:F

    .line 784
    :goto_7e
    iget-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mIsBeingDragged:Z

    return p1

    :cond_81
    :goto_81
    return v2
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .line 633
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getMeasuredWidth()I

    move-result p1

    .line 634
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getMeasuredHeight()I

    move-result p2

    .line 635
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getChildCount()I

    move-result p3

    if-nez p3, :cond_f

    return-void

    .line 638
    :cond_f
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_16

    .line 639
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->ensureTarget()V

    .line 641
    :cond_16
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_1b

    return-void

    .line 645
    :cond_1b
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingLeft()I

    move-result p4

    .line 646
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingTop()I

    move-result p5

    .line 647
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 648
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 649
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLayout:Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;

    iget v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLatyouOffsetTop:I

    add-int/2addr v2, p5

    add-int/2addr v0, p4

    add-int/2addr p2, p5

    invoke-virtual {v1, p4, v2, v0, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;->layout(IIII)V

    .line 650
    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 651
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getMeasuredWidth()I

    move-result p2

    .line 652
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getMeasuredHeight()I

    move-result p3

    .line 653
    iget-object p4, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr p1, p2

    add-int/2addr p3, v0

    invoke-virtual {p4, p5, v0, p1, p3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    .line 659
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 660
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_a

    .line 661
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->ensureTarget()V

    .line 663
    :cond_a
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_f

    return-void

    .line 667
    :cond_f
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 666
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 669
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 668
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 666
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    .line 670
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    iget p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleDiameter:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleDiameter:I

    .line 671
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 670
    invoke-virtual {p1, p2, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->measure(II)V

    const/4 p1, -0x1

    .line 672
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleViewIndex:I

    const/4 p1, 0x0

    .line 674
    :goto_4d
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_61

    .line 675
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLayout:Lio/dcloud/feature/weex/adapter/widget/refresh/CircleLayout;

    if-ne p2, v0, :cond_5e

    .line 676
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleViewIndex:I

    goto :goto_61

    :cond_5e
    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_61
    :goto_61
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 937
    invoke-virtual {p0, p2, p3, p4}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 931
    invoke-virtual {p0, p2, p3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 9

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_21

    .line 822
    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_21

    int-to-float v2, p3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_17

    float-to-int v1, v1

    sub-int v1, p3, v1

    .line 824
    aput v1, p4, v0

    .line 825
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    goto :goto_1c

    :cond_17
    sub-float/2addr v1, v2

    .line 827
    iput v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    .line 828
    aput p3, p4, v0

    .line 830
    :goto_1c
    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->moveSpinner(F)V

    .line 837
    :cond_21
    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mUsingCustomStart:Z

    if-eqz v1, :cond_3e

    if-lez p3, :cond_3e

    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_3e

    aget p1, p4, v0

    sub-int p1, p3, p1

    .line 838
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_3e

    .line 839
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setVisibility(I)V

    .line 843
    :cond_3e
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mParentScrollConsumed:[I

    const/4 v1, 0x0

    .line 844
    aget v2, p4, v1

    sub-int/2addr p2, v2

    aget v2, p4, v0

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, p1, v2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 845
    aget p2, p4, v1

    aget p3, p1, v1

    add-int/2addr p2, p3

    aput p2, p4, v1

    .line 846
    aget p2, p4, v0

    aget p1, p1, v0

    add-int/2addr p2, p1

    aput p2, p4, v0

    :cond_5c
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .line 873
    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 881
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mParentOffsetInWindow:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-gez p5, :cond_25

    .line 882
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->canChildScrollUp()Z

    move-result p1

    if-nez p1, :cond_25

    .line 883
    iget p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    .line 884
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->moveSpinner(F)V

    :cond_25
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 811
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingParentHelper:Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    .line 813
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startNestedScroll(I)Z

    const/4 p1, 0x0

    .line 814
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    const/4 p1, 0x1

    .line 815
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollInProgress:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    .line 804
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mReturningToStart:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    if-nez p1, :cond_14

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4

    .line 857
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingParentHelper:Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 858
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollInProgress:Z

    .line 861
    iget p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_14

    .line 862
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->finishSpinner(F)V

    .line 863
    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalUnconsumed:F

    .line 866
    :cond_14
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1038
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1041
    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mReturningToStart:Z

    const/4 v2, 0x0

    .line 1114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_11

    if-nez v0, :cond_11

    .line 1042
    iput-boolean v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mReturningToStart:Z

    .line 1045
    :cond_11
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_ba

    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_ba

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_ba

    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_ba

    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_2b

    goto/16 :goto_ba

    :cond_2b
    const/4 v1, 0x1

    .line 1051
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v0, :cond_ac

    const/high16 v5, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_86

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_48

    const/4 v1, 0x6

    if-eq v0, v1, :cond_44

    goto/16 :goto_b4

    .line 1092
    :cond_44
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_b4

    .line 1081
    :cond_48
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    if-gez v0, :cond_56

    .line 1083
    sget-object p1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1087
    :cond_56
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    goto :goto_b4

    .line 1059
    :cond_5d
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_6d

    .line 1061
    sget-object p1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 1066
    :cond_6d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1067
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startDragging(F)V

    .line 1069
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_b4

    .line 1070
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_b5

    .line 1072
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->moveSpinner(F)V

    goto :goto_b4

    .line 1096
    :cond_86
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_96

    .line 1098
    sget-object p1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 1103
    :cond_96
    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_a8

    .line 1104
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1105
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v5

    .line 1106
    iput-boolean v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mIsBeingDragged:Z

    .line 1107
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->finishSpinner(F)V

    :cond_a8
    const/4 p1, -0x1

    .line 1109
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    goto :goto_b5

    .line 1054
    :cond_ac
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mActivePointerId:I

    .line 1055
    iput-boolean v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mIsBeingDragged:Z

    :cond_b4
    :goto_b4
    move-object v3, v4

    .line 1118
    :cond_b5
    :goto_b5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_ba
    :goto_ba
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .line 792
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1a

    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 793
    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_1a

    .line 796
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public varargs setColorScheme([I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 565
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3

    .line 592
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->ensureTarget()V

    .line 593
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .registers 6

    .line 576
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 577
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 578
    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_16

    .line 579
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 581
    :cond_16
    invoke-virtual {p0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .registers 2

    int-to-float p1, p1

    .line 628
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 218
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-nez p1, :cond_8

    .line 220
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->reset()V

    :cond_8
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 892
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnChildScrollUpCallback;)V
    .registers 2

    .line 726
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mChildScrollUpCallback:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnChildScrollUpCallback;

    return-void
.end method

.method public setOnRefreshListener(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mListener:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .registers 3

    .line 556
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setBackgroundColor(I)V

    .line 557
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .registers 3

    .line 547
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .registers 3

    int-to-float p2, p2

    .line 279
    iput p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mSpinnerFinalOffset:F

    .line 280
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScale:Z

    .line 281
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZIIII)V
    .registers 6

    .line 255
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mScale:Z

    .line 256
    iput p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mOriginalOffsetTop:I

    .line 257
    iput p5, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleLatyouOffsetTop:I

    int-to-float p1, p3

    .line 258
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mSpinnerFinalOffset:F

    int-to-float p1, p4

    .line 259
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mUsingCustomStart:Z

    .line 261
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->reset()V

    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    return-void
.end method

.method public setRefreshing(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 402
    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_26

    .line 404
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshing:Z

    .line 406
    iget-boolean p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_14

    .line 407
    iget p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mSpinnerFinalOffset:F

    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    goto :goto_16

    .line 409
    :cond_14
    iget p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mSpinnerFinalOffset:F

    :goto_16
    float-to-int p1, p1

    .line 411
    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    .line 413
    iput-boolean v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNotify:Z

    .line 414
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_29

    .line 416
    :cond_26
    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->setRefreshing(ZZ)V

    :goto_29
    return-void
.end method

.method public setSize(I)V
    .registers 4

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    return-void

    .line 291
    :cond_6
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1a

    const/high16 v1, 0x42600000    # 56.0f

    .line 293
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleDiameter:I

    goto :goto_23

    :cond_1a
    const/high16 v1, 0x42200000    # 40.0f

    .line 295
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleDiameter:I

    .line 300
    :goto_23
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 302
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mCircleView:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mProgress:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .line 902
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 907
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mNestedScrollingChildHelper:Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.AnonymousClass1 (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$1)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;
.super Ljava/lang/Object;
.source "DCWeexBaseRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 185
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$000(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 187
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$100(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 188
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$100(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->start()V

    .line 189
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$200(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 190
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$300(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 191
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$300(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 194
    :cond_35
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$500(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getTop()I

    move-result v0

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$402(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;I)I

    goto :goto_48

    .line 196
    :cond_43
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$1;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$600(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V

    :goto_48
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.AnonymousClass2 (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$2)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;
.super Ljava/lang/Object;
.source "DCWeexBaseRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->beginRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .registers 2

    .line 423
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 424
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 428
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    int-to-float v0, v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iget v1, v1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_21

    .line 429
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$700(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V

    .line 430
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    goto :goto_2c

    .line 433
    :cond_21
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$800(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;ZZ)V

    .line 434
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mBeginRefresh:Z

    :goto_2c
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.AnonymousClass3 (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$3)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$3;
.super Landroid/view/animation/Animation;
.source "DCWeexBaseRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .registers 2

    .line 451
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$3;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 3

    .line 454
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$3;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p2, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$900(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.AnonymousClass4 (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$4)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "DCWeexBaseRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .registers 2

    .line 492
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$4;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4

    .line 495
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$4;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p2, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$900(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.AnonymousClass5 (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$5)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$5;
.super Landroid/view/animation/Animation;
.source "DCWeexBaseRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;II)V
    .registers 4

    .line 518
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$5;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$5;->val$startingAlpha:I

    iput p3, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$5;->val$endingAlpha:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    .line 521
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$5;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$100(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    move-result-object p2

    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$5;->val$startingAlpha:I

    int-to-float v1, v0

    iget v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$5;->val$endingAlpha:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    invoke-virtual {p2, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.AnonymousClass6 (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$6)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$6;
.super Ljava/lang/Object;
.source "DCWeexBaseRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->finishSpinner(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .registers 2

    .line 1012
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$6;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1020
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$6;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$1000(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1021
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$6;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$1100(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_e
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.AnonymousClass7 (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$7)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;
.super Landroid/view/animation/Animation;
.source "DCWeexBaseRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .registers 2

    .line 1159
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    .line 1164
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$1200(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Z

    move-result p2

    if-nez p2, :cond_17

    .line 1165
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iget p2, p2, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mSpinnerFinalOffset:F

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iget v0, v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    goto :goto_1b

    .line 1167
    :cond_17
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iget p2, p2, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mSpinnerFinalOffset:F

    :goto_1b
    float-to-int p2, p2

    .line 1169
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iget v0, v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mFrom:I

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iget v1, v1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mFrom:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    add-int/2addr v0, p2

    .line 1170
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$500(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getTop()I

    move-result p2

    sub-int/2addr v0, p2

    .line 1171
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$1300(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;IZ)V

    .line 1172
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$7;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$100(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.AnonymousClass8 (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$8)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "DCWeexBaseRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .registers 2

    .line 1183
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$8;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 3

    .line 1186
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$8;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p2, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$1400(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.AnonymousClass9 (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$9)
.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$9;
.super Landroid/view/animation/Animation;
.source "DCWeexBaseRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .registers 2

    .line 1198
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$9;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 4

    .line 1201
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$9;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$1500(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)F

    move-result p2

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$9;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$1500(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 1202
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$9;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {v0, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$900(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V

    .line 1203
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$9;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-static {p2, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$1400(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.OnChildScrollUpCallback (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$OnChildScrollUpCallback)
.class public interface abstract Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnChildScrollUpCallback;
.super Ljava/lang/Object;
.source "DCWeexBaseRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChildScrollUpCallback"
.end annotation


# virtual methods
.method public abstract canChildScrollUp(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;Landroid/view/View;)Z
.end method

###### Class io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout.OnRefreshListener (io.dcloud.feature.weex.adapter.widget.refresh.DCWeexBaseRefreshLayout$OnRefreshListener)
.class public interface abstract Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$OnRefreshListener;
.super Ljava/lang/Object;
.source "DCWeexBaseRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRefreshListener"
.end annotation


# virtual methods
.method public abstract onRefresh()V
.end method
