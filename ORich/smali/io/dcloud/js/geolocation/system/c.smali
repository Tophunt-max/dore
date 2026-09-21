###### Class io.dcloud.js.geolocation.system.c (io.dcloud.js.geolocation.system.c)
.class public Lio/dcloud/js/geolocation/system/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/location/LocationManager;

.field private c:Lio/dcloud/js/geolocation/system/a;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/js/geolocation/system/a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->d:Z

    .line 4
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->e:Z

    .line 17
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/c;->c:Lio/dcloud/js/geolocation/system/a;

    .line 18
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/c;->a:Landroid/content/Context;

    const-string p2, "location"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lio/dcloud/js/geolocation/system/c;->b:Landroid/location/LocationManager;

    .line 20
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 4
    iget-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->e:Z

    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/c;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_9
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->e:Z

    return-void
.end method

.method public a(I)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->e:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->e:Z

    .line 3
    iget-object v1, p0, Lio/dcloud/js/geolocation/system/c;->b:Landroid/location/LocationManager;

    int-to-long v3, p1

    const/4 v5, 0x0

    const-string v2, "network"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_11
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    const-string v0, "NetworkListener: The location has been updated!"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->d:Z

    .line 8
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/c;->c:Lio/dcloud/js/geolocation/system/a;

    sget v1, Lio/dcloud/js/geolocation/system/a;->p:I

    invoke-virtual {v0, p1, v1}, Lio/dcloud/js/geolocation/system/a;->a(Landroid/location/Location;I)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->e:Z

    .line 2
    iget-boolean v0, p0, Lio/dcloud/js/geolocation/system/c;->d:Z

    const-string v1, " is disabled"

    if-nez v0, :cond_32

    iget-object v0, p0, Lio/dcloud/js/geolocation/system/c;->c:Lio/dcloud/js/geolocation/system/a;

    iget-object v0, v0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lio/dcloud/js/geolocation/system/b;->a()Z

    move-result v0

    if-nez v0, :cond_32

    .line 3
    :cond_15
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/c;->c:Lio/dcloud/js/geolocation/system/a;

    sget v2, Lio/dcloud/js/geolocation/system/a;->l:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/js/geolocation/system/a;->p:I

    invoke-virtual {v0, v2, v3, v4}, Lio/dcloud/js/geolocation/system/a;->a(ILjava/lang/String;I)V

    .line 5
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: The provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkListener: The provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is enabled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetworkListener: The status of the provider "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has changed"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    const-string p3, "NetworkListener: "

    if-nez p2, :cond_35

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is OUT OF SERVICE"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_67

    :cond_35
    const/4 v0, 0x1

    if-ne p2, v0, :cond_50

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is TEMPORARILY_UNAVAILABLE"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_67

    .line 9
    :cond_50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is Available"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    :goto_67
    return-void
.end method
