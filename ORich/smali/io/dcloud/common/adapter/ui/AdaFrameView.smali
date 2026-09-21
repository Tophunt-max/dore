###### Class io.dcloud.common.adapter.ui.AdaFrameView (io.dcloud.common.adapter.ui.AdaFrameView)
.class public abstract Lio/dcloud/common/adapter/ui/AdaFrameView;
.super Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFrameView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;
    }
.end annotation


# static fields
.field private static final ERROR:I = 0x0

.field private static final SUCCESS:I = 0x1


# instance fields
.field public inStack:Z

.field public interceptTouchEvent:Z

.field public isChildOfFrameView:Z

.field private isTabItem:Z

.field public isTouchEvent:Z

.field public mAccelerationType:Ljava/lang/String;

.field public mAnimationCapture:Z

.field mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mAnimationStarted:Z

.field mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

.field private mCaptureHandler:Landroid/os/Handler;

.field private mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

.field private mContext:Landroid/content/Context;

.field private mErrCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field protected mFrameStatus:B

.field private mFrameType:I

.field private mLastScreenHeight:I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/IEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadingSnapshot:Landroid/graphics/Bitmap;

.field public mNativeViewAction:Ljava/lang/String;

.field private mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

.field mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

.field public mSnapshot:Landroid/graphics/Bitmap;

