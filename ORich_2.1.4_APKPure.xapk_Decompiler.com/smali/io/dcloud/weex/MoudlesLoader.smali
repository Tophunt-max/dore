###### Class io.dcloud.weex.MoudlesLoader (io.dcloud.weex.MoudlesLoader)
.class public Lio/dcloud/weex/MoudlesLoader;
.super Ljava/lang/Object;
.source "MoudlesLoader.java"


# static fields
.field private static sLoader:Lio/dcloud/weex/MoudlesLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAppMoudle(Ljava/lang/String;Landroid/app/Application;Z)V
    .registers 9

    .line 85
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lio/dcloud/weex/AppHookProxy;

    if-eqz v1, :cond_1e

    if-eqz p3, :cond_14

    .line 89
    check-cast v0, Lio/dcloud/weex/AppHookProxy;

    invoke-interface {v0, p2}, Lio/dcloud/weex/AppHookProxy;->onCreate(Landroid/app/Application;)V

    goto :goto_38

    .line 91
    :cond_14
    instance-of p1, v0, Lio/dcloud/feature/uniapp/UniAppHookProxy;

    if-eqz p1, :cond_38

    .line 92
    check-cast v0, Lio/dcloud/feature/uniapp/UniAppHookProxy;

    invoke-interface {v0, p2}, Lio/dcloud/feature/uniapp/UniAppHookProxy;->onSubProcessCreate(Landroid/app/Application;)V

    goto :goto_38

    :cond_1e
    const-string p3, "onCreate"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 96
    const-class v3, Landroid/app/Application;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v4

    .line 99
    invoke-virtual {p1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_38

    :catch_38
    :catchall_38
    :cond_38
    :goto_38
    return-void
.end method

.method public static getInstance()Lio/dcloud/weex/MoudlesLoader;
    .registers 2

    .line 39
    sget-object v0, Lio/dcloud/weex/MoudlesLoader;->sLoader:Lio/dcloud/weex/MoudlesLoader;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lio/dcloud/weex/MoudlesLoader;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lio/dcloud/weex/MoudlesLoader;->sLoader:Lio/dcloud/weex/MoudlesLoader;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lio/dcloud/weex/MoudlesLoader;

    invoke-direct {v1}, Lio/dcloud/weex/MoudlesLoader;-><init>()V

    sput-object v1, Lio/dcloud/weex/MoudlesLoader;->sLoader:Lio/dcloud/weex/MoudlesLoader;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 46
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/weex/MoudlesLoader;->sLoader:Lio/dcloud/weex/MoudlesLoader;

    return-object v0
.end method

.method private getPluginsValue(Landroid/app/Application;)Lcom/alibaba/fastjson/JSONObject;
    .registers 3

    const-string v0, "dcloud_uniplugins.json"

    .line 126
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 128
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method private initMoudle(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Application;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "hooksClass"

    .line 66
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, v0, p2, v1}, Lio/dcloud/weex/MoudlesLoader;->createAppMoudle(Ljava/lang/String;Landroid/app/Application;Z)V

    :cond_13
    const-string p2, "plugins"

    .line 70
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_48

    if-eqz p1, :cond_48

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    if-lez p2, :cond_48

    const/4 p2, 0x0

    .line 73
    :goto_24
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_48

    .line 74
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_45

    const-string v1, "name"

    .line 76
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lio/dcloud/weex/MoudlesLoader;->registerMoudle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_48
    return-void
.end method

.method private registerMoudle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 111
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 112
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "module"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1f

    :cond_13
    const-string v0, "component"

    .line 114
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 115
    invoke-static {p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    goto :goto_22

    .line 113
    :cond_1f
    :goto_1f
    invoke-static {p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_22

    :catch_22
    :catchall_22
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Application;)V
    .registers 5

    .line 50
    invoke-direct {p0, p1}, Lio/dcloud/weex/MoudlesLoader;->getPluginsValue(Landroid/app/Application;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v1, "nativePlugins"

    .line 52
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 53
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_25

    const/4 v1, 0x0

    .line 54
    :goto_15
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 55
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 56
    invoke-direct {p0, v2, p1}, Lio/dcloud/weex/MoudlesLoader;->initMoudle(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Application;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_25
    return-void
.end method

.method public onSubProcess(Landroid/app/Application;)V
    .registers 7

    .line 139
    invoke-direct {p0, p1}, Lio/dcloud/weex/MoudlesLoader;->getPluginsValue(Landroid/app/Application;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2c

    const-string v1, "nativePlugins"

    .line 141
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 142
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 143
    :goto_16
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 144
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "hooksClass"

    .line 145
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-direct {p0, v3, p1, v1}, Lio/dcloud/weex/MoudlesLoader;->createAppMoudle(Ljava/lang/String;Landroid/app/Application;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2c
    return-void
.end method
