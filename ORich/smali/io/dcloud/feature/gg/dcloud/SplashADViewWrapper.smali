###### Class io.dcloud.feature.gg.dcloud.SplashADViewWrapper (io.dcloud.feature.gg.dcloud.SplashADViewWrapper)
.class public Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private FINISHSHOW:Ljava/lang/Runnable;

.field imageDownloadReceiver:Landroid/content/BroadcastReceiver;

.field isClose:Z

.field isImgDownlaodReceive:Z

.field mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field mAdViewListener:Lio/dcloud/feature/gg/dcloud/AdViewListener;

.field mContext:Landroid/content/Context;

.field mMainView:Landroid/view/View;

.field mSkipView:Landroid/view/View;

.field sNeedShowSkipView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/view/ViewGroup;Lio/dcloud/feature/gg/dcloud/AdViewListener;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdViewListener:Lio/dcloud/feature/gg/dcloud/AdViewListener;

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mSkipView:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->sNeedShowSkipView:Z

    .line 7
    iput-boolean v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->isClose:Z

    .line 8
    iput-boolean v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->isImgDownlaodReceive:Z

    .line 69
    new-instance v1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;

    invoke-direct {v1, p0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;-><init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->imageDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$6;

    invoke-direct {v1, p0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$6;-><init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->FINISHSHOW:Ljava/lang/Runnable;

    .line 191
    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdViewListener:Lio/dcloud/feature/gg/dcloud/AdViewListener;

    .line 192
    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 193
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string p4, "layout"

    const-string v1, "ad_dcloud_main"

    invoke-static {p1, p4, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    .line 195
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    const-string p3, "id"

    const-string p4, "ad_dcloud_main_skip"

    invoke-static {p1, p3, p4}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mSkipView:Landroid/view/View;

    .line 197
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result p2

    if-eqz p2, :cond_61

    const-string p2, "SplashADViewWrapper"

    const-string p3, "use cache AdData"

    .line 198
    invoke-static {p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->initAdMainView(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_72

    :cond_61
    const-string p2, "shutao"

    const-string p3, "listenADReceive-----------------"

    .line 201
    invoke-static {p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    new-instance p3, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;

    invoke-direct {p3, p0, p1}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;-><init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;Landroid/content/Context;)V

    invoke-virtual {p2, p1, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->listenADReceive(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/IADReceiver;)V

    :goto_72
    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->runInitMainView()V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->onFinishShow()V

    return-void
.end method

.method private imm()Z
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lio/dcloud/feature/gg/dcloud/ADHandler;->sPullBeginTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private initAdMainView(Landroid/content/Context;Landroid/view/View;)V
    .registers 8

    const-string v0, "ADReceive"

    const-string v1, "initAdMainView "

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    const-string v1, "ad_dcloud_main_img"

    .line 2
    invoke-static {p1, v0, v1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;

    invoke-direct {v0, p0, p1}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;-><init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$4;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$4;-><init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    instance-of v1, v0, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_3e

    .line 47
    new-instance v0, Lio/dcloud/feature/gg/dcloud/BitmapView;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v4, v1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v4, v1}, Lio/dcloud/feature/gg/dcloud/BitmapView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    .line 48
    invoke-virtual {p2, v0, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_66

    .line 49
    :cond_3e
    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 50
    const-class v4, Landroid/content/Context;

    aput-object v4, v1, v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v4, "pl.droidsonroids.gif.GifImageView"

    invoke-static {v4, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v1, v1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p2, v0, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 63
    :cond_66
    :goto_66
    iget-boolean p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->sNeedShowSkipView:Z

    if-eqz p2, :cond_6f

    .line 64
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mSkipView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_6f
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mSkipView:Landroid/view/View;

    new-instance v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$5;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$5;-><init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    const-string v0, "adid"

    invoke-static {p1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->view(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void
.end method

.method private onFinishShow()V
    .registers 3

    const-string v0, "shutao"

    const-string v1, "onFinishShow"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdViewListener:Lio/dcloud/feature/gg/dcloud/AdViewListener;

    invoke-interface {v0}, Lio/dcloud/feature/gg/dcloud/AdViewListener;->onFinishShow()V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_23
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->isClose:Z

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_39

    .line 8
    check-cast v0, Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_39

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_39
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->sNeedShowSkipView:Z

    .line 14
    iget-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->isImgDownlaodReceive:Z

    if-eqz v0, :cond_4b

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->imageDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4b
    return-void
.end method

.method private runInitMainView()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->sNeedShowSkipView:Z

    if-eqz v0, :cond_1b

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->FINISHSHOW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->FINISHSHOW:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "shutao"

    const-string v1, "runInitMainView--\u5ef6\u65f62000"

    .line 4
    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1b
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->initAdMainView(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onWillCloseSplash()V
    .registers 5

    const-string v0, "onWillCloseSplash"

    const-string v1, "SplashADViewWrapper"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ADReceive"

    const-string v1, "onWillCloseSplash "

    .line 3
    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->sNeedShowSkipView:Z

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mSkipView:Landroid/view/View;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mSkipView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_23
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->imm()Z

    move-result v0

    const-string v1, "shutao"

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    if-nez v0, :cond_3a

    const-string v0, "Delayed-------"

    .line 9
    invoke-static {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->onFinishShow()V

    goto :goto_48

    :cond_3a
    const-string v0, "Delayed---30000"

    .line 12
    invoke-static {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->FINISHSHOW:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_48
    return-void
.end method

.method public setImageDownlaodListen(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ad_img_downlaod_receive"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->imageDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->isImgDownlaodReceive:Z

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.SplashADViewWrapper.AnonymousClass1 (io.dcloud.feature.gg.dcloud.SplashADViewWrapper$1)
.class Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/IADReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;-><init>(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/view/ViewGroup;Lio/dcloud/feature/gg/dcloud/AdViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-boolean p2, p1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->isClose:Z

    if-eqz p2, :cond_7

    return-void

    .line 4
    :cond_7
    iget-object p2, p1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object p2, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    if-nez p2, :cond_10

    .line 5
    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->access$100(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    :cond_10
    return-void
.end method

.method public onReceiver(Lorg/json/JSONObject;)V
    .registers 5

    const-string p1, "shutao"

    const-string v0, "listenADReceive----------------onReceiver-"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-boolean v1, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->isClose:Z

    if-eqz v1, :cond_e

    return-void

    .line 5
    :cond_e
    iget-object v1, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getBestAdData(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->access$000(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    const-string v0, "initAdMainView"

    .line 8
    invoke-static {p1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_2c
    const-string v0, "setImageDownlaodListen"

    .line 10
    invoke-static {p1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->setImageDownlaodListen(Landroid/content/Context;)V

    :goto_38
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.SplashADViewWrapper.AnonymousClass2 (io.dcloud.feature.gg.dcloud.SplashADViewWrapper$2)
.class Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "shutao"

    const-string v1, "imageDownloadReceiver----shou"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-boolean v1, v1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->isClose:Z

    if-eqz v1, :cond_e

    return-void

    :cond_e
    const-string v1, "src"

    .line 5
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageDownloadReceiver--src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7c

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v3, v3, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v3, v3, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    const/4 v1, 0x0

    const-string v2, "downloadImage"

    .line 8
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_77

    const-string p2, "imageDownloadReceiver--\u4e0b\u8f7d\u6210\u529f="

    .line 10
    invoke-static {v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object p2, p2, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v0, p2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getBestAdData(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 12
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object p1, p1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->access$000(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    goto :goto_7c

    .line 15
    :cond_71
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->access$100(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    goto :goto_7c

    .line 18
    :cond_77
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$2;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->access$100(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    :cond_7c
    :goto_7c
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.SplashADViewWrapper.AnonymousClass3 (io.dcloud.feature.gg.dcloud.SplashADViewWrapper$3)
.class Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->initAdMainView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_110

    const-string v1, "down_x"

    :try_start_a
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_down:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_110

    const-string v1, "down_y"

    :try_start_25
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_down:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3e} :catch_110

    const-string v1, "up_x"

    :try_start_40
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_up:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_59} :catch_110

    const-string v1, "up_y"

    :try_start_5b
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_up:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_71} :catch_110

    const-string v1, "relative_down_x"

    :try_start_73
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_down:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_91} :catch_110

    const-string v1, "relative_down_y"

    :try_start_93
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_down:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b1} :catch_110

    const-string v1, "relative_up_x"

    :try_start_b3
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_up:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_d1} :catch_110

    const-string v1, "relative_up_y"

    :try_start_d3
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_up:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_f1} :catch_110

    const-string v1, "dw"

    :try_start_f3
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lio/dcloud/feature/gg/AdSplashUtil;->dw(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_104} :catch_110

    const-string v1, "dh"

    :try_start_106
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lio/dcloud/feature/gg/AdSplashUtil;->dh(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10f} :catch_110

    goto :goto_114

    :catch_110
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_114
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v1, v1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    const-string v2, "adid"

    invoke-static {v0, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->click(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v1, v1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object v0, v1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_down:Landroid/view/MotionEvent;

    .line 17
    iput-object v0, v1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_up:Landroid/view/MotionEvent;

    .line 18
    new-instance v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3$1;-><init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.SplashADViewWrapper.AnonymousClass3.AnonymousClass1 (io.dcloud.feature.gg.dcloud.SplashADViewWrapper$3$1)
.class Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3$1;->this$1:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3$1;->this$1:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$3;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdViewListener:Lio/dcloud/feature/gg/dcloud/AdViewListener;

    invoke-interface {v0}, Lio/dcloud/feature/gg/dcloud/AdViewListener;->onFinishShow()V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.SplashADViewWrapper.AnonymousClass4 (io.dcloud.feature.gg.dcloud.SplashADViewWrapper$4)
.class Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->initAdMainView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$4;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_d

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$4;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object p1, p1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_down:Landroid/view/MotionEvent;

    goto :goto_1a

    .line 3
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$4;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object p1, p1, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->mAdData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mMotionEvent_up:Landroid/view/MotionEvent;

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.feature.gg.dcloud.SplashADViewWrapper.AnonymousClass5 (io.dcloud.feature.gg.dcloud.SplashADViewWrapper$5)
.class Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->initAdMainView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$5;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$5;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->access$100(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.SplashADViewWrapper.AnonymousClass6 (io.dcloud.feature.gg.dcloud.SplashADViewWrapper$6)
.class Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$6;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper$6;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->access$100(Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;)V

    return-void
.end method
