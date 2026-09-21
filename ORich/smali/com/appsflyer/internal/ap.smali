###### Class com.appsflyer.internal.ap (com.appsflyer.internal.ap)
.class public final Lcom/appsflyer/internal/ap;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static valueOf(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    const/4 v0, 0x0

    .line 23
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8b

    .line 24
    :try_start_6
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    const-string v2, "disableProxy"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v2, "monitor"

    .line 25
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-nez p0, :cond_2c

    .line 1037
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p0, :cond_26

    .line 1038
    new-instance p0, Lcom/appsflyer/internal/ak;

    invoke-direct {p0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 1040
    :cond_26
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 29
    invoke-virtual {p0}, Lcom/appsflyer/internal/ak;->AFInAppEventType()V

    goto :goto_4c

    .line 2037
    :cond_2c
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p0, :cond_37

    .line 2038
    new-instance p0, Lcom/appsflyer/internal/ak;

    invoke-direct {p0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 2040
    :cond_37
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 31
    invoke-virtual {p0}, Lcom/appsflyer/internal/ak;->valueOf()V

    .line 3037
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p0, :cond_47

    .line 3038
    new-instance p0, Lcom/appsflyer/internal/ak;

    invoke-direct {p0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 3040
    :cond_47
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 32
    invoke-virtual {p0}, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName()V

    :goto_4c
    const-string p0, "ol_id"

    .line 36
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b4

    const-string p0, "ol_scheme"

    .line 38
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ol_domain"

    .line 39
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ol_ver"

    .line 40
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_71

    .line 43
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v4, "onelinkScheme"

    invoke-virtual {v3, v4, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    if-eqz v2, :cond_7c

    .line 46
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    const-string v3, "onelinkDomain"

    invoke-virtual {p0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    if-eqz v0, :cond_b4

    .line 49
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    const-string v2, "onelinkVersion"

    invoke-virtual {p0, v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6 .. :try_end_87} :catchall_88

    goto :goto_b4

    :catchall_88
    move-exception p0

    move-object v0, v1

    goto :goto_8c

    :catchall_8b
    move-exception p0

    .line 54
    :goto_8c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4037
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p0, :cond_9e

    .line 4038
    new-instance p0, Lcom/appsflyer/internal/ak;

    invoke-direct {p0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 4040
    :cond_9e
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 55
    invoke-virtual {p0}, Lcom/appsflyer/internal/ak;->valueOf()V

    .line 5037
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p0, :cond_ae

    .line 5038
    new-instance p0, Lcom/appsflyer/internal/ak;

    invoke-direct {p0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 5040
    :cond_ae
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 56
    invoke-virtual {p0}, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName()V

    move-object v1, v0

    :cond_b4
    :goto_b4
    return-object v1
.end method
