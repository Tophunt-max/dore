###### Class com.appsflyer.internal.bn (com.appsflyer.internal.bn)
.class public final Lcom/appsflyer/internal/bn;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "is_first_launch"

    .line 37
    invoke-virtual {p1}, Lcom/appsflyer/internal/f;->AFInAppEventType()Z

    move-result v4

    if-nez v4, :cond_e

    return-void

    .line 38
    :cond_e
    sget-object v4, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener;

    if-nez v4, :cond_18

    const-string v0, "[GCD-E01] AppsFlyerConversionListener is null - skip gcd"

    .line 39
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    .line 42
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[GCD-A01] Loading conversion data. Counter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, p1

    .line 3159
    iget v5, v5, Lcom/appsflyer/internal/f;->onAppOpenAttributionNative:I

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    const-string v4, "appsflyerConversionDataCacheExpiration"

    const-wide/16 v5, 0x0

    .line 43
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v9, 0x0

    const-string v10, "attributionId"

    cmp-long v11, v7, v5

    if-eqz v11, :cond_59

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    const-wide v7, 0x134fd9000L

    cmp-long v13, v11, v7

    if-lez v13, :cond_59

    const-string v7, "[GCD-E02] Cached conversion data expired"

    .line 45
    invoke-static {v7}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    const-string v7, "sixtyDayConversionData"

    .line 46
    invoke-static {v1, v7}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {v1, v10, v9}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;Ljava/lang/String;J)V

    .line 50
    :cond_59
    invoke-interface {v2, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_92

    const/4 v0, 0x0

    const-string v4, "appsFlyerCount"

    .line 3774
    invoke-static {v2, v4, v0}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_6a

    return-void

    .line 53
    :cond_6a
    :try_start_6a
    invoke-static/range {p3 .. p3}, Lcom/appsflyer/internal/bn;->valueOf(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0
    :try_end_6e
    .catch Lcom/appsflyer/internal/bo; {:try_start_6a .. :try_end_6e} :catch_89

    if-nez v0, :cond_71

    return-void

    .line 57
    :cond_71
    :try_start_71
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 58
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_7c
    invoke-static {v0}, Lcom/appsflyer/internal/bu;->valueOf(Ljava/util/Map;)V
    :try_end_7f
    .catchall {:try_start_71 .. :try_end_7f} :catchall_80

    return-void

    :catchall_80
    move-exception v0

    .line 61
    :try_start_81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_88
    .catch Lcom/appsflyer/internal/bo; {:try_start_81 .. :try_end_88} :catch_89

    return-void

    :catch_89
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_92
    if-eqz p6, :cond_aa

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/bu;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void

    .line 72
    :cond_aa
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_c0

    .line 73
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launch status code: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/bu;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_c0
    new-instance v2, Lcom/appsflyer/internal/bu;

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    move-object/from16 v3, p2

    invoke-direct {v2, p0, v1, v3}, Lcom/appsflyer/internal/bu;-><init>(Lcom/appsflyer/internal/ag;Landroid/app/Application;Ljava/lang/String;)V

    .line 4221
    iget-object v0, v2, Lcom/appsflyer/internal/bu;->valueOf:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method static valueOf(Landroid/content/Context;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/bo;
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "attributionId"

    const/4 v1, 0x0

    .line 83
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 85
    invoke-static {p0}, Lcom/appsflyer/internal/bn;->values(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 86
    :cond_18
    new-instance p0, Lcom/appsflyer/internal/bo;

    invoke-direct {p0}, Lcom/appsflyer/internal/bo;-><init>()V

    throw p0
.end method

.method static values(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 92
    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 94
    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "is_cache"

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 97
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move-object v4, v1

    goto :goto_2f

    :cond_2b
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :goto_2f
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_32} :catch_34

    goto :goto_f

    :cond_33
    return-object v0

    :catch_34
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
