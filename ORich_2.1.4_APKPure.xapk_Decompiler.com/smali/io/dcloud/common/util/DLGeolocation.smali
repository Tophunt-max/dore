###### Class io.dcloud.common.util.DLGeolocation (io.dcloud.common.util.DLGeolocation)
.class public Lio/dcloud/common/util/DLGeolocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IJsInterface;


# instance fields
.field mWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/DLGeolocation;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method public static checkAmapGeo()Z
    .registers 1

    const-string v0, "io.dcloud.js.geolocation.amap.AMapGeoManager"

    .line 1
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, "com.amap.api.v2.apikey"

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_16

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :catch_16
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static checkBDmapGeo()Z
    .registers 1

    const-string v0, "io.dcloud.js.geolocation.baidu.BaiduGeoManager"

    .line 1
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, "com.baidu.lbsapi.API_KEY"

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_16

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :catch_16
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static checkGeo(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/common/util/DLGeolocation;->checkAmapGeo()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-static {}, Lio/dcloud/common/util/DLGeolocation;->checkBDmapGeo()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static checkInjectGeo(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "replace"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "alldevice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-boolean p0, Lio/dcloud/common/util/BaseInfo;->injectionGeolocationJS:Z

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public static getGEOJS()Ljava/lang/String;
    .registers 1

    const-string v0, "!function(){function t(t,e){t?(this.coordsType=t.coordsType,this.address=t.address,this.addresses=t.addresses,this.coords=new a(t.latitude,t.longitude,t.altitude,t.accuracy,t.heading,t.velocity,t.altitudeAccuracy)):this.coords=new a,this.timestamp=void 0!==e?e:(new Date).getTime()}function a(t,a,e,i,n,o,s){this.latitude=t,this.longitude=a,this.accuracy=void 0!==i?i:null,this.altitude=void 0!==e?e:null,this.heading=void 0!==n?n:null,this.speed=void 0!==o?o:null,(0===this.speed||null===this.speed)&&(this.heading=0/0),this.altitudeAccuracy=void 0!==s?s:null}function e(t,a){if(o(t,a))return[t,a];var e=i(t-105,a-35),s=n(t-105,a-35),d=a/180*c,u=Math.sin(d);u=1-r*u*u;var h=Math.sqrt(u);return e=180*e/(l*(1-r)/(u*h)*c),s=180*s/(l/h*Math.cos(d)*c),mglat=a+e,mglng=t+s,[2*t-mglng,2*a-mglat]}function i(t,a){var e=-100+2*t+3*a+.2*a*a+.1*t*a+.2*Math.sqrt(Math.abs(t));return e+=2*(20*Math.sin(6*t*c)+20*Math.sin(2*t*c))/3,e+=2*(20*Math.sin(a*c)+40*Math.sin(a/3*c))/3,e+=2*(160*Math.sin(a/12*c)+320*Math.sin(a*c/30))/3}function n(t,a){var e=300+t+2*a+.1*t*t+.1*t*a+.1*Math.sqrt(Math.abs(t));return e+=2*(20*Math.sin(6*t*c)+20*Math.sin(2*t*c))/3,e+=2*(20*Math.sin(t*c)+40*Math.sin(t/3*c))/3,e+=2*(150*Math.sin(t/12*c)+300*Math.sin(t/30*c))/3}function o(t,a){return 72.004>t||t>137.8347||.8293>a||a>55.8271||!1}window.__geo__={};var s=__geo__;s.callbacks={},s.callbackId=function(t,a){var e=\"dlgeolocation\"+(new Date).valueOf();return s.callbacks[e]={s:t,e:a},e},s.callbackFromNative=function(a,i){var n=s.callbacks[a];if(n){if(1==i.status){if(n.s){var o=i.message,c=o.longitude,l=o.latitude;if(\"gcj02\"===o.coordsType){var r=e(o.longitude,o.latitude);c=r[0],l=r[1]}var d=new t({latitude:l,longitude:c,altitude:o.altitude,accuracy:o.accuracy,heading:o.heading,velocity:o.velocity,coordsType:\"WGS84\",address:o.address,addresses:o.addresses,altitudeAccuracy:o.altitudeAccuracy},void 0===o.timestamp?(new Date).getTime():o.timestamp instanceof Date?o.timestamp.getTime():o.timestamp);n.s(d)}}else n.e&&n.e(i.message);i.keepCallback||delete s.callbacks[a]}},navigator.geolocation.getCurrentPosition=function(t,a,e){console.log(\"DLGeolocation-------navigator.geolocation.getCurrentPosition\",e);var i=t,n=a||function(){},o=e||{},c=JSON.stringify(o);_dlGeolocation.exec(\"getCurrentPosition\",s.callbackId(function(t){console.log(\"success:\",t),i(t)},function(t){console.log(\"error:\",t),n(t)}),c)},navigator.geolocation.watchPosition=function(t,a,e){var i=t,n=a||function(){},o=e||{},c=JSON.stringify(o);c.id=\"dlwatchPosition\"+(new Date).valueOf(),_dlGeolocation.exec(\"watchPosition\",s.callbackId(i,n),c)},navigator.geolocation.clearwatch=function(t){_dlGeolocation.exec(\"clearwatch\",null,{id:t})};var c=3.141592653589793,l=6378245,r=.006693421622965943}();"

    return-object v0
.end method

.method private initGeoManager()Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lio/dcloud/common/util/DLGeolocation;->checkAmapGeo()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_3f

    const-string v2, "getInstance"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    const-string v1, "io.dcloud.js.geolocation.amap.AMapGeoManager"

    :try_start_d
    new-array v5, v4, [Ljava/lang/Class;

    .line 2
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lio/dcloud/common/util/DLGeolocation;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v1, v2, v0, v5, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5a

    .line 3
    :cond_22
    invoke-static {}, Lio/dcloud/common/util/DLGeolocation;->checkBDmapGeo()Z

    move-result v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_3f

    if-eqz v1, :cond_5a

    const-string v1, "io.dcloud.js.geolocation.baidu.BaiduGeoManager"

    :try_start_2a
    new-array v5, v4, [Ljava/lang/Class;

    .line 4
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lio/dcloud/common/util/DLGeolocation;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v1, v2, v0, v5, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3e} :catch_3f

    goto :goto_5a

    :catch_3f
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGeoManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DLGeolocation"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-object v0
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/common/util/DLGeolocation;->runGeolocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public forceStop(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getGeoArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "geocode"

    const-string v2, "timeout"

    const-string v3, "enableHighAccuracy"

    const-string v4, "maximumAge"

    const/4 v5, 0x0

    .line 1
    :try_start_b
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v7, p2

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1e

    .line 5
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    .line 8
    :goto_1f
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 9
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 12
    :goto_2b
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 13
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    .line 16
    :goto_37
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_43

    .line 17
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_44

    :cond_43
    const/4 v1, 0x1

    :goto_44
    const-string v7, "getCurrentPosition"

    .line 20
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_4a} :catch_115

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x7

    const-string v10, ""

    if-eqz v7, :cond_a3

    :try_start_53
    new-array v0, v15, [Ljava/lang/String;

    aput-object p3, v0, v8

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v14

    aput-object v5, v0, v13

    aput-object v5, v0, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    move-object v5, v0

    goto/16 :goto_11a

    :cond_a3
    const-string v7, "watchPosition"

    .line 22
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_a9} :catch_115

    const-string v5, "id"

    if-eqz v7, :cond_103

    .line 23
    :try_start_ad
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    aput-object p3, v5, v8

    aput-object v0, v5, v9

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v14

    aput-object v10, v5, v13

    aput-object v10, v5, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v5, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v15

    goto :goto_11a

    :cond_103
    const-string v1, "clearwatch"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 26
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    aput-object v0, v1, v8
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_ad .. :try_end_113} :catch_115

    move-object v5, v1

    goto :goto_11a

    :catch_115
    move-exception v0

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_119
    const/4 v5, 0x0

    :goto_11a
    return-object v5
.end method

.method public prompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public runGeolocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/DLGeolocation;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_6f

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 3
    :try_start_7
    invoke-direct {p0}, Lio/dcloud/common/util/DLGeolocation;->initGeoManager()Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_47

    const-string v5, "execute"

    const/4 v6, 0x3

    :try_start_12
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Lio/dcloud/common/DHInterface/IWebview;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v0

    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 10
    iget-object v6, p0, Lio/dcloud/common/util/DLGeolocation;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    aput-object v6, v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "DLGEO"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p0, p1, p3, p2}, Lio/dcloud/common/util/DLGeolocation;->getGeoArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_46} :catch_47

    goto :goto_6f

    .line 13
    :catch_47
    iget-object v6, p0, Lio/dcloud/common/util/DLGeolocation;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    new-array p1, v2, [Ljava/lang/Object;

    const/16 p3, -0x64

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    iget-object p3, p0, Lio/dcloud/common/util/DLGeolocation;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lio/dcloud/base/R$string;->dcloud_geo_fail:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "{code:%d,message:\'%s\'}"

    invoke-static {p3, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v7, p2

    invoke-static/range {v6 .. v11}, Lio/dcloud/common/util/JSUtil;->execGEOCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_6f
    :goto_6f
    return-void
.end method
