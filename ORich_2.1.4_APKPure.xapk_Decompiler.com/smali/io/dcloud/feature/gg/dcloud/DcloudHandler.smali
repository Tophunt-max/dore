###### Class io.dcloud.feature.gg.dcloud.DcloudHandler (io.dcloud.feature.gg.dcloud.DcloudHandler)
.class public Lio/dcloud/feature/gg/dcloud/DcloudHandler;
.super Lio/dcloud/feature/gg/dcloud/ADBaseHandler;
.source "SourceFile"


# instance fields
.field private adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

.field private isNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private listener:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

.field private validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;-><init>()V

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->isNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "dcloud"

    .line 133
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_TAD:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lio/dcloud/feature/gg/dcloud/DcloudHandler;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    return-object p1
.end method

.method static synthetic access$102(Lio/dcloud/feature/gg/dcloud/DcloudHandler;Lio/dcloud/feature/gg/dcloud/SplashADView;)Lio/dcloud/feature/gg/dcloud/SplashADView;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

    return-object p1
.end method


# virtual methods
.method public getAdRequestStatus()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "data error"

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->errorMsg:Ljava/lang/String;

    .line 4
    :cond_e
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, -0x1

    :goto_19
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->currentStatus:I

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public getBestAD(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getBestAdData(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 2
    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->allReady(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    :cond_f
    return-void
.end method

.method public initAdData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 2
    :cond_1b
    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->getBestAD(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2c

    :cond_29
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    :goto_2c
    return-void
.end method

.method public notifyCreateSplash(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->isNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->isNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->initAdData(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->listener:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

    if-eqz p1, :cond_26

    .line 5
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->getAdRequestStatus()I

    move-result p1

    if-ne p1, v1, :cond_21

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->listener:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

    invoke-interface {p1, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->success(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    goto :goto_26

    .line 8
    :cond_21
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->listener:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

    invoke-interface {p1, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->fail(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public onBack()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateSplash(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    const/16 v1, 0x8

    const-string v2, "1"

    const-string v3, "UNIAD_FULL_SPLASH"

    const-string v4, "_fs_"

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->check()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    instance-of v5, v0, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_48

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_48

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

    if-eqz v0, :cond_5f

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_44

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

    iput-object p3, p1, Lio/dcloud/feature/gg/dcloud/SplashADView;->mCallback:Lio/dcloud/common/DHInterface/ICallBack;

    .line 5
    invoke-static {v4, v3}, Lio/dcloud/feature/gg/AdSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

    iget-object p1, p1, Lio/dcloud/feature/gg/dcloud/SplashADView;->bottomIcon:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_41
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

    return-object p1

    .line 10
    :cond_44
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->getBestAD(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5f

    .line 13
    :cond_48
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    if-eqz v0, :cond_5f

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mImgData:Ljava/lang/Object;

    if-eqz v0, :cond_5f

    instance-of v5, v0, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5f

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 14
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->getBestAD(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    :cond_5f
    :goto_5f
    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_98

    .line 18
    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->allReady(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_98

    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    if-eqz p2, :cond_98

    .line 19
    new-instance p2, Lio/dcloud/feature/gg/dcloud/SplashADView;

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-direct {p2, p1, p3, v0}, Lio/dcloud/feature/gg/dcloud/SplashADView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

    .line 20
    new-instance p1, Lio/dcloud/feature/gg/dcloud/DcloudHandler$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/gg/dcloud/DcloudHandler$1;-><init>(Lio/dcloud/feature/gg/dcloud/DcloudHandler;)V

    invoke-virtual {p2, p1}, Lio/dcloud/feature/gg/dcloud/SplashADView;->setListener(Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;)V

    .line 27
    invoke-static {v4, v3}, Lio/dcloud/feature/gg/AdSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 28
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

    iget-object p1, p1, Lio/dcloud/feature/gg/dcloud/SplashADView;->bottomIcon:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_95
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

    return-object p1

    :cond_98
    const/4 p1, 0x0

    return-object p1
.end method

.method public onSplashClose(Landroid/view/View;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lio/dcloud/feature/gg/dcloud/SplashADView;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->adView:Lio/dcloud/feature/gg/dcloud/SplashADView;

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p1, Lio/dcloud/feature/gg/dcloud/SplashADView;->mSplashUnd:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;->onWillCloseSplash()V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public pullAds(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public pullAds(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->onCreate(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->pullAds(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getSource()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->initAdData(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->getAdRequestStatus()I

    move-result p1

    if-eqz p1, :cond_20

    if-eq p1, v1, :cond_1c

    .line 14
    invoke-interface {p3, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->fail(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    goto :goto_44

    .line 15
    :cond_1c
    invoke-interface {p3, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->success(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    goto :goto_44

    .line 16
    :cond_20
    invoke-virtual {p0, p3}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->addRequestListener(Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;)V

    goto :goto_44

    .line 26
    :cond_24
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->isNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 27
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->validData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    if-eqz p1, :cond_3e

    .line 28
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->getAdRequestStatus()I

    move-result p1

    if-ne p1, v1, :cond_3a

    .line 29
    invoke-interface {p3, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->success(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    goto :goto_44

    .line 31
    :cond_3a
    invoke-interface {p3, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->fail(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    goto :goto_44

    .line 34
    :cond_3e
    invoke-interface {p3, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->fail(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    goto :goto_44

    .line 37
    :cond_42
    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->listener:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

    :goto_44
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.DcloudHandler.AnonymousClass1 (io.dcloud.feature.gg.dcloud.DcloudHandler$1)
.class Lio/dcloud/feature/gg/dcloud/DcloudHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/DcloudHandler;->onCreateSplash(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/DcloudHandler;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/DcloudHandler;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler$1;->this$0:Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler$1;->this$0:Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->access$002(Lio/dcloud/feature/gg/dcloud/DcloudHandler;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/DcloudHandler$1;->this$0:Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    invoke-static {v0, v1}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->access$102(Lio/dcloud/feature/gg/dcloud/DcloudHandler;Lio/dcloud/feature/gg/dcloud/SplashADView;)Lio/dcloud/feature/gg/dcloud/SplashADView;

    return-void
.end method
