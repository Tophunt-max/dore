###### Class io.dcloud.feature.nativeObj.NativeView (io.dcloud.feature.nativeObj.NativeView)
.class public Lio/dcloud/feature/nativeObj/NativeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWaiter;
.implements Lio/dcloud/common/DHInterface/INativeView;
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;,
        Lio/dcloud/feature/nativeObj/NativeView$Overlay;
    }
.end annotation


# static fields
.field static final T:Ljava/lang/String; = "{clientX:%d,clientY:%d,pageX:%d,pageY:%d,screenX:%d,screenY:%d}"


# instance fields
.field private isAnimate:Z

.field protected isImmersed:Z

.field public isLayoutAdapt:Z

.field public isStatusBar:Z

.field isWebAnimationRuning:Z

.field mApp:Lio/dcloud/common/DHInterface/IApp;

.field public mAppScreenHeight:I

.field public mAppScreenWidth:I

.field mAttached:Z

.field protected mBackGroundColor:I

.field protected mBackgroundImageSrc:Ljava/lang/String;

.field public mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

.field mChildViewMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/nativeObj/INativeViewChildView;",
            ">;"
        }
    .end annotation
.end field

.field public mCreateScale:F

.field mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

.field private mHandler:Landroid/os/Handler;

.field mID:Ljava/lang/String;

.field mIEventCallback:Lio/dcloud/common/DHInterface/IEventCallback;

.field protected mInnerBottom:I

.field public mInnerHeight:I

.field public mInnerLeft:I

.field protected mInnerRight:I

.field public mInnerTop:I

.field public mInnerWidth:I

.field mIntercept:Z

.field public mMarginBottom:I

.field public mMarginTop:I

.field mOverlayMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/nativeObj/NativeView$Overlay;",
            ">;"
        }
    .end annotation
.end field

.field mPaint:Landroid/graphics/Paint;

.field private mRegionBottom:I

.field private mRegionJson:Lorg/json/JSONObject;

.field private mRegionLeft:I

.field private mRegionRect:Landroid/graphics/RectF;

.field private mRegionRight:I

.field private mRegionTop:I

.field mShow:Z

.field public mStatusColor:I

.field protected mStatusbarView:Landroid/view/View;

.field public mStyle:Lorg/json/JSONObject;

.field mTouchRectJson:Ljava/lang/String;

.field mTouchRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field mTouchX:F

.field mTouchY:F

.field public mUUID:Ljava/lang/String;

