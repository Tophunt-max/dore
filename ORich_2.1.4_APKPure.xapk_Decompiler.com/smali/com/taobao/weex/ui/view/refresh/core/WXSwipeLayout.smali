###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout)
.class public Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
.super Landroid/widget/FrameLayout;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;,
        Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;,
        Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;,
        Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final DAMPING:F = 0.4f

.field private static final INVALID:I = -0x1

.field private static final LOAD_MORE:I = 0x1

.field private static final PULL_REFRESH:I = 0x0

.field private static final overFlow:F = 1.0f


# instance fields
.field private footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

.field private headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

.field private isConfirm:Z

.field private volatile loadingViewFlowHeight:F

.field private volatile loadingViewHeight:F

.field private mCurrentAction:I

.field private mNestedScrollAcceptedParent:Landroid/view/ViewParent;

.field private mNestedScrollInProgress:Z

.field private mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mProgressBgColor:I

.field private mProgressColor:I

.field private mPullLoadEnable:Z

.field private mPullRefreshEnable:Z

.field private final mRefreshOffsetChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshViewBgColor:I

.field private volatile mRefreshing:Z

.field private mTargetView:Landroid/view/View;

.field private onLoadingListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

.field private onRefreshListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

.field private volatile refreshViewFlowHeight:F

.field private volatile refreshViewHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 54
    iput-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    .line 116
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    .line 119
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    const/4 v1, 0x0

    .line 122
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 123
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 126
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    .line 127
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    const/4 v1, -0x1

    .line 134
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 135
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 54
    iput-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    new-array v0, v0, [I

    .line 55
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    .line 116
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    .line 119
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    const/4 v1, 0x0

    .line 122
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 123
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 126
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    .line 127
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    const/4 v1, -0x1

    .line 134
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 135
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 54
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    new-array p3, p3, [I

    .line 55
    iput-object p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    .line 62
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    const/4 p3, 0x0

    .line 115
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    .line 116
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    .line 119
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 123
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 126
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    .line 127
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 135
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x2

    new-array p4, p3, [I

    .line 54
    iput-object p4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    new-array p3, p3, [I

    .line 55
    iput-object p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    .line 62
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    const/4 p3, 0x0

    .line 115
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    .line 116
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    .line 119
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    const/4 p4, 0x0

    .line 122
    iput p4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 123
    iput p4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 126
    iput p4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    .line 127
    iput p4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    const/4 p4, -0x1

    .line 134
    iput p4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 135
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;I)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->notifyOnRefreshOffsetChangedListener(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;F)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->moveTargetView(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onRefreshListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetRefreshState()V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onLoadingListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetLoadmoreState()V

    return-void
.end method

.method private calculateDistanceY(Landroid/view/View;I)D
    .registers 8

    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, v0

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v1, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    const-wide v3, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double v1, v1, v3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_25

    move-wide v1, v3

    :cond_25
    int-to-double p1, p2

    mul-double v1, v1, p1

    return-wide v1
.end method

.method private handlerAction()V
    .registers 4

    .line 536
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 539
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 542
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    if-nez v0, :cond_36

    .line 543
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 544
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_29

    .line 545
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startRefresh(I)V

    goto :goto_36

    .line 546
    :cond_29
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez v1, :cond_33

    .line 547
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetHeaderView(I)V

    goto :goto_36

    .line 549
    :cond_33
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetRefreshState()V

    .line 553
    :cond_36
    :goto_36
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-eqz v0, :cond_63

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_63

    .line 554
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 555
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_56

    .line 556
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startLoadmore(I)V

    goto :goto_63

    .line 557
    :cond_56
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez v1, :cond_60

    .line 558
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetFootView(I)V

    goto :goto_63

    .line 560
    :cond_60
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetLoadmoreState()V

    :cond_63
    :goto_63
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 165
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2b

    .line 169
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 170
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 p1, 0x0

    .line 171
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setNestedScrollingEnabled(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_22

    if-nez p2, :cond_22

    return-void

    .line 177
    :cond_22
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshViewBgColor:I

    .line 178
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressBgColor:I

    const/high16 p1, -0x10000

    .line 179
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressColor:I

    return-void

    .line 166
    :cond_2b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "WXSwipeLayout should not have more than one child"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private moveSpinner(F)Z
    .registers 7

    .line 480
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 484
    :cond_6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    if-nez v0, :cond_58

    .line 486
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 487
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 488
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v4, :cond_2b

    .line 489
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 492
    :cond_2b
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-nez v4, :cond_33

    .line 493
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 494
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 496
    :cond_33
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onRefreshListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    invoke-interface {v1, p1, v2, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;->onPullingDown(FIF)V

    .line 498
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->notifyOnRefreshOffsetChangedListener(I)V

    .line 499
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressRotation(F)V

    .line 500
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->moveTargetView(F)V

    return v3

    .line 502
    :cond_58
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollDown()Z

    move-result v0

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-eqz v0, :cond_a4

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    if-ne v0, v3, :cond_a4

    .line 504
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 505
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 506
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v4, :cond_7b

    .line 507
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 510
    :cond_7b
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-nez v4, :cond_83

    .line 511
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    .line 512
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 514
    :cond_83
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onLoadingListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    invoke-interface {v1, p1, v2, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;->onPullingUp(FIF)V

    .line 516
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressRotation(F)V

    .line 517
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->moveTargetView(F)V

    return v3

    :cond_a4
    return v1
.end method

.method private moveTargetView(F)V
    .registers 3

    .line 528
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private notifyOnRefreshOffsetChangedListener(I)V
    .registers 5

    .line 776
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 779
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_12

    goto :goto_22

    .line 782
    :cond_12
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    if-eqz v2, :cond_1f

    .line 785
    invoke-interface {v2, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;->onOffsetChanged(I)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    :goto_22
    return-void
.end method

.method private resetFootView(I)V
    .registers 5

    .line 667
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->stopAnimation()V

    .line 668
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setStartEndTrim(FF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 669
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 670
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$7;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 679
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$8;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$8;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x12c

    .line 686
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 687
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private resetHeaderView(I)V
    .registers 5

    .line 601
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->stopAnimation()V

    .line 602
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setStartEndTrim(FF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    aput v1, v0, p1

    .line 603
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 604
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 614
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$4;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$4;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x12c

    .line 621
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 622
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private resetLoadmoreState()V
    .registers 2

    const/4 v0, 0x0

    .line 691
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 692
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    const/4 v0, -0x1

    .line 693
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    return-void
.end method

.method private resetRefreshState()V
    .registers 2

    const/4 v0, 0x0

    .line 626
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 627
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    const/4 v0, -0x1

    .line 628
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    return-void
.end method

.method private setRefreshView()V
    .registers 7

    .line 205
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 206
    new-instance v3, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f400000    # 0.75f

    .line 207
    invoke-virtual {v3, v4, v5}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setStartEndTrim(FF)V

    .line 208
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshViewBgColor:I

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setBackgroundColor(I)V

    .line 209
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressBgColor:I

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressBgColor(I)V

    .line 210
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressColor:I

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressColor(I)V

    .line 211
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setContentGravity(I)V

    .line 212
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {p0, v3, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 216
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    new-instance v1, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3fa00000    # 1.25f

    .line 218
    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setStartEndTrim(FF)V

    .line 219
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshViewBgColor:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setBackgroundColor(I)V

    .line 220
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressBgColor:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressBgColor(I)V

    .line 221
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mProgressColor:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setProgressColor(I)V

    .line 222
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setContentGravity(I)V

    .line 223
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startLoadmore(I)V
    .registers 5

    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 638
    iget p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 639
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$5;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$5;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 648
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$6;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$6;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x12c

    .line 658
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 659
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startRefresh(I)V
    .registers 5

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 571
    iget p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 572
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 582
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;-><init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x12c

    .line 592
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 593
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public addOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 762
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 763
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public addTargetView(Landroid/view/View;)V
    .registers 4

    .line 197
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshView()V

    return-void
.end method

.method public canChildScrollDown()Z
    .registers 7

    .line 724
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 727
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-ge v0, v2, :cond_51

    .line 728
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    instance-of v2, v0, Landroid/widget/AbsListView;

    if-eqz v2, :cond_41

    .line 729
    check-cast v0, Landroid/widget/AbsListView;

    .line 730
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_40

    .line 731
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 732
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 733
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_40

    .line 734
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getMeasuredHeight()I

    move-result v0

    if-gt v2, v0, :cond_40

    const/4 v1, 0x1

    :cond_40
    return v1

    .line 740
    :cond_41
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_50

    :cond_4f
    const/4 v1, 0x1

    :cond_50
    return v1

    .line 743
    :cond_51
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public canChildScrollUp()Z
    .registers 6

    .line 702
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 705
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/4 v3, -0x1

    if-ge v0, v2, :cond_42

    .line 706
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    instance-of v2, v0, Landroid/widget/AbsListView;

    const/4 v4, 0x1

    if-eqz v2, :cond_32

    .line 707
    check-cast v0, Landroid/widget/AbsListView;

    .line 708
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_31

    .line 709
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_30

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 710
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v2, v0, :cond_31

    :cond_30
    const/4 v1, 0x1

    :cond_31
    return v1

    .line 712
    :cond_32
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_41

    :cond_40
    const/4 v1, 0x1

    :cond_41
    return v1

    .line 715
    :cond_42
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public dipToPx(Landroid/content/Context;F)F
    .registers 4

    .line 748
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    .line 749
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .line 296
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .line 290
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public finishPullLoad()V
    .registers 3

    .line 803
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 804
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getMeasuredHeight()I

    move-result v0

    :goto_f
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetFootView(I)V

    :cond_12
    return-void
.end method

.method public finishPullRefresh()V
    .registers 2

    .line 794
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    if-nez v0, :cond_11

    .line 795
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getMeasuredHeight()I

    move-result v0

    :goto_e
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetHeaderView(I)V

    :cond_11
    return-void
.end method

.method public getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    .registers 2

    .line 813
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    return-object v0
.end method

.method public getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    .registers 2

    .line 809
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isPullLoadEnable()Z
    .registers 2

    .line 817
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    return v0
.end method

.method public isPullRefreshEnable()Z
    .registers 2

    .line 825
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    return v0
.end method

.method public isRefreshing()Z
    .registers 2

    .line 833
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 185
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    .line 188
    :cond_14
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 189
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    if-nez v0, :cond_23

    .line 190
    :cond_20
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshView()V

    :cond_23
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 228
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-nez v0, :cond_a

    return v1

    .line 231
    :cond_a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollInProgress:Z

    if-eqz v0, :cond_1f

    goto :goto_24

    .line 237
    :cond_1f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_24
    :goto_24
    return v1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 327
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 328
    invoke-virtual {p0, p2, p3, p4}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 318
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 319
    invoke-virtual {p0, p2, p3}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 12

    .line 365
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentScrollConsumed:[I

    .line 366
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_27

    .line 367
    aget v1, p4, v2

    sub-int/2addr p2, v1

    aget v1, p4, v3

    sub-int v1, p3, v1

    const/4 v4, 0x0

    invoke-virtual {p0, p2, v1, v0, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 368
    aget p1, p4, v2

    aget p2, v0, v2

    add-int/2addr p1, p2

    aput p1, p4, v2

    .line 369
    aget p1, p4, v3

    aget p2, v0, v3

    add-int/2addr p1, p2

    aput p1, p4, v3

    return-void

    .line 373
    :cond_27
    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    if-nez p2, :cond_30

    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-nez p2, :cond_30

    return-void

    .line 381
    :cond_30
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result p2

    if-nez p2, :cond_6f

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 382
    iget-object p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    if-eqz p2, :cond_6f

    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    if-eq p2, v0, :cond_6f

    .line 383
    check-cast p2, Landroid/view/ViewGroup;

    .line 384
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6f

    .line 385
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_51
    if-ge v1, v0, :cond_6f

    .line 387
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 388
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6c

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_6c

    .line 389
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result p2

    if-gez p2, :cond_6f

    return-void

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 402
    :cond_6f
    invoke-direct {p0, p1, p3}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->calculateDistanceY(Landroid/view/View;I)D

    move-result-wide p1

    double-to-int p1, p1

    .line 404
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    .line 406
    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    if-nez p2, :cond_97

    if-gez p1, :cond_87

    .line 407
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result p2

    if-nez p2, :cond_87

    .line 408
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 409
    iput-boolean v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    goto :goto_97

    :cond_87
    if-lez p1, :cond_97

    .line 410
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollDown()Z

    move-result p2

    if-nez p2, :cond_97

    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    if-nez p2, :cond_97

    .line 411
    iput v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mCurrentAction:I

    .line 412
    iput-boolean v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isConfirm:Z

    :cond_97
    :goto_97
    neg-int p2, p1

    int-to-float p2, p2

    .line 416
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->moveSpinner(F)Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 417
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollUp()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_bc

    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    if-eqz p2, :cond_bc

    iget-object p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    .line 418
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_bc

    if-lez p3, :cond_bc

    .line 420
    aget p1, p4, v3

    add-int/2addr p1, p3

    aput p1, p4, v3

    goto :goto_dd

    .line 421
    :cond_bc
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->canChildScrollDown()Z

    move-result p2

    if-nez p2, :cond_d8

    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    if-eqz p2, :cond_d8

    iget-object p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mTargetView:Landroid/view/View;

    .line 422
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_d8

    if-gez p3, :cond_d8

    .line 424
    aget p1, p4, v3

    add-int/2addr p1, p3

    aput p1, p4, v3

    goto :goto_dd

    .line 426
    :cond_d8
    aget p2, p4, v3

    add-int/2addr p2, p1

    aput p2, p4, v3

    :cond_dd
    :goto_dd
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .line 455
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 456
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->dispatchNestedScroll(IIII[I)Z

    :cond_10
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 347
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 348
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    and-int/lit8 p1, p3, 0x2

    .line 349
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startNestedScroll(I)Z

    const/4 p1, 0x1

    .line 350
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollInProgress:Z

    :cond_13
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    .line 335
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshing:Z

    if-nez p1, :cond_12

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 337
    :goto_13
    instance-of p3, p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    if-eqz p3, :cond_2a

    .line 338
    check-cast p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestScroll()Z

    move-result p3

    if-eqz p3, :cond_2a

    if-eqz p1, :cond_28

    .line 339
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    move p1, v0

    :cond_2a
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 445
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->handlerAction()V

    .line 446
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    .line 447
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollInProgress:Z

    .line 448
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->stopNestedScroll()V

    :cond_14
    return-void
.end method

.method public removeOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)Z
    .registers 3

    if-eqz p1, :cond_9

    .line 770
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mRefreshOffsetChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public setLoadingBgColor(I)V
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->footerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setBackgroundColor(I)V

    return-void
.end method

.method public setLoadingHeight(I)V
    .registers 3

    int-to-float p1, p1

    .line 842
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    .line 843
    iget p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewHeight:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->loadingViewFlowHeight:F

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V
    .registers 2

    .line 753
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onLoadingListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    return-void
.end method

.method public setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V
    .registers 2

    .line 757
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->onRefreshListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    return-void
.end method

.method public setPullLoadEnable(Z)V
    .registers 2

    .line 821
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullLoadEnable:Z

    return-void
.end method

.method public setPullRefreshEnable(Z)V
    .registers 2

    .line 829
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mPullRefreshEnable:Z

    return-void
.end method

.method public setRefreshBgColor(I)V
    .registers 3

    .line 847
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->headerView:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setBackgroundColor(I)V

    return-void
.end method

.method public setRefreshHeight(I)V
    .registers 3

    int-to-float p1, p1

    .line 837
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    .line 838
    iget p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewHeight:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->refreshViewFlowHeight:F

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 6

    .line 254
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 256
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    if-nez v1, :cond_28

    .line 257
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v2, p0

    :goto_11
    if-eqz v1, :cond_28

    .line 260
    invoke-static {v1, v2, p0, p1}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 261
    iput-object v1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    goto :goto_28

    .line 264
    :cond_1c
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_23

    .line 265
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 267
    :cond_23
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_11

    :cond_28
    :goto_28
    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 277
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->mNestedScrollAcceptedParent:Landroid/view/ViewParent;

    :cond_c
    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.AnonymousClass1 (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$1)
.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startRefresh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 2

    .line 572
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 575
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 576
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 577
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p1, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$100(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;I)V

    .line 578
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$200(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;F)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.AnonymousClass2 (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$2)
.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;
.super Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startRefresh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 585
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->startAnimation()V

    .line 587
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$300(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 588
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$300(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;->onRefresh()V

    :cond_1a
    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.AnonymousClass3 (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$3)
.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetHeaderView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 2

    .line 604
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 607
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 608
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 609
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p1, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$100(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;I)V

    .line 610
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$200(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;F)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.AnonymousClass4 (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$4)
.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$4;
.super Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetHeaderView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 2

    .line 614
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$4;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 617
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$4;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$400(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.AnonymousClass5 (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$5)
.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$5;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startLoadmore(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$5;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$5;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$500(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 643
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 644
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$5;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$500(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$5;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$200(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;F)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.AnonymousClass6 (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$6)
.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$6;
.super Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startLoadmore(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 2

    .line 648
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$6;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 651
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$6;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$500(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->startAnimation()V

    .line 653
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$6;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$600(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 654
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$6;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$600(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;->onLoading()V

    :cond_1a
    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.AnonymousClass7 (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$7)
.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$7;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetFootView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 2

    .line 670
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$7;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$7;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$500(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 674
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 675
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$7;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$500(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$7;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$200(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;F)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.AnonymousClass8 (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$8)
.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$8;
.super Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetFootView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .registers 2

    .line 679
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$8;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 682
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$8;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$700(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.OnRefreshOffsetChangedListener (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$OnRefreshOffsetChangedListener)
.class public interface abstract Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRefreshOffsetChangedListener"
.end annotation


# virtual methods
.method public abstract onOffsetChanged(I)V
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.WXOnLoadingListener (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$WXOnLoadingListener)
.class public interface abstract Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WXOnLoadingListener"
.end annotation


# virtual methods
.method public abstract onLoading()V
.end method

.method public abstract onPullingUp(FIF)V
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.WXOnRefreshListener (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$WXOnRefreshListener)
.class public interface abstract Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WXOnRefreshListener"
.end annotation


# virtual methods
.method public abstract onPullingDown(FIF)V
.end method

.method public abstract onRefresh()V
.end method

###### Class com.taobao.weex.ui.view.refresh.core.WXSwipeLayout.WXRefreshAnimatorListener (com.taobao.weex.ui.view.refresh.core.WXSwipeLayout$WXRefreshAnimatorListener)
.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WXRefreshAnimatorListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
