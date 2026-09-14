###### Class io.dcloud.js.geolocation.system.a (io.dcloud.js.geolocation.system.a)
.class public Lio/dcloud/js/geolocation/system/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/js/geolocation/system/a$a;
    }
.end annotation


# static fields
.field public static l:I = 0x2

.field public static m:I = 0x0

.field public static n:I = 0x1

.field public static o:I = 0x0

.field public static p:I = 0x1

.field public static q:I = 0x2

.field public static r:I = 0x1388


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lio/dcloud/js/geolocation/system/a$a;

.field c:Lio/dcloud/js/geolocation/system/b;

.field d:Lio/dcloud/js/geolocation/system/c;

.field e:Ljava/lang/String;

.field f:Lio/dcloud/common/DHInterface/IWebview;

.field private g:Landroid/content/Context;

.field h:Landroid/location/LocationManager;

.field i:Ljava/lang/String;

.field j:Lio/dcloud/common/DHInterface/IWebview;

.field k:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 103
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/a;->i:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/a;->j:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lio/dcloud/js/geolocation/system/a;->k:I

    .line 112
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->g:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    .line 114
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    const-string p2, "location"

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->h:Landroid/location/LocationManager;

    .line 116
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->a:Ljava/util/Timer;

    if-nez p1, :cond_26

    .line 117
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->a:Ljava/util/Timer;

    :cond_26
    return-void
.end method

