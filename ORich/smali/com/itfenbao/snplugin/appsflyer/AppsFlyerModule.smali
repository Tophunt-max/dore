###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule (com.itfenbao.snplugin.appsflyer.AppsFlyerModule)
.class public Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;
.super Lio/dcloud/feature/uniapp/common/UniModule;
.source "AppsFlyerModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/common/UniModule;-><init>()V

    return-void
.end method

.method private getAppMetaDataBundle(Landroid/app/Application;)Landroid/os/Bundle;
    .registers 4

    .line 215
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 217
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception p1

    .line 219
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMetaDataBundle"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_1c
    return-object p1
.end method


# virtual methods
.method public getAppsFlyerUID(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 4
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 66
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v1}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$2;

    invoke-direct {v1, p0, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$2;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public getGaid(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 5
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 78
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM;

    invoke-direct {v2, p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Landroid/content/Context;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 96
    :cond_1d
    new-instance v0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$4;

    invoke-direct {v0, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$4;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V

    invoke-interface {p1, v0}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    :goto_25
    return-void
.end method

.method public initSdk(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 6
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 127
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "launchProtectEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    const-string v0, "devKey"

    .line 129
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 131
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 132
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->getAppMetaDataBundle(Landroid/app/Application;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "APPS_FLYER_DEV_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_a8

    :cond_3f
    const-string v0, "isDebug"

    .line 142
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "collectAndroidID"

    .line 144
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 145
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/appsflyer/AppsFlyerLib;->setCollectAndroidID(Z)V

    :cond_5c
    const-string v1, "collectIMEI"

    .line 147
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 148
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/appsflyer/AppsFlyerLib;->setCollectIMEI(Z)V

    :cond_73
    const/4 v1, 0x1

    if-eqz v0, :cond_7d

    .line 151
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setDebugLog(Z)V

    :cond_7d
    const-string v0, "onInstallConversionDataListener"

    .line 154
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 155
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    :cond_89
    if-eqz v1, :cond_92

    .line 159
    invoke-static {}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->getInstance()Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->setConversionListener(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V

    .line 161
    :cond_92
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    .line 162
    new-instance p1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$8;

    invoke-direct {p1, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$8;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V

    invoke-interface {p2, p1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    return-void

    .line 135
    :cond_a8
    :goto_a8
    new-instance p1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$7;

    invoke-direct {p1, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$7;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V

    invoke-interface {p2, p1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$getGaid$0$AppsFlyerModule(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V
    .registers 4

    .line 90
    new-instance v0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$3;

    invoke-direct {v0, p0, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$3;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$getGaid$1$AppsFlyerModule(Landroid/content/Context;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 5

    .line 81
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_13
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_8} :catch_e
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_19

    :catch_9
    move-exception p1

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V

    goto :goto_17

    :catch_e
    move-exception p1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V

    goto :goto_17

    :catch_13
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_17
    const-string p1, ""

    .line 90
    :goto_19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM;

    invoke-direct {v1, p0, p2, p1}, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public logEvent(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 7
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    const-string v0, "eventName"

    .line 172
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventValues"

    .line 174
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 175
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-eqz v0, :cond_38

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    goto :goto_38

    .line 187
    :cond_21
    iget-object v1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v1}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    new-instance v3, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;

    invoke-direct {v3, p0, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    return-void

    .line 180
    :cond_38
    :goto_38
    new-instance p1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$9;

    invoke-direct {p1, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$9;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V

    invoke-interface {p2, p1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public onAppOpenAttribution(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 3
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 47
    invoke-static {}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->getInstance()Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->setAttributionDataListener(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V

    return-void
.end method

.method public performOnAppAttribution(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 5
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    const-string v0, "url"

    .line 105
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    :try_start_6
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->performOnAppAttribution(Landroid/content/Context;Ljava/net/URI;)V

    .line 110
    new-instance p1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$5;

    invoke-direct {p1, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$5;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V

    invoke-interface {p2, p1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    goto :goto_2c

    .line 115
    :catch_24
    new-instance p1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$6;

    invoke-direct {p1, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$6;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V

    invoke-interface {p2, p1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    :goto_2c
    return-void
.end method

.method public registerDeepLink(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 3
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 52
    invoke-static {}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->getInstance()Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->setDeepLinkListener(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V

    return-void
.end method

.method public setCustomerUserId(Ljava/lang/String;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 4
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 57
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 58
    new-instance p1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$1;

    invoke-direct {p1, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$1;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V

    invoke-interface {p2, p1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass1 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$1)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$1;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->setCustomerUserId(Ljava/lang/String;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$1;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "Success"

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass10 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$10)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;
.super Ljava/lang/Object;
.source "AppsFlyerModule.java"

# interfaces
.implements Lcom/appsflyer/attribution/AppsFlyerRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->logEvent(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

.field final synthetic val$callbackContext:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 3

    .line 188
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;->val$callbackContext:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;->val$callbackContext:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    new-instance v1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$2;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;->val$callbackContext:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    new-instance v1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$1;

    invoke-direct {v1, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$1;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;)V

    invoke-interface {v0, v1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass10.AnonymousClass1 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$10$1)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$1;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;)V
    .registers 3

    .line 191
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$1;->this$1:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass10.AnonymousClass2 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$10$2)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$2;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;

.field final synthetic val$i:I

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;ILjava/lang/String;)V
    .registers 4

    .line 198
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$2;->this$1:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10;

    iput p2, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$2;->val$i:I

    iput-object p3, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$2;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "code"

    invoke-virtual {p0, p2, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$2;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    .line 200
    invoke-virtual {p0, p1, p3}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$10$2;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass2 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$2)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$2;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->getAppsFlyerUID(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Ljava/lang/String;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$2;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$2;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$2;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uid"

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$2;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass3 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$3)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$3;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->lambda$getGaid$0(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

.field final synthetic val$finalAdid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Ljava/lang/String;)V
    .registers 4

    .line 90
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$3;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$3;->val$finalAdid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$3;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gaid"

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$3;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass4 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$4)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$4;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->getGaid(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V
    .registers 3

    .line 96
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$4;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, -0x1

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$4;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "google play service \u4e0d\u53ef\u7528"

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$4;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass5 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$5)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$5;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->performOnAppAttribution(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$5;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$5;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "Success"

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$5;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass6 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$6)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$6;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->performOnAppAttribution(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V
    .registers 3

    .line 115
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$6;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, -0x1

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$6;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "Passed string is not a valid URI"

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$6;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass7 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$7)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$7;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->initSdk(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V
    .registers 3

    .line 135
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$7;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, -0x1

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$7;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "No \'devKey\' found or its empty"

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$7;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass8 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$8)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$8;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->initSdk(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V
    .registers 3

    .line 162
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$8;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$8;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "Success"

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$8;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerModule.AnonymousClass9 (com.itfenbao.snplugin.appsflyer.AppsFlyerModule$9)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$9;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->logEvent(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;)V
    .registers 3

    .line 180
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$9;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, -0x1

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$9;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "No \'eventName\' found or its empty"

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule$9;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM (com.itfenbao.snplugin.appsflyer.-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM)
.class public final synthetic Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

.field public final synthetic f$1:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM;->f$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM;->f$1:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    iput-object p3, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM;->f$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    iget-object v1, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM;->f$1:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    iget-object v2, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->lambda$getGaid$0$AppsFlyerModule(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM (com.itfenbao.snplugin.appsflyer.-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM)
.class public final synthetic Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;Landroid/content/Context;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM;->f$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM;->f$2:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM;->f$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;

    iget-object v1, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/itfenbao/snplugin/appsflyer/-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM;->f$2:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    invoke-virtual {v0, v1, v2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerModule;->lambda$getGaid$1$AppsFlyerModule(Landroid/content/Context;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V

    return-void
.end method
