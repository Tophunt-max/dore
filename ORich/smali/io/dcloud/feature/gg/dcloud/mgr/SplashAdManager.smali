###### Class io.dcloud.feature.gg.dcloud.mgr.SplashAdManager (io.dcloud.feature.gg.dcloud.mgr.SplashAdManager)
.class public Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;
    }
.end annotation


# static fields
.field public static final TYPE_BACK2FRONT:I = 0x2

.field public static final TYPE_SPLASH:I = 0x1

.field private static instance:Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;


# instance fields
.field private final splashAds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;->splashAds:Ljava/util/LinkedList;

    return-void
.end method

.method public static getInstance()Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;->instance:Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;

    if-nez v0, :cond_19

    .line 2
    const-class v0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;->instance:Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;

    if-nez v1, :cond_14

    .line 4
    new-instance v1, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;

    invoke-direct {v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;-><init>()V

    sput-object v1, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;->instance:Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;

    .line 5
    monitor-exit v0

    return-object v1

    .line 7
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    .line 8
    :cond_19
    :goto_19
    sget-object v0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;->instance:Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;

    return-object v0
.end method


# virtual methods
.method public pullSplash(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;I)Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lio/dcloud/feature/gg/dcloud/ADBaseHandler;",
            ">;I)",
            "Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-direct {v0, p2, p3, p4, p5}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;I)V

    .line 2
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;->splashAds:Ljava/util/LinkedList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    const-string p2, "1"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 4
    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->orderPull()V

    goto :goto_1a

    .line 6
    :cond_17
    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->disorderPull()V

    :goto_1a
    return-object v0
.end method

.method public showSplash()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;->splashAds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    .line 5
    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->isValid()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 10
    :cond_1c
    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->hasAvailableAds()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11
    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->showSplashAd()V

    goto :goto_6

    :cond_26
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.mgr.SplashAdManager.OnGetBestAdsListener (io.dcloud.feature.gg.dcloud.mgr.SplashAdManager$OnGetBestAdsListener)
.class public interface abstract Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGetBestAdsListener"
.end annotation


# virtual methods
.method public abstract onFail()V
.end method

.method public abstract onSuccess()V
.end method
