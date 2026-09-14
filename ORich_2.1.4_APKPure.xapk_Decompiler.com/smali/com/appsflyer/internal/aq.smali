###### Class com.appsflyer.internal.aq (com.appsflyer.internal.aq)
.class public final Lcom/appsflyer/internal/aq;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(Ljava/util/Map;)V
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

    .line 26
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/j;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    .line 30
    :try_start_9
    invoke-static {p0}, Lcom/appsflyer/deeplink/DeepLink;->values(Ljava/util/Map;)Lcom/appsflyer/deeplink/DeepLink;

    move-result-object p0

    .line 1139
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFKeystoreWrapper:Lorg/json/JSONObject;

    const-string v2, "is_deferred"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_15} :catch_20
    .catchall {:try_start_9 .. :try_end_15} :catchall_1e

    .line 35
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, p0, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    :goto_1a
    invoke-static {v1}, Lcom/appsflyer/internal/aq;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_2e

    :catch_20
    move-exception p0

    :try_start_21
    const-string v1, "[DDL] Error occurred"

    .line 32
    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    sget-object p0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 35
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, v0, p0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    goto :goto_1a

    :goto_2e
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, v0, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-static {v1}, Lcom/appsflyer/internal/aq;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 36
    throw p0

    .line 38
    :cond_37
    invoke-static {p0}, Lcom/appsflyer/internal/aq;->AFInAppEventType(Ljava/util/Map;)V

    return-void
.end method

.method static AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .registers 3

    .line 43
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/j;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_30

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DDL] Calling onDeepLinking with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 46
    :try_start_1d
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/j;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/deeplink/DeepLinkListener;->onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_30
    const-string p0, "[DDL] skipping, no callback registered"

    .line 51
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    return-void
.end method

.method private static AFInAppEventType(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_27

    .line 58
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling onAppOpenAttribution with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onAppOpenAttribution(Ljava/util/Map;)V
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    return-void
.end method

.method private static valueOf(Ljava/lang/String;)V
    .registers 3

    .line 67
    sget-object v0, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_1f

    :try_start_4
    const-string v0, "Calling onAppOpenAttributionFailure with: "

    .line 69
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onAttributionFailure(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    return-void
.end method

.method public static valueOf(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V
    .registers 3

    .line 19
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/j;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_1f

    .line 20
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[DDL] Error occurred: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 21
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-static {p0}, Lcom/appsflyer/internal/aq;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    return-void

    .line 22
    :cond_1f
    invoke-static {p0}, Lcom/appsflyer/internal/aq;->valueOf(Ljava/lang/String;)V

    return-void
.end method
