###### Class io.dcloud.feature.gg.dcloud.AdFeatureImpl (io.dcloud.feature.gg.dcloud.AdFeatureImpl)
.class public Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$MyHandler;,
        Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;
    }
.end annotation


# static fields
.field private static volatile isRequestSuccess:Z

.field private static isSplashClose:Z

.field private static mHandler:Landroid/os/Handler;

.field private static volatile mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

.field private static retryCount:I

.field private static final splashHandler:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;

    invoke-direct {v0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;-><init>()V

    sput-object v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashHandler:Ljava/util/Map;

    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    .line 21
    sput-boolean v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    .line 25
    new-instance v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$MyHandler;-><init>(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;)V

    sput-object v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mHandler:Landroid/os/Handler;

    .line 27
    sput v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->setRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .line 1
    sput-boolean p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    return p0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    return v0
.end method

.method static synthetic access$508()I
    .registers 2

    .line 1
    sget v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    return v0
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    const-string v1, "_adpid_"

    const-string v2, ""

    const-string v3, "sp"

    const-string v4, "splash"

    const-string v5, "onAppCreate"

    .line 1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "uniad"

    const-string v7, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    const-string v8, "doForFeature"

    const/4 v9, 0x0

    if-eqz v5, :cond_3d

    .line 3
    move-object/from16 v0, p1

    check-cast v0, Landroid/content/Context;

    const-string v1, "AdFeatureImpl onAppCreate"

    .line 4
    invoke-static {v8, v1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v6}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 7
    invoke-static {v0, v7, v6, v1}, Lio/dcloud/common/adapter/util/SP;->setsBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cgk"

    .line 8
    invoke-static {v0, v7, v2, v1}, Lio/dcloud/common/adapter/util/SP;->setsBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v0, v7, v6}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v0, v7, v2}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    move-object v1, v9

    goto/16 :goto_37a

    :cond_3d
    const-string v5, "pull"

    .line 12
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v5, :cond_1e1

    .line 14
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 15
    aget-object v5, v0, v12

    check-cast v5, Landroid/content/Context;

    .line 16
    aget-object v13, v0, v11

    check-cast v13, Ljava/lang/String;

    const-string v14, "AdFeatureImpl pull"

    .line 17
    invoke-static {v8, v14}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v5, v7}, Lio/dcloud/g/e/b;->a(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/g/e/b;

    .line 19
    aget-object v8, v0, v10

    invoke-static {v8}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6e

    aget-object v8, v0, v10

    const-string v14, "RETRY"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1bf

    :cond_6e
    invoke-static {v5}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1bf

    .line 21
    sput-object v9, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    .line 22
    sput-boolean v12, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    .line 23
    sput-boolean v12, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    .line 24
    sget-object v8, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    sput v12, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    .line 27
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {v5, v7, v6}, Lio/dcloud/common/adapter/util/SP;->getsBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    :try_start_8e
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_eb

    .line 35
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9d} :catch_fc

    :try_start_9d
    const-string v9, "_psp_"

    .line 36
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 37
    new-instance v10, Ljava/util/ArrayList;

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b2} :catch_e8

    .line 38
    :try_start_b2
    invoke-interface {v10, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_ord_"

    const-string v12, "0"

    .line 40
    invoke-virtual {v15, v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c1} :catch_e3

    .line 41
    :try_start_c1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v11, :cond_db

    const-string v12, "_w_"

    .line 42
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v11, "_m_"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_d3} :catch_df

    move-object/from16 v16, v2

    const/4 v2, 0x1

    :try_start_d6
    invoke-static {v10, v8, v12, v11, v2}, Lio/dcloud/feature/gg/AdSplashUtil;->reorderList(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object v8
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_da} :catch_e1

    goto :goto_ef

    :cond_db
    move-object/from16 v16, v2

    move-object v8, v10

    goto :goto_ef

    :catch_df
    move-object/from16 v16, v2

    :catch_e1
    move-object v8, v10

    goto :goto_fa

    :catch_e3
    move-object/from16 v16, v2

    move-object v8, v10

    const/4 v9, 0x0

    goto :goto_fa

    :catch_e8
    move-object/from16 v16, v2

    goto :goto_ff

    :cond_eb
    move-object/from16 v16, v2

    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 44
    :goto_ef
    :try_start_ef
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 45
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f9} :catch_fa

    goto :goto_101

    :catch_fa
    :cond_fa
    :goto_fa
    const/4 v2, 0x0

    goto :goto_101

    :catch_fc
    move-object/from16 v16, v2

    const/4 v15, 0x0

    :goto_ff
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 49
    :goto_101
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_10b

    .line 50
    invoke-static {}, Lio/dcloud/feature/gg/AdSplashUtil;->getAdOrder()Ljava/util/List;

    move-result-object v8

    .line 53
    :cond_10b
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_120

    .line 54
    sget-object v3, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashHandler:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_120
    if-nez v9, :cond_131

    const-string v3, "UNIAD_SPLASH_DEFAULT_ORDER"

    .line 56
    invoke-static {v3}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_132

    :cond_131
    move-object v3, v9

    .line 58
    :goto_132
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13b
    :goto_13b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1aa

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 61
    :try_start_147
    sget-object v10, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashHandler:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 62
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_15c} :catch_15f

    :catch_15c
    move-object/from16 v17, v1

    goto :goto_1a7

    :catch_15f
    nop

    if-eqz v2, :cond_13b

    .line 65
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13b

    .line 66
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_13b

    .line 68
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_13b

    const-string v12, "did"

    :try_start_176
    const-string v14, "appid"

    .line 71
    invoke-static {v7, v14}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_17f} :catch_15c

    const-string v12, "adid"

    if-eqz v15, :cond_188

    .line 72
    :try_start_183
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_18a

    :cond_188
    move-object/from16 v14, v16

    :goto_18a
    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    new-instance v12, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, "er"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_199} :catch_15c

    move-object/from16 v17, v1

    :try_start_19b
    const-string v1, "ec"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v11, v9, v14, v1}, Lio/dcloud/feature/gg/dcloud/CommonSplashHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a7} :catch_1a7

    :catch_1a7
    :goto_1a7
    move-object/from16 v1, v17

    goto :goto_13b

    .line 81
    :cond_1aa
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;->getInstance()Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;

    move-result-object v14

    move-object/from16 v17, v5

    check-cast v17, Landroid/app/Activity;

    const/16 v19, 0x1

    move-object v15, v3

    move-object/from16 v16, v13

    move-object/from16 v18, v6

    invoke-virtual/range {v14 .. v19}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager;->pullSplash(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;I)Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    move-result-object v1

    sput-object v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    :cond_1bf
    const/4 v1, 0x3

    new-array v1, v1, [Lio/dcloud/feature/gg/dcloud/IADReceiver;

    .line 83
    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    invoke-direct {v2, v5}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    invoke-direct {v2, v5}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;

    invoke-direct {v2, v5, v0, v13}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;-><init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v0, 0x0

    invoke-static {v5, v13, v3, v0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->pull(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;[Lio/dcloud/feature/gg/dcloud/IADReceiver;)V

    :goto_1de
    move-object v1, v0

    goto/16 :goto_37a

    :cond_1e1
    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v1, "save"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_207

    .line 85
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 86
    aget-object v1, v0, v3

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    .line 87
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    .line 88
    aget-object v0, v0, v4

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "AdFeatureImpl save"

    .line 89
    invoke-static {v8, v3}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v1, v2, v0}, Lio/dcloud/feature/gg/AdSplashUtil;->saveOperate(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_204
    :goto_204
    const/4 v1, 0x0

    goto/16 :goto_37a

    :cond_207
    const-string v1, "formatUrl_wanka"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_226

    .line 92
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 93
    aget-object v0, v0, v4

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 94
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 95
    aget-object v0, v0, v2

    check-cast v0, Lorg/json/JSONObject;

    .line 96
    invoke-static {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->formatUrl(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_226
    const-string v1, "handleArgs_wanka"

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23c

    .line 98
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    .line 99
    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    .line 100
    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getArgsJsonData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_23c
    const-string v1, "onWillCloseSplash"

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a1

    const/4 v1, 0x1

    .line 102
    sput-boolean v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    const/4 v0, 0x0

    .line 103
    sput-boolean v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    .line 104
    move-object/from16 v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 105
    aget-object v0, v1, v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "AdFeatureImpl onWillCloseSplash"

    .line 106
    invoke-static {v8, v2}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_29f

    .line 108
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_29d

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_26b

    goto :goto_29d

    :cond_26b
    const/4 v2, 0x2

    .line 112
    aget-object v3, v1, v2

    if-eqz v3, :cond_283

    aget-object v3, v1, v2

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_283

    sget-object v3, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    if-eqz v3, :cond_283

    .line 113
    sget-object v3, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    aget-object v1, v1, v2

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->onSplashClose(Landroid/view/View;)V

    .line 114
    :cond_283
    sget-object v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    if-eqz v1, :cond_298

    .line 115
    sget-object v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_298

    const-string v2, "-8003"

    .line 117
    invoke-static {v0, v2, v1}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->setRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_298
    const/4 v0, 0x0

    .line 119
    sput-object v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    goto/16 :goto_1de

    :cond_29d
    :goto_29d
    const/4 v0, 0x0

    return-object v0

    :cond_29f
    const/4 v0, 0x0

    return-object v0

    :cond_2a1
    const-string v1, "onCloseSplashNoAd"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30e

    const/4 v1, 0x1

    .line 121
    sput-boolean v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    .line 122
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 123
    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Context;

    .line 124
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_30c

    .line 125
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_30a

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2c9

    goto :goto_30a

    :cond_2c9
    const-string v1, "AdFeatureImpl onCloseSplashNoAd"

    .line 129
    invoke-static {v8, v1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2da

    const/4 v1, 0x0

    return-object v1

    :cond_2da
    const/4 v1, 0x0

    .line 131
    sget-object v2, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    if-nez v2, :cond_2e0

    return-object v1

    .line 132
    :cond_2e0
    sget-object v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_204

    sget-boolean v2, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    if-eqz v2, :cond_204

    sget-object v2, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    invoke-virtual {v2}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->getSplash()Lio/dcloud/feature/gg/dcloud/ADBaseHandler;

    move-result-object v2

    if-nez v2, :cond_204

    const-string v2, "(-1)"

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_303

    const-string v2, "-8005"

    goto :goto_305

    :cond_303
    const-string v2, "-8004"

    :goto_305
    invoke-static {v0, v2, v1}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->setRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_204

    :cond_30a
    :goto_30a
    const/4 v1, 0x0

    return-object v1

    :cond_30c
    const/4 v1, 0x0

    return-object v1

    :cond_30e
    const/4 v1, 0x0

    const-string v2, "onCreateAdSplash"

    .line 135
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36d

    .line 136
    sget-boolean v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    if-nez v0, :cond_31c

    return-object v1

    .line 137
    :cond_31c
    sget-object v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    if-nez v0, :cond_321

    return-object v1

    .line 138
    :cond_321
    sget-boolean v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    if-eqz v0, :cond_326

    return-object v1

    .line 140
    :cond_326
    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 141
    aget-object v1, v0, v1

    check-cast v1, Landroid/content/Context;

    .line 142
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_36b

    .line 143
    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_369

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_343

    goto :goto_369

    .line 147
    :cond_343
    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_34f

    const/4 v2, 0x0

    return-object v2

    :cond_34f
    const/4 v2, 0x1

    .line 148
    aget-object v0, v0, v2

    check-cast v0, Lio/dcloud/common/DHInterface/ICallBack;

    const-string v2, "AdFeatureImpl onCreateAdSplash"

    .line 149
    invoke-static {v8, v2}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v2, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    if-eqz v2, :cond_204

    .line 151
    sget-object v2, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mSplashAd:Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;

    new-instance v3, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$2;

    invoke-direct {v3, v1}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v3}, Lio/dcloud/feature/gg/dcloud/mgr/SplashAd;->onCreateSplash(Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_369
    :goto_369
    const/4 v1, 0x0

    return-object v1

    :cond_36b
    const/4 v1, 0x0

    return-object v1

    :cond_36d
    const-string v2, "onAppAttachBaseContext"

    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37a

    const-string v0, "AdFeatureImpl onAppAttachBaseContext"

    .line 165
    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37a
    :goto_37a
    return-object v1
.end method

.method private static setRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.dcloud.HBuilder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->postSplashError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AdFeatureImpl.AnonymousClass1 (io.dcloud.feature.gg.dcloud.AdFeatureImpl$1)
.class final Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "360"

    const-string v1, "io.dcloud.feature.ad.juhe360.Ad360Handler"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dcloud"

    const-string v1, "io.dcloud.feature.gg.dcloud.DcloudHandler"

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gdt"

    const-string v1, "io.dcloud.feature.ad.gdt.AdGdtHandler"

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "csj"

    const-string v1, "io.dcloud.feature.ad.csj.AdCsjHandler"

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ks"

    const-string v1, "io.dcloud.feature.ad.ks.AdKsHandler"

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sgm"

    const-string v1, "io.dcloud.feature.ad.sigmob.ADSMHandler"

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AdFeatureImpl.AnonymousClass2 (io.dcloud.feature.gg.dcloud.AdFeatureImpl$2)
.class final Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/mgr/SplashAdManager$OnGetBestAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .registers 1

    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$2;->val$context:Landroid/content/Context;

    instance-of v1, v0, Lio/dcloud/WebAppActivity;

    if-eqz v1, :cond_c

    .line 2
    move-object v1, v0

    check-cast v1, Lio/dcloud/WebAppActivity;

    invoke-virtual {v1, v0}, Lio/dcloud/WebAppActivity;->onCreateAdSplash(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AdFeatureImpl.AdReceiver (io.dcloud.feature.gg.dcloud.AdFeatureImpl$AdReceiver)
.class public Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/IADReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AdReceiver"
.end annotation


# instance fields
.field private _args:[Ljava/lang/Object;

.field private appid:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->_args:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->appid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->appid:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getActivities()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_5
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 8
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_29

    aget-object v5, v1, v4

    .line 9
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 12
    :cond_29
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 14
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 16
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_4c

    .line 17
    array-length v3, v1

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v3, :cond_4c

    aget-object v5, v1, v4

    .line 18
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 21
    :cond_4c
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    .line 23
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 25
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_70

    .line 26
    array-length v3, v1

    const/4 v4, 0x0

    :goto_64
    if-ge v4, v3, :cond_70

    aget-object v5, v1, v4

    .line 27
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 30
    :cond_70
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 32
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 34
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_92

    .line 35
    array-length v3, v1

    :goto_86
    if-ge v2, v3, :cond_92

    aget-object v4, v1, v2

    .line 36
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8f} :catch_92

    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :catch_92
    :cond_92
    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$302(Z)Z

    const-string v0, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    const-string v1, "uniad"

    const-string v2, ""

    .line 2
    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->setsBundleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";message:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "request Fail"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$500()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_55

    .line 5
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$508()I

    .line 6
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput v0, p1, Landroid/os/Message;->what:I

    .line 8
    new-instance v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$2;-><init>(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$700()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$500()I

    move-result v1

    const v2, 0xea60

    mul-int v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16
    :cond_55
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->_args:[Ljava/lang/Object;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    if-nez p1, :cond_7e

    const/4 p1, -0x1

    .line 20
    :try_start_5d
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_62

    goto :goto_63

    :catch_62
    const/4 v0, -0x1

    .line 22
    :goto_63
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    if-ne v0, p1, :cond_68

    goto :goto_79

    :cond_68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_79
    const-string p1, "-8001"

    invoke-static {v1, p1, p2}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    return-void
.end method

.method public onReceiver(Lorg/json/JSONObject;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "al"

    const-string v3, "doForFeature"

    const-string v4, "success when request"

    .line 1
    invoke-static {v3, v4}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$100()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->_args:[Ljava/lang/Object;

    aget-object v3, v3, v4

    if-nez v3, :cond_2f

    iget-object v3, v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-static {v3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 3
    iget-object v3, v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    const-string v5, "-8002"

    const-string v6, "\u5e7f\u544a\u5173\u95ed\u65f6\u672a\u8bf7\u6c42\u6210\u529f"

    invoke-static {v3, v5, v6}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const-string v3, "psp"

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "ad_list_order"

    const-string v7, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    if-eqz v5, :cond_4b

    .line 7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v5}, Lio/dcloud/feature/gg/AdSplashUtil;->saveOperate(Ljava/util/HashMap;)V

    goto :goto_4e

    .line 12
    :cond_4b
    invoke-static {v7, v6}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    const/4 v3, 0x1

    .line 15
    invoke-static {v3}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$302(Z)Z

    :try_start_52
    const-string v5, "data"

    .line 18
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 19
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 21
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 22
    iget-object v8, v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-static {v8, v7}, Lio/dcloud/common/adapter/util/SP;->getsOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/g/e/b;

    move-result-object v7
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_68} :catch_15d

    const-string v9, "uniad"

    const-string v10, "cad"

    const-string v11, ""

    if-eqz v1, :cond_125

    .line 24
    :try_start_70
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7b

    .line 26
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_7c

    :cond_7b
    move-object v12, v11

    .line 29
    :goto_7c
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_89

    .line 30
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v2, v13}, Lio/dcloud/g/e/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_89
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_119

    .line 34
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_11c

    .line 36
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->getActivities()Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 38
    :goto_9d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10b

    .line 39
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v3, "mf-a"

    .line 41
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_b3} :catch_15d

    const-string v8, "1"

    const-string v4, "r"

    if-eqz v3, :cond_e1

    .line 42
    :try_start_b9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_e1

    move-object/from16 v16, v1

    const/4 v15, 0x0

    .line 43
    :goto_c2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v15, v1, :cond_106

    .line 44
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 46
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 47
    invoke-virtual {v1, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v6, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_106

    :cond_de
    add-int/lit8 v15, v15, 0x1

    goto :goto_c2

    :cond_e1
    move-object/from16 v16, v1

    const-string v1, "cls-a"

    .line 53
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 54
    :goto_ea
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v3, v15, :cond_106

    .line 55
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_f4} :catch_15d

    .line 57
    :try_start_f4
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 59
    invoke-virtual {v15, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_102} :catch_103

    goto :goto_106

    :catch_103
    add-int/lit8 v3, v3, 0x1

    goto :goto_ea

    :cond_106
    :goto_106
    move-object/from16 v1, v16

    const/4 v3, 0x1

    const/4 v4, 0x2

    goto :goto_9d

    .line 67
    :cond_10b
    :try_start_10b
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_115

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_115
    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11c

    .line 70
    :cond_119
    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_11c
    :goto_11c
    invoke-virtual {v7, v9, v12}, Lio/dcloud/g/e/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cgk"

    .line 73
    invoke-virtual {v7, v1, v12}, Lio/dcloud/g/e/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    .line 75
    :cond_125
    invoke-virtual {v7, v9, v11}, Lio/dcloud/g/e/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_12b
    invoke-static {v5}, Lio/dcloud/feature/gg/AdSplashUtil;->saveOperate(Ljava/util/HashMap;)V

    .line 80
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_15e

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_139} :catch_15d

    const-string v2, "rad"

    .line 82
    :try_start_13b
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/dcloud/feature/gg/dcloud/IADReceiver;

    new-instance v4, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    invoke-direct {v4, v2}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    iget-object v5, v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->pullRad(Landroid/content/Context;Ljava/util/Map;[Lio/dcloud/feature/gg/dcloud/IADReceiver;)V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_15c} :catch_15d

    goto :goto_15e

    :catch_15d
    nop

    .line 88
    :cond_15e
    :goto_15e
    iget-object v1, v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->context:Landroid/content/Context;

    instance-of v1, v1, Lio/dcloud/WebAppActivity;

    if-eqz v1, :cond_175

    .line 89
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$1;

    invoke-direct {v2, v0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$1;-><init>(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_175
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AdFeatureImpl.AdReceiver.AnonymousClass1 (io.dcloud.feature.gg.dcloud.AdFeatureImpl$AdReceiver$1)
.class Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->onReceiver(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$1;->this$0:Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$1;->this$0:Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->access$400(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/dcloud/WebAppActivity;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$1;->this$0:Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->access$400(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/WebAppActivity;->onCreateAdSplash(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$1;->this$0:Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->access$400(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/dcloud/WebAppActivity;

    invoke-virtual {v0}, Lio/dcloud/WebAppActivity;->initBackToFrontSplashAd()V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AdFeatureImpl.AdReceiver.AnonymousClass2 (io.dcloud.feature.gg.dcloud.AdFeatureImpl$AdReceiver$2)
.class Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->onError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$2;->this$0:Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$2;->this$0:Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->access$400(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver$2;->this$0:Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;->access$600(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pull"

    const-string v3, "RETRY"

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.AdFeatureImpl.MyHandler (io.dcloud.feature.gg.dcloud.AdFeatureImpl$MyHandler)
.class Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void
.end method
