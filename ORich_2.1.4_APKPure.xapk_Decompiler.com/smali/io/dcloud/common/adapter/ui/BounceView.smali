###### Class io.dcloud.common.adapter.ui.BounceView (io.dcloud.common.adapter.ui.BounceView)
.class public Lio/dcloud/common/adapter/ui/BounceView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$OnStateChangeListener;


# static fields
.field static final STATE_CHANGED_TEMPLATE:Ljava/lang/String; = "{status:\'%s\'}"

.field static final keys:[Ljava/lang/String;


# instance fields
.field changeStateHeights:[I

.field mCurState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field mJSONObject:Lorg/json/JSONObject;

.field mPositions:[Ljava/lang/String;

.field mSupports:[Z

.field mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

.field private mWebviewScale:F

.field maxPullHeights:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "top"

    const-string v1, "left"

    const-string v2, "right"

    const-string v3, "bottom"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/adapter/ui/BounceView;->keys:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/ui/BounceView;->keys:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/BounceView;->changeStateHeights:[I

    .line 3
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    .line 4
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mPositions:[Ljava/lang/String;

    .line 5
    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/BounceView;->mSupports:[Z

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/BounceView;->mCurState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 65
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 66
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 67
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScaleOfOpenerWebview()F

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebviewScale:F

    return-void
.end method


# virtual methods
.method public checkOffset(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;Lorg/json/JSONObject;II)V
    .registers 11

    const-string v0, "offset"

    .line 1
    invoke-static {p3, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_8d

    const-string v0, "top"

    .line 3
    invoke-static {p3, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    .line 4
    invoke-static {p3, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right"

    .line 5
    invoke-static {p3, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p3, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget p3, p3, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScale()F

    move-result p1

    invoke-static {v0, p3, p5, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    const-wide/16 v0, 0xfa

    if-lt p1, p4, :cond_3f

    if-le p1, p5, :cond_35

    goto :goto_36

    :cond_35
    move p5, p1

    :goto_36
    neg-int p1, p5

    .line 10
    invoke-virtual {p2, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(I)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p2, p1, v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->doPullRefreshing(ZJ)V

    goto :goto_8d

    :cond_3f
    neg-int p1, p1

    .line 14
    invoke-virtual {p2, p1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(I)V

    .line 15
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance p3, Lio/dcloud/common/adapter/ui/BounceView$1;

    invoke-direct {p3, p0, p2}, Lio/dcloud/common/adapter/ui/BounceView$1;-><init>(Lio/dcloud/common/adapter/ui/BounceView;Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;)V

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8d

    .line 24
    :cond_52
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_70

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/dcloud/android/widget/SlideLayout;

    if-eqz p2, :cond_70

    .line 25
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/dcloud/android/widget/SlideLayout;

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScale()F

    move-result p2

    invoke-virtual {p1, v3, p3, p2}, Lcom/dcloud/android/widget/SlideLayout;->setOffset(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_8d

    .line 26
    :cond_70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8d

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/dcloud/android/widget/SlideLayout;

    if-eqz p2, :cond_8d

    .line 27
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/dcloud/android/widget/SlideLayout;

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScale()F

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Lcom/dcloud/android/widget/SlideLayout;->setOffset(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public onResize()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/BounceView;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/BounceView;->parseJsonOption(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Z)V
    .registers 8

    .line 1
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/BounceView;->mCurState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p1, :cond_8

    const/4 p2, 0x1

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 2
    :goto_9
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mCurState:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    if-eqz p2, :cond_68

    .line 4
    sget-object p2, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RESET:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    if-ne p1, p2, :cond_12

    goto :goto_68

    .line 6
    :cond_12
    sget-object p2, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->PULL_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const-string v2, "dragBounce"

    const-string v3, "{status:\'%s\'}"

    const-string v4, "refresh"

    if-ne p1, p2, :cond_33

    const-string p1, "BounceView PULL_TO_REFRESH"

    .line 7
    invoke-static {v4, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "beforeChangeOffset"

    aput-object v0, p2, v1

    invoke-static {v3, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_68

    .line 9
    :cond_33
    sget-object p2, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RELEASE_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    if-ne p1, p2, :cond_4e

    const-string p1, "BounceView RELEASE_TO_REFRESH"

    .line 10
    invoke-static {v4, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "afterChangeOffset"

    aput-object v0, p2, v1

    invoke-static {v3, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_68

    .line 12
    :cond_4e
    sget-object p2, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->REFRESHING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    if-ne p1, p2, :cond_68

    const-string p1, "BounceView REFRESHING"

    .line 13
    invoke-static {v4, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "dragEndAfterChangeOffset"

    aput-object v0, p2, v1

    invoke-static {v3, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_68
    :goto_68
    return-void
.end method

.method parseJsonOption(Lorg/json/JSONObject;)V
    .registers 12

    const-string v0, "changeoffset"

    const-string v1, "position"

    .line 1
    :try_start_4
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/BounceView;->mJSONObject:Lorg/json/JSONObject;

    invoke-static {v2, p1}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mJSONObject:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_7e

    .line 5
    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    :goto_19
    sget-object v5, Lio/dcloud/common/adapter/ui/BounceView;->keys:[Ljava/lang/String;

    array-length v6, v5

    if-ge v2, v6, :cond_96

    .line 8
    aget-object v6, v5, v2

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_7b

    .line 11
    :cond_27
    aget-object v5, v5, v2

    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    .line 12
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 13
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/BounceView;->mSupports:[Z

    aput-boolean v4, v5, v2

    goto :goto_7b

    :cond_3a
    const-string v6, "auto"

    .line 14
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 15
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/BounceView;->mSupports:[Z

    aput-boolean v3, v5, v2

    .line 16
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v6, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    div-int/lit8 v6, v6, 0x3

    aput v6, v5, v2

    .line 17
    iget-object v6, p0, Lio/dcloud/common/adapter/ui/BounceView;->changeStateHeights:[I

    aget v5, v5, v2

    div-int/lit8 v5, v5, 0x2

    aput v5, v6, v2

    goto :goto_7b

    .line 19
    :cond_5b
    iget-object v6, p0, Lio/dcloud/common/adapter/ui/BounceView;->mSupports:[Z

    aput-boolean v3, v6, v2

    .line 20
    iget-object v6, p0, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    iget-object v7, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v7, v7, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v7, v7, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    div-int/lit8 v8, v7, 0x3

    iget v9, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebviewScale:F

    invoke-static {v5, v7, v8, v9}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v5

    aput v5, v6, v2

    .line 21
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/BounceView;->changeStateHeights:[I

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    aget v6, v6, v2

    div-int/lit8 v6, v6, 0x2

    aput v6, v5, v2

    :goto_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 25
    :cond_7e
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/BounceView;->mSupports:[Z

    aput-boolean v3, v1, v4

    .line 26
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    div-int/lit8 v2, v2, 0x3

    aput v2, v1, v4

    .line 27
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/BounceView;->changeStateHeights:[I

    aget v1, v1, v4

    div-int/lit8 v1, v1, 0x2

    aput v1, v2, v4

    .line 29
    :cond_96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_cd

    .line 31
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 32
    :goto_a0
    sget-object v0, Lio/dcloud/common/adapter/ui/BounceView;->keys:[Ljava/lang/String;

    array-length v1, v0

    if-ge v4, v1, :cond_dc

    .line 33
    aget-object v1, v0, v4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    goto :goto_ca

    .line 36
    :cond_ae
    aget-object v0, v0, v4

    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/BounceView;->changeStateHeights:[I

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v5, p0, Lio/dcloud/common/adapter/ui/BounceView;->mWebviewScale:F

    invoke-static {v0, v2, v3, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    aput v0, v1, v4

    :goto_ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_a0

    .line 40
    :cond_cd
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView;->changeStateHeights:[I

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/BounceView;->maxPullHeights:[I

    aget v0, v0, v4

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v4
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d7} :catch_d8

    goto :goto_dc

    :catch_d8
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_dc
    :goto_dc
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.BounceView.AnonymousClass1 (io.dcloud.common.adapter.ui.BounceView$1)
.class Lio/dcloud/common/adapter/ui/BounceView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/BounceView;->checkOffset(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;Lorg/json/JSONObject;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/BounceView;

.field final synthetic val$pullReFreshView:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/BounceView;Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/BounceView$1;->this$0:Lio/dcloud/common/adapter/ui/BounceView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/BounceView$1;->val$pullReFreshView:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/BounceView$1;->val$pullReFreshView:Lio/dcloud/common/adapter/ui/AdaWebViewParent$PullToRefreshWebViewExt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->smoothScrollTo(I)V

    return-void
.end method
