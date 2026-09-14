###### Class io.dcloud.js.geolocation.a (io.dcloud.js.geolocation.a)
.class public Lio/dcloud/js/geolocation/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lio/dcloud/common/DHInterface/AbsMgr;

.field b:Lio/dcloud/js/geolocation/GeoManagerBase;

.field c:Lio/dcloud/js/geolocation/GeoManagerBase;

.field d:Lio/dcloud/js/geolocation/GeoManagerBase;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/js/geolocation/a;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 3
    iput-object v0, p0, Lio/dcloud/js/geolocation/a;->b:Lio/dcloud/js/geolocation/GeoManagerBase;

    .line 4
    iput-object v0, p0, Lio/dcloud/js/geolocation/a;->c:Lio/dcloud/js/geolocation/GeoManagerBase;

    .line 5
    iput-object v0, p0, Lio/dcloud/js/geolocation/a;->d:Lio/dcloud/js/geolocation/GeoManagerBase;

    .line 8
    iput-object p1, p0, Lio/dcloud/js/geolocation/a;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

.method private a(Ljava/lang/String;)Lio/dcloud/js/geolocation/GeoManagerBase;
    .registers 6

    const-string v0, "system"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "io.dcloud.js.geolocation.amap.AMapGeoManager"

    const-string v2, "io.dcloud.js.geolocation.baidu.BaiduGeoManager"

    const-string v3, "baidu"

    if-nez v0, :cond_33

    const-string v0, "sytem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 20
    iget-object p1, p0, Lio/dcloud/js/geolocation/a;->c:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-nez p1, :cond_24

    invoke-direct {p0, v1}, Lio/dcloud/js/geolocation/a;->b(Ljava/lang/String;)Lio/dcloud/js/geolocation/GeoManagerBase;

    move-result-object p1

    :cond_24
    iput-object p1, p0, Lio/dcloud/js/geolocation/a;->c:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-nez p1, :cond_51

    .line 22
    iget-object p1, p0, Lio/dcloud/js/geolocation/a;->b:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-nez p1, :cond_30

    invoke-direct {p0, v2}, Lio/dcloud/js/geolocation/a;->b(Ljava/lang/String;)Lio/dcloud/js/geolocation/GeoManagerBase;

    move-result-object p1

    :cond_30
    iput-object p1, p0, Lio/dcloud/js/geolocation/a;->b:Lio/dcloud/js/geolocation/GeoManagerBase;

    goto :goto_51

    .line 24
    :cond_33
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 25
    iget-object p1, p0, Lio/dcloud/js/geolocation/a;->b:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-nez p1, :cond_41

    invoke-direct {p0, v2}, Lio/dcloud/js/geolocation/a;->b(Ljava/lang/String;)Lio/dcloud/js/geolocation/GeoManagerBase;

    move-result-object p1

    :cond_41
    iput-object p1, p0, Lio/dcloud/js/geolocation/a;->b:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-nez p1, :cond_51

    .line 27
    iget-object p1, p0, Lio/dcloud/js/geolocation/a;->c:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-nez p1, :cond_4d

    invoke-direct {p0, v1}, Lio/dcloud/js/geolocation/a;->b(Ljava/lang/String;)Lio/dcloud/js/geolocation/GeoManagerBase;

    move-result-object p1

    :cond_4d
    iput-object p1, p0, Lio/dcloud/js/geolocation/a;->c:Lio/dcloud/js/geolocation/GeoManagerBase;

    goto :goto_51

    :cond_50
    const/4 p1, 0x0

    :cond_51
    :goto_51
    if-nez p1, :cond_5f

    .line 31
    iget-object p1, p0, Lio/dcloud/js/geolocation/a;->d:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-nez p1, :cond_5d

    const-string p1, "io.dcloud.js.geolocation.system.LocalGeoManager"

    invoke-direct {p0, p1}, Lio/dcloud/js/geolocation/a;->b(Ljava/lang/String;)Lio/dcloud/js/geolocation/GeoManagerBase;

    move-result-object p1

    :cond_5d
    iput-object p1, p0, Lio/dcloud/js/geolocation/a;->d:Lio/dcloud/js/geolocation/GeoManagerBase;

    :cond_5f
    return-object p1
