###### Class io.dcloud.feature.gg.dcloud.CommonSplashHandler (io.dcloud.feature.gg.dcloud.CommonSplashHandler)
.class public Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;
.super Lio/dcloud/feature/gg/dcloud/ADBaseHandler;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/f/a/b/a$c;


# instance fields
.field ad:Lio/dcloud/f/a/c/a;

.field adpid:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field config:Ljava/lang/String;

.field private dcloudAdpid:Ljava/lang/String;

.field private dcloudAppid:Ljava/lang/String;

.field private ec:Ljava/lang/String;

.field private er:Ljava/lang/String;

.field pullAdTime:J

.field splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

.field private tid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->pullAdTime:J

    .line 14
    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_TAD:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->config:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->er:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->ec:Ljava/lang/String;

    .line 19
    :try_start_f
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "did"

    .line 20
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->dcloudAppid:Ljava/lang/String;

    const-string p1, "adid"

    .line 21
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->dcloudAdpid:Ljava/lang/String;

    const-string p1, "app"

    .line 22
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "app_id"

    .line 23
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->appId:Ljava/lang/String;

    const-string p1, "tid"

    .line 24
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->tid:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_TAD:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2}, Lio/dcloud/feature/gg/AdSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->adpid:Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_44} :catch_44

    :catch_44
    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->dcloudAppid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->tid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->appId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->dcloudAdpid:Ljava/lang/String;

    return-object p0
.end method

.method private initAdData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    return-void
.end method


# virtual methods
.method public commitData(I)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;-><init>(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;I)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getResult()Lorg/json/JSONObject;
    .registers 4

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mediaId"

    .line 3
    :try_start_6
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_19

    const-string v1, "slotId"

    .line 4
    :try_start_d
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->adpid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_12} :catch_19

    const-string v1, "tid"

    .line 5
    :try_start_14
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->tid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_19

    :catch_19
    return-object v0
.end method

.method public onAdClicked()V
    .registers 2

    const/16 v0, 0x29

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->commitData(I)V

    return-void
.end method

.method public onAdShow()V
    .registers 2

    const/16 v0, 0x28

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->commitData(I)V

    return-void
.end method

.method public onAdShowEnd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->onFinishShow()V

    :cond_7
    return-void
.end method

.method public onAdShowError(ILjava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->onFinishShow()V

    :cond_7
    return-void
.end method

.method public onBack()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public onCreateSplash(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;
    .registers 4

    .line 1
    new-instance p2, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    const-string p1, "_fs_"

    const-string p2, "UNIAD_FULL_SPLASH"

    .line 2
    invoke-static {p1, p2}, Lio/dcloud/feature/gg/AdSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    iget-object p1, p1, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->bottomIcon:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_22
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    invoke-virtual {p1, p3}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->setCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    iget-wide p2, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->pullAdTime:J

    invoke-virtual {p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->setPullTime(J)V

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->ad:Lio/dcloud/f/a/c/a;

    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->getImgContainer()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/f/a/b/a;->a(Landroid/view/ViewGroup;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    return-object p1
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->endLoadAds()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->execFail(ILjava/lang/String;)V

    return-void
.end method

.method public onSkippedAd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->splashView:Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->onFinishShow()V

    :cond_7
    return-void
.end method

.method public onSplashAdLoad()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->endLoadAds()V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->execSuccess()V

    return-void
.end method

.method public onSplashClose(Landroid/view/View;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;

    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->onWillCloseSplash()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public pullAds(Landroid/content/Context;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->mContext:Landroid/content/Context;

    .line 2
    invoke-super {p0, p1}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->pullAds(Landroid/content/Context;)V

    .line 3
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->config:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->adpid:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->er:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->ec:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/f/a/a;->a(Lio/dcloud/f/a/b/a$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/f/a/c/a;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->ad:Lio/dcloud/f/a/c/a;

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->startLoadAds()V

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->ad:Lio/dcloud/f/a/c/a;

    invoke-virtual {p1}, Lio/dcloud/f/a/c/a;->c()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->pullAdTime:J

    return-void
.end method

.method public pullAds(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;)V
    .registers 4

    .line 7
    invoke-virtual {p0, p1}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->pullAds(Landroid/content/Context;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->initAdData(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result p1

    if-eqz p1, :cond_17

    const/4 p2, 0x1

    if-eq p1, p2, :cond_13

    .line 17
    invoke-interface {p3, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->fail(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    goto :goto_1a

    .line 18
    :cond_13
    invoke-interface {p3, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->success(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    goto :goto_1a

    .line 19
    :cond_17
    invoke-virtual {p0, p3}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->addRequestListener(Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;)V

    :goto_1a
    return-void
.end method

.method public setAdpid(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->adpid:Ljava/lang/String;

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.CommonSplashHandler.AnonymousClass1 (io.dcloud.feature.gg.dcloud.CommonSplashHandler$1)
.class Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->commitData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;->this$0:Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;

    iput p2, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const-string v0, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    const-string v1, "adid"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;->this$0:Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;

    iget-object v2, v0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->access$000(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;->this$0:Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->access$100(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;->val$type:I

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;->this$0:Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->access$200(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler$1;->this$0:Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;

    iget-object v8, v0, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->adpid:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;->access$300(Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