.field private mSucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field public mWindowMgr:Lio/dcloud/common/core/ui/l;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    const-string v2, "none"

    .line 6
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationStarted:Z

    .line 11
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    .line 12
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    .line 13
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    .line 14
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    .line 15
    iput v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameType:I

    const-string v2, "auto"

    .line 16
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const/4 v2, 0x1

    .line 19
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 24
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->interceptTouchEvent:Z

    .line 36
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isTouchEvent:Z

    .line 69
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 71
    iput v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLastScreenHeight:I

    .line 75
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 885
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mErrCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    .line 886
    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameView$4;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView$4;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCaptureHandler:Landroid/os/Handler;

    .line 1052
    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameView$7;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView$7;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1156
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isTabItem:Z

    .line 1157
    iput p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameType:I

    .line 1158
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->initMainView(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1159
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mContext:Landroid/content/Context;

    .line 1160
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNeedOrientationUpdate:Z

    .line 1161
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLastScreenHeight:I

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$102(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1
.end method

.method static synthetic access$200(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mErrCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mErrCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1
.end method

.method static synthetic access$300(Lio/dcloud/common/adapter/ui/AdaFrameView;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCaptureHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lio/dcloud/common/adapter/ui/AdaFrameView;ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->sendErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method private addCaptureImageView(Landroid/view/ViewGroup;Lio/dcloud/common/adapter/ui/DHImageView;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_18

    .line 2
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_15
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_18
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 8
    invoke-virtual {p2, p3}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    .line 10
    sget p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->VISIBLE:I

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private captureAnimation(Lio/dcloud/nineoldandroids/animation/Animator;I)Z
    .registers 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->isAnimationOptimization:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_16

    .line 2
    invoke-static/range {p0 .. p2}, Lio/dcloud/common/util/SubNViewsUtil;->startAnimation(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/nineoldandroids/animation/Animator;I)Z

    move-result v0

    if-eqz v0, :cond_16

    return v8

    .line 6
    :cond_16
    iget-boolean v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20d

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sAnimationCaptureC:Z

    if-nez v0, :cond_21

    goto/16 :goto_20d

    .line 11
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->checkITypeofAble()Z

    move-result v0

    if-eqz v0, :cond_2f

    return v1

    .line 16
    :cond_2f
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/dcloud/common/core/ui/k;

    .line 17
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v5, 0x0

    if-eqz v0, :cond_53

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    if-eq v0, v9, :cond_53

    .line 18
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->clear()V

    .line 19
    iput-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    return v1

    .line 22
    :cond_53
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    if-nez v0, :cond_62

    .line 23
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/k;->getRightImageView()Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    iput-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 26
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v9}, Lio/dcloud/common/adapter/ui/DHImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    :cond_62
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->isSlipping()Z

    move-result v0

    if-eqz v0, :cond_6b

    return v1

    .line 31
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "C\u9875\u9762\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    if-eqz v9, :cond_7f

    sget-boolean v9, Lio/dcloud/common/util/BaseInfo;->sAnimationCaptureC:Z

    if-eqz v9, :cond_7f

    const/4 v9, 0x1

    goto :goto_80

    :cond_7f
    const/4 v9, 0x0

    :goto_80
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object v9, v9, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "mabo"

    invoke-static {v9, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 34
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v0, :cond_ba

    .line 35
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/INativeView;->isAnimate()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 36
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    .line 37
    iput-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    goto :goto_ba

    .line 39
    :cond_ae
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0, v5}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    iget-object v12, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    invoke-virtual {v0, v6, v12}, Lio/dcloud/common/adapter/ui/DHImageView;->addNativeView(Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/INativeView;)V

    .line 43
    :cond_ba
    :goto_ba
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    const/16 v12, 0x16

    if-nez v0, :cond_107

    if-nez v2, :cond_fc

    .line 45
    iget-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_c7

    goto :goto_107

    .line 47
    :cond_c7
    iget-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_cc

    goto :goto_107

    .line 50
    :cond_cc
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v12, :cond_f6

    iget-boolean v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v0, :cond_f6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-le v0, v5, :cond_f6

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v13

    iget v13, v13, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    invoke-direct {v0, v1, v1, v5, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v5, "ARGB"

    .line 52
    invoke-static {v3, v8, v8, v0, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_fa

    .line 54
    :cond_f6
    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_fa
    move-object v5, v0

    goto :goto_105

    .line 59
    :cond_fc
    iget-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_101

    goto :goto_107

    .line 62
    :cond_101
    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_105
    const/4 v0, 0x1

    goto :goto_108

    :cond_107
    :goto_107
    const/4 v0, 0x0

    .line 77
    :goto_108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 78
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==============C\u622a\u56fe\u8017\u65f6="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v13, v10

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget v9, Lio/dcloud/common/util/BaseInfo;->sTimeoutCapture:I

    int-to-long v9, v9

    cmp-long v11, v13, v9

    if-ltz v11, :cond_134

    .line 81
    sget v0, Lio/dcloud/common/util/BaseInfo;->sTimeOutCount:I

    add-int/2addr v0, v8

    sput v0, Lio/dcloud/common/util/BaseInfo;->sTimeOutCount:I

    .line 82
    sget v9, Lio/dcloud/common/util/BaseInfo;->sTimeOutMax:I

    if-le v0, v9, :cond_138

    .line 83
    sput-boolean v1, Lio/dcloud/common/util/BaseInfo;->sAnimationCaptureC:Z

    goto :goto_138

    :cond_134
    if-eqz v0, :cond_138

    .line 86
    sput v1, Lio/dcloud/common/util/BaseInfo;->sTimeOutCount:I

    .line 88
    :cond_138
    :goto_138
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->refreshImagerView()V

    .line 89
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-nez v0, :cond_14b

    if-eqz v5, :cond_14a

    invoke-static {v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->isWhiteBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_14a

    goto :goto_14b

    :cond_14a
    return v1

    .line 90
    :cond_14b
    :goto_14b
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_19c

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_19c

    .line 91
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    invoke-direct {v0, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x16

    if-ge v9, v10, :cond_197

    iget-boolean v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v9, :cond_197

    .line 93
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v10

    iget v10, v10, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    add-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object v10

    invoke-virtual {v10}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v10

    iget-boolean v10, v10, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v10, :cond_188

    sget v10, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    goto :goto_189

    :cond_188
    const/4 v10, 0x0

    :goto_189
    sub-int/2addr v9, v10

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 94
    iget-object v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v10

    iget v10, v10, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-virtual {v9, v1, v10, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 96
    :cond_197
    iget-object v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :cond_19c
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-nez v0, :cond_1a6

    .line 99
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-direct {v6, v4, v0, v5}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addCaptureImageView(Landroid/view/ViewGroup;Lio/dcloud/common/adapter/ui/DHImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1b0

    .line 101
    :cond_1a6
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 102
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1b0
    const/4 v0, 0x4

    .line 104
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    iget-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v5, v5

    invoke-static {v0, v5}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 106
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 107
    iget-boolean v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v5, :cond_1d5

    .line 108
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget-boolean v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v5, :cond_1d4

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    :cond_1d4
    add-int/2addr v0, v1

    .line 110
    :cond_1d5
    iget-object v1, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 112
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    if-nez v0, :cond_1f9

    .line 115
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v7, v0}, Lio/dcloud/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 116
    new-instance v9, Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/adapter/ui/AdaFrameView$1;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;ILandroid/view/ViewGroup;Lio/dcloud/common/core/ui/k;Lio/dcloud/nineoldandroids/animation/Animator;)V

    invoke-virtual {v7, v9}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    goto :goto_20c

    .line 186
    :cond_1f9
    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    invoke-direct {v1, v6, v3, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView$2;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 248
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v0, :cond_20c

    .line 249
    iget-object v1, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_20c
    :goto_20c
    return v8

    :cond_20d
    :goto_20d
    return v1
.end method

.method private getFrameHeight()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 4
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_40

    .line 6
    :cond_28
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbarDodifyHeight:Z

    if-eqz v0, :cond_3a

    .line 7
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v0, v1

    goto :goto_40

    .line 9
    :cond_3a
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    :cond_40
    :goto_40
    return v0
.end method

.method private indexOfViewInParent(Landroid/view/View;Landroid/view/ViewGroup;)I
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_e

    goto :goto_11

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    :goto_11
    return v0
.end method

.method private sendErrorMessage(ILjava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCaptureHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    :cond_b
    if-eqz p1, :cond_1a

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public animate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/dcloud/android/widget/AbsoluteLayout;->animate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public captureSnapshot(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameView$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/AdaFrameView$5;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public changeWebParentViewRect()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 6
    :cond_d
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_113

    if-nez v1, :cond_1b

    goto/16 :goto_113

    .line 11
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_45

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_113

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget-boolean v3, v2, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v3, :cond_45

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v2, :cond_113

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v2

    iget-boolean v2, v2, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-eqz v2, :cond_113

    .line 13
    :cond_45
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    iget v3, v3, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v2, v3, :cond_6e

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget-boolean v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v2, :cond_6e

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v2, :cond_6e

    return-void

    .line 16
    :cond_6e
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 18
    :goto_75
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_f1

    .line 19
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eq v6, v1, :cond_ee

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 23
    instance-of v8, v6, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v8, :cond_96

    .line 24
    check-cast v6, Lcom/dcloud/android/widget/AbsoluteLayout;

    invoke-virtual {v6}, Lcom/dcloud/android/widget/AbsoluteLayout;->getFrameView()Lio/dcloud/common/adapter/ui/AdaFrameView;

    move-result-object v6

    iget v6, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mPosition:I

    sget-byte v8, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_TOP:B

    if-eq v6, v8, :cond_eb

    goto :goto_ee

    .line 27
    :cond_96
    instance-of v8, v6, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v8, :cond_e7

    .line 28
    move-object v7, v6

    check-cast v7, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/INativeView;->isDock()Z

    move-result v7

    if-eqz v7, :cond_ee

    .line 29
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_d5

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "NavigationBar"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c1

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "titleNView"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d5

    :cond_c1
    move-object v7, v6

    check-cast v7, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/INativeView;->isStatusBar()Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 30
    move-object v7, v6

    check-cast v7, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/INativeView;->getInnerHeight()I

    move-result v7

    sget v8, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v7, v8

    goto :goto_dc

    .line 32
    :cond_d5
    move-object v7, v6

    check-cast v7, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/INativeView;->getInnerHeight()I

    move-result v7

    .line 34
    :goto_dc
    check-cast v6, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/INativeView;->isDockTop()Z

    move-result v6

    if-eqz v6, :cond_e5

    goto :goto_eb

    :cond_e5
    const/4 v6, 0x0

    goto :goto_ec

    .line 42
    :cond_e7
    instance-of v6, v6, Lcom/dcloud/android/widget/StatusBarView;

    if-eqz v6, :cond_ee

    :cond_eb
    :goto_eb
    move v6, v7

    :goto_ec
    sub-int/2addr v2, v7

    add-int/2addr v5, v6

    :cond_ee
    :goto_ee
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    .line 51
    :cond_f1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v5

    .line 54
    invoke-static {v1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 58
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    if-nez v0, :cond_113

    .line 59
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebviewRect()V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_108} :catch_109

    goto :goto_113

    :catch_109
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaFrameItem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_113
    :goto_113
    return-void
.end method

.method protected changeWebviewRect()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    if-eqz v1, :cond_1a

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    .line 4
    :cond_1a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2a

    .line 5
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public chkUseCaptureAnimation(ZIZ)V
    .registers 9

    if-eqz p1, :cond_a

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "B\u9875\u9762"

    goto :goto_11

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "C\u9875\u9762"

    :goto_11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2b

    if-nez p3, :cond_2b

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    return-void

    .line 8
    :cond_2b
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const-string p3, "acceleration"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "1\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:"

    const-string v1, "mabo"

    if-nez p2, :cond_61

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez p2, :cond_61

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-nez p2, :cond_61

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p2, v2, :cond_61

    .line 9
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_61
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget-object p2, p2, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    if-eqz p2, :cond_6a

    .line 15
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    return-void

    .line 20
    :cond_6a
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-byte p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v2, :cond_77

    if-ne p2, v3, :cond_75

    goto :goto_77

    :cond_75
    const/4 p2, 0x0

    goto :goto_78

    :cond_77
    :goto_77
    const/4 p2, 0x1

    .line 28
    :goto_78
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v2, :cond_aa

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-nez v2, :cond_aa

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_90

    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v4, 0xb

    if-ge v2, v4, :cond_aa

    .line 29
    :cond_90
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_aa
    iget-boolean p3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz p3, :cond_ca

    .line 35
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_ca
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p3

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/common/adapter/util/PlatformUtil;->MESURE_SCREEN_STATUSBAR_HEIGHT(Landroid/app/Activity;)I

    .line 43
    iget p3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLastScreenHeight:I

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result v2

    if-eq p3, v2, :cond_103

    .line 44
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLastScreenHeight:I

    .line 45
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "3\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_103
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const-string p3, "auto"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "fade-in"

    if-eqz p1, :cond_127

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    invoke-static {p1, p3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_127

    if-eqz p2, :cond_127

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string v1, "slide"

    invoke-static {p1, v1}, Lio/dcloud/common/util/PdrUtil;->isContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_131

    :cond_127
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const-string v1, "capture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_133

    :cond_131
    const/4 p1, 0x1

    goto :goto_134

    :cond_133
    const/4 p1, 0x0

    :goto_134
    if-nez p2, :cond_15f

    .line 57
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-byte v1, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v2, 0x4

    if-eq v1, v2, :cond_142

    if-nez v1, :cond_140

    goto :goto_142

    :cond_140
    const/4 v1, 0x0

    goto :goto_143

    :cond_142
    :goto_142
    const/4 v1, 0x1

    :goto_143
    if-nez p1, :cond_15b

    .line 59
    iget-object p1, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "pop-in"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15b

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "zoom-fade-out"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15c

    :cond_15b
    const/4 v0, 0x1

    :cond_15c
    and-int p1, v1, v0

    goto :goto_17c

    :cond_15f
    if-nez p1, :cond_179

    .line 63
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    const-string p2, "pop-out"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_179

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "zoom-fade-in"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17a

    :cond_179
    const/4 v0, 0x1

    :cond_17a
    and-int p1, v3, v0

    .line 66
    :goto_17c
    iget-boolean p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz p2, :cond_18b

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    invoke-static {p2, p3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_18b

    const/4 p1, 0x1

    .line 70
    :cond_18b
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez p2, :cond_195

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-eqz p2, :cond_194

    goto :goto_195

    :cond_194
    move v3, p1

    .line 73
    :cond_195
    :goto_195
    iput-boolean v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    return-void
.end method

.method public clearSnapshot(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "loading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2e

    .line 6
    :try_start_1e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_2e
    :goto_2e
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    goto :goto_47

    .line 15
    :cond_31
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_45

    .line 17
    :try_start_35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_45

    .line 18
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_45
    :goto_45
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    :goto_47
    return-void
.end method

.method public final dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdaFrameView.dispatchFrameViewEvents type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_28
    if-ltz v0, :cond_45

    .line 5
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IEventCallback;

    const-string v2, "close"

    .line 6
    invoke-static {p1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 7
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_3f
    invoke-interface {v1, p1, p2}, Lio/dcloud/common/DHInterface/IEventCallback;->onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_45
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->dispose()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    .line 5
    :cond_a
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    if-eqz v0, :cond_10

    .line 6
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    .line 8
    :cond_10
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    if-eqz v0, :cond_16

    .line 9
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    :cond_16
    return-void
.end method

.method public declared-synchronized draw(Landroid/view/View;Lio/dcloud/common/DHInterface/INativeBitmap;ZZLandroid/graphics/Rect;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 22

    move-object v11, p0

    monitor-enter p0

    .line 1
    :try_start_2
    iget-object v0, v11, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCaptureHandler:Landroid/os/Handler;

    new-instance v12, Lio/dcloud/common/adapter/ui/AdaFrameView$6;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lio/dcloud/common/adapter/ui/AdaFrameView$6;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;Lio/dcloud/common/DHInterface/INativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findPageB()Lio/dcloud/common/DHInterface/IFrameView;
    .registers 2

    .line 1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->findFrameViewB(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    return-object v0
.end method

.method public getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    return-object v0
.end method

.method public getFrameType()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameType:I

    return v0
.end method

.method public handleNativeViewByAction(Lio/dcloud/common/adapter/ui/DHImageView;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-nez v0, :cond_93

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    const-string v5, "hide"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "close"

    if-nez v0, :cond_21

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 2
    :cond_21
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/INativeView;->getViewUUId()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    if-eqz p1, :cond_4a

    .line 6
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4a

    .line 8
    :cond_35
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    if-eqz p1, :cond_48

    .line 10
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {p1, v2}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    :cond_48
    const-string v0, "view_close"

    .line 16
    :cond_4a
    :goto_4a
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    .line 17
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    if-eqz p1, :cond_a3

    .line 19
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v2, v4, [Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "nativeobj"

    aput-object v4, v2, v3

    const/4 v4, 0x2

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\',\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\']"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, v2, v0

    .line 21
    invoke-interface {p1, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    :cond_93
    if-ne p2, v3, :cond_a3

    if-eqz p1, :cond_a3

    .line 26
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 27
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 28
    invoke-virtual {p1, v2}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    :cond_a3
    :goto_a3
    return-void
.end method

.method protected abstract initMainView(Landroid/content/Context;ILjava/lang/Object;)V
.end method

.method public interceptTouchEvent(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->interceptTouchEvent:Z

    return-void
.end method

.method public isSupportLongTouch()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTabItem()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isTabItem:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->isTabItem:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isWebviewCovered()Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 5
    :cond_8
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    .line 9
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8d

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1d

    goto/16 :goto_8d

    .line 13
    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_WIDTH(Landroid/content/Context;)I

    move-result v2

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result v3

    .line 15
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 19
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_42

    return v1

    .line 22
    :cond_42
    :goto_42
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_85

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_57

    return v1

    .line 27
    :cond_57
    invoke-direct {p0, v0, v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->indexOfViewInParent(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    add-int/2addr v0, v1

    .line 28
    :goto_5c
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_83

    .line 29
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_80

    instance-of v6, v4, Lio/dcloud/common/DHInterface/IWaiter;

    if-eqz v6, :cond_71

    goto :goto_80

    .line 33
    :cond_71
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 34
    invoke-virtual {v4, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 35
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_80

    return v1

    :cond_80
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_83
    move-object v0, v3

    goto :goto_42

    .line 41
    :cond_85
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8c

    return v1

    :cond_8c
    return v5

    :cond_8d
    :goto_8d
    return v1
.end method

.method public abstract obtainApp()Lio/dcloud/common/DHInterface/IApp;
.end method

.method public abstract obtainPrePlusreadyJs()Ljava/lang/String;
.end method

.method public obtainStatus()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    return v0
.end method

.method public abstract obtainWebView()Lio/dcloud/common/DHInterface/IWebview;
.end method

.method public abstract obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;
.end method

.method public onConfigurationChanged()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->transition(B)V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispose()V

    return-void
.end method

.method public onDispose()Z
    .registers 4

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onDispose()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {p0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v1, :cond_15

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_15
    return v0
.end method

.method public onDrawAfter(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    if-eqz v0, :cond_52

    invoke-interface {v0}, Lcom/dcloud/android/v4/widget/IRefreshAble;->isRefreshEnable()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    .line 5
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    if-eqz v2, :cond_45

    iget-boolean v3, v2, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v3, :cond_45

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v2, :cond_45

    .line 6
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v1, v2

    :cond_45
    int-to-float v0, v0

    int-to-float v1, v1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    invoke-interface {v0, p1}, Lcom/dcloud/android/v4/widget/IRefreshAble;->onSelfDraw(Landroid/graphics/Canvas;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_52
    return-void
.end method

.method public onInit()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    return-void
.end method

.method public onLoading()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    return-void
.end method

.method public onPreLoading()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    return-void
.end method

.method public onPreShow(Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 2

    const/4 p1, 0x3

    .line 1
    iput-byte p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->transition(B)V

    return-void
.end method

.method protected onResize()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_28

    .line 4
    :cond_11
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onResize()V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    if-eqz v0, :cond_1b

    .line 6
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/RefreshView;->onResize()V

    .line 8
    :cond_1b
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    if-eqz v0, :cond_22

    .line 9
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/BounceView;->onResize()V

    :cond_22
    const/4 v0, 0x0

    const-string v1, "onresize"

    .line 11
    invoke-virtual {p0, v1, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->paint(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    if-eqz v0, :cond_76

    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isSlipping:Z

    if-nez v0, :cond_76

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdaFrameView.paint mRefreshView paint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View_Visible_Path"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_birth:Lio/dcloud/common/adapter/util/ViewOptions;

    .line 7
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    if-nez v0, :cond_41

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_birth:Lio/dcloud/common/adapter/util/ViewOptions;

    :cond_41
    if-nez v1, :cond_45

    .line 9
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    .line 11
    :cond_45
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    .line 12
    :goto_4e
    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    if-eq v0, v1, :cond_55

    move v4, v1

    .line 15
    :cond_55
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v3, v1

    int-to-float v1, v4

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, p1, v3, v1}, Lio/dcloud/common/adapter/ui/RefreshView;->paint(Landroid/graphics/Canvas;II)V

    :cond_76
    return-void
.end method

.method public final removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public restore()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/android/widget/AbsoluteLayout;->restore()V

    :cond_11
    return-void
.end method

.method public setAccelerationType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    return-void
.end method

.method public setCircleRefreshView(Lcom/dcloud/android/v4/widget/IRefreshAble;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    return-void
.end method

.method public setSnapshot(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    :cond_f
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    .line 2
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    return-void
.end method

.method public setTabItem(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isTabItem:Z

    return-void
.end method

.method public setVisible(ZZ)V
    .registers 4

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdaFrameView.setVisible pVisible"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "       "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "View_Visible_Path"

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_23

    .line 2
    sget p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->VISIBLE:I

    goto :goto_25

    :cond_23
    sget p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->INVISIBLE:I

    .line 3
    :goto_25
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setVisibility(I)V

    return-void
.end method

.method public startAnimator(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->startAnimator(Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;I)V

    return-void
.end method

.method public startAnimator(Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;I)V
    .registers 7

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    if-eqz v0, :cond_b6

    .line 3
    iput-object p0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mUserFrameItem:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 4
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    iput v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenWidth:I

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    iput v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenHeight:I

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/AnimOptions;->createAnimation()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    .line 8
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-byte v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4e

    .line 10
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object p2

    .line 11
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iput-object p2, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mUserFrameItem:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 12
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 15
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    goto :goto_95

    .line 17
    :cond_4e
    invoke-direct {p0, v0, p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->captureAnimation(Lio/dcloud/nineoldandroids/animation/Animator;I)Z

    move-result p2

    if-nez p2, :cond_95

    .line 19
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz p2, :cond_6e

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/DHImageView;->isSlipping()Z

    move-result p2

    if-nez p2, :cond_6e

    .line 20
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 21
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2, v2}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 25
    :cond_6e
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    .line 26
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    if-nez p2, :cond_87

    .line 27
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 28
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 29
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    goto :goto_95

    .line 31
    :cond_87
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 32
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    :cond_95
    :goto_95
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 44
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v0, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    iget v1, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    iget p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 45
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaFrameView$3;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView$3;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;)V

    int-to-long p1, p2

    invoke-static {v0, p1, p2, v2}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V

    :cond_b6
    return-void
.end method

.method public transition(B)V
    .registers 2

    return-void
.end method

.method public updateFrameRelViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->allowUpdate:Z

    if-eqz v1, :cond_3e

    .line 4
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V

    goto :goto_3e

    .line 7
    :cond_26
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    invoke-virtual {v1, p1}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V

    if-eqz v0, :cond_3e

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3e

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    if-eqz p1, :cond_3e

    .line 10
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->reInit()V

    .line 13
    :cond_3e
    :goto_3e
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v1, p1, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 14
    iget v2, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 15
    iget-boolean v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v3, :cond_68

    .line 16
    invoke-virtual {p1}, Lio/dcloud/common/adapter/util/ViewRect;->getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 17
    iget-boolean p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz p1, :cond_68

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget-boolean p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez p1, :cond_68

    .line 18
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/util/ViewRect;->isBottomAbsolute()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 19
    sget p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    sub-int/2addr v2, p1

    .line 21
    :cond_65
    sget p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v1, p1

    .line 24
    :cond_68
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v4, v3, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v3, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    invoke-static {p1, v4, v1, v3, v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 25
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebParentViewRect()V

    if-eqz v0, :cond_7f

    .line 32
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_7f
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.AnonymousClass1 (io.dcloud.common.adapter.ui.AdaFrameView$1)
.class Lio/dcloud/common/adapter/ui/AdaFrameView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView;->captureAnimation(Lio/dcloud/nineoldandroids/animation/Animator;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field final synthetic val$animaType:I

.field final synthetic val$appRootView:Lio/dcloud/common/core/ui/k;

.field final synthetic val$as:Lio/dcloud/nineoldandroids/animation/Animator;

.field final synthetic val$pageC:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;ILandroid/view/ViewGroup;Lio/dcloud/common/core/ui/k;Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$animaType:I

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$pageC:Landroid/view/ViewGroup;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$appRootView:Lio/dcloud/common/core/ui/k;

    iput-object p5, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$as:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    .line 2
    sget v1, Lio/dcloud/common/util/BaseInfo;->sOpenedCount:I

    if-nez v1, :cond_9

    .line 3
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sFullScreenChanged:Z

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_12

    .line 5
    invoke-interface {v0, p1}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_12
    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setIntercept(Z)V

    .line 3
    iget v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$animaType:I

    if-eqz v0, :cond_1f

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setNativeAnimationRuning(Z)V

    .line 7
    :cond_1f
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_28

    .line 8
    invoke-interface {v0, p1}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 9
    :cond_28
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-byte p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    goto :goto_3b

    .line 12
    :cond_35
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$pageC:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_41

    .line 13
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$pageC:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_41
    const/16 p1, 0xf0

    .line 18
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->isNativeView()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_5a

    :cond_58
    const/16 v1, 0xf0

    .line 21
    :goto_5a
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$appRootView:Lio/dcloud/common/core/ui/k;

    new-instance v0, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView$1;)V

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$as:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p1, p0}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_9
    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setIntercept(Z)V

    .line 3
    iget v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$animaType:I

    if-eqz v0, :cond_1f

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setNativeAnimationRuning(Z)V

    .line 7
    :cond_1f
    sput-boolean v1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_2a

    .line 9
    invoke-interface {v0, p1}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_2a
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.AnonymousClass1.RunnableC00251 (io.dcloud.common.adapter.ui.AdaFrameView$1$1)
.class Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView$1;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$1;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->isNativeView()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    iget v2, v2, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->val$animaType:I

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->handleNativeViewByAction(Lio/dcloud/common/adapter/ui/DHImageView;I)V

    goto :goto_4b

    .line 5
    :cond_28
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$1$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    :cond_4b
    :goto_4b
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    .line 11
    sget v1, Lio/dcloud/common/util/BaseInfo;->sOpenedCount:I

    if-nez v1, :cond_54

    .line 12
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sFullScreenChanged:Z

    :cond_54
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.AnonymousClass2 (io.dcloud.common.adapter.ui.AdaFrameView$2)
.class Lio/dcloud/common/adapter/ui/AdaFrameView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView;->captureAnimation(Lio/dcloud/nineoldandroids/animation/Animator;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field final synthetic val$animaType:I

.field final synthetic val$pageC:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/ViewGroup;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->val$pageC:Landroid/view/ViewGroup;

    iput p3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->val$animaType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/DHImageView;->setIntercept(Z)V

    .line 4
    :cond_12
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_1e

    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 7
    :cond_1e
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-byte p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p1, v1, :cond_32

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2c

    goto :goto_32

    .line 10
    :cond_2c
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->val$pageC:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_37

    .line 11
    :cond_32
    :goto_32
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->val$pageC:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_37
    const/16 p1, 0xf0

    .line 16
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 18
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/DHImageView;->isNativeView()Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_59

    :cond_57
    const/16 v0, 0xf0

    .line 22
    :goto_59
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->val$pageC:Landroid/view/ViewGroup;

    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView$2;)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_a
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/DHImageView;->setIntercept(Z)V

    .line 4
    :cond_12
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_1e

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_1e
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.AnonymousClass2.AnonymousClass1 (io.dcloud.common.adapter.ui.AdaFrameView$2$1)
.class Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    if-eqz v0, :cond_5a

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    if-nez v0, :cond_5a

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->isNativeView()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    iget v2, v2, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->val$animaType:I

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->handleNativeViewByAction(Lio/dcloud/common/adapter/ui/DHImageView;I)V

    goto :goto_5a

    .line 5
    :cond_2c
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$2$1;->this$1:Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView$2;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    :cond_5a
    :goto_5a
    sget v0, Lio/dcloud/common/util/BaseInfo;->sOpenedCount:I

    if-nez v0, :cond_61

    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sFullScreenChanged:Z

    :cond_61
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.AnonymousClass3 (io.dcloud.common.adapter.ui.AdaFrameView$3)
.class Lio/dcloud/common/adapter/ui/AdaFrameView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView;->startAnimator(Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field final synthetic val$callback:Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$3;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$3;->val$callback:Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$3;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-boolean v0, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationStarted:Z

    if-nez v0, :cond_e

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 5
    :cond_e
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$3;->val$callback:Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;->onDone()V

    .line 6
    :cond_15
    sget p1, Lio/dcloud/common/util/BaseInfo;->sOpenedCount:I

    if-nez p1, :cond_1c

    const/4 p1, 0x0

    .line 7
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sFullScreenChanged:Z

    :cond_1c
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.AnonymousClass4 (io.dcloud.common.adapter.ui.AdaFrameView$4)
.class Lio/dcloud/common/adapter/ui/AdaFrameView$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$4;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$4;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$200(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$4;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$200(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 9
    :cond_1b
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$4;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$100(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 10
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$4;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$100(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_2e
    :goto_2e
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.AnonymousClass5 (io.dcloud.common.adapter.ui.AdaFrameView$5)
.class Lio/dcloud/common/adapter/ui/AdaFrameView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView;->captureSnapshot(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field final synthetic val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$sucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$sucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, -0x64

    if-nez v0, :cond_70

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "loading"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 6
    :try_start_22
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_44

    .line 8
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$sucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$102(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$300(Lio/dcloud/common/adapter/ui/AdaFrameView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_bc

    .line 11
    :cond_44
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$202(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 12
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_screenshot_fail:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$400(Lio/dcloud/common/adapter/ui/AdaFrameView;ILjava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_58} :catch_59

    goto :goto_bc

    .line 15
    :catch_59
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$202(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 16
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_screenshot_fail:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$400(Lio/dcloud/common/adapter/ui/AdaFrameView;ILjava/lang/String;)V

    goto :goto_bc

    .line 20
    :cond_70
    :try_start_70
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    .line 21
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_91

    .line 22
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$sucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$102(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 23
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$300(Lio/dcloud/common/adapter/ui/AdaFrameView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_bc

    .line 25
    :cond_91
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$202(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 26
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_screenshot_fail:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$400(Lio/dcloud/common/adapter/ui/AdaFrameView;ILjava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_a5} :catch_a6

    goto :goto_bc

    .line 29
    :catch_a6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$202(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 30
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$5;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_screenshot_fail:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$400(Lio/dcloud/common/adapter/ui/AdaFrameView;ILjava/lang/String;)V

    :goto_bc
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.AnonymousClass6 (io.dcloud.common.adapter.ui.AdaFrameView$6)
.class Lio/dcloud/common/adapter/ui/AdaFrameView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView;->draw(Landroid/view/View;Lio/dcloud/common/DHInterface/INativeBitmap;ZZLandroid/graphics/Rect;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field final synthetic val$bit:Ljava/lang/String;

.field final synthetic val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$isCheck:Z

.field final synthetic val$isCheckKeyB:Z

.field final synthetic val$nativeBitmap:Lio/dcloud/common/DHInterface/INativeBitmap;

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$sucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;Lio/dcloud/common/DHInterface/INativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 10

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$isCheck:Z

    iput-boolean p4, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$isCheckKeyB:Z

    iput-object p5, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$rect:Landroid/graphics/Rect;

    iput-object p6, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$bit:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$nativeBitmap:Lio/dcloud/common/DHInterface/INativeBitmap;

    iput-object p8, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$sucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    iput-object p9, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$isCheck:Z

    iget-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$isCheckKeyB:Z

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$bit:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 6
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$nativeBitmap:Lio/dcloud/common/DHInterface/INativeBitmap;

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/INativeBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$sucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$102(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$300(Lio/dcloud/common/adapter/ui/AdaFrameView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_65

    .line 10
    :cond_30
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$202(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 11
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/16 v1, -0x65

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_screenshot_blank:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$400(Lio/dcloud/common/adapter/ui/AdaFrameView;ILjava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_65

    :catch_49
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->val$errCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$202(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 16
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$6;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_screenshot_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x64

    invoke-static {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->access$400(Lio/dcloud/common/adapter/ui/AdaFrameView;ILjava/lang/String;)V

    :goto_65
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.AnonymousClass7 (io.dcloud.common.adapter.ui.AdaFrameView$7)
.class Lio/dcloud/common/adapter/ui/AdaFrameView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$7;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$7;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_a
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$7;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_a
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView$7;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_a
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameView.OnAnimationEnd (io.dcloud.common.adapter.ui.AdaFrameView$OnAnimationEnd)
.class public interface abstract Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAnimationEnd"
.end annotation


# virtual methods
.method public abstract onDone()V
.end method