.field protected mWebView:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mID:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    .line 6
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 7
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mChildViewMaps:Ljava/util/HashMap;

    .line 15
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mMarginTop:I

    .line 16
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mMarginBottom:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    iput v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mIntercept:Z

    .line 31
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isAnimate:Z

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRects:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRectJson:Ljava/lang/String;

    .line 36
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    .line 37
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackgroundImageSrc:Ljava/lang/String;

    .line 38
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isWebAnimationRuning:Z

    .line 39
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mHandler:Landroid/os/Handler;

    .line 40
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    .line 42
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    .line 43
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    .line 44
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    .line 45
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isLayoutAdapt:Z

    .line 514
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAttached:Z

    .line 515
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    .line 516
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mIEventCallback:Lio/dcloud/common/DHInterface/IEventCallback;

    .line 517
    new-instance v1, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;-><init>(Lio/dcloud/feature/nativeObj/NativeView;Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    .line 518
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 519
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 520
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/util/AppStatusBarManager;->getStatusBarDefaultColor()I

    move-result p1

    if-eqz p1, :cond_7a

    .line 522
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusColor:I

    .line 524
    :cond_7a
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    .line 525
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    .line 526
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    .line 527
    iput-object p4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mID:Ljava/lang/String;

    .line 528
    iput-object p5, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    .line 529
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const-string p4, "immersed"

    invoke-interface {p3, p4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lio/dcloud/common/util/AppStatusBarManager;->checkImmersedStatusBar(Landroid/content/Context;Z)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    .line 530
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->attachCanvasView()V

    .line 532
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/NativeView;->initScreenData()V

    :try_start_b9
    const-string p1, "opacity"

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 535
    invoke-virtual {p5, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 536
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xb

    if-lt p2, p3, :cond_d0

    .line 537
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception p1

    .line 540
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d0
    :goto_d0
    return-void
.end method

.method private UpdateRegionData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_26

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/NativeView;->askRegionJson()V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRect:Landroid/graphics/RectF;

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionLeft:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionTop:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_26
    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/nativeObj/NativeView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/NativeView;->UpdateRegionData()V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/nativeObj/NativeView;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/NativeView;->endAnimatecallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lio/dcloud/feature/nativeObj/NativeView;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIIIII)V
    .registers 12

    .line 1
    invoke-direct/range {p0 .. p11}, Lio/dcloud/feature/nativeObj/NativeView;->runDrawRectF(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIIIII)V

    return-void
.end method

.method static synthetic access$600(Lio/dcloud/feature/nativeObj/NativeView;FF)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/NativeView;->checkTouchRectsContains(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lio/dcloud/feature/nativeObj/NativeView;)Landroid/graphics/RectF;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private askRegionJson()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_4b

    const-string v1, "left"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionLeft:I

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionJson:Lorg/json/JSONObject;

    const-string v1, "right"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRight:I

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionJson:Lorg/json/JSONObject;

    const-string v1, "top"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionTop:I

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionJson:Lorg/json/JSONObject;

    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionBottom:I

    :cond_4b
    return-void
.end method

.method private checkTouchRectsContains(FF)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 3
    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    goto :goto_11

    :cond_25
    return v1
.end method

.method private endAnimatecallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_10
    return-void
.end method

.method private getDrawLeft(I)I
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    add-int/2addr v0, p1

    return v0
.end method

.method private getDrawTop(I)I
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr v0, p1

    return v0
.end method

.method private getInputById(Ljava/lang/String;)Landroid/widget/EditText;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_32

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 5
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 6
    check-cast v1, Landroid/widget/EditText;

    return-object v1

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method

.method private initScreenData()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz v0, :cond_b6

    .line 3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_95

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    .line 10
    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 11
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v5

    aput-object v5, v0, v3

    iget-object v5, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const-string v5, "io.dcloud.appstream.actionbar.StreamAppActionBarUtil"

    const-string v6, "isTitlebarVisible"

    .line 12
    invoke-static {v5, v6, v1, v4, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_51

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    if-eqz v0, :cond_7b

    new-array v0, v2, [Ljava/lang/Class;

    .line 18
    const-class v4, Landroid/app/Activity;

    aput-object v4, v0, v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 19
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v6, "getTitlebarHeightPx"

    .line 20
    invoke-static {v5, v6, v1, v0, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_7b

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x0

    .line 26
    :goto_7c
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v4, 0x1020002

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_96

    :cond_95
    const/4 v1, 0x0

    :goto_96
    if-eqz v0, :cond_b6

    .line 29
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 30
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0, v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    .line 31
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v2

    sub-int/2addr v2, v1

    .line 41
    iput v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    sub-int/2addr v0, v1

    .line 42
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    .line 43
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->init()V

    :cond_b6
    return-void
.end method

.method static makeBitmapSrcRect(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/graphics/Rect;
    .registers 13

    .line 1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_c

    return-object p0

    .line 5
    :cond_c
    invoke-virtual {p2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 6
    invoke-virtual {p2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    const/4 v1, 0x0

    if-eqz p1, :cond_fa

    const-string v2, "bottom"

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, p2, v1, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    const-string v4, "right"

    .line 13
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    const-string v5, "left"

    .line 14
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0, v1, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v6

    const-string v7, "top"

    .line 15
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2, v1, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    const-string v8, "width"

    if-eqz v4, :cond_85

    .line 16
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_85

    :cond_59
    sub-int v4, v0, v4

    .line 17
    iput v4, p0, Landroid/graphics/Rect;->right:I

    .line 18
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 19
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v0, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 20
    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p0, Landroid/graphics/Rect;->left:I

    goto :goto_a2

    .line 21
    :cond_71
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 22
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v6, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_a2

    .line 24
    :cond_82
    iput v6, p0, Landroid/graphics/Rect;->left:I

    goto :goto_a2

    .line 27
    :cond_85
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v6, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->left:I

    .line 28
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v0, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    iget v5, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, p0, Landroid/graphics/Rect;->right:I

    if-le v4, v0, :cond_9f

    goto :goto_a0

    :cond_9f
    move v0, v4

    .line 29
    :goto_a0
    iput v0, p0, Landroid/graphics/Rect;->right:I

    :goto_a2
    const-string v0, "height"

    if-eqz v2, :cond_dc

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_dc

    :cond_b2
    sub-int v4, p2, v2

    .line 32
    iput v4, p0, Landroid/graphics/Rect;->bottom:I

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p2, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    sub-int/2addr v2, p1

    .line 35
    iput v2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_102

    .line 36
    :cond_c8
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 37
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, v1, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_102

    .line 39
    :cond_d9
    iput v1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_102

    .line 42
    :cond_dc
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, v1, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p2, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_f6

    goto :goto_f7

    :cond_f6
    move p2, p1

    .line 44
    :goto_f7
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_102

    .line 47
    :cond_fa
    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 48
    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 49
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 50
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    :goto_102
    return-object p0
.end method

.method private measureGifImageview(I)V
    .registers 7

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lpl/droidsonroids/gif/GifImageView;

    if-eqz v2, :cond_3d

    .line 4
    check-cast v1, Lpl/droidsonroids/gif/GifImageView;

    .line 5
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 6
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    .line 7
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2f

    add-int/2addr v3, p1

    .line 9
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3d

    .line 11
    :cond_2f
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 12
    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    sub-int/2addr v3, v2

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_40
    return-void
.end method

.method private pxFromDp(I)I
    .registers 4

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private runDrawRectF(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIIIII)V
    .registers 27

    move-object v13, p0

    move/from16 v8, p5

    move/from16 v2, p11

    .line 1
    iget-boolean v0, v13, Lio/dcloud/feature/nativeObj/NativeView;->isAnimate:Z

    if-nez v0, :cond_d

    .line 2
    invoke-direct/range {p0 .. p2}, Lio/dcloud/feature/nativeObj/NativeView;->endAnimatecallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_d
    iget-object v0, v13, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRect:Landroid/graphics/RectF;

    if-nez v0, :cond_18

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v13, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRect:Landroid/graphics/RectF;

    .line 8
    :cond_18
    iget-object v0, v13, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRect:Landroid/graphics/RectF;

    move/from16 v6, p3

    int-to-float v1, v6

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 9
    iget v1, v13, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    sub-int v1, v1, p4

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    int-to-float v1, v8

    .line 10
    iput v1, v0, Landroid/graphics/RectF;->top:F

    move/from16 v3, p9

    if-ne v2, v3, :cond_36

    mul-int v4, p8, v2

    add-int/2addr v4, v8

    add-int v4, v4, p10

    int-to-float v4, v4

    .line 12
    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_3c

    :cond_36
    mul-int v4, p8, v2

    add-int/2addr v4, v8

    int-to-float v4, v4

    .line 14
    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 16
    :goto_3c
    iget-boolean v4, v13, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    if-eqz v4, :cond_4b

    .line 17
    sget v4, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 18
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 20
    :cond_4b
    new-instance v14, Lio/dcloud/feature/nativeObj/NativeView$4;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p11

    move/from16 v3, p9

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lio/dcloud/feature/nativeObj/NativeView$4;-><init>(Lio/dcloud/feature/nativeObj/NativeView;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIII)V

    move/from16 v0, p7

    int-to-long v0, v0

    invoke-virtual {p0, v14, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private viewPostResize(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;IIII)V
    .registers 16

    .line 1
    new-instance v8, Lio/dcloud/feature/nativeObj/NativeView$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move v4, p3

    move-object v5, p1

    move v6, p6

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lio/dcloud/feature/nativeObj/NativeView$3;-><init>(Lio/dcloud/feature/nativeObj/NativeView;Landroid/view/ViewGroup$LayoutParams;IILandroid/view/View;II)V

    invoke-virtual {p1, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public StartAnimate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v12, p0

    .line 1
    iget-boolean v0, v12, Lio/dcloud/feature/nativeObj/NativeView;->isWebAnimationRuning:Z

    if-eqz v0, :cond_6

    return-void

    .line 4
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 7
    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1a

    move-object v1, p1

    move-object/from16 v2, p3

    .line 8
    invoke-direct {p0, p1, v2}, Lio/dcloud/feature/nativeObj/NativeView;->endAnimatecallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    :cond_1a
    move-object v1, p1

    move-object/from16 v2, p3

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, v12, Lio/dcloud/feature/nativeObj/NativeView;->isAnimate:Z

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    move-object v3, p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    .line 13
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    const-string v5, "duration"

    .line 14
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0xc

    const-string v6, "frames"

    .line 15
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v5, "region"

    .line 16
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v12, Lio/dcloud/feature/nativeObj/NativeView;->mRegionJson:Lorg/json/JSONObject;

    .line 17
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/NativeView;->askRegionJson()V

    .line 18
    div-int v7, v4, v9

    .line 19
    iget v0, v12, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    iget v4, v12, Lio/dcloud/feature/nativeObj/NativeView;->mRegionTop:I

    iget v5, v12, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr v4, v5

    iget v5, v12, Lio/dcloud/feature/nativeObj/NativeView;->mRegionBottom:I

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    div-int v8, v0, v9

    mul-int v4, v8, v9

    sub-int v10, v0, v4

    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    const-string v0, "shrink"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 23
    iget v3, v12, Lio/dcloud/feature/nativeObj/NativeView;->mRegionLeft:I

    iget v4, v12, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRight:I

    iget v0, v12, Lio/dcloud/feature/nativeObj/NativeView;->mRegionTop:I

    iget v5, v12, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr v5, v0

    iget v0, v12, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    iget v6, v12, Lio/dcloud/feature/nativeObj/NativeView;->mRegionBottom:I

    sub-int v6, v0, v6

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v11}, Lio/dcloud/feature/nativeObj/NativeView;->runDrawRectF(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIIIII)V

    :cond_7f
    return-void
.end method

.method public addEventListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->addEventListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method public addGifImagview(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V
    .registers 8

    .line 1
    iget-object v0, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getGifDrawable()Lpl/droidsonroids/gif/GifDrawable;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 3
    new-instance v1, Lpl/droidsonroids/gif/GifImageView;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lpl/droidsonroids/gif/GifImageView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1, v0}, Lpl/droidsonroids/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {v1, p1}, Lpl/droidsonroids/gif/GifImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    iget-boolean v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    if-eqz v2, :cond_22

    .line 8
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    div-int/lit8 v0, v0, 0x2

    .line 10
    :cond_22
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_3e

    .line 12
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4c

    .line 14
    :cond_3e
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 15
    iget v5, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    sub-int/2addr v5, v3

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    add-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 17
    :goto_4c
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eq v3, v4, :cond_54

    add-int/2addr v3, v0

    .line 18
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_62

    .line 20
    :cond_54
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 21
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    sub-int/2addr v0, p1

    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 23
    :goto_62
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 26
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-eqz p1, :cond_77

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 28
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_77
    return-void
.end method

.method public addInput(Lio/dcloud/feature/nativeObj/NativeView$Overlay;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0, p2}, Lio/dcloud/feature/nativeObj/NativeView;->getInputById(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_29

    .line 4
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_21

    const v1, 0x800013

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_26

    :cond_21
    const/16 v1, 0x13

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 12
    :goto_26
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    :cond_29
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 18
    iget-object v2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputType:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_3a

    goto :goto_82

    .line 22
    :cond_3a
    iget-object v2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputType:Ljava/lang/String;

    const-string v5, "email"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_82

    const/16 v1, 0x21

    goto :goto_82

    .line 28
    :cond_4d
    iget-object v2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputType:Ljava/lang/String;

    const-string v5, "number"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v1, 0x2

    goto :goto_82

    .line 32
    :cond_59
    iget-object v2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputType:Ljava/lang/String;

    const-string v5, "search"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 33
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_82

    .line 36
    :cond_67
    iget-object v2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputType:Ljava/lang/String;

    const-string v5, "tel"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const/4 v1, 0x3

    goto :goto_82

    .line 40
    :cond_73
    iget-object v2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputType:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const/16 v1, 0x11

    .line 42
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 44
    :cond_82
    :goto_82
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 47
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 49
    iget v1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 51
    iget-object v1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->placeholder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 53
    iget v1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->placeholderColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 55
    invoke-static {p1}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$300(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result v1

    float-to-int v1, v1

    .line 56
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 58
    iget v3, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v3, 0x0

    .line 59
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 61
    invoke-static {p1}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$400(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 63
    invoke-static {p1}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$500(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 66
    invoke-static {p1}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$500(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)I

    move-result v5

    add-int/2addr v5, v1

    .line 68
    invoke-virtual {v0, v5, v1, v5, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v1, v5, :cond_d1

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d4

    .line 72
    :cond_d1
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :goto_d4
    new-instance v1, Lio/dcloud/feature/nativeObj/NativeView$6;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/nativeObj/NativeView$6;-><init>(Lio/dcloud/feature/nativeObj/NativeView;Lio/dcloud/feature/nativeObj/NativeView$Overlay;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 126
    new-instance v1, Lio/dcloud/feature/nativeObj/NativeView$7;

    invoke-direct {v1, p0, p2, p1}, Lio/dcloud/feature/nativeObj/NativeView$7;-><init>(Lio/dcloud/feature/nativeObj/NativeView;Ljava/lang/String;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 178
    iget-boolean p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    if-eqz p2, :cond_ea

    .line 179
    sget v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    .line 181
    :cond_ea
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p2, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_106

    .line 183
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_113

    .line 185
    :cond_106
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 186
    iget v5, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    sub-int/2addr v5, v1

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    add-int/2addr v5, v1

    div-int/2addr v5, v4

    iput v5, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 188
    :goto_113
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_11b

    add-int/2addr v1, v3

    .line 189
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_128

    .line 191
    :cond_11b
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 192
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    sub-int/2addr v1, p1

    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr v1, p1

    div-int/2addr v1, v4

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 194
    :goto_128
    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 197
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-eqz p1, :cond_13d

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 199
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_13d
    return-void
.end method

.method protected attachCanvasView()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_15
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachToViewGroup(Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAttached:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    .line 3
    instance-of v0, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v0, :cond_11

    .line 4
    move-object v0, p1

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0, p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addNativeViewChild(Lio/dcloud/common/DHInterface/INativeView;)V

    .line 6
    :cond_11
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lio/dcloud/feature/nativeObj/NativeView$2;

    invoke-direct {v1, p0, v0}, Lio/dcloud/feature/nativeObj/NativeView$2;-><init>(Lio/dcloud/feature/nativeObj/NativeView;Ljava/lang/String;)V

    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mIEventCallback:Lio/dcloud/common/DHInterface/IEventCallback;

    .line 24
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 28
    check-cast p1, Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_32
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->measureFitViewParent(Z)V

    .line 33
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    .line 34
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAttached:Z

    return-void
.end method

.method public clearAnimate()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isAnimate:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRect:Landroid/graphics/RectF;

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionJson:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-eqz v0, :cond_17

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method

.method public clearNativeViewData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0, p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeNativeViewChild(Lio/dcloud/common/DHInterface/INativeView;)V

    .line 5
    :cond_d
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeView$5;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/NativeView$5;-><init>(Lio/dcloud/feature/nativeObj/NativeView;)V

    const/16 v1, 0xc8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clearViewData()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    .line 2
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->type:Ljava/lang/String;

    const-string v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz v2, :cond_6

    .line 3
    invoke-virtual {v2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-virtual {v2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4
    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->recycle(Z)V

    goto :goto_6

    .line 8
    :cond_35
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mChildViewMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected configurationCange()V
    .registers 1

    return-void
.end method

.method createTouchRect(Lorg/json/JSONObject;)Landroid/graphics/RectF;
    .registers 9

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, p0, p1, v1}, Lio/dcloud/feature/nativeObj/NativeView;->makeRect(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2
    iget p1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, -0x31000000

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_18

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_45

    .line 4
    :cond_18
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v2, :cond_2e

    .line 6
    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    int-to-float p1, p1

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    int-to-float v2, v2

    sub-float v6, v4, v2

    sub-float/2addr p1, v6

    div-float/2addr p1, v5

    add-float/2addr p1, v2

    add-float/2addr v4, p1

    :cond_2e
    cmpl-float v1, v3, v1

    if-nez v1, :cond_3f

    .line 12
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    int-to-float v1, v1

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    int-to-float v2, v2

    sub-float v3, v0, v2

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    add-float v3, v1, v2

    add-float/2addr v0, v3

    .line 16
    :cond_3f
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v1

    :cond_45
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_9

    .line 2
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 5
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    .line 6
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->type:Ljava/lang/String;

    const-string v3, "clear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 7
    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_f

    .line 11
    :cond_2d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "clearAnimate"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->clearAnimate()V

    goto :goto_2e

    :cond_c
    const-string v0, "checkTouch"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 4
    check-cast p2, Landroid/view/MotionEvent;

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/NativeView;->checkTouchRectsContains(FF)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 6
    iget-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mIntercept:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_2e
    :goto_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method getEventJSON()Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchX:F

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchY:F

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchX:F

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchY:F

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchX:F

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchY:F

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "{clientX:%d,clientY:%d,pageX:%d,pageY:%d,screenX:%d,screenY:%d}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInnerBottom()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    return v0
.end method

.method public getInnerHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    return v0
.end method

.method public getInputFocusById(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->getInputById(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public getInputValueById(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->getInputById(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getNViewContentHeight()I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    iput v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    .line 5
    iget-object v3, v2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestJson:Lorg/json/JSONObject;

    invoke-virtual {p0, p0, v3, v2}, Lio/dcloud/feature/nativeObj/NativeView;->makeRect(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)Landroid/graphics/Rect;

    move-result-object v2

    .line 6
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_d

    move v1, v2

    goto :goto_d

    :cond_25
    return v1

    .line 12
    :cond_26
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    return v0
.end method

.method public getRectHeightForBitmap(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Landroid/graphics/Rect;Lio/dcloud/feature/nativeObj/NativeView$Overlay;I)I
    .registers 14

    const-string v0, "height"

    if-nez p4, :cond_11

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p3, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p2, p3, p3, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    return p1

    :cond_11
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textAdapt:Z

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    if-eqz p3, :cond_61

    const-string p4, "width"

    .line 5
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_3f

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3f

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    return p1

    .line 7
    :cond_3f
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_cc

    .line 8
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p4, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p2, p4, p4, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    .line 9
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 10
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    return p1

    :cond_61
    if-eqz p4, :cond_cc

    .line 12
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_cc

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "wrap_content"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_cc

    iget-object p3, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->type:Ljava/lang/String;

    const-string v1, "font"

    invoke-static {p3, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_cc

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textAdapt:Z

    .line 14
    iget-object p1, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textWhiteSpace:Ljava/lang/String;

    const-string p2, "normal"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 15
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 16
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    iget p2, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    new-instance v2, Landroid/text/TextPaint;

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 18
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v1, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mText:Ljava/lang/String;

    iget p2, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->margin:I

    mul-int/lit8 p2, p2, 0x2

    sub-int v3, p5, p2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget p2, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textLineSpacing:F

    const p3, 0x3f666666    # 0.9f

    add-float v5, p2, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 20
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    iget p2, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->margin:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    return p1

    .line 23
    :cond_c2
    iget p1, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    iget p2, p4, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->margin:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    .line 26
    :cond_cc
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p3, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p2, p3, p3, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    return p1
.end method

.method public getRectWidthForBitmap(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Landroid/graphics/Rect;)I
    .registers 8

    const-string v0, "width"

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    if-eqz p3, :cond_4f

    const-string v1, "height"

    .line 2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    return p1

    .line 4
    :cond_2d
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 5
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget v0, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p2, v0, v0, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 7
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    return p1

    .line 10
    :cond_4f
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p3, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p2, p3, p3, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    return p1
.end method

.method public getStyleBackgroundColor()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    if-eqz v0, :cond_24

    const-string v1, "backgroudColor"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 4
    :cond_13
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method

.method public getStyleLeft()I
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    return v0
.end method

.method public getStyleWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    return v0
.end method

.method public getViewId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()Ljava/lang/String;
    .registers 2

    const-string v0, "nativeView"

    return-object v0
.end method

.method public getViewUUId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .registers 9

    const-string v0, "background"

    const-string v1, "statusbar"

    const-string v2, "backgroundImage"

    const-string v3, "backgroundColor"

    const-string v4, "backgroudColor"

    .line 1
    iget-object v5, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const/4 v6, 0x1

    if-eqz v5, :cond_c7

    .line 4
    :try_start_f
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1d

    .line 5
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 6
    :cond_1d
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 7
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :cond_2c
    move-object v3, v7

    .line 9
    :goto_2d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_31} :catch_c3

    if-nez v4, :cond_41

    .line 11
    :try_start_33
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_3a

    goto :goto_52

    .line 13
    :catch_3a
    :try_start_3a
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_c3

    goto :goto_52

    :cond_41
    const-string v3, "ImageSlider"

    .line 15
    :try_start_43
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_52

    const v3, -0x111112

    .line 16
    iput v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    .line 20
    :cond_52
    :goto_52
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 21
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_60
    if-eqz v7, :cond_6e

    .line 24
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackgroundImageSrc:Ljava/lang/String;

    if-eqz v2, :cond_6c

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 25
    :cond_6c
    iput-object v7, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackgroundImageSrc:Ljava/lang/String;

    .line 28
    :cond_6e
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 29
    sget-boolean v2, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    if-eqz v2, :cond_c7

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_c7

    .line 30
    iput-boolean v6, p0, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    .line 31
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 32
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 33
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    .line 35
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->checkStatusbarColor(I)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 36
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusColor:I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_a4} :catch_c3

    :cond_a4
    const-string v0, "TitleNView"

    .line 39
    :try_start_a6
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 40
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    if-eqz v0, :cond_c7

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusColor:I

    if-eq v1, v0, :cond_c7

    .line 41
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->checkStatusbarColor(I)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 42
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusColor:I
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_c2} :catch_c3

    goto :goto_c7

    :catch_c3
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :cond_c7
    :goto_c7
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/NativeView;->initStatusBarView(I)V

    .line 53
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    .line 54
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "top"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    iget v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v2, v3, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mMarginTop:I

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    .line 55
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v2, v2, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerRight:I

    .line 56
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_121

    const-string v4, "wrap_content"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 58
    iput-boolean v6, p0, Lio/dcloud/feature/nativeObj/NativeView;->isLayoutAdapt:Z

    goto :goto_123

    .line 60
    :cond_121
    iput-boolean v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->isLayoutAdapt:Z

    .line 62
    :goto_123
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v5, "bottom"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_185

    iget-boolean v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->isLayoutAdapt:Z

    if-nez v4, :cond_185

    .line 63
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    iget v6, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v4, v5, v5, v6}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    iput v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mMarginBottom:I

    .line 64
    iget v5, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    sub-int/2addr v5, v4

    iput v5, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    .line 65
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16a

    iget-object v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16a

    .line 66
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v1, v1, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    .line 67
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    if-gez v1, :cond_1ad

    .line 69
    iput v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    goto :goto_1ad

    .line 71
    :cond_16a
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17a

    .line 72
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    goto :goto_1ad

    .line 74
    :cond_17a
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v1, v1, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    goto :goto_1ad

    .line 77
    :cond_185
    iget-boolean v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->isLayoutAdapt:Z

    if-eqz v1, :cond_190

    .line 78
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->getNViewContentHeight()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    goto :goto_19a

    .line 80
    :cond_190
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v1, v1, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    .line 82
    :goto_19a
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    if-ge v0, v1, :cond_1ab

    iget-boolean v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->isLayoutAdapt:Z

    if-eqz v1, :cond_1a5

    goto :goto_1ab

    .line 85
    :cond_1a5
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    goto :goto_1ad

    .line 86
    :cond_1ab
    :goto_1ab
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    .line 94
    :cond_1ad
    :goto_1ad
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerRight:I

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    .line 99
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->initJsonTouchRect()V

    return-void
.end method

.method initJsonTouchRect()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRectJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRectJson:Ljava/lang/String;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 5
    :try_start_18
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRectJson:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_20

    move-object v1, v0

    :catch_20
    const/4 v0, 0x0

    .line 9
    :goto_21
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 11
    :try_start_27
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 13
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lio/dcloud/feature/nativeObj/NativeView;->createTouchRect(Lorg/json/JSONObject;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 22
    :cond_39
    :try_start_39
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRectJson:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_41

    move-object v1, v0

    .line 26
    :catch_41
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->createTouchRect(Lorg/json/JSONObject;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    return-void
.end method

.method initStatusBarView(I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_c

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->attachCanvasView()V

    .line 4
    :cond_c
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const-string v4, "StatusBar"

    if-ge v2, v3, :cond_38

    .line 8
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 10
    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusColor:I

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 14
    :cond_38
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    .line 15
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 22
    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/NativeView;->measureFitViewParent(Z)V

    return-void
.end method

.method interceptTouchEvent(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mIntercept:Z

    return-void
.end method

.method public isAnimate()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mRegionRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDock()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "position"

    const-string v2, "absolute"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dock"

    .line 2
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isDockTop()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "position"

    const-string v2, "absolute"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dock"

    .line 2
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "top"

    .line 4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusBar()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    return v0
.end method

.method makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)Lio/dcloud/feature/nativeObj/NativeView$Overlay;
    .registers 23

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v11, p10

    .line 1
    invoke-virtual/range {v0 .. v11}, Lio/dcloud/feature/nativeObj/NativeView;->makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    move-result-object v0

    return-object v0
.end method

.method public makeOverlay(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZZ)Lio/dcloud/feature/nativeObj/NativeView$Overlay;
    .registers 13

    .line 2
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;-><init>(Lio/dcloud/feature/nativeObj/NativeView;)V

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    .line 4
    iput-object p0, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    .line 5
    iput-object p5, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mSrcJson:Lorg/json/JSONObject;

    .line 6
    iput-object p6, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestJson:Lorg/json/JSONObject;

    .line 7
    iput-object p7, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    .line 8
    iput-object p2, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    .line 9
    iput-object p3, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mText:Ljava/lang/String;

    .line 10
    iput p4, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mRectColor:I

    .line 11
    iput-object p9, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->type:Ljava/lang/String;

    .line 12
    invoke-static {p8}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4c

    .line 14
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    invoke-virtual {p3, p8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_37

    .line 15
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    invoke-virtual {p3, p8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 16
    iget-object p4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {p4, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 18
    :cond_37
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    .line 20
    iget-object p4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p8, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 23
    :cond_4c
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :goto_51
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v0, p3}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->parseJson(Lio/dcloud/common/DHInterface/IWebview;)V

    const-string p3, "img"

    .line 26
    invoke-virtual {p9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_69

    if-eqz p2, :cond_69

    invoke-virtual {p2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->isGif()Z

    move-result p2

    if-eqz p2, :cond_69

    .line 27
    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/NativeView;->addGifImagview(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V

    :cond_69
    const-string p2, "input"

    .line 29
    invoke-virtual {p9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 30
    iput-object p1, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    .line 31
    invoke-virtual {p0, v0, p8}, Lio/dcloud/feature/nativeObj/NativeView;->addInput(Lio/dcloud/feature/nativeObj/NativeView$Overlay;Ljava/lang/String;)V

    :cond_76
    if-eqz p10, :cond_7b

    .line 34
    invoke-virtual {p0, p11}, Lio/dcloud/feature/nativeObj/NativeView;->nativeInvalidate(Z)V

    :cond_7b
    return-object v0
.end method

.method makeRect(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)Landroid/graphics/Rect;
    .registers 14

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p3, :cond_a

    .line 4
    iget-object v1, p3, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mSrcRect:Landroid/graphics/Rect;

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    move-object v5, v1

    if-eqz p2, :cond_14f

    const-string v1, "right"

    .line 7
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/high16 v3, -0x80000000

    const-string v4, "auto"

    const-string v6, "left"

    const/4 v7, 0x0

    if-eqz v2, :cond_76

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v8, "width"

    if-eqz v2, :cond_2b

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    .line 8
    :cond_2b
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v9, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v1, v2, v7, v9}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    .line 9
    iget v2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 10
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 11
    invoke-virtual {p0, p1, p2, v5}, Lio/dcloud/feature/nativeObj/NativeView;->getRectWidthForBitmap(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Landroid/graphics/Rect;)I

    move-result v1

    .line 12
    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_a4

    .line 13
    :cond_4c
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 14
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v6, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v1, v2, v7, v6}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    invoke-direct {p1, v1}, Lio/dcloud/feature/nativeObj/NativeView;->getDrawLeft(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_a4

    .line 16
    :cond_6f
    invoke-direct {p1, v7}, Lio/dcloud/feature/nativeObj/NativeView;->getDrawLeft(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_a4

    .line 18
    :cond_76
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 19
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 20
    invoke-virtual {p0, p1, p2, v5}, Lio/dcloud/feature/nativeObj/NativeView;->getRectWidthForBitmap(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Landroid/graphics/Rect;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_a4

    .line 22
    :cond_89
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v6, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v1, v2, v7, v6}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    invoke-direct {p1, v1}, Lio/dcloud/feature/nativeObj/NativeView;->getDrawLeft(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 23
    invoke-virtual {p0, p1, p2, v5}, Lio/dcloud/feature/nativeObj/NativeView;->getRectWidthForBitmap(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Landroid/graphics/Rect;)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_a4
    const-string v1, "bottom"

    .line 26
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "top"

    if-eqz v2, :cond_110

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v8, "height"

    if-eqz v2, :cond_bc

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_110

    .line 27
    :cond_bc
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v3, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v1, v2, v7, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    .line 28
    iget v2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 29
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lio/dcloud/feature/nativeObj/NativeView;->getRectHeightForBitmap(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Landroid/graphics/Rect;Lio/dcloud/feature/nativeObj/NativeView$Overlay;I)I

    move-result p1

    .line 31
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_15f

    .line 32
    :cond_e6
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_109

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_109

    .line 33
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p3, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p2, p3, v7, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p2

    invoke-direct {p1, p2}, Lio/dcloud/feature/nativeObj/NativeView;->getDrawTop(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_15f

    .line 35
    :cond_109
    invoke-direct {p1, v7}, Lio/dcloud/feature/nativeObj/NativeView;->getDrawTop(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_15f

    .line 37
    :cond_110
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 38
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lio/dcloud/feature/nativeObj/NativeView;->getRectHeightForBitmap(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Landroid/graphics/Rect;Lio/dcloud/feature/nativeObj/NativeView$Overlay;I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_15f

    .line 41
    :cond_12b
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v3, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v1, v2, v7, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    invoke-direct {p1, v1}, Lio/dcloud/feature/nativeObj/NativeView;->getDrawTop(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lio/dcloud/feature/nativeObj/NativeView;->getRectHeightForBitmap(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Landroid/graphics/Rect;Lio/dcloud/feature/nativeObj/NativeView$Overlay;I)I

    move-result p1

    iget p2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_15f

    .line 47
    :cond_14f
    iget p2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 48
    iget p2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 49
    iget p2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerRight:I

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 50
    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_15f
    return-object v0
.end method

.method public makeRichText(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 13

    .line 1
    invoke-static {p5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "richtext_"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 4
    :cond_1b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mChildViewMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/INativeViewChildView;

    if-nez v0, :cond_3c

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout;->makeRichText(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/nativeObj/NativeView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mChildViewMaps:Ljava/util/HashMap;

    invoke-virtual {p2, p5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 10
    :cond_3c
    check-cast v0, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;

    invoke-static {v0, p2, p3, p4}, Lio/dcloud/feature/nativeObj/richtext/RichTextLayout;->makeRichText(Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lio/dcloud/feature/nativeObj/richtext/RichTextLayout$RichTextLayoutHolder;

    :goto_41
    return-void
.end method

.method public makeWeexView(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 12

    .line 1
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "weexview_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    :cond_1b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mChildViewMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/INativeViewChildView;

    if-nez v0, :cond_63

    .line 6
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "weex,io.dcloud.feature.weex.WeexFeature"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "createWeexWindow"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p0, v2, v6

    aput-object p2, v2, v7

    const/4 p1, 0x3

    aput-object p3, v2, p1

    aput-object v2, v3, p1

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/INativeViewChildView;

    .line 7
    move-object p2, p1

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mChildViewMaps:Ljava/util/HashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    return-void
.end method

.method protected measureChildViewToTop(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->measureGifImageview(I)V

    return-void
.end method

.method protected measureFitViewParent(Z)V
    .registers 21

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "position"

    const-string v2, "absolute"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "dock"

    .line 6
    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v10, "static"

    const/4 v3, 0x0

    if-eqz v1, :cond_21e

    .line 7
    iget-object v1, v7, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 9
    iget-object v2, v7, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 11
    iget-object v5, v7, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v5, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    if-eqz p1, :cond_43

    .line 12
    iget v6, v5, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    goto :goto_47

    :cond_43
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    .line 13
    :goto_47
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "titleNView"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5e

    const/4 v6, 0x0

    :cond_5e
    if-eqz p1, :cond_63

    .line 16
    iget v11, v5, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    goto :goto_68

    :cond_63
    invoke-static {v2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v11

    float-to-int v11, v11

    .line 20
    :goto_68
    iget v12, v5, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 21
    iget-object v13, v7, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v13

    iget v15, v7, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    if-ge v13, v15, :cond_76

    goto :goto_7c

    :cond_76
    iget-object v13, v7, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v13, v14}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v15

    .line 22
    :goto_7c
    iget v13, v5, Lio/dcloud/common/adapter/util/ViewRect;->bottom:I

    sub-int/2addr v15, v13

    .line 24
    iget-object v13, v7, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v14, "top"

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v13, v7, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v13}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    const-string v9, "left"

    .line 26
    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 28
    iget v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iput v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerRight:I

    .line 29
    iput v3, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    sub-int/2addr v12, v0

    move/from16 v17, v0

    :goto_a0
    move v6, v11

    :goto_a1
    move v3, v12

    goto/16 :goto_1f3

    .line 33
    :cond_a4
    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_143

    .line 35
    iget v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iput v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    .line 36
    iput v3, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    .line 41
    invoke-virtual {v13, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 42
    :goto_b9
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v9, v3, :cond_107

    .line 43
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move/from16 v17, v6

    .line 44
    instance-of v6, v3, Lcom/dcloud/android/widget/StatusBarView;

    if-eqz v6, :cond_ca

    goto :goto_102

    :cond_ca
    if-eqz v3, :cond_102

    .line 47
    instance-of v6, v3, Lio/dcloud/feature/nativeObj/NativeView;

    if-eqz v6, :cond_102

    if-eq v3, v7, :cond_102

    .line 48
    instance-of v6, v3, Lio/dcloud/feature/nativeObj/TitleNView;

    .line 49
    check-cast v3, Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v3}, Lio/dcloud/feature/nativeObj/NativeView;->isDock()Z

    move-result v18

    if-eqz v18, :cond_102

    if-eqz v6, :cond_e4

    .line 52
    invoke-virtual {v3}, Lio/dcloud/feature/nativeObj/NativeView;->getInnerHeight()I

    move-result v18

    add-int v16, v16, v18

    .line 54
    :cond_e4
    invoke-virtual {v3}, Lio/dcloud/feature/nativeObj/NativeView;->isDockTop()Z

    move-result v18

    if-eqz v18, :cond_fd

    .line 55
    invoke-virtual {v3}, Lio/dcloud/feature/nativeObj/NativeView;->getInnerBottom()I

    move-result v18

    add-int v14, v14, v18

    if-nez v6, :cond_fd

    if-lt v9, v0, :cond_f7

    const/4 v6, -0x1

    if-ne v0, v6, :cond_fd

    .line 58
    :cond_f7
    invoke-virtual {v3}, Lio/dcloud/feature/nativeObj/NativeView;->getInnerHeight()I

    move-result v6

    add-int v16, v16, v6

    .line 62
    :cond_fd
    invoke-virtual {v3}, Lio/dcloud/feature/nativeObj/NativeView;->getInnerHeight()I

    move-result v3

    add-int/2addr v11, v3

    :cond_102
    :goto_102
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v17

    goto :goto_b9

    :cond_107
    move/from16 v17, v6

    .line 66
    iget v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    add-int/2addr v14, v0

    add-int/2addr v11, v0

    .line 69
    iget-boolean v0, v5, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v0, :cond_127

    iget-boolean v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    if-eqz v0, :cond_11e

    iget-object v0, v5, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v0}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_11e

    goto :goto_127

    .line 75
    :cond_11e
    iget-boolean v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    if-eqz v0, :cond_125

    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v14, v0

    :cond_125
    move v0, v14

    goto :goto_130

    .line 76
    :cond_127
    :goto_127
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v14, v0

    add-int v3, v11, v0

    add-int v16, v16, v0

    move v0, v14

    move v14, v3

    :goto_130
    move/from16 v3, v16

    .line 84
    iget-object v6, v7, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 86
    invoke-virtual {v7, v3}, Lio/dcloud/feature/nativeObj/NativeView;->measureChildViewToTop(I)V

    sub-int/2addr v15, v14

    move v6, v0

    goto/16 :goto_a1

    :cond_143
    move/from16 v17, v6

    const-string v3, "right"

    .line 88
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 90
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iput v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerRight:I

    .line 91
    iget v3, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    sub-int/2addr v0, v3

    iput v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    sub-int/2addr v12, v3

    goto/16 :goto_a0

    .line 96
    :cond_15b
    iget v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    iput v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    if-nez v0, :cond_168

    .line 98
    iget v0, v5, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v3, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    add-int/2addr v0, v3

    iput v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    :cond_168
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 103
    :goto_16b
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_1b7

    .line 104
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1b4

    .line 105
    instance-of v11, v9, Lio/dcloud/feature/nativeObj/NativeView;

    if-eqz v11, :cond_1b4

    if-eq v9, v7, :cond_1b4

    .line 106
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_190

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    const-string v14, "StatusBar"

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_190

    goto :goto_1b4

    .line 109
    :cond_190
    move-object v11, v9

    check-cast v11, Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v11}, Lio/dcloud/feature/nativeObj/NativeView;->isDock()Z

    move-result v14

    if-eqz v14, :cond_1b4

    .line 111
    instance-of v9, v9, Lio/dcloud/feature/nativeObj/TitleNView;

    if-eqz v9, :cond_1a9

    iget-object v9, v11, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-static {v9}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v9

    if-eqz v9, :cond_1a9

    .line 112
    invoke-virtual {v11}, Lio/dcloud/feature/nativeObj/NativeView;->getInnerHeight()I

    move-result v3

    .line 114
    :cond_1a9
    invoke-virtual {v11}, Lio/dcloud/feature/nativeObj/NativeView;->isDockTop()Z

    move-result v9

    if-eqz v9, :cond_1b4

    .line 115
    invoke-virtual {v11}, Lio/dcloud/feature/nativeObj/NativeView;->getInnerBottom()I

    move-result v9

    add-int/2addr v6, v9

    :cond_1b4
    :goto_1b4
    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    .line 120
    :cond_1b7
    iget v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    iget v9, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    sub-int/2addr v0, v9

    iput v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    .line 121
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    iget-boolean v9, v7, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    if-eqz v9, :cond_1d9

    iget-boolean v9, v5, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v9, :cond_1d6

    iget-object v9, v5, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v9}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v9

    if-eqz v9, :cond_1d9

    .line 123
    :cond_1d6
    sget v9, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v3, v9

    .line 126
    :cond_1d9
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 127
    invoke-virtual {v7, v3}, Lio/dcloud/feature/nativeObj/NativeView;->measureChildViewToTop(I)V

    .line 129
    iget-boolean v0, v5, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v0, :cond_1e6

    .line 130
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    :goto_1e4
    add-int/2addr v6, v0

    goto :goto_1ed

    .line 133
    :cond_1e6
    iget-boolean v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    if-eqz v0, :cond_1ed

    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    goto :goto_1e4

    .line 137
    :cond_1ed
    :goto_1ed
    iget v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    add-int/2addr v0, v6

    sub-int/2addr v15, v0

    goto/16 :goto_a1

    :goto_1f3
    if-eqz p1, :cond_212

    .line 140
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    iget-object v0, v5, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_212

    const/4 v0, 0x0

    .line 142
    :goto_1fd
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_212

    .line 143
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 144
    instance-of v9, v5, Lio/dcloud/feature/nativeObj/TitleNView;

    if-eqz v9, :cond_20f

    .line 145
    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    goto :goto_212

    :cond_20f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1fd

    :cond_212
    :goto_212
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v4

    move v4, v15

    move/from16 v5, v17

    .line 156
    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/nativeObj/NativeView;->viewPostResize(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;IIII)V

    goto/16 :goto_2cc

    .line 157
    :cond_21e
    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_235

    if-eqz p1, :cond_2cc

    .line 159
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2cc

    .line 161
    :cond_235
    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2cc

    .line 162
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 163
    iget-object v1, v7, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 167
    :goto_24f
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_26f

    .line 168
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 169
    instance-of v5, v4, Lio/dcloud/feature/nativeObj/NativeView;

    if-eqz v5, :cond_26c

    .line 170
    check-cast v4, Lio/dcloud/feature/nativeObj/NativeView;

    .line 171
    invoke-virtual {v4}, Lio/dcloud/feature/nativeObj/NativeView;->isDockTop()Z

    move-result v5

    if-eqz v5, :cond_26c

    if-eq v4, v7, :cond_26c

    .line 172
    invoke-virtual {v4}, Lio/dcloud/feature/nativeObj/NativeView;->getInnerHeight()I

    move-result v4

    add-int/2addr v3, v4

    :cond_26c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24f

    .line 176
    :cond_26f
    iget-boolean v2, v7, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    if-eqz v2, :cond_282

    iget-boolean v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v2, :cond_27f

    iget-object v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_282

    .line 177
    :cond_27f
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v3, v2

    .line 179
    :cond_282
    iget-boolean v2, v7, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    if-eqz v2, :cond_291

    iget-boolean v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v0, :cond_291

    instance-of v0, v7, Lio/dcloud/feature/nativeObj/TitleNView;

    if-eqz v0, :cond_291

    .line 180
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v3, v0

    :cond_291
    const/4 v0, 0x0

    .line 182
    :goto_292
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2c7

    .line 183
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 184
    iget-object v4, v7, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-ne v2, v4, :cond_2ac

    .line 185
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 188
    invoke-virtual {v7, v3}, Lio/dcloud/feature/nativeObj/NativeView;->measureChildViewToTop(I)V

    goto :goto_2c4

    .line 189
    :cond_2ac
    instance-of v4, v2, Lio/dcloud/feature/nativeObj/INativeViewChildView;

    if-eqz v4, :cond_2c4

    .line 190
    check-cast v2, Lio/dcloud/feature/nativeObj/INativeViewChildView;

    invoke-interface {v2}, Lio/dcloud/feature/nativeObj/INativeViewChildView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2c4

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 193
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2c4

    .line 194
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 195
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2c4
    :goto_2c4
    add-int/lit8 v0, v0, 0x1

    goto :goto_292

    :cond_2c7
    if-eqz p1, :cond_2cc

    .line 202
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    :cond_2cc
    :goto_2cc
    iget v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v1, v7, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    if-le v0, v1, :cond_2db

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v7, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2f1

    .line 209
    :cond_2db
    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2ea

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v7, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2f1

    .line 212
    :cond_2ea
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    :goto_2f1
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/NativeView;->initJsonTouchRect()V

    .line 216
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView;->mChildViewMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_310

    .line 218
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_300
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_310

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/INativeViewChildView;

    .line 219
    invoke-interface {v1}, Lio/dcloud/feature/nativeObj/INativeViewChildView;->updateLayout()V

    goto :goto_300

    :cond_310
    return-void
.end method

.method public nativeInvalidate(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 5
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_15

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_15
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1a
    return-void
.end method

.method public obtanMainView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->isAnimate:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->isAnimate:Z

    .line 5
    :cond_a
    new-instance p1, Lio/dcloud/feature/nativeObj/NativeView$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/nativeObj/NativeView$1;-><init>(Lio/dcloud/feature/nativeObj/NativeView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method removeFromViewGroup()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAttached:Z

    if-nez v0, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_13
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->clearViewData()V

    return-void

    .line 9
    :cond_17
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-nez v0, :cond_1c

    return-void

    .line 10
    :cond_1c
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mIEventCallback:Lio/dcloud/common/DHInterface/IEventCallback;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "position"

    const-string v2, "absolute"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dock"

    .line 13
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3f

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_64

    :cond_3f
    const-string v1, "static"

    .line 30
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 31
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_64

    .line 32
    :cond_52
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 33
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_64

    :cond_63
    move-object v0, v3

    :goto_64
    if-eqz v0, :cond_6a

    .line 36
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_75

    .line 38
    :cond_6a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 40
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    :cond_75
    :goto_75
    instance-of v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;

    if-eqz v0, :cond_83

    .line 44
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iput-object v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    .line 46
    :cond_83
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebParentViewRect()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAttached:Z

    .line 48
    iput-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    .line 49
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->clearViewData()V

    return-void
.end method

.method public resetNativeView()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->clearViewData()V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->clearAnimate()V

    return-void
.end method

.method public setInputFocusById(Ljava/lang/String;Z)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->getInputById(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_3e

    const/4 v0, 0x0

    const-string v1, "input_method"

    if-eqz p2, :cond_23

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_3e

    .line 8
    :try_start_1a
    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_3e

    :catch_1e
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 12
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_3e

    .line 16
    :try_start_32
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public setNativeShowType(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mShow:Z

    return-void
.end method

.method public setStyle(Lorg/json/JSONObject;Z)V
    .registers 4

    if-eqz p1, :cond_2b

    .line 1
    :try_start_2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    if-nez v0, :cond_9

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    goto :goto_f

    .line 4
    :cond_9
    invoke-static {v0, p1}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    :goto_f
    if-eqz p2, :cond_2b

    .line 7
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->init()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-eqz p1, :cond_2b

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 12
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public setStyleBackgroundColor(I)V
    .registers 2

    .line 20
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    .line 21
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-eqz p1, :cond_9

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public setStyleBackgroundColor(Ljava/lang/String;)V
    .registers 5

    const-string v0, "backgroundColor"

    const-string v1, "backgroudColor"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 3
    :try_start_a
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    if-eqz v2, :cond_2c

    .line 4
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2c

    .line 6
    :cond_1a
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_31

    goto :goto_35

    .line 17
    :catch_31
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    .line 19
    :goto_35
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->setStyleBackgroundColor(I)V

    :cond_38
    return-void
.end method

.method public setStyleLeft(I)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3a

    const-string v1, "left"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    div-float/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-eqz p1, :cond_3e

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method setTouchEventRect(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mTouchRectJson:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->initJsonTouchRect()V

    return-void
.end method

.method public setWebAnimationRuning(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->isWebAnimationRuning:Z

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_2a

    const-string v1, "uuid"

    .line 4
    :try_start_e
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_2a

    const-string v1, "type"

    .line 5
    :try_start_15
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1e} :catch_2a

    if-eqz v1, :cond_2e

    const-string v2, "styles"

    .line 7
    :try_start_22
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v1

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-object v0
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.AnonymousClass1 (io.dcloud.feature.nativeObj.NativeView$1)
.class Lio/dcloud/feature/nativeObj/NativeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    iput v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    iput v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->init()V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeView;->access$000(Lio/dcloud/feature/nativeObj/NativeView;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->configurationCange()V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 10
    :cond_3b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-eqz v0, :cond_4b

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 12
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$1;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4b
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.AnonymousClass2 (io.dcloud.feature.nativeObj.NativeView$2)
.class Lio/dcloud/feature/nativeObj/NativeView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView;->attachToViewGroup(Lio/dcloud/common/DHInterface/IFrameView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;

.field final synthetic val$appid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$2;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$2;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string p2, "close"

    .line 1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$2;->val$appid:Ljava/lang/String;

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$2;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-static {p1, p2}, Lio/dcloud/feature/nativeObj/FeatureImpl;->destroyNativeView(Ljava/lang/String;Lio/dcloud/feature/nativeObj/NativeView;)V

    const/4 p1, 0x2

    new-array p2, p1, [Ljava/lang/Class;

    .line 3
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const-class v1, Lio/dcloud/feature/nativeObj/NativeView;

    const/4 v3, 0x1

    aput-object v1, p2, v3

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$2;->val$appid:Ljava/lang/String;

    aput-object v1, p1, v2

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$2;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    aput-object v1, p1, v3

    const-string v1, "io.dcloud.feature.ad.AdFlowFeatureImpl"

    const-string v2, "destroyNativeView"

    invoke-static {v1, v2, v0, p2, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_2f
    const-string p2, "onresize"

    .line 4
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    :goto_34
    return-object v0
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.AnonymousClass3 (io.dcloud.feature.nativeObj.NativeView$3)
.class Lio/dcloud/feature/nativeObj/NativeView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView;->viewPostResize(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;

.field final synthetic val$height:I

.field final synthetic val$left:I

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$top:I

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;Landroid/view/ViewGroup$LayoutParams;IILandroid/view/View;II)V
    .registers 8

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$height:I

    iput p4, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$width:I

    iput-object p5, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$v:Landroid/view/View;

    iput p6, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$top:I

    iput p7, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$left:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$v:Landroid/view/View;

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$top:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$v:Landroid/view/View;

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView$3;->val$left:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.AnonymousClass4 (io.dcloud.feature.nativeObj.NativeView$4)
.class Lio/dcloud/feature/nativeObj/NativeView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView;->runDrawRectF(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;

.field final synthetic val$callId:Ljava/lang/String;

.field final synthetic val$frames:I

.field final synthetic val$index:I

.field final synthetic val$itemOffset:I

.field final synthetic val$itemTime:I

.field final synthetic val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic val$regionBottom:I

.field final synthetic val$regionLeft:I

.field final synthetic val$regionRight:I

.field final synthetic val$regionTop:I

.field final synthetic val$surplus:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIII)V
    .registers 13

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iput p2, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$index:I

    iput p3, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$frames:I

    iput-object p4, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$callId:Ljava/lang/String;

    iput p6, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$regionLeft:I

    iput p7, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$regionRight:I

    iput p8, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$regionTop:I

    iput p9, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$regionBottom:I

    iput p10, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$itemTime:I

    iput p11, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$itemOffset:I

    iput p12, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$surplus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$index:I

    iget v10, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$frames:I

    if-ne v0, v10, :cond_15

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$callId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeView;->access$100(Lio/dcloud/feature/nativeObj/NativeView;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_15
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$callId:Ljava/lang/String;

    iget v4, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$regionLeft:I

    iget v5, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$regionRight:I

    iget v6, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$regionTop:I

    iget v7, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$regionBottom:I

    iget v8, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$itemTime:I

    iget v9, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$itemOffset:I

    iget v11, p0, Lio/dcloud/feature/nativeObj/NativeView$4;->val$surplus:I

    add-int/lit8 v12, v0, 0x1

    invoke-static/range {v1 .. v12}, Lio/dcloud/feature/nativeObj/NativeView;->access$200(Lio/dcloud/feature/nativeObj/NativeView;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;IIIIIIIII)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.AnonymousClass5 (io.dcloud.feature.nativeObj.NativeView$5)
.class Lio/dcloud/feature/nativeObj/NativeView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView;->clearNativeViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$5;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$5;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$5;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$5;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$5;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$5;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->clearViewData()V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$5;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2b
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.AnonymousClass6 (io.dcloud.feature.nativeObj.NativeView$6)
.class Lio/dcloud/feature/nativeObj/NativeView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView;->addInput(Lio/dcloud/feature/nativeObj/NativeView$Overlay;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;Lio/dcloud/feature/nativeObj/NativeView$Overlay;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1d

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1d

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1d

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1d

    if-eqz p3, :cond_133

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x42

    if-ne v1, p2, :cond_133

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_133

    .line 2
    :cond_1d
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_133

    .line 3
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "javascript:"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_be

    const/4 p2, 0x0

    .line 6
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p3, p3, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p3

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_58

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 8
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p2

    :cond_58
    if-nez p2, :cond_64

    .line 11
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v1, :cond_64

    .line 12
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p2

    :cond_64
    if-eqz p2, :cond_90

    .line 16
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x2f

    invoke-interface {p2, v1, v2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    instance-of p3, p2, Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz p3, :cond_90

    .line 18
    check-cast p2, Lio/dcloud/common/DHInterface/IFrameView;

    .line 19
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p3

    if-eqz p3, :cond_90

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p3

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p3

    if-eqz p3, :cond_90

    .line 20
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return v0

    .line 25
    :cond_90
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_a6

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p2, :cond_a6

    .line 26
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return v0

    .line 30
    :cond_a6
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_be

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p2, :cond_be

    .line 31
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return v0

    .line 35
    :cond_be
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_133

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "{\"text\":\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"id\":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$id:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_fb

    :cond_f9
    const-string p1, "\"\""

    :goto_fb
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object v1, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 38
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    if-eqz p2, :cond_133

    .line 39
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$6;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object v2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_133
    return v0
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.AnonymousClass7 (io.dcloud.feature.nativeObj.NativeView$7)
.class Lio/dcloud/feature/nativeObj/NativeView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView;->addInput(Lio/dcloud/feature/nativeObj/NativeView$Overlay;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;Ljava/lang/String;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 10

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"id\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_29
    const-string v0, "\"\""

    :goto_2b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3e

    .line 4
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputOnFocusCallBackId:Ljava/lang/String;

    goto :goto_42

    .line 6
    :cond_3e
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputOnBlurCallBackId:Ljava/lang/String;

    .line 8
    :goto_42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascript:"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v2, :cond_75

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    :cond_75
    if-nez v0, :cond_81

    .line 17
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v2, :cond_81

    .line 18
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    :cond_81
    if-eqz v0, :cond_a9

    .line 22
    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0x2f

    invoke-interface {v0, v2, v3, v1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v1, :cond_a9

    .line 24
    check-cast v0, Lio/dcloud/common/DHInterface/IFrameView;

    .line 25
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_a9

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 26
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_a9
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_bd

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 32
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_bd
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_d1

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 36
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 40
    :cond_d1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object v1, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_fb

    .line 41
    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 42
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 43
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$7;->val$overlay:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_fb
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.NativeCanvasView (io.dcloud.feature.nativeObj.NativeView$NativeCanvasView)
.class Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/NativeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeCanvasView"
.end annotation


# instance fields
.field private clickEventRunnable:Ljava/lang/Runnable;

.field doEventListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/IWebview;",
            ">;>;"
        }
    .end annotation
.end field

.field isAddDoubleClickEvent:Z

.field isTouchDown:Z

.field mCurClickTime:J

.field mLastClickTime:J

.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doEventListenerMap:Ljava/util/HashMap;

    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->mCurClickTime:J

    .line 9
    iput-wide p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->mLastClickTime:J

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->isAddDoubleClickEvent:Z

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->clickEventRunnable:Ljava/lang/Runnable;

    .line 51
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->isTouchDown:Z

    .line 52
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$902(Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->clickEventRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private drawRect(Landroid/graphics/Canvas;IIIILio/dcloud/feature/nativeObj/NativeView$Overlay;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4
    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$300(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p2

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_3b

    .line 5
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    iget p3, p6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mRectColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$800(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p2

    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$800(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p3

    iget-object p4, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p4, p4, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_be

    .line 7
    :cond_3b
    iget p2, p6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mRectColor:I

    const/high16 p3, -0x1000000

    and-int/2addr p3, p2

    if-nez p3, :cond_71

    .line 8
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$300(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$400(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$800(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p2

    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$800(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p3

    iget-object p4, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p4, p4, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_be

    .line 13
    :cond_71
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p3, p3, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$800(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p2

    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$800(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p3

    iget-object p4, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p4, p4, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 19
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$300(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$400(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$800(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p2

    invoke-static {p6}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->access$800(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F

    move-result p3

    iget-object p4, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p4, p4, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_be
    return-void
.end method

.method private initAuto(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V
    .registers 6

    .line 1
    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_19

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget v2, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    iget v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    .line 3
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 5
    :cond_19
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_2e

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    iget v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    .line 7
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2e
    return-void
.end method

.method private postDelayedClickEvent()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->clickEventRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$1;-><init>(Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->clickEventRunnable:Ljava/lang/Runnable;

    .line 10
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->clickEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method addEventListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doEventListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_15

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doEventListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string v1, "click"

    .line 6
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 7
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_21
    const-string v1, "doubleclick"

    .line 9
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 10
    iput-boolean v2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->isAddDoubleClickEvent:Z

    .line 13
    :cond_2b
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doEventListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doEventListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-eqz v1, :cond_35

    .line 16
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v2, 0x0

    :cond_52
    if-eqz v2, :cond_60

    .line 22
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    new-instance v1, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$2;

    invoke-direct {v1, p0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$2;-><init>(Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;)V

    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 51
    :cond_60
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public doTypeEvent(Ljava/lang/String;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doEventListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    .line 7
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v4}, Lio/dcloud/feature/nativeObj/NativeView;->getEventJSON()Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_13

    :cond_35
    return v0
.end method

.method public listenClick()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doEventListenerMap:Ljava/util/HashMap;

    const-string v1, "click"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget v0, p1, Lio/dcloud/feature/nativeObj/NativeView;->mTouchX:F

    iget v1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mTouchY:F

    invoke-static {p1, v0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->access$600(Lio/dcloud/feature/nativeObj/NativeView;FF)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 2
    iget-wide v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->mCurClickTime:J

    iput-wide v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->mLastClickTime:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->mCurClickTime:J

    .line 4
    iget-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->isAddDoubleClickEvent:Z

    if-eqz p1, :cond_30

    iget-wide v2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-gez v4, :cond_30

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->clickEventRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2a

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2a
    const-string p1, "doubleclick"

    .line 8
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doTypeEvent(Ljava/lang/String;)Z

    goto :goto_3b

    :cond_30
    if-eqz p1, :cond_36

    .line 11
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->postDelayedClickEvent()V

    goto :goto_3b

    :cond_36
    const-string p1, "click"

    .line 13
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doTypeEvent(Ljava/lang/String;)Z

    :cond_3b
    :goto_3b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x0

    const/4 v1, 0x3

    invoke-direct {v0, v9, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 3
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    iget v2, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    iget v3, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerRight:I

    iget v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerBottom:I

    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->getViewType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativeView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 5
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 8
    :cond_33
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeView;->access$700(Lio/dcloud/feature/nativeObj/NativeView;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 9
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeView;->access$700(Lio/dcloud/feature/nativeObj/NativeView;)Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 12
    :cond_46
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4e
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    .line 13
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->type:Ljava/lang/String;

    const-string v3, "clear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 14
    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_4e

    .line 18
    :cond_6c
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_74
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    .line 19
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_df

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_df

    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_df

    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->isGif()Z

    move-result v0

    if-nez v0, :cond_df

    .line 23
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-eq v2, v1, :cond_c7

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v1, :cond_b2

    goto :goto_c7

    .line 27
    :cond_b2
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 28
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v3, v3, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_db

    .line 29
    :cond_c7
    :goto_c7
    invoke-direct {v7, v6}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->initAuto(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V

    .line 30
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v3, v3, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_db
    const/16 v19, 0x0

    goto/16 :goto_378

    .line 35
    :cond_df
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mText:Ljava/lang/String;

    if-eqz v0, :cond_324

    .line 37
    invoke-direct {v7, v6}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->initAuto(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V

    .line 38
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 39
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 40
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontColor:I

    if-eqz v0, :cond_105

    .line 42
    iget-object v2, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    :cond_105
    iget v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontColor:I

    if-nez v0, :cond_110

    .line 45
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    :cond_110
    iget v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_11e

    .line 48
    iget-object v2, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    :cond_11e
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textTTFPh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13a

    .line 51
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textTTFPh:Ljava/lang/String;

    invoke-static {v0, v2}, Lio/dcloud/feature/nativeObj/NativeTypefaceFactory;->getTypeface(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_151

    .line 52
    iget-object v2, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_151

    .line 53
    :cond_13a
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_151

    .line 54
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textFamily:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_151

    .line 55
    iget-object v2, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 57
    :cond_151
    :goto_151
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textWeight:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/ui/FrameBitmapView;->BOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 58
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textStyle:Ljava/lang/String;

    sget-object v2, Lio/dcloud/common/adapter/ui/FrameBitmapView;->ITALIC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 59
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x41000000    # -0.5f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 63
    :cond_173
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 64
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 66
    iget-object v2, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textAlign:Ljava/lang/String;

    const-string v3, "right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 67
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 68
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1b1

    .line 69
    :cond_19a
    iget-object v2, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textAlign:Ljava/lang/String;

    const-string v3, "left"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b1

    .line 70
    iget-object v0, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 73
    :cond_1b1
    :goto_1b1
    iget-object v2, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mText:Ljava/lang/String;

    .line 74
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textDecoration:Ljava/lang/String;

    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c5

    .line 75
    iget-object v3, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v3, v3, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto :goto_1d8

    .line 76
    :cond_1c5
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textDecoration:Ljava/lang/String;

    const-string v4, "line-through"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 77
    iget-object v3, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v3, v3, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 79
    :cond_1d8
    :goto_1d8
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 80
    iget-object v4, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v4, v4, Lio/dcloud/feature/nativeObj/NativeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 81
    iget-object v4, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textWhiteSpace:Ljava/lang/String;

    const-string v5, "normal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "bottom"

    const-string v15, "top"

    const-string v14, "ellipsis"

    if-eqz v4, :cond_2ca

    .line 82
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v11, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v16

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v11, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textLineSpacing:F

    const v19, 0x3f666666    # 0.9f

    add-float v18, v11, v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v11, v4

    move-object v12, v2

    move-object v13, v3

    move-object v9, v14

    move/from16 v14, v16

    move-object/from16 v22, v15

    move-object/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v21

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 84
    iget-boolean v11, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textAdapt:Z

    if-nez v11, :cond_286

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    iget-object v12, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-le v11, v12, :cond_286

    .line 85
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    div-int/2addr v11, v12

    .line 86
    iget-object v12, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/2addr v12, v11

    sub-int/2addr v12, v1

    .line 87
    invoke-virtual {v4, v12}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    .line 89
    iget-object v4, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textOverflow:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24c

    const-string v4, "\u2026"

    goto :goto_24e

    :cond_24c
    const-string v4, ""

    .line 92
    :goto_24e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_25a

    goto :goto_25c

    :cond_25a
    add-int/lit8 v1, v1, -0x1

    :goto_25c
    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 93
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v2, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textLineSpacing:F

    add-float v16, v2, v19

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move-object v13, v3

    const/16 v19, 0x0

    move-object v15, v1

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_288

    :cond_286
    const/16 v19, 0x0

    .line 96
    :goto_288
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x2

    .line 97
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textVerticalAligin:Ljava/lang/String;

    move-object/from16 v11, v22

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a1

    const/4 v15, 0x0

    goto :goto_2b5

    .line 99
    :cond_2a1
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textVerticalAligin:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b5

    .line 100
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int v15, v1, v2

    .line 102
    :cond_2b5
    :goto_2b5
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v1

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    int-to-float v1, v15

    .line 104
    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    invoke-virtual {v4, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_378

    :cond_2ca
    move-object v9, v14

    move-object v11, v15

    const/16 v19, 0x0

    .line 108
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textOverflow:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e7

    .line 109
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v1, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    :cond_2e7
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 112
    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 113
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 114
    iget-object v9, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v4, v12

    sub-float/2addr v9, v13

    div-float v12, v1, v12

    sub-float/2addr v9, v12

    float-to-int v9, v9

    .line 115
    iget-object v12, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textVerticalAligin:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30f

    .line 116
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    float-to-int v9, v1

    goto :goto_31e

    .line 117
    :cond_30f
    iget-object v4, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textVerticalAligin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31e

    .line 118
    iget-object v4, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v9, v4

    :cond_31e
    :goto_31e
    int-to-float v0, v0

    int-to-float v1, v9

    .line 120
    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_378

    :cond_324
    const/16 v19, 0x0

    .line 123
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->type:Ljava/lang/String;

    const-string v2, "rect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_378

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-eq v2, v1, :cond_34a

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ne v3, v1, :cond_33e

    goto :goto_34a

    .line 145
    :cond_33e
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->drawRect(Landroid/graphics/Canvas;IIIILio/dcloud/feature/nativeObj/NativeView$Overlay;)V

    goto :goto_375

    .line 146
    :cond_34a
    :goto_34a
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v1, :cond_35f

    .line 148
    iget-object v2, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget v5, v2, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, v2, Lio/dcloud/feature/nativeObj/NativeView;->mInnerLeft:I

    sub-int v2, v4, v2

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move v2, v5

    :cond_35f
    if-ne v3, v1, :cond_36d

    .line 154
    iget-object v1, v7, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget v3, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    sub-int v1, v0, v1

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    :cond_36d
    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 158
    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->drawRect(Landroid/graphics/Canvas;IIIILio/dcloud/feature/nativeObj/NativeView$Overlay;)V

    .line 162
    :goto_375
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    :cond_378
    :goto_378
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v9, 0x0

    goto/16 :goto_74

    .line 166
    :cond_37e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iput p2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/NativeView;->init()V

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget p2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v0, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerTop:I

    add-int/2addr p2, v0

    iget v0, p1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    if-le p2, v0, :cond_24

    goto :goto_25

    :cond_24
    move p2, v0

    :goto_25
    iput p2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lio/dcloud/feature/nativeObj/NativeView;->measureFitViewParent(Z)V

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_53

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v0}, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->parseJson(Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_3f

    .line 12
    :cond_53
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget p2, p1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenHeight:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mTouchX:F

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mTouchY:F

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-boolean v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mIntercept:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_79

    .line 5
    iget v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mTouchX:F

    iget v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->mTouchY:F

    invoke-static {v1, v2, v4}, Lio/dcloud/feature/nativeObj/NativeView;->access$600(Lio/dcloud/feature/nativeObj/NativeView;FF)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_4d

    if-eq v0, v2, :cond_43

    const/4 v2, 0x2

    if-eq v0, v2, :cond_39

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2f

    goto :goto_56

    .line 25
    :cond_2f
    iput-boolean v3, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->isTouchDown:Z

    if-eqz v1, :cond_56

    const-string v0, "touchcancel"

    .line 27
    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doTypeEvent(Ljava/lang/String;)Z

    goto :goto_56

    .line 28
    :cond_39
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->isTouchDown:Z

    if-eqz v0, :cond_56

    const-string v0, "touchmove"

    .line 29
    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doTypeEvent(Ljava/lang/String;)Z

    goto :goto_56

    .line 33
    :cond_43
    iput-boolean v3, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->isTouchDown:Z

    if-eqz v1, :cond_56

    const-string v0, "touchend"

    .line 35
    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doTypeEvent(Ljava/lang/String;)Z

    goto :goto_56

    :cond_4d
    if-eqz v1, :cond_56

    .line 36
    iput-boolean v2, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->isTouchDown:Z

    const-string v0, "touchstart"

    .line 37
    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doTypeEvent(Ljava/lang/String;)Z

    :cond_56
    :goto_56
    if-eqz v1, :cond_6e

    .line 59
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-boolean v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mIntercept:Z

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->listenClick()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_6d

    :cond_69
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-boolean v3, p1, Lio/dcloud/feature/nativeObj/NativeView;->mIntercept:Z

    :cond_6d
    :goto_6d
    return v3

    .line 62
    :cond_6e
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->listenClick()Z

    move-result v0

    if-eqz v0, :cond_75

    goto :goto_79

    :cond_75
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_79
    :goto_79
    return v3
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.NativeCanvasView.AnonymousClass1 (io.dcloud.feature.nativeObj.NativeView$NativeCanvasView$1)
.class Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->postDelayedClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    const-string v1, "click"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doTypeEvent(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->access$902(Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.NativeCanvasView.AnonymousClass2 (io.dcloud.feature.nativeObj.NativeView$NativeCanvasView$2)
.class Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->addEventListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$2;->this$1:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const-string v0, "close"

    if-eq p1, v0, :cond_8

    const-string v0, "window_close"

    if-ne p1, v0, :cond_6d

    .line 1
    :cond_8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$2;->this$1:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doEventListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$2;->this$1:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;->doEventListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    .line 7
    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :goto_3f
    if-ltz v3, :cond_4f

    .line 10
    aget-object v2, v4, v3

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p2, :cond_4c

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_3f

    .line 16
    :cond_4f
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "click"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView$2;->this$1:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_14

    .line 20
    :cond_64
    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :cond_6d
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.Overlay (io.dcloud.feature.nativeObj.NativeView$Overlay)
.class Lio/dcloud/feature/nativeObj/NativeView$Overlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/NativeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Overlay"
.end annotation


# instance fields
.field private borderColor:I

.field private borderRadius:I

.field private borderWidth:F

.field callBackId:Ljava/lang/String;

.field inputBackgroundColor:I

.field inputOnBlurCallBackId:Ljava/lang/String;

.field inputOnFocusCallBackId:Ljava/lang/String;

.field inputType:Ljava/lang/String;

.field mDestJson:Lorg/json/JSONObject;

.field mDestRect:Landroid/graphics/Rect;

.field mFontColor:I

.field mFontSize:F

.field mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

.field mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

.field mRectColor:I

.field mSrcJson:Lorg/json/JSONObject;

.field mSrcRect:Landroid/graphics/Rect;

.field mStyleJson:Lorg/json/JSONObject;

.field mText:Ljava/lang/String;

.field margin:I

.field placeholder:Ljava/lang/String;

.field placeholderColor:I

.field private radius:F

.field textAdapt:Z

.field textAlign:Ljava/lang/String;

.field textDecoration:Ljava/lang/String;

.field textFamily:Ljava/lang/String;

.field textLineSpacing:F

.field textOverflow:Ljava/lang/String;

.field textStyle:Ljava/lang/String;

.field textTTFPh:Ljava/lang/String;

.field textVerticalAligin:Ljava/lang/String;

.field textWeight:Ljava/lang/String;

.field textWhiteSpace:Ljava/lang/String;

.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeView;

.field type:Ljava/lang/String;

.field webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x1000000

    .line 9
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontColor:I

    .line 10
    sget-object p1, Lio/dcloud/common/adapter/ui/FrameBitmapView;->NORMAL:Ljava/lang/String;

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textWeight:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textStyle:Ljava/lang/String;

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textFamily:Ljava/lang/String;

    const-string v0, "center"

    .line 13
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textAlign:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textTTFPh:Ljava/lang/String;

    const-string v0, "clip"

    .line 15
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textOverflow:Ljava/lang/String;

    const-string v0, "none"

    .line 16
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textDecoration:Ljava/lang/String;

    const-string v0, "nowrap"

    .line 17
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textWhiteSpace:Ljava/lang/String;

    const-string v0, "middle"

    .line 18
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textVerticalAligin:Ljava/lang/String;

    const v0, 0x3e4ccccd    # 0.2f

    .line 19
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textLineSpacing:F

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textAdapt:Z

    .line 22
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->margin:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 26
    iput v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderWidth:F

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderColor:I

    .line 28
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderRadius:I

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->radius:F

    const-string v1, "text"

    .line 30
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputType:Ljava/lang/String;

    .line 31
    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputBackgroundColor:I

    .line 32
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->placeholder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderWidth:F

    return p0
.end method

.method static synthetic access$400(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderColor:I

    return p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderRadius:I

    return p0
.end method

.method static synthetic access$800(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->radius:F

    return p0
.end method


# virtual methods
.method parseJson(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz v0, :cond_20

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mSrcJson:Lorg/json/JSONObject;

    invoke-static {v1, v2, v0}, Lio/dcloud/feature/nativeObj/NativeView;->makeBitmapSrcRect(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mSrcRect:Landroid/graphics/Rect;

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->isNetWorkBitmap()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    new-instance v1, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;

    invoke-direct {v1, p0, p0}, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;-><init>(Lio/dcloud/feature/nativeObj/NativeView$Overlay;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->initNetworkBitmap(Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;)Landroid/graphics/Bitmap;

    .line 31
    :cond_20
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_403

    const-string v1, "color"

    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 35
    :try_start_38
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontColor:I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3e} :catch_3f

    goto :goto_45

    .line 37
    :catch_3f
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontColor:I

    .line 40
    :cond_45
    :goto_45
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v1, "size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "16px"

    if-eqz v1, :cond_56

    move-object v0, v2

    :cond_56
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v3, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    .line 42
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textWeight:Ljava/lang/String;

    const-string v3, "weight"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textWeight:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textStyle:Ljava/lang/String;

    const-string v3, "style"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textStyle:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textFamily:Ljava/lang/String;

    const-string v3, "family"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textFamily:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textAlign:Ljava/lang/String;

    const-string v3, "align"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textAlign:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textOverflow:Ljava/lang/String;

    const-string v3, "overflow"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textOverflow:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textDecoration:Ljava/lang/String;

    const-string v3, "decoration"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textDecoration:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textWhiteSpace:Ljava/lang/String;

    const-string v3, "whiteSpace"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textWhiteSpace:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textVerticalAligin:Ljava/lang/String;

    const-string v3, "verticalAlign"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textVerticalAligin:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v1, "borderWidth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "0px"

    if-eqz v0, :cond_ea

    .line 53
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_dd

    move-object v0, v3

    :cond_dd
    iget-object v5, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v6, v5, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v5, v5, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v6, v4, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderWidth:F

    .line 56
    :cond_ea
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mRectColor:I

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderColor:I

    .line 57
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v5, "borderColor"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 58
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderColor:I

    .line 61
    :cond_104
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v6, "radius"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 62
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11b

    move-object v0, v3

    :cond_11b
    iget-object v6, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v7, v6, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v6, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v7, v4, v6}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->radius:F

    .line 65
    :cond_128
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v6, "lineSpacing"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 66
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v6, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    float-to-int v6, v6

    iget-object v7, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v7, v7, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v6, v4, v7}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    int-to-float v0, v0

    .line 67
    iget v6, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    div-float/2addr v0, v6

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textLineSpacing:F

    .line 69
    :cond_149
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v6, "fontSrc"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v7, ""

    if-eqz v0, :cond_1a1

    .line 70
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "__wap2app.ttf"

    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_193

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "wap2app__template/__wap2app.ttf"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_184

    .line 75
    iput-object v6, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textTTFPh:Ljava/lang/String;

    goto :goto_1a1

    .line 77
    :cond_184
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textTTFPh:Ljava/lang/String;

    goto :goto_1a1

    .line 80
    :cond_193
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->textTTFPh:Ljava/lang/String;

    .line 83
    :cond_1a1
    :goto_1a1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "margin"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v6, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p1, v6, v4, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->margin:I

    .line 85
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->type:Ljava/lang/String;

    const-string v0, "input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_403

    const-string p1, "text"

    .line 87
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputType:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1db

    .line 89
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1db

    .line 91
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputType:Ljava/lang/String;

    :cond_1db
    const p1, -0x777778

    .line 96
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->placeholderColor:I

    .line 98
    iput-object v7, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->placeholder:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f4

    .line 100
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->placeholder:Ljava/lang/String;

    .line 104
    :cond_1f4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "fontSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_219

    .line 105
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20b

    goto :goto_20c

    :cond_20b
    move-object v2, p1

    :goto_20c
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v0, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v2, v0, v4, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    :cond_219
    const/high16 p1, -0x1000000

    .line 110
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontColor:I

    .line 111
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v2, "fontColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "^#[0-9a-fA-F]{6}$"

    if-eqz v0, :cond_261

    .line 112
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_261

    .line 115
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_24a

    .line 117
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    :cond_24a
    const-string v2, "^rgba\\(((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\,){3}([0-1]{1}|0\\.[1-9]{1})\\)$"

    .line 120
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_261

    .line 122
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mFontSize:F

    .line 128
    :cond_261
    iput v4, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputBackgroundColor:I

    .line 129
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v2, "backgroundColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a3

    .line 130
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a3

    .line 133
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_28d

    .line 135
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputBackgroundColor:I

    :cond_28d
    const-string v2, "^rgba\\(((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\,){3}([0-1]{1}|0\\.[1-9]{1})\\)$"

    .line 138
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2a3

    .line 140
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputBackgroundColor:I

    .line 146
    :cond_2a3
    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderColor:I

    .line 147
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2cd

    .line 148
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2cd

    .line 150
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 152
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderColor:I

    .line 158
    :cond_2cd
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v0, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v2, "1px"

    invoke-static {v2, v0, v4, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderWidth:F

    .line 159
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_317

    .line 160
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_317

    const-string v0, "^[1-9]\\d*px$"

    .line 162
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_317

    .line 165
    :try_start_300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_307

    goto :goto_308

    :cond_307
    move-object v2, p1

    :goto_308
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v0, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v2, v0, v4, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderWidth:F
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_300 .. :try_end_315} :catch_316

    goto :goto_317

    :catch_316
    nop

    .line 172
    :cond_317
    :goto_317
    iput v4, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderRadius:I

    .line 173
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_357

    .line 174
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_357

    const-string v0, "^[1-9]\\d*px$"

    .line 176
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_357

    .line 179
    :try_start_341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_348

    goto :goto_349

    :cond_348
    move-object v3, p1

    :goto_349
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget v0, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v3, v0, v4, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->borderRadius:I
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_355} :catch_356

    goto :goto_357

    :catch_356
    nop

    .line 186
    :cond_357
    :goto_357
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "__onCompleteCallBackId__"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "javaScript:"

    const-string v2, "javascript:"

    if-eqz p1, :cond_373

    .line 187
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    .line 188
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_393

    .line 191
    :cond_373
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "onComplete"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_393

    .line 192
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "onComplete"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_391

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_393

    .line 194
    :cond_391
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->callBackId:Ljava/lang/String;

    .line 200
    :cond_393
    :goto_393
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "__onFocusCallBackId__"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3ab

    .line 201
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputOnFocusCallBackId:Ljava/lang/String;

    .line 202
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3cb

    .line 205
    :cond_3ab
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "onFocus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3cb

    .line 206
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "onFocus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c9

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3cb

    .line 208
    :cond_3c9
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputOnFocusCallBackId:Ljava/lang/String;

    .line 214
    :cond_3cb
    :goto_3cb
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "__onBlurCallBackId__"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e3

    .line 215
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputOnBlurCallBackId:Ljava/lang/String;

    .line 216
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_403

    .line 219
    :cond_3e3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "onBlur"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_403

    .line 220
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mStyleJson:Lorg/json/JSONObject;

    const-string v0, "onBlur"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_401

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_403

    .line 222
    :cond_401
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->inputOnBlurCallBackId:Ljava/lang/String;

    .line 228
    :cond_403
    :goto_403
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, p0}, Lio/dcloud/feature/nativeObj/NativeView;->makeRect(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_429

    .line 229
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->margin:I

    if-eqz v0, :cond_429

    .line 230
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 231
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 232
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 233
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_429
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeView.Overlay.AnonymousClass1 (io.dcloud.feature.nativeObj.NativeView$Overlay$1)
.class Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeView$Overlay;->parseJson(Lio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

.field final synthetic val$o:Lio/dcloud/feature/nativeObj/NativeView$Overlay;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeView$Overlay;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->val$o:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz p1, :cond_11

    .line 2
    invoke-virtual {p1, p3}, Lio/dcloud/feature/nativeObj/NativeBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->setNetWorkBitmapDownload(Z)V

    .line 5
    :cond_11
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p3, p2, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    if-eqz p3, :cond_5c

    .line 6
    iget-object p3, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mSrcJson:Lorg/json/JSONObject;

    iget-object v0, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {p2, p3, v0}, Lio/dcloud/feature/nativeObj/NativeView;->makeBitmapSrcRect(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mSrcRect:Landroid/graphics/Rect;

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p3, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object v0, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->val$o:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    invoke-virtual {p2, p3, v0, v1}, Lio/dcloud/feature/nativeObj/NativeView;->makeRect(Lio/dcloud/feature/nativeObj/NativeView;Lorg/json/JSONObject;Lio/dcloud/feature/nativeObj/NativeView$Overlay;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mDestRect:Landroid/graphics/Rect;

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->isGif()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 9
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->this$0:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->val$o:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/nativeObj/NativeView;->addGifImagview(Lio/dcloud/feature/nativeObj/NativeView$Overlay;)V

    goto :goto_5c

    .line 11
    :cond_53
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView$Overlay$1;->this$1:Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeView:Lio/dcloud/feature/nativeObj/NativeView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCanvasView:Lio/dcloud/feature/nativeObj/NativeView$NativeCanvasView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/dcloudimageloader/core/assist/FailReason;)V
    .registers 4

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method
