###### Class io.dcloud.feature.gg.AdFeatureImplMgr (io.dcloud.feature.gg.AdFeatureImplMgr)
.class public Lio/dcloud/feature/gg/AdFeatureImplMgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;
.implements Lio/dcloud/common/DHInterface/IWaiter;


# static fields
.field static final mSingleInstance:Lio/dcloud/feature/gg/AdFeatureImplMgr;


# instance fields
.field mAdType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/feature/gg/AdFeatureImplMgr;

    invoke-direct {v0}, Lio/dcloud/feature/gg/AdFeatureImplMgr;-><init>()V

    sput-object v0, Lio/dcloud/feature/gg/AdFeatureImplMgr;->mSingleInstance:Lio/dcloud/feature/gg/AdFeatureImplMgr;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/dcloud/feature/gg/AdFeatureImplMgr;->mAdType:Ljava/lang/String;

    return-void
.end method

.method public static self()Lio/dcloud/common/DHInterface/IWaiter;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/AdFeatureImplMgr;->mSingleInstance:Lio/dcloud/feature/gg/AdFeatureImplMgr;

    return-object v0
.end method


# virtual methods
.method public clearAdType()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/dcloud/feature/gg/AdFeatureImplMgr;->mAdType:Ljava/lang/String;

    return-void
.end method

.method public doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/AdFeatureImplMgr;->mAdType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-static {}, Lio/dcloud/feature/gg/AdSplashUtil;->getPlashType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gg/AdFeatureImplMgr;->mAdType:Ljava/lang/String;

    .line 6
    :cond_e
    invoke-static {p1, p2}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "onWillCloseSplash"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "onBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 11
    :cond_22
    invoke-virtual {p0}, Lio/dcloud/feature/gg/AdFeatureImplMgr;->clearAdType()V

    :cond_25
    return-object p2
.end method
