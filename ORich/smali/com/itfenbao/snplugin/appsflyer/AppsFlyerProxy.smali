###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerProxy (com.itfenbao.snplugin.appsflyer.AppsFlyerProxy)
.class public Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;
.super Ljava/lang/Object;
.source "AppsFlyerProxy.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/UniAppHookProxy;


# static fields
.field private static proxy:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;


# instance fields
.field private initDeepLinkData:Lcom/alibaba/fastjson/JSONObject;

.field private initInstallData:Lcom/alibaba/fastjson/JSONObject;

.field private mAttributionDataListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

.field private mConversionListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

.field private mDeepLinkListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->mConversionListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    .line 25
    iput-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->mAttributionDataListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    .line 26
    iput-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->mDeepLinkListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->sendEvent(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->handleSuccess(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->handleError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getAppMetaDataBundle(Landroid/app/Application;)Landroid/os/Bundle;
    .registers 4

    .line 210
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 212
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception p1

    .line 214
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMetaDataBundle"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_1c
    return-object p1
.end method

.method public static getInstance()Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;
    .registers 1

    .line 34
    sget-object v0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->proxy:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    return-object v0
.end method

.method private handleError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 137
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, -0x1

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    const-string v2, "failure"

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 140
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->sendEvent(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private handleSuccess(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 7

    .line 154
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    const-string v2, "success"

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 157
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1e

    move-object p2, p3

    :cond_1e
    const-string p1, "data"

    .line 158
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-direct {p0, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->sendEvent(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private declared-synchronized sendEvent(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "type"

    .line 169
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAttributionFailure"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "onAppOpenAttribution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_59

    :cond_18
    const-string v1, "onInstallConversionDataLoaded"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "onInstallConversionFailure"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_48

    :cond_29
    const-string v0, "type"

    .line 189
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeepLinking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 190
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->mDeepLinkListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    if-nez v0, :cond_3f

    .line 191
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->initDeepLinkData:Lcom/alibaba/fastjson/JSONObject;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_6b

    .line 192
    monitor-exit p0

    return-void

    .line 194
    :cond_3f
    :try_start_3f
    new-instance v1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$5;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v0, v1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_69

    .line 181
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->mConversionListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    if-nez v0, :cond_50

    .line 182
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->initInstallData:Lcom/alibaba/fastjson/JSONObject;
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_6b

    .line 183
    monitor-exit p0

    return-void

    .line 185
    :cond_50
    :try_start_50
    new-instance v1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$4;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v0, v1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_69

    .line 171
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->mAttributionDataListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    if-nez v0, :cond_61

    .line 172
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->initInstallData:Lcom/alibaba/fastjson/JSONObject;
    :try_end_5f
    .catchall {:try_start_50 .. :try_end_5f} :catchall_6b

    .line 173
    monitor-exit p0

    return-void

    .line 175
    :cond_61
    :try_start_61
    new-instance v1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$3;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v0, v1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_6b

    .line 199
    :cond_69
    :goto_69
    monitor-exit p0

    return-void

    :catchall_6b
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onCreate(Landroid/app/Application;)V
    .registers 5

    .line 44
    sput-object p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->proxy:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    .line 45
    invoke-direct {p0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->getAppMetaDataBundle(Landroid/app/Application;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "APPS_FLYER_DEV_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 49
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->setCollectAndroidID(Z)V

    .line 52
    new-instance v2, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$1;

    invoke-direct {v2, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$1;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;)V

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V

    .line 77
    new-instance v2, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;

    invoke-direct {v2, p0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;)V

    .line 102
    invoke-virtual {v1, v0, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    return-void

    .line 47
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u7f3a\u5c11appsflyer_devkey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSubProcessCreate(Landroid/app/Application;)V
    .registers 2

    .line 39
    sput-object p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->proxy:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    return-void
.end method

.method public setAttributionDataListener(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->mAttributionDataListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    .line 123
    iget-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->initInstallData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_c

    .line 124
    invoke-direct {p0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->sendEvent(Lcom/alibaba/fastjson/JSONObject;)V

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->initInstallData:Lcom/alibaba/fastjson/JSONObject;

    :cond_c
    return-void
.end method

.method public setConversionListener(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->mConversionListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    .line 115
    iget-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->initInstallData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_c

    .line 116
    invoke-direct {p0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->sendEvent(Lcom/alibaba/fastjson/JSONObject;)V

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->initInstallData:Lcom/alibaba/fastjson/JSONObject;

    :cond_c
    return-void
.end method

.method public setDeepLinkListener(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->mDeepLinkListener:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    .line 107
    iget-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->initDeepLinkData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_c

    .line 108
    invoke-direct {p0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->sendEvent(Lcom/alibaba/fastjson/JSONObject;)V

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->initDeepLinkData:Lcom/alibaba/fastjson/JSONObject;

    :cond_c
    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.AnonymousClass1 (com.itfenbao.snplugin.appsflyer.AppsFlyerProxy$1)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$1;
.super Ljava/lang/Object;
.source "AppsFlyerProxy.java"

# interfaces
.implements Lcom/appsflyer/deeplink/DeepLinkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->onCreate(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$1;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .registers 7

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getError()Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "deepLinkStatus"

    .line 58
    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "onDeepLinking"

    .line 59
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_62

    const-string v2, "data"

    const-string v3, "status"

    const-string v4, "code"

    if-eqz v0, :cond_36

    const/4 p1, -0x1

    .line 61
    :try_start_22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "failure"

    .line 62
    invoke-virtual {v1, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v0}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    :cond_36
    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "success"

    .line 66
    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getDeepLink()Lcom/appsflyer/deeplink/DeepLink;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 68
    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getDeepLink()Lcom/appsflyer/deeplink/DeepLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLink;->getClickEvent()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_5c
    :goto_5c
    iget-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$1;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    invoke-static {p1, v1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->access$000(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_66
    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.AnonymousClass2 (com.itfenbao.snplugin.appsflyer.AppsFlyerProxy$2)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;
.super Ljava/lang/Object;
.source "AppsFlyerProxy.java"

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->onCreate(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppOpenAttribution(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    new-instance v1, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2$1;

    invoke-direct {v1, p0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2$1;-><init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;Ljava/util/Map;)V

    const-string p1, "onAppOpenAttribution"

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->access$100(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    const-string v1, "onAttributionFailure"

    invoke-static {v0, v1, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->access$200(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    const-string v1, "onInstallConversionFailure"

    invoke-static {v0, v1, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->access$200(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "onInstallConversionDataLoaded"

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->access$100(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.AnonymousClass2.AnonymousClass1 (com.itfenbao.snplugin.appsflyer.AppsFlyerProxy$2$1)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2$1;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;->onAppOpenAttribution(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;

.field final synthetic val$attributionData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;Ljava/util/Map;)V
    .registers 4

    .line 90
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2$1;->this$1:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2;

    iput-object p2, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2$1;->val$attributionData:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 91
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2$1;->val$attributionData:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$2$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_25
    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.AnonymousClass3 (com.itfenbao.snplugin.appsflyer.AppsFlyerProxy$3)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$3;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->sendEvent(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

.field final synthetic val$params:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4

    .line 175
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$3;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    iput-object p2, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$3;->val$params:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$3;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$3;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.AnonymousClass4 (com.itfenbao.snplugin.appsflyer.AppsFlyerProxy$4)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$4;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->sendEvent(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

.field final synthetic val$params:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4

    .line 185
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$4;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    iput-object p2, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$4;->val$params:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 186
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$4;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$4;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.AnonymousClass5 (com.itfenbao.snplugin.appsflyer.AppsFlyerProxy$5)
.class Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$5;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AppsFlyerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;->sendEvent(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

.field final synthetic val$params:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4

    .line 194
    iput-object p1, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$5;->this$0:Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy;

    iput-object p2, p0, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$5;->val$params:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$5;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/itfenbao/snplugin/appsflyer/AppsFlyerProxy$5;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
