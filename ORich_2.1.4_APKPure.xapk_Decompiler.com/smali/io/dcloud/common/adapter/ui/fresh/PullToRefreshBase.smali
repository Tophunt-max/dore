###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase)
.class public abstract Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/ui/fresh/IPullToRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;,
        Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnPullUpListener;,
        Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;,
        Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lio/dcloud/common/adapter/ui/fresh/IPullToRefresh<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final OFFSET_RADIO:F = 2.5f

.field private static final SCROLL_DURATION:I = 0x96


# instance fields
.field final DOWN:I

.field final LEFT:I

.field final RIGHT:I

.field final UP:I

.field private mAppId:Ljava/lang/String;

.field mBeginPullRefresh:Z

.field private mCanDoPullDownEvent:Z

.field private mFooterHeight:I

.field private mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

.field private mHeaderHeight:I

.field private mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

.field private mHeaderPullDownMaxHeight:I

.field private mInterceptEventEnable:Z

.field private mIsHandledTouchEvent:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field mLastMotionY_pullup:F

.field mOnPullUpListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnPullUpListener;

.field mOnStateChangeListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;

.field private mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field private mPullLoadEnabled:Z

.field private mPullRefreshEnabled:Z

.field private mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field private mRefreshListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mScrollLoadEnabled:Z

.field private mSmoothScrollRunnable:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase<",
            "TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY:F

    .line 3
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionX:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mCanDoPullDownEvent:Z

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullRefreshEnabled:Z

    .line 24
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullLoadEnabled:Z

    .line 26
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mScrollLoadEnabled:Z

    .line 28
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mInterceptEventEnable:Z

    .line 30
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    .line 34
    sget-object v2, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->NONE:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object v2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 36
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 169
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY_pullup:F

    .line 194
    iput v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->UP:I

    .line 195
    iput v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->DOWN:I

    const/4 p1, 0x2

    .line 196
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->LEFT:I

    const/4 p1, 0x3

    .line 197
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->RIGHT:I

    .line 391
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mBeginPullRefresh:Z

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    return p0
.end method

