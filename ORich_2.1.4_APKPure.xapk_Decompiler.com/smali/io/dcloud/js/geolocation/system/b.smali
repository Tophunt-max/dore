###### Class io.dcloud.js.geolocation.system.b (io.dcloud.js.geolocation.system.b)
.class public Lio/dcloud/js/geolocation/system/b;
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

.field f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/js/geolocation/system/a;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/b;->d:Z

    .line 10
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/b;->e:Z

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lio/dcloud/js/geolocation/system/b;->f:J

    .line 42
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/b;->c:Lio/dcloud/js/geolocation/system/a;

    .line 43
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/b;->a:Landroid/content/Context;

    const-string p2, "location"

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lio/dcloud/js/geolocation/system/b;->b:Landroid/location/LocationManager;

    .line 45
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/b;->e:Z

    return-void
.end method

.method private a(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lio/dcloud/js/geolocation/system/b;->d:Z

    if-eqz p1, :cond_a

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/js/geolocation/system/b;->f:J

    :cond_a
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 9

    .line 9
    iget-boolean v0, p0, Lio/dcloud/js/geolocation/system/b;->e:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/b;->e:Z

    .line 11
    iget-object v1, p0, Lio/dcloud/js/geolocation/system/b;->b:Landroid/location/LocationManager;

    int-to-long v3, p1

    const/4 v5, 0x0

    const-string v2, "gps"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_11
    return-void
.end method

.method public a()Z
    .registers 7

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/js/geolocation/system/b;->f:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x2710

    cmp-long v5, v0, v3

    if-gez v5, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_15

    .line 6
    iput-boolean v2, p0, Lio/dcloud/js/geolocation/system/b;->d:Z

    .line 8
    :cond_15
    iget-boolean v0, p0, Lio/dcloud/js/geolocation/system/b;->d:Z

    return v0
.end method

.method public b()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/js/geolocation/system/b;->e:Z

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_9
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/system/b;->e:Z

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    const-string v0, "GpsListener: The location has been updated!"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lio/dcloud/js/geolocation/system/b;->a(Z)V

    .line 4
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/b;->c:Lio/dcloud/js/geolocation/system/a;

    sget v1, Lio/dcloud/js/geolocation/system/a;->o:I

    invoke-virtual {v0, p1, v1}, Lio/dcloud/js/geolocation/system/a;->a(Landroid/location/Location;I)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/js/geolocation/system/b;->e:Z

    .line 3
    iget-boolean p1, p0, Lio/dcloud/js/geolocation/system/b;->d:Z

    if-nez p1, :cond_12

    .line 4
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/b;->c:Lio/dcloud/js/geolocation/system/a;

    sget v0, Lio/dcloud/js/geolocation/system/a;->l:I

    sget v1, Lio/dcloud/js/geolocation/system/a;->o:I

    const-string v2, "GPS provider disabled."

    invoke-virtual {p1, v0, v2, v1}, Lio/dcloud/js/geolocation/system/a;->a(ILjava/lang/String;I)V

    :cond_12
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GpsListener: The provider "

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

    const-string v0, "GpsListener: The status of the provider "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has changed"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    const-string p3, "GpsListener: "

    if-nez p2, :cond_40

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

    .line 4
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/b;->c:Lio/dcloud/js/geolocation/system/a;

    sget p2, Lio/dcloud/js/geolocation/system/a;->l:I

    sget p3, Lio/dcloud/js/geolocation/system/a;->o:I

    const-string v0, "GPS out of service."

    invoke-virtual {p1, p2, v0, p3}, Lio/dcloud/js/geolocation/system/a;->a(ILjava/lang/String;I)V

    goto :goto_72

    :cond_40
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5b

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is TEMPORARILY_UNAVAILABLE"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_72

    .line 10
    :cond_5b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is Available"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    :goto_72
    return-void
.end method
