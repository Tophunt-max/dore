###### Class io.dcloud.common.adapter.ui.AdaWebViewParent (io.dcloud.common.adapter.ui.AdaWebViewParent)
.class public Lio/dcloud/common/adapter/ui/AdaWebViewParent;
.super Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;
    }
.end annotation


# instance fields
.field isSetPull2Refresh:Z

.field mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

.field mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

.field webParentRootView:Lio/dcloud/common/adapter/ui/WebParentView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->isSetPull2Refresh:Z

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->initRootView(Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 10
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    .line 12
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->isSetPull2Refresh:Z

    .line 23
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->initRootView(Landroid/content/Context;Z)V

    return-void
.end method

.method private initPullView(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdaWebViewParent.initPullView changeStateHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View_Visible_Path"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setInterceptTouchEventEnabled(Z)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setOnStateChangeListener(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;)V

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->init(Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-le p3, p2, :cond_35

    move v0, p2

    goto :goto_36

    :cond_35
    move v0, p3

    :goto_36
    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setHeaderHeight(I)V

    .line 9
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-le p2, p3, :cond_3e

    goto :goto_3f

    :cond_3e
    move p2, p3

    :goto_3f
    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setHeaderPullDownMaxHeight(I)V

    .line 11
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const-string p2, "bounce"

    const-string p3, "none"

    invoke-virtual {p1, p2, p3}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initRootView(Landroid/content/Context;Z)V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/ui/WebParentView;

    invoke-direct {v0, p1}, Lio/dcloud/common/adapter/ui/WebParentView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->webParentRootView:Lio/dcloud/common/adapter/ui/WebParentView;

    if-eqz p2, :cond_20

    .line 3
    new-instance p2, Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-direct {p2, p0, p1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;-><init>(Lio/dcloud/common/adapter/ui/AdaWebViewParent;Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setPullLoadEnabled(Z)V

    .line 5
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-virtual {p2, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setInterceptTouchEventEnabled(Z)V

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->webParentRootView:Lio/dcloud/common/adapter/ui/WebParentView;

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8
    :cond_20
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->webParentRootView:Lio/dcloud/common/adapter/ui/WebParentView;

    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method beginPullRefresh()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    invoke-interface {v0}, Lcom/dcloud/android/v4/widget/IRefreshAble;->isRefreshEnable()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    invoke-interface {v0}, Lcom/dcloud/android/v4/widget/IRefreshAble;->beginRefresh()V

    goto :goto_37

    .line 4
    :cond_30
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-eqz v0, :cond_37

    .line 5
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->beginPullRefresh()V

    :cond_37
    :goto_37
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->dispose()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispose()V

    .line 4
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 6
    :cond_d
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->webParentRootView:Lio/dcloud/common/adapter/ui/WebParentView;

    .line 7
    invoke-virtual {p0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-eqz v0, :cond_18

    .line 9
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    :cond_18
    return-void
.end method

.method endPullRefresh()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    invoke-interface {v0}, Lcom/dcloud/android/v4/widget/IRefreshAble;->isRefreshEnable()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    invoke-interface {v0}, Lcom/dcloud/android/v4/widget/IRefreshAble;->endRefresh()V

    goto :goto_37

    .line 4
    :cond_30
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-eqz v0, :cond_37

    .line 5
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onPullDownRefreshComplete()V

    :cond_37
    :goto_37
    return-void
.end method

.method fillsWithWebview(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->webParentRootView:Lio/dcloud/common/adapter/ui/WebParentView;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/WebParentView;->setWebView(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-eqz v0, :cond_33

    .line 4
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setRefreshableView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->addRefreshableView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setAppId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->getChilds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method

.method protected onResize()V
    .registers 7

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onResize()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_6b

    .line 3
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 5
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->endPullRefresh()V

    .line 8
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 9
    iget v2, v1, Lio/dcloud/common/adapter/ui/RefreshView;->maxPullHeight:I

    .line 10
    iget v0, v1, Lio/dcloud/common/adapter/ui/RefreshView;->changeStateHeight:I

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_4e

    .line 11
    :cond_1d
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    if-eqz v1, :cond_2a

    .line 12
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    aget v0, v0, v2

    .line 13
    iget-object v1, v1, Lio/dcloud/common/adapter/ui/BounceView;->changeStateHeights:[I

    aget v2, v1, v2

    goto :goto_4e

    .line 15
    :cond_2a
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v1

    invoke-interface {v1}, Lcom/dcloud/android/v4/widget/IRefreshAble;->isRefreshEnable()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 16
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v1

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScale()F

    move-result v4

    invoke-interface {v1, v3, v0, v4}, Lcom/dcloud/android/v4/widget/IRefreshAble;->onResize(IIF)V

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    if-eqz v2, :cond_6b

    if-eqz v0, :cond_6b

    .line 19
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-eqz v1, :cond_6b

    if-le v2, v0, :cond_5a

    move v3, v0

    goto :goto_5b

    :cond_5a
    move v3, v2

    .line 20
    :goto_5b
    invoke-virtual {v1, v3}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setHeaderHeight(I)V

    .line 21
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-le v0, v2, :cond_63

    move v2, v0

    :cond_63
    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setHeaderPullDownMaxHeight(I)V

    .line 22
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    :cond_6b
    return-void
.end method

.method parseBounce(Lorg/json/JSONObject;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 2
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    if-eqz v1, :cond_d

    return-void

    .line 6
    :cond_d
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    if-nez v1, :cond_1a

    .line 7
    new-instance v1, Lio/dcloud/common/adapter/ui/BounceView;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {v1, v0, v2}, Lio/dcloud/common/adapter/ui/BounceView;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    .line 9
    :cond_1a
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    div-int/lit8 v1, v1, 0x3

    .line 10
    div-int/lit8 v2, v1, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_3d

    .line 12
    iget-object v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    iget-object v4, v3, Lio/dcloud/common/adapter/ui/BounceView;->mSupports:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    .line 13
    iget-object v4, v3, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    aput v1, v4, v2

    .line 14
    iget-object v3, v3, Lio/dcloud/common/adapter/ui/BounceView;->changeStateHeights:[I

    aget v4, v4, v2

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v2

    move v6, v1

    move v5, v4

    goto :goto_4e

    .line 16
    :cond_3d
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    invoke-virtual {v1, p1}, Lio/dcloud/common/adapter/ui/BounceView;->parseJsonOption(Lorg/json/JSONObject;)V

    .line 17
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    iget-object v3, v1, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    aget v3, v3, v2

    .line 18
    iget-object v1, v1, Lio/dcloud/common/adapter/ui/BounceView;->changeStateHeights:[I

    aget v1, v1, v2

    move v5, v1

    move v6, v3

    .line 21
    :goto_4e
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    iget-object v3, v1, Lio/dcloud/common/adapter/ui/BounceView;->mSupports:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_5a

    .line 22
    invoke-direct {p0, v1, v6, v5}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->initPullView(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;II)V

    goto :goto_5f

    .line 24
    :cond_5a
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setInterceptTouchEventEnabled(Z)V

    .line 26
    :goto_5f
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    move-object v2, v0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/adapter/ui/BounceView;->checkOffset(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;Lorg/json/JSONObject;II)V

    .line 27
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v1, :cond_91

    const-string v1, "slideoffset"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 28
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScale()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/dcloud/android/widget/SlideLayout;->initSlideInfo(Lorg/json/JSONObject;FI)V

    :cond_91
    return-void
.end method

.method parsePullToReFresh(Lorg/json/JSONObject;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 5
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    if-eqz v1, :cond_12

    return-void

    :cond_12
    const-string v1, "support"

    .line 8
    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "default"

    if-eqz p1, :cond_26

    const-string v3, "style"

    .line 11
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_26
    const/4 v3, 0x0

    if-eqz v1, :cond_b6

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->isSetPull2Refresh:Z

    :try_start_2c
    const-string v4, "circle"

    .line 16
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 17
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v2

    if-nez v2, :cond_64

    .line 18
    new-instance v2, Lcom/dcloud/android/v4/widget/SwipeRefreshLayout;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/dcloud/android/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    invoke-virtual {v0, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->setCircleRefreshView(Lcom/dcloud/android/v4/widget/IRefreshAble;)V

    .line 19
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v2

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->obtainMainViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v6, v6, Lio/dcloud/common/adapter/ui/AdaWebview;->mWebViewImpl:Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v6}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getRefreshListener()Lcom/dcloud/android/v4/widget/IRefreshAble$OnRefreshListener;

    move-result-object v6

    invoke-interface {v2, v4, v5, v6}, Lcom/dcloud/android/v4/widget/IRefreshAble;->onInit(Landroid/view/ViewGroup;Landroid/view/View;Lcom/dcloud/android/v4/widget/IRefreshAble$OnRefreshListener;)V

    .line 21
    :cond_64
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v2

    iget-object v4, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v5, v4, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v4, v4, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScale()F

    move-result v6

    invoke-interface {v2, p1, v5, v4, v6}, Lcom/dcloud/android/v4/widget/IRefreshAble;->parseData(Lorg/json/JSONObject;IIF)V

    .line 22
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/dcloud/android/v4/widget/IRefreshAble;->setRefreshEnable(Z)V

    .line 23
    iget-object p1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    if-eqz p1, :cond_ca

    .line 24
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-virtual {p1, v3}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setInterceptTouchEventEnabled(Z)V

    goto :goto_ca

    .line 28
    :cond_88
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    if-nez v1, :cond_95

    .line 29
    new-instance v1, Lio/dcloud/common/adapter/ui/RefreshView;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {v1, v0, v2}, Lio/dcloud/common/adapter/ui/RefreshView;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    .line 31
    :cond_95
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v1

    if-eqz v1, :cond_a2

    .line 32
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/dcloud/android/v4/widget/IRefreshAble;->setRefreshEnable(Z)V

    .line 34
    :cond_a2
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    invoke-virtual {v1, p1}, Lio/dcloud/common/adapter/ui/RefreshView;->parseJsonOption(Lorg/json/JSONObject;)V

    .line 36
    iget-object p1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    iget v0, p1, Lio/dcloud/common/adapter/ui/RefreshView;->maxPullHeight:I

    .line 37
    iget v1, p1, Lio/dcloud/common/adapter/ui/RefreshView;->changeStateHeight:I

    .line 38
    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->initPullView(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;II)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_b0} :catch_b1

    goto :goto_ca

    :catch_b1
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ca

    .line 44
    :cond_b6
    iput-boolean v3, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->isSetPull2Refresh:Z

    .line 46
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object p1

    if-eqz p1, :cond_c5

    .line 47
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/dcloud/android/v4/widget/IRefreshAble;->setRefreshEnable(Z)V

    .line 50
    :cond_c5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-virtual {p1, v3}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->setInterceptTouchEventEnabled(Z)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method public reInit()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mPullReFreshViewImpl:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    :cond_7
    return-void
.end method

.method resetBounce()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->endPullRefresh()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 3
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v1, :cond_1c

    .line 4
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/SlideLayout;->reset()V

    :cond_1c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.common.adapter.ui.AdaWebViewParent.PullToRefreshWebViewExt (io.dcloud.common.adapter.ui.AdaWebViewParent$PullToRefreshWebViewExt)
.class Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;
.super Lio/dcloud/common/adapter/ui/fresh/PullToRefreshWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaWebViewParent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PullToRefreshWebViewExt"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaWebViewParent;


# direct methods
.method public constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebViewParent;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;->this$0:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    .line 2
    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private directPageIsLaunchPage(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 3

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method


# virtual methods
.method protected onAddRefreshableView(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;->this$0:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_31

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreenOrImmersive()Z

    move-result v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_31

    if-eqz v0, :cond_31

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;->this$0:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 6
    iget-object v1, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v1, :cond_31

    iget-boolean v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v0, :cond_31

    const/4 v0, -0x1

    .line 7
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 11
    :cond_31
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onAddRefreshableView(Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;->this$0:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;->this$0:Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sget v3, Lio/dcloud/common/adapter/ui/AdaFrameItem;->GONE:I

    if-ne v0, v3, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_29

    .line 4
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :cond_29
    :goto_29
    return v1
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
