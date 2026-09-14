###### Class io.dcloud.feature.gg.dcloud.mgr.SplashAd (io.dcloud.feature.gg.dcloud.mgr.SplashAd)
.class public Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;
    }
.end annotation


# static fields
.field private static final PULL_FAIL:I = 0x3

.field private static final PULL_ING:I = 0x1

.field private static final PULL_SUCCESS:I = 0x2


# instance fields
.field private adHandlers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/dcloud/feature/gg/dcloud/ADBaseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private appid:Ljava/lang/String;

.field private curIndex:I

.field private dCloudId:Ljava/lang/String;

.field private notifyHandler:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

.field private showActivity:Landroid/app/Activity;

.field private splashHandler:Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

.field private splashView:Landroid/view/View;

.field private sr:Ljava/lang/String;

.field private successRequestTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lio/dcloud/feature/gg/dcloud/ADBaseHandler;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->curIndex:I

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->successRequestTimestamp:J

    .line 19
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    .line 22
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    if-eqz p2, :cond_19

    .line 24
    invoke-virtual {p2, p4}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->setSource(I)V

    .line 25
    iget-object p3, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 28
    :cond_30
    new-instance p1, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;-><init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;)V

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->notifyHandler:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

    const-string p1, "_adpid_"

    const-string p2, "UNIAD_SPLASH_ADPID"

    .line 29
    invoke-static {p1, p2}, Lio/dcloud/feature/gg/AdSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->dCloudId:Ljava/lang/String;

    const-string p1, "_sr_"

    const-string p2, ""

    .line 30
    invoke-static {p1, p2}, Lio/dcloud/feature/gg/AdSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->sr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->curIndex:I

    return p0
.end method

.method static synthetic access$102(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;I)I
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->curIndex:I

    return p1
.end method