.method private a(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 7
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 8
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 10
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    const/16 p1, 0x8

    aput-object p2, v0, p1

    const-string p1, "{latitude:%f,longitude:%f,altitude:%f,accuracy:%f,heading:%f,velocity:%f,altitudeAccuracy:%d,timestamp:new Date(\'%s\'),coordsType:\'%s\'}"

    .line 11
    invoke-static {p1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(I)V
    .registers 3

    .line 48
    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/dcloud/js/geolocation/system/a;->k:I

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUseCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeoListener"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(II)Z
    .registers 5

    .line 50
    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->k:I

    if-nez v0, :cond_49

    .line 53
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->h:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 54
    new-instance v0, Lio/dcloud/js/geolocation/system/b;

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lio/dcloud/js/geolocation/system/b;-><init>(Landroid/content/Context;Lio/dcloud/js/geolocation/system/a;)V

    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    .line 59
    :cond_1b
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    if-nez v0, :cond_32

    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->h:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 60
    new-instance v0, Lio/dcloud/js/geolocation/system/c;

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lio/dcloud/js/geolocation/system/c;-><init>(Landroid/content/Context;Lio/dcloud/js/geolocation/system/a;)V

    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    .line 62
    :cond_32
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    if-eqz v0, :cond_39

    .line 63
    invoke-virtual {v0, p1}, Lio/dcloud/js/geolocation/system/b;->a(I)V

    .line 65
    :cond_39
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    if-eqz v0, :cond_40

    .line 66
    invoke-virtual {v0, p1}, Lio/dcloud/js/geolocation/system/c;->a(I)V

    .line 69
    :cond_40
    sget p1, Lio/dcloud/js/geolocation/system/a;->m:I

    if-ne p2, p1, :cond_49

    .line 70
    sget p1, Lio/dcloud/js/geolocation/system/a;->r:I

    invoke-direct {p0, p1}, Lio/dcloud/js/geolocation/system/a;->b(I)V

    .line 73
    :cond_49
    sget p1, Lio/dcloud/js/geolocation/system/a;->n:I

    if-ne p2, p1, :cond_58

    .line 74
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->a:Ljava/util/Timer;

    if-eqz p1, :cond_58

    .line 75
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->b:Lio/dcloud/js/geolocation/system/a$a;

    if-eqz p1, :cond_58

    .line 76
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_58
    const/4 p1, 0x1

    .line 80
    invoke-direct {p0, p1}, Lio/dcloud/js/geolocation/system/a;->a(I)V

    .line 81
    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    if-nez p2, :cond_6e

    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    if-nez p2, :cond_6e

    .line 82
    sget p1, Lio/dcloud/js/geolocation/system/a;->l:I

    sget p2, Lio/dcloud/js/geolocation/system/a;->q:I

    const-string v0, "No location providers available."

    invoke-virtual {p0, p1, v0, p2}, Lio/dcloud/js/geolocation/system/a;->a(ILjava/lang/String;I)V

    const/4 p1, 0x0

    :cond_6e
    return p1
.end method

.method private b(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->b:Lio/dcloud/js/geolocation/system/a$a;

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 5
    :cond_b
    new-instance v0, Lio/dcloud/js/geolocation/system/a$a;

    invoke-direct {v0, p0}, Lio/dcloud/js/geolocation/system/a$a;-><init>(Lio/dcloud/js/geolocation/system/a;)V

    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->b:Lio/dcloud/js/geolocation/system/a$a;

    .line 6
    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->a:Ljava/util/Timer;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_18
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    sget v0, Lio/dcloud/js/geolocation/system/a;->q:I

    invoke-virtual {p0, v0}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    return-void
.end method

.method a(ILjava/lang/String;I)V
    .registers 7

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failType=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "geoListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, p3}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    .line 27
    iget-object p3, p0, Lio/dcloud/js/geolocation/system/a;->i:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p3, :cond_31

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->j:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_31

    .line 29
    iget-object v2, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    if-nez v2, :cond_31

    iget-object v2, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    if-nez v2, :cond_31

    .line 32
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v1, p3, v2, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    :cond_31
    iget-object p3, p0, Lio/dcloud/js/geolocation/system/a;->f:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p3, :cond_48

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 41
    iget-object v2, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    if-nez v2, :cond_48

    iget-object v2, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    if-nez v2, :cond_48

    .line 43
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p3, v1, p1, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_48
    return-void
.end method

.method a(Landroid/location/Location;I)V
    .registers 6

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "successType=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "geoListener"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "wgs84"

    .line 13
    invoke-direct {p0, p1, p2}, Lio/dcloud/js/geolocation/system/a;->a(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->i:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p2, :cond_33

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->j:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_33

    const/4 v2, 0x0

    .line 18
    invoke-static {v1, p2, p1, v0, v2}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 19
    sget p2, Lio/dcloud/js/geolocation/system/a;->q:I

    invoke-virtual {p0, p2}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    const/4 p2, 0x0

    .line 20
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/a;->i:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/a;->j:Lio/dcloud/common/DHInterface/IWebview;

    .line 23
    :cond_33
    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->f:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_3e

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 24
    invoke-static {p2, v1, p1, v0, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_3e
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;)V
    .registers 4

    .line 45
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->j:Lio/dcloud/common/DHInterface/IWebview;

    .line 46
    iput-object p3, p0, Lio/dcloud/js/geolocation/system/a;->i:Ljava/lang/String;

    .line 47
    sget p1, Lio/dcloud/js/geolocation/system/a;->m:I

    invoke-direct {p0, p2, p1}, Lio/dcloud/js/geolocation/system/a;->a(II)Z

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;I)Z
    .registers 5

    .line 83
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->f:Lio/dcloud/common/DHInterface/IWebview;

    .line 84
    iput-object p3, p0, Lio/dcloud/js/geolocation/system/a;->e:Ljava/lang/String;

    .line 85
    sput p4, Lio/dcloud/js/geolocation/system/a;->r:I

    .line 86
    sget p1, Lio/dcloud/js/geolocation/system/a;->n:I

    invoke-direct {p0, p2, p1}, Lio/dcloud/js/geolocation/system/a;->a(II)Z

    move-result p1

    return p1
.end method

.method c(I)V
    .registers 4

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/js/geolocation/system/a;->a(I)V

    .line 2
    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->k:I

    if-gtz v0, :cond_3a

    .line 3
    sget v0, Lio/dcloud/js/geolocation/system/a;->o:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_17

    .line 4
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    if-eqz p1, :cond_37

    .line 5
    invoke-virtual {p1}, Lio/dcloud/js/geolocation/system/b;->b()V

    .line 6
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    goto :goto_37

    .line 8
    :cond_17
    sget v0, Lio/dcloud/js/geolocation/system/a;->p:I

    if-ne p1, v0, :cond_25

    .line 9
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    if-eqz p1, :cond_37

    .line 10
    invoke-virtual {p1}, Lio/dcloud/js/geolocation/system/c;->a()V

    .line 11
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    goto :goto_37

    .line 14
    :cond_25
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    if-eqz p1, :cond_2e

    .line 15
    invoke-virtual {p1}, Lio/dcloud/js/geolocation/system/b;->b()V

    .line 16
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    .line 18
    :cond_2e
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    if-eqz p1, :cond_37

    .line 19
    invoke-virtual {p1}, Lio/dcloud/js/geolocation/system/c;->a()V

    .line 20
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    :cond_37
    :goto_37
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lio/dcloud/js/geolocation/system/a;->k:I

    .line 26
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUseCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeoListener"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.js.geolocation.system.a.C0081a (io.dcloud.js.geolocation.system.a$a)
.class Lio/dcloud/js/geolocation/system/a$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/js/geolocation/system/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/geolocation/system/a;


# direct methods
.method constructor <init>(Lio/dcloud/js/geolocation/system/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a$a;->a:Lio/dcloud/js/geolocation/system/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a$a;->a:Lio/dcloud/js/geolocation/system/a;

    iget-object v1, v0, Lio/dcloud/js/geolocation/system/a;->c:Lio/dcloud/js/geolocation/system/b;

    if-nez v1, :cond_a

    iget-object v1, v0, Lio/dcloud/js/geolocation/system/a;->d:Lio/dcloud/js/geolocation/system/c;

    if-eqz v1, :cond_13

    .line 4
    :cond_a
    sget v1, Lio/dcloud/js/geolocation/system/a;->l:I

    sget v2, Lio/dcloud/js/geolocation/system/a;->q:I

    const-string v3, "No location providers available."

    invoke-virtual {v0, v1, v3, v2}, Lio/dcloud/js/geolocation/system/a;->a(ILjava/lang/String;I)V

    :cond_13
    return-void
.end method