.end method

.method private b(Ljava/lang/String;)Lio/dcloud/js/geolocation/GeoManagerBase;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "io.dcloud.js.geolocation.amap.AMapGeoManager"

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_45

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    const-string v1, "getInstance"

    :try_start_d
    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lio/dcloud/js/geolocation/a;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {v6}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p1, v1, v0, v4, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/js/geolocation/GeoManagerBase;

    if-eqz v1, :cond_26

    return-object v1

    .line 7
    :cond_26
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Class;

    .line 8
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    iget-object v4, p0, Lio/dcloud/js/geolocation/a;->a:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {v4}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/js/geolocation/GeoManagerBase;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_44} :catch_45

    return-object v1

    .line 12
    :catch_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "geoLoaction"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string v0, "clearWatch"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    .line 3
    iget-object v3, p0, Lio/dcloud/js/geolocation/a;->c:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-eqz v3, :cond_19

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Lio/dcloud/js/geolocation/GeoManagerBase;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 4
    iget-object v3, p0, Lio/dcloud/js/geolocation/a;->c:Lio/dcloud/js/geolocation/GeoManagerBase;

    goto :goto_40

    .line 5
    :cond_19
    iget-object v3, p0, Lio/dcloud/js/geolocation/a;->b:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-eqz v3, :cond_28

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Lio/dcloud/js/geolocation/GeoManagerBase;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 6
    iget-object v3, p0, Lio/dcloud/js/geolocation/a;->b:Lio/dcloud/js/geolocation/GeoManagerBase;

    goto :goto_40

    .line 7
    :cond_28
    iget-object v3, p0, Lio/dcloud/js/geolocation/a;->d:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-eqz v3, :cond_37

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Lio/dcloud/js/geolocation/GeoManagerBase;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 8
    iget-object v3, p0, Lio/dcloud/js/geolocation/a;->d:Lio/dcloud/js/geolocation/GeoManagerBase;

    goto :goto_40

    :cond_37
    move-object v3, v1

    goto :goto_40

    :cond_39
    const/4 v3, 0x4

    .line 11
    aget-object v3, p3, v3

    .line 12
    invoke-direct {p0, v3}, Lio/dcloud/js/geolocation/a;->a(Ljava/lang/String;)Lio/dcloud/js/geolocation/GeoManagerBase;

    move-result-object v3

    :goto_40
    if-eqz v3, :cond_46

    .line 15
    invoke-virtual {v3, p1, p2, p3}, Lio/dcloud/js/geolocation/GeoManagerBase;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5a

    :cond_46
    if-nez v0, :cond_5a

    .line 17
    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_GEOLOCATION_PROVIDER_ERROR:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    aget-object v4, p3, v2

    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_5a
    :goto_5a
    return-object v1
.end method

.method public a()V
    .registers 2

    .line 32
    iget-object v0, p0, Lio/dcloud/js/geolocation/a;->b:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {v0}, Lio/dcloud/js/geolocation/GeoManagerBase;->onDestroy()V

    .line 35
    :cond_7
    iget-object v0, p0, Lio/dcloud/js/geolocation/a;->d:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-eqz v0, :cond_e

    .line 36
    invoke-virtual {v0}, Lio/dcloud/js/geolocation/GeoManagerBase;->onDestroy()V

    .line 38
    :cond_e
    iget-object v0, p0, Lio/dcloud/js/geolocation/a;->c:Lio/dcloud/js/geolocation/GeoManagerBase;

    if-eqz v0, :cond_15

    .line 39
    invoke-virtual {v0}, Lio/dcloud/js/geolocation/GeoManagerBase;->onDestroy()V

    :cond_15
    return-void
.end method