.method static synthetic access$200(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/util/LinkedList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$300(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->commitData(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$402(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->successRequestTimestamp:J

    return-wide p1
.end method

.method static synthetic access$500(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->notifyHandler:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

    return-object p0
.end method

.method static synthetic access$600(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->splashView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Landroid/app/Activity;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->dCloudId:Ljava/lang/String;

    return-object p0
.end method

.method private commitData(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->sr:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    if-eqz p2, :cond_74

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_74

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->dCloudId:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "_adpid_"

    const-string v2, "UNIAD_SPLASH_ADPID"

    .line 4
    invoke-static {v1, v2}, Lio/dcloud/feature/gg/AdSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->dCloudId:Ljava/lang/String;

    .line 6
    :cond_29
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 7
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 9
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    .line 10
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    :cond_42
    const-string v1, "_type_"

    const-string v2, ""

    .line 13
    invoke-static {v1, v2}, Lio/dcloud/feature/gg/AdSplashUtil;->getSplashAdpId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string v1, "splash"

    :cond_52
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->dCloudId:Ljava/lang/String;

    const-string v2, "adpid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ord"

    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rsp"

    .line 17
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance p2, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$4;

    invoke-direct {p2, p0, v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$4;-><init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Ljava/util/HashMap;)V

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :cond_74
    return-void
.end method

.method private getB2CSplashAd()Lio/dcloud/feature/gg/dcloud/ADBaseHandler;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_30

    .line 3
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    if-nez v2, :cond_21

    return-object v1

    .line 6
    :cond_21
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 8
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isShow()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_12

    :cond_2f
    return-object v2

    :cond_30
    :goto_30
    return-object v1
.end method

.method private notifyListener(Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->notifyHandler:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public disorderPull()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 2
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    new-instance v4, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;

    invoke-direct {v4, p0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;-><init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)V

    invoke-virtual {v1, v2, v3, v4}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->pullAds(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;)V

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_74

    .line 4
    :cond_10
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 6
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isHasContext()Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_16

    .line 9
    :cond_29
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_3f

    .line 10
    iget-object v2, v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_TAD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\u5173\u95ed\u65f6\u672a\u8bf7\u6c42\u5b8c\u6210(-1)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 11
    :cond_3f
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_68

    .line 12
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    const-string v5, "9999"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_16

    .line 14
    :cond_53
    iget-object v3, v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_TAD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 15
    :cond_68
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 19
    :cond_6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_74
    :goto_74
    const-string v0, ""

    return-object v0
.end method

.method public getSplash()Lio/dcloud/feature/gg/dcloud/ADBaseHandler;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->splashHandler:Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    return-object v0
.end method

.method public hasAvailableAds()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_30

    .line 4
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    if-nez v2, :cond_21

    return v1

    .line 7
    :cond_21
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 8
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isShow()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_12

    :cond_2f
    return v4

    :cond_30
    :goto_30
    return v1
.end method

.method public isTimeout()Z
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->successRequestTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1a8ce0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isValid()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_37

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_37

    .line 3
    :cond_12
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->isTimeout()Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 7
    :cond_19
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 8
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isShow()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_34

    :cond_33
    const/4 v1, 0x1

    :goto_34
    xor-int/lit8 v0, v1, 0x1

    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public onCreateSplash(Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;)Landroid/view/View;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6a

    :cond_c
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_e
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 6
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 7
    instance-of v4, v3, Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    if-eqz v4, :cond_2b

    .line 8
    check-cast v3, Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lio/dcloud/feature/gg/dcloud/DcloudHandler;->notifyCreateSplash(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 11
    :cond_2e
    :goto_2e
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_66

    .line 12
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    if-nez v2, :cond_41

    goto :goto_48

    .line 15
    :cond_41
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4b

    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 16
    :cond_4b
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_62

    .line 17
    iput-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->splashHandler:Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 18
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->setShowed()V

    .line 19
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->splashHandler:Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->onCreateSplash(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 21
    :cond_62
    invoke-direct {p0, p2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->notifyListener(Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;)V

    return-object v1

    .line 26
    :cond_66
    invoke-interface {p2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;->onFail()V

    return-object v1

    .line 27
    :cond_6a
    :goto_6a
    invoke-interface {p2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;->onFail()V

    return-object v1
.end method

.method public onSplashClose(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->splashHandler:Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->onSplashClose(Landroid/view/View;)Z

    :cond_7
    return-void
.end method

.method public orderPull()V
    .registers 7

    .line 1
    iget v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->curIndex:I

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_46

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_11
    :try_start_11
    iget v3, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->curIndex:I

    if-ge v2, v3, :cond_38

    .line 5
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 6
    instance-of v4, v3, Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    if-eqz v4, :cond_22

    goto :goto_35

    .line 8
    :cond_22
    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-9999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 9
    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getResult()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_38

    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :catch_38
    :cond_38
    const-string v2, "1"

    .line 12
    invoke-direct {p0, v2, v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->commitData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 13
    iput v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->curIndex:I

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->notifyHandler:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 17
    :cond_46
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->adHandlers:Ljava/util/LinkedList;

    iget v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->curIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    new-instance v3, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;

    invoke-direct {v3, p0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;-><init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->pullAds(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;)V

    return-void
.end method

.method public showSplashAd()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->getB2CSplashAd()Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 7
    :cond_d
    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isShow()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 8
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->getB2CSplashAd()Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    move-result-object v1

    :cond_17
    if-nez v1, :cond_1a

    return-void

    :cond_1a
    if-eqz v0, :cond_81

    .line 13
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_28

    return-void

    .line 15
    :cond_28
    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->setShowed()V

    .line 16
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->appid:Ljava/lang/String;

    new-instance v5, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;

    invoke-direct {v5, p0, v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;-><init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Lio/dcloud/common/DHInterface/IActivityHandler;)V

    invoke-virtual {v1, v2, v4, v5}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->onCreateSplash(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->splashView:Landroid/view/View;

    .line 33
    instance-of v2, v1, Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    if-nez v2, :cond_48

    iget-object v2, v1, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_TAD:Ljava/lang/String;

    const-string v4, "csj"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 36
    :cond_48
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->splashView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->onSplashClose(Landroid/view/View;)Z

    .line 37
    :cond_4d
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->splashView:Landroid/view/View;

    if-eqz v1, :cond_81

    .line 39
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->splashView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 41
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-nez v0, :cond_81

    .line 42
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 44
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 45
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showActivity:Landroid/app/Activity;

    invoke-static {v2}, Lio/dcloud/feature/ui/navigator/QueryNotchTool;->hasNotchInScreen(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_7e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_7e

    .line 46
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 47
    :cond_7e
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_81
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.mgr.SplashAd.AnonymousClass1 (io.dcloud.feature.gg.dcloud.mgr.SplashAd$1)
.class Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->orderPull()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$100(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$102(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;I)I

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->orderPull()V

    return-void
.end method

.method public success(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V
    .registers 7

    .line 1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_7
    :try_start_7
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {v2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$100(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)I

    move-result v2

    if-gt v1, v2, :cond_36

    .line 4
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {v2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$200(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 5
    instance-of v3, v2, Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    if-eqz v3, :cond_20

    goto :goto_33

    .line 7
    :cond_20
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-9999"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 8
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getResult()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_36

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 11
    :catch_36
    :cond_36
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    const-string v2, "1"

    invoke-static {v1, v2, p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$300(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 12
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1, v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$102(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;I)I

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$402(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;J)J

    .line 14
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$500(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.mgr.SplashAd.AnonymousClass2 (io.dcloud.feature.gg.dcloud.mgr.SplashAd$2)
.class Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->disorderPull()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V
    .registers 8

    .line 1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {v2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$200(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 4
    instance-of v4, v3, Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    if-eqz v4, :cond_22

    goto :goto_11

    .line 6
    :cond_22
    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v4

    if-nez v4, :cond_2a

    const/4 v2, 0x1

    goto :goto_3f

    .line 10
    :cond_2a
    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-9999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 11
    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getResult()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    goto :goto_11

    :catch_3e
    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    if-nez v2, :cond_48

    .line 16
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    const-string v3, "0"

    invoke-static {v2, v3, p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$300(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 19
    :cond_48
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$200(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 20
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v3

    if-ne v3, v0, :cond_82

    .line 23
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isBest()Z

    move-result p1

    if-nez p1, :cond_80

    .line 24
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->setBest()V

    .line 25
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$402(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;J)J

    .line 26
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$500(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_80
    const/4 v0, 0x0

    goto :goto_8a

    .line 29
    :cond_82
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_80

    goto :goto_52

    :cond_8a
    :goto_8a
    if-eqz v0, :cond_96

    .line 37
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$500(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_96
    return-void
.end method

.method public success(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V
    .registers 7

    .line 1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x1

    .line 3
    :try_start_6
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$200(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 4
    instance-of v3, v2, Lio/dcloud/feature/gg/dcloud/DcloudHandler;

    if-eqz v3, :cond_21

    goto :goto_10

    .line 6
    :cond_21
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v3

    if-nez v3, :cond_29

    const/4 v1, 0x1

    goto :goto_3e

    .line 10
    :cond_29
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-9999"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 11
    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getResult()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_3d

    goto :goto_10

    :catch_3d
    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-nez v1, :cond_47

    .line 16
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    const-string v2, "0"

    invoke-static {v1, v2, p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$300(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 18
    :cond_47
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$200(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    .line 19
    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v2

    if-ne v2, v0, :cond_80

    .line 21
    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isBest()Z

    move-result p1

    if-nez p1, :cond_88

    .line 22
    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->setBest()V

    .line 23
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$402(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;J)J

    .line 24
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$2;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$500(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_88

    .line 27
    :cond_80
    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->getAdRequestStatus()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_88

    goto :goto_51

    :cond_88
    :goto_88
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.mgr.SplashAd.AnonymousClass3 (io.dcloud.feature.gg.dcloud.mgr.SplashAd$3)
.class Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showSplashAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

.field final synthetic val$iHandler:Lio/dcloud/common/DHInterface/IActivityHandler;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Lio/dcloud/common/DHInterface/IActivityHandler;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;->val$iHandler:Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$600(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;->val$iHandler:Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$600(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4
    :cond_17
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-nez p1, :cond_47

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$700(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 7
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$3;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$700(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/feature/ui/navigator/QueryNotchTool;->hasNotchInScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_44

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_44

    const/4 v0, 0x0

    .line 9
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 10
    :cond_44
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_47
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.gg.dcloud.mgr.SplashAd.AnonymousClass4 (io.dcloud.feature.gg.dcloud.mgr.SplashAd$4)
.class Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->commitData(Ljava/lang/String;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

.field final synthetic val$extData:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Ljava/util/HashMap;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$4;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$4;->val$extData:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$4;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$700(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$4;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$800(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    const-string v3, "adid"

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$4;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->access$900(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$4;->val$extData:Ljava/util/HashMap;

    const/16 v4, 0x3c

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/TestUtil$PointTime;->commitRatio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.mgr.SplashAd.WaitSplashSuccessHandler (io.dcloud.feature.gg.dcloud.mgr.SplashAd$WaitSplashSuccessHandler)
.class Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitSplashSuccessHandler"
.end annotation


# instance fields
.field listener:Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;

.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;


# direct methods
.method private constructor <init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;->this$0:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;-><init>(Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;->listener:Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;

    goto :goto_21

    :cond_c
    const/4 p1, 0x2

    if-ne v0, p1, :cond_17

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;->listener:Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;

    if-eqz p1, :cond_21

    .line 5
    invoke-interface {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;->onSuccess()V

    goto :goto_21

    :cond_17
    const/4 p1, 0x3

    if-ne v0, p1, :cond_21

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd$WaitSplashSuccessHandler;->listener:Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;

    if-eqz p1, :cond_21

    .line 8
    invoke-interface {p1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;->onFail()V

    :cond_21
    :goto_21
    return-void
.end method
