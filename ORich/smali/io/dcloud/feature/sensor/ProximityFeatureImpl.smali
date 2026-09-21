###### Class io.dcloud.feature.sensor.ProximityFeatureImpl (io.dcloud.feature.sensor.ProximityFeatureImpl)
.class public Lio/dcloud/feature/sensor/ProximityFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# instance fields
.field a:Lio/dcloud/feature/sensor/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/sensor/ProximityFeatureImpl;->a:Lio/dcloud/feature/sensor/f;

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/sensor/ProximityFeatureImpl;->a:Lio/dcloud/feature/sensor/f;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/sensor/f;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance p1, Lio/dcloud/feature/sensor/f;

    invoke-direct {p1}, Lio/dcloud/feature/sensor/f;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/sensor/ProximityFeatureImpl;->a:Lio/dcloud/feature/sensor/f;

    return-void
.end method