.method static synthetic access$200(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    return-object p0
.end method

.method static synthetic access$300(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    return-object p0
.end method

.method static synthetic access$400(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;IJJ)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(IJJ)V

    return-void
.end method

.method static synthetic access$500(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mRefreshListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;

    return-object p0
.end method

.method static synthetic access$600(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setScrollTo(II)V

    return-void
.end method

.method private canDoPullDownEvent(FF)Z
    .registers 6

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY:F

    const/4 v1, 0x1

    cmpg-float v2, p2, v0

    if-gez v2, :cond_8

    return v1

    .line 2
    :cond_8
    iget-boolean v2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mCanDoPullDownEvent:Z

    if-nez v2, :cond_1c

    .line 3
    iget v2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionX:F

    invoke-direct {p0, v2, v0, p1, p2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getAngle(FFFF)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getDirectionByAngle(D)I

    move-result p1

    if-ne v1, p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mCanDoPullDownEvent:Z

    .line 5
    :cond_1c
    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mCanDoPullDownEvent:Z

    return p1
.end method

.method private getAngle(FFFF)D
    .registers 7

    sub-float/2addr p4, p2

    float-to-double v0, p4

    sub-float/2addr p3, p1

    float-to-double p1, p3

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double p1, p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    return-wide p1
.end method

.method private getDirectionByAngle(D)I
    .registers 12

    const-wide v0, -0x3f9f200000000000L    # -135.0

    const-wide v2, -0x3fb9800000000000L    # -45.0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_14

    cmpl-double v4, p1, v0

    if-lez v4, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    const-wide v4, 0x4060e00000000000L    # 135.0

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpl-double v8, p1, v6

    if-ltz v8, :cond_28

    cmpg-double v8, p1, v4

    if-gez v8, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    cmpl-double v8, p1, v4

    if-gez v8, :cond_3d

    cmpg-double v4, p1, v0

    if-gtz v4, :cond_31

    goto :goto_3d

    :cond_31
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_3b

    cmpg-double v0, p1, v6

    if-gtz v0, :cond_3b

    const/4 p1, 0x3

    return p1

    :cond_3b
    const/4 p1, -0x1

    return p1

    :cond_3d
    :goto_3d
    const/4 p1, 0x2

    return p1
.end method

.method private getScrollYValue()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    return v0
.end method

.method private handlePullUpEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_23

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY_pullup:F

    sub-float/2addr p1, v0

    .line 4
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY_pullup:F

    const/high16 v0, -0x3fc00000    # -3.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2b

    .line 5
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isReadyForPullUp()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mOnPullUpListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnPullUpListener;

    invoke-interface {p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnPullUpListener;->onPlusScrollBottom()V

    return v1

    :cond_23
    if-nez v0, :cond_2b

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY_pullup:F

    :cond_2b
    return v1
.end method

.method private setScrollBy(II)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollBy(II)V

    return-void
.end method

.method private setScrollTo(II)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    return-void
.end method

.method private smoothScrollTo(IJJ)V
    .registers 14

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mSmoothScrollRunnable:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 6
    :cond_7
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result v3

    if-eq v3, p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1d

    .line 9
    new-instance v7, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;IIJ)V

    iput-object v7, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mSmoothScrollRunnable:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;

    :cond_1d
    if-eqz v0, :cond_30

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-lez p3, :cond_2b

    .line 14
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mSmoothScrollRunnable:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, p1, p4, p5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30

    .line 16
    :cond_2b
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mSmoothScrollRunnable:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method protected addHeaderAndFooter(Landroid/content/Context;)V
    .registers 6

    .line 1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    .line 6
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz v1, :cond_1a

    .line 9
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne p0, v3, :cond_16

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_16
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v1, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    if-eqz v2, :cond_28

    .line 17
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_25

    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 21
    :cond_25
    invoke-virtual {p0, v2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    return-void
.end method

.method public addRefreshableView(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onAddRefreshableView(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public beginPullRefresh()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mBeginPullRefresh:Z

    if-nez v0, :cond_11

    .line 2
    new-instance v0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;-><init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V

    const-wide/16 v1, 0x5

    .line 19
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mBeginPullRefresh:Z

    :cond_11
    return-void
.end method

.method protected createFooterLoadingLayout(Landroid/content/Context;)Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createHeaderLoadingLayout(Landroid/content/Context;)Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-nez v0, :cond_9

    .line 2
    new-instance v0, Lio/dcloud/common/adapter/ui/fresh/HeaderLoadingLayout;

    invoke-direct {v0, p1}, Lio/dcloud/common/adapter/ui/fresh/HeaderLoadingLayout;-><init>(Landroid/content/Context;)V

    :cond_9
    return-object v0
.end method

.method public doPullRefreshing(ZJ)V
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$6;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$6;-><init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;Z)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterLoadingLayout()Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    return-object v0
.end method

.method public getHeaderLoadingLayout()Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    return-object v0
.end method

.method public getRefreshableView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getSmoothScrollDuration()J
    .registers 3

    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setOrientation(I)V

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mTouchSlop:I

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->createHeaderLoadingLayout(Landroid/content/Context;)Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    .line 6
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->createFooterLoadingLayout(Landroid/content/Context;)Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    .line 11
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->addHeaderAndFooter(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$1;-><init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(I)V

    return-void
.end method

.method public isInterceptTouchEventEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mInterceptEventEnable:Z

    return v0
.end method

.method public isPullLoadEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullLoadEnabled:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected isPullLoading()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    sget-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->REFRESHING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPullRefreshEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullRefreshEnabled:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected isPullRefreshing()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    sget-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->REFRESHING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected abstract isReadyForPullDown()Z
.end method

.method protected abstract isReadyForPullUp()Z
.end method

.method public isScrollLoadEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mScrollLoadEnabled:Z

    return v0
.end method

.method protected onAddRefreshableView(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 2

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isInterceptTouchEventEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5
    :cond_8
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 8
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_ca

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    goto/16 :goto_ca

    :cond_21
    if-eqz v0, :cond_28

    .line 15
    iget-boolean v3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    if-eqz v3, :cond_28

    return v2

    :cond_28
    if-eqz v0, :cond_b0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2f

    goto/16 :goto_c0

    .line 28
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->canDoPullDownEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY:F

    sub-float/2addr v0, v3

    .line 30
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 35
    iget v4, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_5b

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshing()Z

    move-result v3

    if-nez v3, :cond_5b

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoading()Z

    move-result v3

    if-nez v3, :cond_c0

    .line 36
    :cond_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY:F

    .line 38
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshEnabled()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 43
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gtz v3, :cond_7d

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7e

    :cond_7d
    const/4 v1, 0x1

    :cond_7e
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    if-eqz v1, :cond_c0

    .line 47
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_c0

    .line 50
    :cond_8b
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result v3

    if-eqz v3, :cond_c0

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 52
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gtz v3, :cond_a7

    const/high16 v3, -0x41000000    # -0.5f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a8

    :cond_a7
    const/4 v1, 0x1

    :cond_a8
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    if-eqz v1, :cond_c0

    .line 54
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_c0

    .line 55
    :cond_b0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY:F

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionX:F

    .line 57
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    .line 58
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mCanDoPullDownEvent:Z

    .line 99
    :cond_c0
    :goto_c0
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    if-eqz v0, :cond_c5

    goto :goto_c9

    :cond_c5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_c9
    return v0

    .line 100
    :cond_ca
    :goto_ca
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    .line 101
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mCanDoPullDownEvent:Z

    return v1
.end method

.method public onPullDownRefreshComplete()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RESET:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V

    .line 10
    new-instance v0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$4;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$4;-><init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V

    .line 16
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v1

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->resetHeaderLayout()V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setInterceptTouchEventEnabled(Z)V

    :cond_21
    return-void
.end method

.method public onPullUpRefreshComplete()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoading()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RESET:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V

    .line 5
    new-instance v0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$5;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$5;-><init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V

    .line 11
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v2

    .line 12
    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->resetFooterLayout()V

    .line 21
    invoke-virtual {p0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setInterceptTouchEventEnabled(Z)V

    :cond_20
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 4
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 7
    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 13
    new-instance p1, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$2;

    invoke-direct {p1, p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$2;-><init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mOnStateChangeListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;->onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V

    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isInterceptTouchEventEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8e

    if-eq v0, v2, :cond_4e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_19

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4e

    goto/16 :goto_96

    .line 12
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY:F

    sub-float/2addr v0, v3

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY:F

    .line 14
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshEnabled()Z

    move-result p1

    const/high16 v3, 0x40200000    # 2.5f

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isReadyForPullDown()Z

    move-result p1

    if-eqz p1, :cond_3a

    div-float/2addr v0, v3

    .line 15
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->pullHeaderLayout(F)V

    :goto_38
    const/4 v1, 0x1

    goto :goto_96

    .line 17
    :cond_3a
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isReadyForPullUp()Z

    move-result p1

    if-eqz p1, :cond_4b

    div-float/2addr v0, v3

    .line 18
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->pullFooterLayout(F)V

    goto :goto_38

    .line 21
    :cond_4b
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    goto :goto_96

    .line 27
    :cond_4e
    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    if-eqz p1, :cond_88

    .line 28
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    .line 30
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isReadyForPullDown()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 32
    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullRefreshEnabled:Z

    if-eqz p1, :cond_68

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RELEASE_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    if-ne p1, v0, :cond_68

    .line 33
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->startRefreshing()V

    goto :goto_69

    :cond_68
    const/4 v2, 0x0

    .line 36
    :goto_69
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->resetHeaderLayout()V

    goto :goto_89

    .line 37
    :cond_6d
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isReadyForPullUp()Z

    move-result p1

    if-eqz p1, :cond_88

    .line 39
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result p1

    if-eqz p1, :cond_83

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RELEASE_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    if-ne p1, v0, :cond_83

    .line 40
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->startLoading()V

    goto :goto_84

    :cond_83
    const/4 v2, 0x0

    .line 43
    :goto_84
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->resetFooterLayout()V

    goto :goto_89

    :cond_88
    const/4 v2, 0x0

    .line 46
    :goto_89
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    move v1, v2

    goto :goto_96

    .line 47
    :cond_8e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mLastMotionY:F

    .line 48
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mIsHandledTouchEvent:Z

    :goto_96
    return v1
.end method

.method protected pullFooterLayout(F)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p1, v1

    if-lez v3, :cond_14

    int-to-float v0, v0

    sub-float/2addr v0, p1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_14

    .line 3
    invoke-direct {p0, v2, v2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setScrollTo(II)V

    return-void

    :cond_14
    float-to-int p1, p1

    neg-int p1, p1

    .line 7
    invoke-direct {p0, v2, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setScrollBy(II)V

    .line 9
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz p1, :cond_33

    iget p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterHeight:I

    if-eqz p1, :cond_33

    .line 10
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 11
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->onPull(F)V

    .line 14
    :cond_33
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 15
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoadEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoading()Z

    move-result v0

    if-nez v0, :cond_60

    .line 16
    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterHeight:I

    if-lt p1, v0, :cond_50

    .line 17
    sget-object p1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RELEASE_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    goto :goto_54

    .line 19
    :cond_50
    sget-object p1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->PULL_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 22
    :goto_54
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->setState(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V

    .line 23
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {p0, p1, v2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V

    :cond_60
    return-void
.end method

.method protected pullHeaderLayout(F)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_12

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderPullDownMaxHeight:I

    if-lt v2, v3, :cond_12

    return-void

    :cond_12
    const/4 v2, 0x0

    cmpg-float v3, p1, v1

    if-gez v3, :cond_21

    int-to-float v0, v0

    sub-float/2addr v0, p1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_21

    .line 4
    invoke-direct {p0, v2, v2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setScrollTo(II)V

    return-void

    :cond_21
    float-to-int p1, p1

    neg-int p1, p1

    .line 9
    invoke-direct {p0, v2, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setScrollBy(II)V

    .line 11
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz p1, :cond_40

    iget p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    if-eqz p1, :cond_40

    .line 12
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 13
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->onPull(F)V

    .line 17
    :cond_40
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 18
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshing()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 19
    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    if-lt p1, v0, :cond_5d

    .line 20
    sget-object p1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RELEASE_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    goto :goto_61

    .line 22
    :cond_5d
    sget-object p1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->PULL_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 25
    :goto_61
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->setState(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V

    .line 26
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V

    :cond_6e
    return-void
.end method

.method public refreshLoadingViewsSize()V
    .registers 5

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    .line 2
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->getContentSize()I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-gez v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    if-gez v1, :cond_13

    const/4 v1, 0x0

    .line 12
    :cond_13
    iput v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    .line 13
    iput v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterHeight:I

    .line 17
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 18
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PullToRefreshBase.refreshLoadingViewsSize mHeaderHeight="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";headerHeight="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "View_Visible_Path"

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    :cond_49
    if-nez v2, :cond_4d

    .line 21
    iget v2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterHeight:I

    .line 24
    :cond_4d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    neg-int v0, v0

    neg-int v2, v2

    .line 32
    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method protected refreshRefreshableViewSize(II)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    if-eqz p1, :cond_15

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v0, p2, :cond_15

    .line 4
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_15
    return-void
.end method

.method protected resetFooterLayout()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoading()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 4
    iget v3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterHeight:I

    if-gt v0, v3, :cond_17

    .line 5
    invoke-virtual {p0, v2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(I)V

    return-void

    :cond_17
    if-eqz v1, :cond_1f

    .line 10
    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterHeight:I

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_22

    .line 12
    :cond_1f
    invoke-virtual {p0, v2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(I)V

    :goto_22
    return-void
.end method

.method protected resetHeaderLayout()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getScrollYValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshing()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4
    iget v2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    if-gt v0, v2, :cond_13

    return-void

    :cond_13
    if-eqz v1, :cond_1c

    .line 10
    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_20

    :cond_1c
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(I)V

    :goto_20
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setHeaderHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderHeight:I

    return-void
.end method

.method public setHeaderPullDownMaxHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderPullDownMaxHeight:I

    return-void
.end method

.method public setInterceptTouchEventEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mInterceptEventEnable:Z

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 5
    :cond_7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz v0, :cond_e

    .line 6
    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method public setOnOnPullUpListener(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnPullUpListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mOnPullUpListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnPullUpListener;

    return-void
.end method

.method public setOnRefreshListener(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mRefreshListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;

    return-void
.end method

.method public setOnStateChangeListener(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mOnStateChangeListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne v0, p1, :cond_7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 2
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This class only supports VERTICAL orientation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPullLoadEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullLoadEnabled:Z

    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullRefreshEnabled:Z

    return-void
.end method

.method public setRefreshableView(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-void
.end method

.method public setScrollLoadEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mScrollLoadEnabled:Z

    return-void
.end method

.method public smoothScrollTo(I)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(IJJ)V

    return-void
.end method

.method protected startLoading()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullLoading()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5
    :cond_7
    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->REFRESHING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullUpState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V

    .line 8
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mFooterLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz v1, :cond_16

    .line 9
    invoke-virtual {v1, v0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->setState(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V

    .line 12
    :cond_16
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mRefreshListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_26

    .line 14
    new-instance v0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$8;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$8;-><init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V

    .line 19
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v1

    .line 20
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    return-void
.end method

.method protected startRefreshing()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5
    :cond_7
    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->REFRESHING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mPullDownState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V

    .line 8
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mHeaderLayout:Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    if-eqz v1, :cond_16

    .line 9
    invoke-virtual {v1, v0}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->setState(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V

    .line 12
    :cond_16
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mRefreshListener:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_26

    .line 14
    new-instance v0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$7;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$7;-><init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V

    .line 19
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->getSmoothScrollDuration()J

    move-result-wide v1

    .line 20
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.AnonymousClass1 (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$1)
.class Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$1;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$1;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$1;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.AnonymousClass2 (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$2)
.class Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$2;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$2;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.AnonymousClass3 (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$3)
.class Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->beginPullRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field deltaY:I

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->deltaY:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$000(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isPullRefreshEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 3
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-static {v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$100(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    iget v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->deltaY:I

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->pullHeaderLayout(F)V

    .line 5
    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->deltaY:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->deltaY:I

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_45

    .line 8
    :cond_3b
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->startRefreshing()V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$3;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->mBeginPullRefresh:Z

    :cond_45
    :goto_45
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.AnonymousClass4 (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$4)
.class Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onPullDownRefreshComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$4;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$4;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setInterceptTouchEventEnabled(Z)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$4;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$200(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RESET:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->setState(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.AnonymousClass5 (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$5)
.class Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onPullUpRefreshComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$5;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$5;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setInterceptTouchEventEnabled(Z)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$5;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$300(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RESET:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->setState(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.AnonymousClass6 (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$6)
.class Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->doPullRefreshing(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

.field final synthetic val$smoothScroll:Z


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$6;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    iput-boolean p2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$6;->val$smoothScroll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$6;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$100(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)I

    move-result v0

    neg-int v2, v0

    .line 2
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$6;->val$smoothScroll:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x96

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 4
    :goto_f
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$6;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->startRefreshing()V

    .line 5
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$6;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$400(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;IJJ)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.AnonymousClass7 (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$7)
.class Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->startRefreshing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$7;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$7;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$500(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$7;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-interface {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;->onPullDownToRefresh(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.AnonymousClass8 (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$8)
.class Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->startLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$8;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$8;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$500(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$8;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-interface {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;->onPullUpToRefresh(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.OnPullUpListener (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$OnPullUpListener)
.class public interface abstract Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnPullUpListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPullUpListener"
.end annotation


# virtual methods
.method public abstract onPlusScrollBottom()V
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.OnRefreshListener (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$OnRefreshListener)
.class public interface abstract Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnRefreshListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRefreshListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPullDownToRefresh(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase<",
            "TV;>;)V"
        }
    .end annotation
.end method

.method public abstract onPullUpToRefresh(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase<",
            "TV;>;)V"
        }
    .end annotation
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.OnStateChangeListener (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$OnStateChangeListener)
.class public interface abstract Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStateChangeListener"
.end annotation


# virtual methods
.method public abstract onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V
.end method

###### Class io.dcloud.common.adapter.ui.fresh.PullToRefreshBase.SmoothScrollRunnable (io.dcloud.common.adapter.ui.fresh.PullToRefreshBase$SmoothScrollRunnable)
.class final Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;IIJ)V
    .registers 8

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 16
    iput p2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 17
    iput p3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 18
    iput-wide p4, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    .line 19
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-wide v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    iget v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    invoke-static {v0, v2, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$600(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;II)V

    return-void

    .line 10
    :cond_11
    iget-wide v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_20

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    goto :goto_56

    .line 20
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    mul-long v0, v0, v5

    iget-wide v7, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long/2addr v0, v7

    .line 21
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 23
    iget v3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v4, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 24
    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v3, v3, v0

    .line 25
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 27
    iget v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 29
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-static {v0, v2, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$600(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;II)V

    .line 33
    :goto_56
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v0, :cond_67

    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v0, v1, :cond_67

    .line 34
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_67
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
