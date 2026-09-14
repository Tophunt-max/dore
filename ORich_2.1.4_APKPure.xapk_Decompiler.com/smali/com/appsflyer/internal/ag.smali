###### Class com.appsflyer.internal.ag (com.appsflyer.internal.ag)
.class public final Lcom/appsflyer/internal/ag;
.super Lcom/appsflyer/AppsFlyerLib;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/ag$a;,
        Lcom/appsflyer/internal/ag$e;,
        Lcom/appsflyer/internal/ag$c;
    }
.end annotation


# static fields
.field public static AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener; = null

.field static final AFInAppEventType:Ljava/lang/String; = "130"

.field static AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener; = null

.field private static onAppOpenAttribution:Lcom/appsflyer/internal/ag; = null

.field private static onAttributionFailure:Ljava/lang/String; = null

.field private static onConversionDataFail:Ljava/lang/String; = null

.field private static onConversionDataSuccess:Ljava/lang/String; = null

.field private static onDeepLinking:Ljava/lang/String; = null

.field private static onDeepLinkingNative:Ljava/lang/String; = "https://%sstats.%s/stats"

.field private static final onInstallConversionDataLoadedNative:Ljava/lang/String;

.field private static onInstallConversionFailureNative:Ljava/lang/String; = null

.field public static final valueOf:Ljava/lang/String; = "6.4"

.field public static final values:Ljava/lang/String;


# instance fields
.field public AFLogger$LogLevel:Lcom/appsflyer/internal/au;

.field public AFVersionDeclaration:[Lcom/appsflyer/internal/cj;

.field AppsFlyer2dXConversionCallback:J

.field private AppsFlyerConversionListener:J

.field private AppsFlyerInAppPurchaseValidatorListener:J

.field private AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

.field private enableLocationCollection:Z

.field private getInstance:Ljava/lang/String;

.field getLevel:Ljava/lang/String;

.field private getOutOfStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private getSdkVersion:J

.field init:Ljava/lang/String;

.field final onAppOpenAttributionNative:Lcom/appsflyer/internal/be;

.field public onAttributionFailureNative:Lcom/appsflyer/internal/o;

.field private onPause:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onValidateInApp:J

.field private onValidateInAppFailure:Z

.field private sendPushNotificationData:Ljava/lang/String;

.field private final setAdditionalData:Ljava/util/concurrent/Executor;

.field private setAndroidIdData:Z

.field private setAppInviteOneLink:Lcom/appsflyer/internal/ch;

.field private setCustomerIdAndLogSession:Z

.field private setCustomerUserId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private setDebugLog:Z

.field private setImeiData:Z

.field private final setOaidData:Lcom/appsflyer/internal/an;

.field private setOutOfStore:Lcom/appsflyer/internal/bb;

.field private setPhoneNumber:Landroid/app/Application;

.field private setUserEmails:Landroid/content/SharedPreferences;

.field private stop:J

.field private updateServerUninstallToken:Z

.field private waitForCustomerUserId:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6.4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/androidevent?buildnumber=6.4.2&app_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/ag;->values:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://%sadrevenue.%s/api/v"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/android?buildnumber=6.4.2&app_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/ag;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/androidevent?app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/ag;->onInstallConversionDataLoadedNative:Ljava/lang/String;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sconversions.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/ag;->onConversionDataFail:Ljava/lang/String;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%slaunches.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/ag;->onAttributionFailure:Ljava/lang/String;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sinapps.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/ag;->onConversionDataSuccess:Ljava/lang/String;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sattr.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/ag;->onDeepLinking:Ljava/lang/String;

    const/4 v0, 0x0

    .line 178
    sput-object v0, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    .line 179
    sput-object v0, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 181
    new-instance v0, Lcom/appsflyer/internal/ag;

    invoke-direct {v0}, Lcom/appsflyer/internal/ag;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 232
    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerLib;-><init>()V

    const-wide/16 v0, -0x1

    .line 184
    iput-wide v0, p0, Lcom/appsflyer/internal/ag;->AppsFlyerInAppPurchaseValidatorListener:J

    .line 185
    iput-wide v0, p0, Lcom/appsflyer/internal/ag;->onValidateInApp:J

    .line 186
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/ag;->AppsFlyerConversionListener:J

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/appsflyer/internal/ag;->onValidateInAppFailure:Z

    const/4 v1, 0x0

    .line 190
    iput-object v1, p0, Lcom/appsflyer/internal/ag;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    .line 193
    iput-boolean v0, p0, Lcom/appsflyer/internal/ag;->updateServerUninstallToken:Z

    .line 198
    new-instance v1, Lcom/appsflyer/internal/an;

    invoke-direct {v1}, Lcom/appsflyer/internal/an;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/ag;->setOaidData:Lcom/appsflyer/internal/an;

    .line 199
    iput-boolean v0, p0, Lcom/appsflyer/internal/ag;->setAndroidIdData:Z

    .line 200
    iput-boolean v0, p0, Lcom/appsflyer/internal/ag;->setDebugLog:Z

    .line 205
    iput-boolean v0, p0, Lcom/appsflyer/internal/ag;->setCustomerIdAndLogSession:Z

    .line 208
    iput-boolean v0, p0, Lcom/appsflyer/internal/ag;->waitForCustomerUserId:Z

    .line 216
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/ag;->setAdditionalData:Ljava/util/concurrent/Executor;

    .line 233
    invoke-static {}, Lcom/appsflyer/AFVersionDeclaration;->init()V

    .line 234
    new-instance v0, Lcom/appsflyer/internal/be;

    invoke-direct {v0}, Lcom/appsflyer/internal/be;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/ag;->onAppOpenAttributionNative:Lcom/appsflyer/internal/be;

    return-void
.end method

.method public static AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 605
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/ag;)Ljava/util/Map;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/appsflyer/internal/ag;->setCustomerUserId:Ljava/util/Map;

    return-object p0
.end method

.method private AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1338
    new-instance v0, Lcom/appsflyer/internal/ca;

    invoke-direct {v0}, Lcom/appsflyer/internal/ca;-><init>()V

    if-eqz p1, :cond_f

    .line 50305
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 50307
    :cond_f
    iput-object p2, v0, Lcom/appsflyer/internal/f;->AFVersionDeclaration:Ljava/lang/String;

    .line 50309
    iput-object p3, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Ljava/util/Map;

    .line 1339
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1a

    check-cast p1, Landroid/app/Activity;

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 1338
    :goto_1b
    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Lcom/appsflyer/internal/f;Landroid/app/Activity;)V

    return-void
.end method

.method public static AFInAppEventParameterName(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50791
    sget-object v0, Lcom/appsflyer/internal/y$c;->valueOf:Lcom/appsflyer/internal/y;

    .line 2151
    invoke-static {p0}, Lcom/appsflyer/internal/y;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/y$e;

    move-result-object p0

    .line 50792
    iget-object v0, p0, Lcom/appsflyer/internal/y$e;->values:Ljava/lang/String;

    const-string v1, "network"

    .line 2152
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    iget-object v0, p0, Lcom/appsflyer/internal/y$e;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 50794
    iget-object v0, p0, Lcom/appsflyer/internal/y$e;->AFKeystoreWrapper:Ljava/lang/String;

    const-string v1, "operator"

    .line 2154
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    :cond_18
    iget-object v0, p0, Lcom/appsflyer/internal/y$e;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 50796
    iget-object p0, p0, Lcom/appsflyer/internal/y$e;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v0, "carrier"

    .line 2157
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51138
    iget-object v1, p1, Lcom/appsflyer/internal/f;->onAttributionFailureNative:Ljava/lang/String;

    .line 51110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 51139
    iget-object v0, p1, Lcom/appsflyer/internal/f;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 51113
    invoke-virtual {p1}, Lcom/appsflyer/internal/f;->AFKeystoreWrapper()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 51114
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cached data: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_5c

    .line 51116
    :cond_2e
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{C}"

    const-string v2, "*Non-printing character*"

    .line 51117
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51118
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v0, "Payload contains non-printing characters"

    .line 51120
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    move-object v0, v1

    .line 51122
    :cond_4f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/am;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 51140
    :goto_5c
    sget-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v1, :cond_67

    .line 51141
    new-instance v1, Lcom/appsflyer/internal/ak;

    invoke-direct {v1}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 51143
    :cond_67
    sget-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 51144
    iget-object v2, p1, Lcom/appsflyer/internal/f;->onAttributionFailureNative:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "server_request"

    .line 51145
    invoke-virtual {v1, v0, v2, v3}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 51126
    :try_start_76
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Lcom/appsflyer/internal/f;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    move-exception v0

    const-string v1, "Exception in sendRequestToServer. "

    .line 51128
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51129
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "useHttpFallback"

    invoke-virtual {v1, v2, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 51147
    iget-object v0, p1, Lcom/appsflyer/internal/f;->onAttributionFailureNative:Ljava/lang/String;

    const-string v1, "https:"

    const-string v2, "http:"

    .line 51131
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/f;->values(Ljava/lang/String;)Lcom/appsflyer/internal/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Lcom/appsflyer/internal/f;)V

    return-void

    .line 51133
    :cond_9e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "failed to send request to server. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 51134
    throw v0
.end method

.method private AFInAppEventParameterName()Z
    .registers 12

    .line 1461
    iget-wide v0, p0, Lcom/appsflyer/internal/ag;->AppsFlyerInAppPurchaseValidatorListener:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_8d

    .line 1462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1463
    iget-wide v3, p0, Lcom/appsflyer/internal/ag;->AppsFlyerInAppPurchaseValidatorListener:J

    sub-long/2addr v0, v3

    .line 50353
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyy/MM/dd HH:mm:ss.SSS Z"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1465
    iget-wide v4, p0, Lcom/appsflyer/internal/ag;->AppsFlyerInAppPurchaseValidatorListener:J

    const-string v6, "UTC"

    .line 50354
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50355
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1466
    iget-wide v7, p0, Lcom/appsflyer/internal/ag;->onValidateInApp:J

    .line 50356
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50357
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1468
    iget-wide v5, p0, Lcom/appsflyer/internal/ag;->AppsFlyerConversionListener:J

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    cmp-long v10, v0, v5

    if-gez v10, :cond_6f

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v5

    if-nez v5, :cond_6f

    .line 1470
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v3, v6, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    iget-wide v0, p0, Lcom/appsflyer/internal/ag;->AppsFlyerConversionListener:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    return v9

    .line 1474
    :cond_6f
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v5

    if-nez v5, :cond_98

    .line 1476
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v3, v6, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_98

    .line 1480
    :cond_8d
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "Sending first launch for this session!"

    .line 1481
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    :cond_98
    :goto_98
    return v2
.end method

.method public static AFInAppEventParameterName(Landroid/content/SharedPreferences;)Z
    .registers 3

    const-string v0, "sentSuccessfully"

    const/4 v1, 0x0

    .line 2090
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private AFInAppEventParameterName(Lcom/appsflyer/internal/f;Landroid/content/SharedPreferences;)Z
    .registers 7

    const-string v0, "appsFlyerCount"

    const/4 v1, 0x0

    .line 50358
    invoke-static {p2, v0, v1}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 1611
    instance-of p1, p1, Lcom/appsflyer/internal/bt;

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    const-string v3, "newGPReferrerSent"

    .line 1614
    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1d

    if-ne v0, v2, :cond_1d

    const/4 p2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    :goto_1e
    if-nez p2, :cond_24

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    return v1

    :cond_24
    :goto_24
    return v2
.end method

.method private static AFInAppEventParameterName(Ljava/io/File;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 2640
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;Z)Z
    .registers 3

    .line 609
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/ag;J)J
    .registers 3

    .line 129
    iput-wide p1, p0, Lcom/appsflyer/internal/ag;->stop:J

    return-wide p1
.end method

.method public static AFInAppEventType()Lcom/appsflyer/internal/ag;
    .registers 1

    .line 238
    sget-object v0, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    return-object v0
.end method

.method private static AFInAppEventType(Landroid/app/Activity;)Ljava/lang/String;
    .registers 7

    const-string v0, "af"

    const/4 v1, 0x0

    if-eqz p0, :cond_37

    .line 2212
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 2215
    :try_start_b
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 2217
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    const-string v4, "Push Notification received af payload = "

    .line 2219
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2f

    goto :goto_37

    :catchall_2f
    move-exception p0

    .line 2225
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    return-object v1
.end method

.method private static AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    .line 2512
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2513
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    move-object v0, p0

    goto :goto_29

    :catchall_21
    move-exception p0

    .line 2515
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_29
    return-object v0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/ag;)Ljava/util/Map;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/appsflyer/internal/ag;->getOutOfStore:Ljava/util/Map;

    return-object p0
.end method

.method public static AFInAppEventType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 566
    invoke-static {p0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 567
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 568
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18506
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static AFInAppEventType(Landroid/content/Context;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "window"

    .line 2095
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_30

    .line 2098
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 2099
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_29

    const/4 v0, 0x1

    if-eq p0, v0, :cond_26

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-eq p0, v0, :cond_20

    const-string p0, ""

    goto :goto_2b

    :cond_20
    const-string p0, "lr"

    goto :goto_2b

    :cond_23
    const-string p0, "pr"

    goto :goto_2b

    :cond_26
    const-string p0, "l"

    goto :goto_2b

    :cond_29
    const-string p0, "p"

    :goto_2b
    const-string v0, "sc_o"

    .line 2114
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-void
.end method

.method public static AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    if-eqz p0, :cond_12

    .line 2973
    :try_start_2
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2974
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2975
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_12
    const-string p0, "scheduler is null, shut downed or terminated"

    .line 2977
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_17} :catch_1f
    .catchall {:try_start_2 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception p0

    const-string p1, "scheduleJob failed with Exception"

    .line 2982
    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1f
    move-exception p0

    const-string p1, "scheduleJob failed with RejectedExecutionException Exception"

    .line 2980
    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private AFInAppEventType(Landroid/content/Context;)Z
    .registers 14

    const-string v0, "com.appsflyer.lvl.AppsFlyerLVL"

    const/4 v1, 0x0

    .line 899
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 901
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/appsflyer/internal/ag;->setCustomerUserId:Ljava/util/Map;

    .line 902
    new-instance v4, Lcom/appsflyer/internal/ag$3;

    invoke-direct {v4, p0, v2, v3}, Lcom/appsflyer/internal/ag$3;-><init>(Lcom/appsflyer/internal/ag;J)V
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_16} :catch_8b

    const/4 v5, 0x1

    .line 44017
    :try_start_17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "com.appsflyer.lvl.AppsFlyerLVL$resultListener"

    .line 44018
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "checkLicense"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    .line 44020
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v1

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v5

    const/4 v10, 0x2

    aput-object v6, v9, v10

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44022
    new-instance v7, Lcom/appsflyer/internal/u$3;

    invoke-direct {v7, v4}, Lcom/appsflyer/internal/u$3;-><init>(Lcom/appsflyer/internal/u$e;)V

    .line 44069
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-array v11, v5, [Ljava/lang/Class;

    aput-object v6, v11, v1

    invoke-static {v9, v11, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    .line 44070
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    aput-object p1, v8, v5

    aput-object v6, v8, v10

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_56} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_56} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_56} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_56} :catch_57

    goto :goto_8a

    :catch_57
    move-exception p1

    .line 44086
    :try_start_58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8a

    :catch_64
    move-exception p1

    .line 44082
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8a

    :catch_71
    move-exception p1

    .line 44078
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8a

    :catch_7e
    move-exception p1

    .line 44074
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_58 .. :try_end_8a} :catch_8b

    :goto_8a
    return v5

    :catch_8b
    return v1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/ag;)Landroid/app/Application;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/appsflyer/internal/ag;->setPhoneNumber:Landroid/app/Application;

    return-object p0
.end method

.method public static AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 50831
    sget-object v0, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    .line 2766
    iget-object v1, v0, Lcom/appsflyer/internal/ag;->setUserEmails:Landroid/content/SharedPreferences;

    if-nez v1, :cond_13

    .line 2767
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "appsflyer-data"

    .line 2768
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v0, Lcom/appsflyer/internal/ag;->setUserEmails:Landroid/content/SharedPreferences;

    .line 50833
    :cond_13
    sget-object p0, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    .line 2770
    iget-object p0, p0, Lcom/appsflyer/internal/ag;->setUserEmails:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    if-eqz p0, :cond_1e

    .line 2645
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    .line 2646
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    move-exception p0

    .line 2649
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x80

    .line 2532
    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_2c

    .line 2534
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 2536
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    move-exception p1

    .line 2540
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not find "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value in the manifest"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static AFKeystoreWrapper(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .registers 4

    const-string v0, "UTC"

    .line 1409
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1410
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 573
    invoke-static {p0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 574
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    .line 575
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 19506
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/f;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 50851
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/appsflyer/internal/f;->onAttributionFailureNative:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2868
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/f;->AFKeystoreWrapper()[B

    move-result-object v2

    .line 50852
    iget-object v3, v0, Lcom/appsflyer/internal/f;->init:Ljava/lang/String;

    .line 50853
    iget-object v4, v0, Lcom/appsflyer/internal/f;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 2871
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/f;->AFInAppEventType()Z

    move-result v5

    .line 50854
    iget-object v6, v0, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 50855
    iget-object v7, v0, Lcom/appsflyer/internal/f;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    const/4 v10, 0x1

    if-eqz v5, :cond_24

    .line 50856
    iget v11, v0, Lcom/appsflyer/internal/f;->onAppOpenAttributionNative:I

    if-ne v11, v10, :cond_24

    const/4 v11, 0x1

    goto :goto_25

    :cond_24
    const/4 v11, 0x0

    .line 50857
    :goto_25
    iget-object v12, v8, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    if-nez v12, :cond_30

    new-instance v12, Lcom/appsflyer/internal/au;

    invoke-direct {v12, v6}, Lcom/appsflyer/internal/au;-><init>(Landroid/content/Context;)V

    iput-object v12, v8, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 50858
    :cond_30
    iget-object v12, v8, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    if-eqz v11, :cond_4b

    .line 2879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-wide v9, v8, Lcom/appsflyer/internal/ag;->getSdkVersion:J

    sub-long/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 50859
    iget-object v10, v12, Lcom/appsflyer/internal/au;->values:Ljava/util/Map;

    const-string v13, "from_fg"

    invoke-interface {v10, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    goto :goto_4d

    :cond_4b
    const-wide/16 v9, 0x0

    .line 2883
    :goto_4d
    :try_start_4d
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_1c3

    :try_start_53
    const-string v13, "POST"

    .line 2884
    invoke-virtual {v14, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2885
    array-length v13, v2

    const-string v15, "Content-Length"

    .line 2886
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Content-Type"

    .line 2887
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/f;->valueOf()Z

    move-result v15

    if-eqz v15, :cond_6d

    const-string v15, "application/octet-stream"

    goto :goto_6f

    :cond_6d
    const-string v15, "application/json"

    :goto_6f
    invoke-virtual {v14, v13, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x2710

    .line 2888
    invoke-virtual {v14, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v13, 0x1

    .line 2889
    invoke-virtual {v14, v13}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 2891
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v15

    const-string v0, "http_cache"

    invoke-virtual {v15, v0, v13}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8b

    const/4 v0, 0x0

    .line 2892
    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_8b
    .catchall {:try_start_53 .. :try_end_8b} :catchall_1c0

    .line 2896
    :cond_8b
    :try_start_8b
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-virtual {v14}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_1b8

    .line 2897
    :try_start_94
    invoke-virtual {v13, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_1b6

    .line 2899
    :try_start_97
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 2902
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eqz v11, :cond_b1

    const-string v2, "net"

    .line 2904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 50861
    iget-object v10, v12, Lcom/appsflyer/internal/au;->values:Ljava/util/Map;

    invoke-interface {v10, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2906
    :cond_b1
    invoke-static {v14}, Lcom/appsflyer/internal/ag;->valueOf(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 50863
    sget-object v9, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v9, :cond_c0

    .line 50864
    new-instance v9, Lcom/appsflyer/internal/ak;

    invoke-direct {v9}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v9, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50866
    :cond_c0
    sget-object v9, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 2907
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "server_response"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    .line 50867
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v2, v11, v12

    invoke-virtual {v9, v10, v1, v11}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "response code: "

    .line 2908
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 2909
    invoke-static {v6}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_184

    if-eqz v6, :cond_fc

    if-eqz v5, :cond_fc

    .line 2915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v8, Lcom/appsflyer/internal/ag;->onValidateInApp:J

    .line 50869
    iget-object v1, v8, Lcom/appsflyer/internal/ag;->onAppOpenAttributionNative:Lcom/appsflyer/internal/be;

    .line 2918
    invoke-interface {v1}, Lcom/appsflyer/internal/bg;->values()Lcom/appsflyer/internal/av;

    :cond_fc
    if-eqz v7, :cond_101

    .line 2920
    invoke-interface {v7}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onSuccess()V

    :cond_101
    if-eqz v4, :cond_10a

    .line 2922
    invoke-static {}, Lcom/appsflyer/internal/ah;->values()Lcom/appsflyer/internal/ah;

    invoke-static {v4, v6}, Lcom/appsflyer/internal/ah;->values(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_153

    :cond_10a
    const-string v1, "sentSuccessfully"

    const-string v4, "true"

    .line 50901
    invoke-static {v6}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 50902
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 50903
    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50906
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50908
    iget-boolean v1, v8, Lcom/appsflyer/internal/ag;->onValidateInAppFailure:Z

    if-nez v1, :cond_153

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v10, v8, Lcom/appsflyer/internal/ag;->AppsFlyer2dXConversionCallback:J

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x3a98

    cmp-long v1, v4, v10

    if-gez v1, :cond_12e

    goto :goto_153

    .line 50911
    :cond_12e
    iget-object v1, v8, Lcom/appsflyer/internal/ag;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_153

    .line 50921
    sget-object v1, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez v1, :cond_13d

    .line 50922
    new-instance v1, Lcom/appsflyer/internal/l;

    invoke-direct {v1}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object v1, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 50924
    :cond_13d
    sget-object v1, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 50914
    invoke-virtual {v1}, Lcom/appsflyer/internal/l;->AFInAppEventType()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    iput-object v1, v8, Lcom/appsflyer/internal/ag;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50916
    new-instance v1, Lcom/appsflyer/internal/ag$c;

    invoke-direct {v1, v8, v6}, Lcom/appsflyer/internal/ag$c;-><init>(Lcom/appsflyer/internal/ag;Landroid/content/Context;)V

    .line 50919
    iget-object v4, v8, Lcom/appsflyer/internal/ag;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v10, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v1, v10, v11, v5}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 2927
    :cond_153
    :goto_153
    new-instance v1, Lcom/appsflyer/internal/bp;

    invoke-direct {v1, v6}, Lcom/appsflyer/internal/bp;-><init>(Landroid/content/Context;)V

    .line 50925
    invoke-virtual {v1}, Lcom/appsflyer/internal/bp;->values()Lcom/appsflyer/internal/ac;

    move-result-object v4

    if-eqz v4, :cond_176

    .line 50926
    invoke-virtual {v4}, Lcom/appsflyer/internal/ac;->AFInAppEventType()Z

    move-result v5

    if-eqz v5, :cond_176

    .line 50933
    iget-object v4, v4, Lcom/appsflyer/internal/ac;->values:Ljava/lang/String;

    const-string v5, "Resending Uninstall token to AF servers: "

    .line 50929
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 50930
    invoke-virtual {v1, v4}, Lcom/appsflyer/internal/bp;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 2928
    :cond_176
    invoke-static {v2}, Lcom/appsflyer/internal/ap;->valueOf(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "send_background"

    const/4 v4, 0x0

    .line 2930
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v8, Lcom/appsflyer/internal/ag;->setAndroidIdData:Z

    goto :goto_1a1

    :cond_184
    if-eqz v7, :cond_1a1

    .line 2933
    sget v1, Lcom/appsflyer/attribution/RequestError;->RESPONSE_CODE_FAILURE:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/ay;->AFInAppEventType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 2936
    :cond_1a1
    :goto_1a1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v6

    move-object v5, v9

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/appsflyer/internal/bn;->AFInAppEventParameterName(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    :try_end_1b0
    .catchall {:try_start_97 .. :try_end_1b0} :catchall_1c0

    if-eqz v14, :cond_1b5

    .line 2939
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b5
    return-void

    :catchall_1b6
    move-exception v0

    goto :goto_1ba

    :catchall_1b8
    move-exception v0

    const/4 v13, 0x0

    :goto_1ba
    if-eqz v13, :cond_1bf

    .line 2899
    :try_start_1bc
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 2900
    :cond_1bf
    throw v0
    :try_end_1c0
    .catchall {:try_start_1bc .. :try_end_1c0} :catchall_1c0

    :catchall_1c0
    move-exception v0

    move-object v13, v14

    goto :goto_1c5

    :catchall_1c3
    move-exception v0

    const/4 v13, 0x0

    :goto_1c5
    if-eqz v13, :cond_1ca

    .line 2939
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2941
    :cond_1ca
    throw v0
.end method

.method private AFKeystoreWrapper()Z
    .registers 2

    .line 1659
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->getOutOfStore:Ljava/util/Map;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static AFLogger$LogLevel(Landroid/content/Context;)F
    .registers 4

    .line 3045
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "level"

    const/4 v1, -0x1

    .line 3046
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    .line 3047
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2d

    if-eq v0, v1, :cond_2a

    if-ne p0, v1, :cond_22

    goto :goto_2a

    :cond_22
    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v0, v0, p0

    goto :goto_37

    :cond_2a
    :goto_2a
    const/high16 p0, 0x42480000    # 50.0f

    return p0

    :catchall_2d
    move-exception p0

    .line 3056
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_37
    return v0
.end method

.method static synthetic AFLogger$LogLevel(Lcom/appsflyer/internal/ag;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/appsflyer/internal/ag;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private AFVersionDeclaration()Z
    .registers 2

    .line 1663
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->setCustomerUserId:Ljava/util/Map;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic AFVersionDeclaration(Lcom/appsflyer/internal/ag;)Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lcom/appsflyer/internal/ag;->onValidateInAppFailure:Z

    return p0
.end method

.method private static AppsFlyer2dXConversionCallback(Landroid/content/Context;)Z
    .registers 5

    .line 2474
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectAndroidIdForceByUser"

    const/4 v2, 0x0

    .line 2475
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 2476
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v3, "collectIMEIForceByUser"

    .line 2477
    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-nez v0, :cond_28

    .line 2479
    invoke-static {p0}, Lcom/appsflyer/internal/ag;->getLevel(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_28

    :cond_27
    return v2

    :cond_28
    :goto_28
    return v1
.end method

.method static synthetic AppsFlyer2dXConversionCallback(Lcom/appsflyer/internal/ag;)[Lcom/appsflyer/internal/cj;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/appsflyer/internal/ag;->AFVersionDeclaration:[Lcom/appsflyer/internal/cj;

    return-object p0
.end method

.method static synthetic getLevel(Lcom/appsflyer/internal/ag;)Lcom/appsflyer/internal/ch;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/appsflyer/internal/ag;->setAppInviteOneLink:Lcom/appsflyer/internal/ch;

    return-object p0
.end method

.method private static getLevel(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    .line 2359
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    if-nez v1, :cond_12

    return v0

    :catchall_c
    move-exception v1

    const-string v2, "WARNING:  Google play services is unavailable. "

    .line 2365
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    const/4 v1, 0x0

    .line 2369
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.google.android.gms"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1c} :catch_1d

    return v0

    :catch_1d
    move-exception p0

    const-string v0, "WARNING:  Google Play Services is unavailable. "

    .line 2372
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method static synthetic init(Lcom/appsflyer/internal/ag;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/appsflyer/internal/ag;->AppsFlyerLib:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private static init(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_77

    .line 3065
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const-string v3, "Failed collecting ivc data"

    if-lt v1, v2, :cond_3b

    :try_start_b
    const-string v1, "connectivity"

    .line 3067
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 3068
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v2, :cond_35

    aget-object v5, v1, v4

    .line 3069
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    const/4 v6, 0x4

    .line 3070
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_32

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_36

    if-nez v5, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_35
    return v0

    :catch_36
    move-exception p0

    .line 3076
    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_77

    .line 3078
    :cond_3b
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p0, v1, :cond_77

    .line 3079
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3081
    :try_start_46
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_52
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 3082
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 3083
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_6c
    const-string v1, "tun0"

    .line 3086
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_72} :catch_73

    return p0

    :catch_73
    move-exception p0

    .line 3089
    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_77
    :goto_77
    return v0
.end method

.method public static valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I
    .registers 4

    const/4 v0, 0x0

    .line 2788
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_13

    add-int/lit8 v0, v0, 0x1

    .line 2792
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2793
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50834
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50836
    :cond_13
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p0, :cond_1e

    .line 50837
    new-instance p0, Lcom/appsflyer/internal/ak;

    invoke-direct {p0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50839
    :cond_1e
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 2797
    invoke-virtual {p0}, Lcom/appsflyer/internal/ak;->AppsFlyer2dXConversionCallback()Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 50840
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p0, :cond_31

    .line 50841
    new-instance p0, Lcom/appsflyer/internal/ak;

    invoke-direct {p0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50843
    :cond_31
    sget-object p0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 2798
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/ak;->valueOf(Ljava/lang/String;)V

    :cond_3a
    return v0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/ag;)J
    .registers 3

    .line 129
    iget-wide v0, p0, Lcom/appsflyer/internal/ag;->getSdkVersion:J

    return-wide v0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/ag;J)J
    .registers 3

    .line 129
    iput-wide p1, p0, Lcom/appsflyer/internal/ag;->getSdkVersion:J

    return-wide p1
.end method

.method private static valueOf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 2618
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 2619
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_3e
    .catchall {:try_start_1 .. :try_end_b} :catchall_26

    .line 2620
    :try_start_b
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    const-string v3, "Found PreInstall property!"

    .line 2621
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_3f
    .catchall {:try_start_b .. :try_end_17} :catchall_24

    .line 2630
    :try_start_17
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_23

    :catchall_1b
    move-exception p1

    .line 2633
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    return-object p0

    :catchall_24
    move-exception p0

    goto :goto_28

    :catchall_26
    move-exception p0

    move-object v2, v0

    .line 2626
    :goto_28
    :try_start_28
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_5a

    if-eqz v2, :cond_59

    .line 2630
    :try_start_31
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_59

    :catchall_35
    move-exception p0

    .line 2633
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    :catch_3e
    move-object v2, v0

    .line 2624
    :catch_3f
    :try_start_3f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PreInstall file wasn\'t found: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_5a

    if-eqz v2, :cond_59

    .line 2630
    :try_start_56
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_35

    :cond_59
    :goto_59
    return-object v0

    :catchall_5a
    move-exception p0

    if-eqz v2, :cond_69

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_69

    :catchall_61
    move-exception p1

    .line 2633
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2635
    :cond_69
    :goto_69
    throw p0
.end method

.method private static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "fb\\d*?://authorize.*"

    .line 2273
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string v0, "access_token"

    .line 2274
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    const/16 v1, 0x3f

    .line 50806
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    const-string v1, ""

    goto :goto_24

    .line 50810
    :cond_20
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2276
    :goto_24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2b

    return-object p0

    .line 2277
    :cond_2b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "&"

    .line 2278
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 2279
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_49

    .line 2281
    :cond_46
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2283
    :goto_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2284
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2285
    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 2286
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2287
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 2288
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_52

    .line 2290
    :cond_68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_72

    .line 2291
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    :cond_72
    const-string v6, "?"

    .line 2292
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7d

    .line 2293
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2295
    :cond_7d
    :goto_7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 2298
    :cond_81
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_89
    return-object p0
.end method

.method public static valueOf(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 8

    .line 2995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2998
    :try_start_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_10

    .line 3000
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 3003
    :cond_10
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_47

    .line 3004
    :try_start_15
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_45

    const/4 v1, 0x0

    .line 3008
    :goto_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    if-eqz v1, :cond_2a

    const/16 v1, 0xa

    .line 3009
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_2c

    :cond_2a
    const-string v1, ""

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_40

    const/4 v1, 0x1

    goto :goto_1b

    .line 3017
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 3020
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3b

    goto :goto_6c

    :catchall_3b
    move-exception p0

    .line 3023
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/Throwable;)V

    goto :goto_6c

    :catchall_40
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_49

    :catchall_45
    move-exception v2

    goto :goto_49

    :catchall_47
    move-exception v2

    move-object v3, v1

    .line 3013
    :goto_49
    :try_start_49
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not read connection response from: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_49 .. :try_end_62} :catchall_8f

    if-eqz v1, :cond_67

    .line 3017
    :try_start_64
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    :cond_67
    if-eqz v3, :cond_6c

    .line 3020
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_3b

    .line 3026
    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3028
    :try_start_70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_75} :catch_76

    return-object p0

    .line 3031
    :catch_76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7b
    const-string v1, "string_response"

    .line 3033
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3034
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_84} :catch_85

    return-object p0

    .line 3036
    :catch_85
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_8f
    move-exception p0

    if-eqz v1, :cond_98

    .line 3017
    :try_start_92
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    goto :goto_98

    :catchall_96
    move-exception v0

    goto :goto_9e

    :cond_98
    :goto_98
    if-eqz v3, :cond_a1

    .line 3020
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_96

    goto :goto_a1

    .line 3023
    :goto_9e
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/Throwable;)V

    .line 3025
    :cond_a1
    :goto_a1
    throw p0
.end method

.method private valueOf(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 2738
    invoke-static {p2}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appsFlyerFirstInstall"

    const/4 v2, 0x0

    .line 2739
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    .line 2741
    invoke-static {p2}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "AppsFlyer: first launch detected"

    .line 2742
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 2743
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_22
    const-string p1, ""

    :goto_24
    move-object v0, p1

    .line 50824
    invoke-static {p2}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 50825
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 50826
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50829
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2750
    :cond_33
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsFlyer: first launch date: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-object v0
.end method

.method private valueOf(Lcom/appsflyer/internal/f;)V
    .registers 7

    .line 50347
    iget-object v0, p1, Lcom/appsflyer/internal/f;->AFVersionDeclaration:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1431
    :goto_9
    invoke-virtual {p0}, Lcom/appsflyer/internal/ag;->valueOf()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string p1, "CustomerUserId not set, reporting is disabled"

    .line 1432
    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    return-void

    :cond_15
    if-eqz v0, :cond_40

    .line 1439
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v3, "launchProtectEnabled"

    .line 1440
    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1442
    invoke-direct {p0}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 50348
    iget-object p1, p1, Lcom/appsflyer/internal/f;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_34

    .line 1445
    sget v0, Lcom/appsflyer/attribution/RequestError;->EVENT_TIMEOUT:I

    sget-object v1, Lcom/appsflyer/internal/ay;->values:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_34
    return-void

    :cond_35
    const-string v0, "Allowing multiple launches within a 5 second time window."

    .line 1450
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1452
    :cond_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appsflyer/internal/ag;->AppsFlyerInAppPurchaseValidatorListener:J

    .line 50349
    :cond_40
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez v0, :cond_4b

    .line 50350
    new-instance v0, Lcom/appsflyer/internal/l;

    invoke-direct {v0}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 50352
    :cond_4b
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 1455
    invoke-virtual {v0}, Lcom/appsflyer/internal/l;->AFInAppEventType()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 1456
    new-instance v2, Lcom/appsflyer/internal/ag$e;

    invoke-direct {v2, p0, p1, v1}, Lcom/appsflyer/internal/ag$e;-><init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;B)V

    const-wide/16 v3, 0x0

    .line 1457
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4, p1}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static valueOf(Lorg/json/JSONObject;)V
    .registers 15

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 412
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_37

    .line 413
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 418
    :try_start_16
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 419
    :goto_21
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_9

    .line 420
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_32} :catch_35

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :catch_35
    nop

    goto :goto_9

    .line 428
    :cond_37
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 432
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_3f
    :goto_3f
    move-object v4, v2

    .line 433
    :cond_40
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    if-nez v4, :cond_a3

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 437
    :try_start_4e
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 440
    :goto_5a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_40

    .line 442
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3f

    .line 443
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    cmp-long v13, v8, v11

    if-eqz v13, :cond_3f

    .line 444
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_98} :catch_a1

    cmp-long v4, v8, v10

    if-nez v4, :cond_9d

    goto :goto_3f

    :cond_9d
    add-int/lit8 v7, v7, 0x1

    move-object v4, v5

    goto :goto_5a

    :catch_a1
    nop

    goto :goto_40

    :cond_a3
    if-eqz v4, :cond_a8

    .line 457
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_a8
    return-void
.end method

.method public static valueOf(Landroid/content/Context;)Z
    .registers 2

    .line 2483
    invoke-static {p0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "appsFlyerCount"

    .line 2485
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;Landroid/content/SharedPreferences;)Z
    .registers 3

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Lcom/appsflyer/internal/f;Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/ag;Z)Z
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/appsflyer/internal/ag;->onValidateInAppFailure:Z

    return p1
.end method

.method static synthetic values(Lcom/appsflyer/internal/ag;)J
    .registers 3

    .line 129
    iget-wide v0, p0, Lcom/appsflyer/internal/ag;->stop:J

    return-wide v0
.end method

.method public static values(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "meta"

    .line 2084
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    goto :goto_18

    .line 2085
    :cond_f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    :goto_18
    return-object p0
.end method

.method private static values(Landroid/content/Context;)V
    .registers 5

    .line 1102
    invoke-static {}, Lcom/appsflyer/internal/aa;->AFKeystoreWrapper()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x17

    const-string v1, "OPPO device found"

    .line 1104
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    goto :goto_10

    :cond_e
    const/16 v0, 0x12

    .line 1107
    :goto_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_c1

    const-string v0, "keyPropDisableAFKeystore"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OS SDK is="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; use KeyStore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 1109
    new-instance v0, Lcom/appsflyer/AFKeystoreWrapper;

    invoke-direct {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;-><init>(Landroid/content/Context;)V

    .line 1110
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType()Z

    move-result v2

    if-nez v2, :cond_56

    .line 1111
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/appsflyer/internal/al;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p0

    .line 50110
    iput-object p0, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/String;

    const/4 p0, 0x0

    .line 50111
    iput p0, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:I

    .line 50112
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_9f

    .line 50114
    :cond_56
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p0

    .line 50115
    iget-object v2, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName:Ljava/lang/Object;

    monitor-enter v2

    .line 50116
    :try_start_5d
    iget v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:I

    const-string v1, "Deleting key with alias: "

    .line 50121
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_5d .. :try_end_6f} :catchall_be

    .line 50123
    :try_start_6f
    iget-object v1, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName:Ljava/lang/Object;

    monitor-enter v1
    :try_end_72
    .catch Ljava/security/KeyStoreException; {:try_start_6f .. :try_end_72} :catch_7c
    .catchall {:try_start_6f .. :try_end_72} :catchall_be

    .line 50124
    :try_start_72
    iget-object v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->values:Ljava/security/KeyStore;

    invoke-virtual {v3, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 50125
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_79

    goto :goto_97

    :catchall_79
    move-exception p0

    :try_start_7a
    monitor-exit v1

    throw p0
    :try_end_7c
    .catch Ljava/security/KeyStoreException; {:try_start_7a .. :try_end_7c} :catch_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_be

    :catch_7c
    move-exception p0

    .line 50127
    :try_start_7d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " occurred"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50118
    :goto_97
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_7d .. :try_end_98} :catchall_be

    .line 50119
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName(Ljava/lang/String;)V

    :goto_9f
    const-string p0, "KSAppsFlyerId"

    .line 1115
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object v1

    .line 50130
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "KSAppsFlyerRICounter"

    .line 1116
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->values()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 50132
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_be
    move-exception p0

    .line 50118
    monitor-exit v2

    throw p0

    .line 1118
    :cond_c1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "OS SDK is="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; no KeyStore usage"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic values(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V
    .registers 11

    .line 51054
    iget-object v0, p1, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 51055
    iget-object v1, p1, Lcom/appsflyer/internal/f;->AFVersionDeclaration:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string p0, "sendWithEvent - got null context. skipping event/launch."

    .line 50959
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    .line 50963
    :cond_c
    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50964
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    .line 50965
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v3

    if-nez v3, :cond_36

    .line 50966
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendWithEvent from activity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    :cond_36
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    .line 50971
    :goto_3d
    instance-of v5, p1, Lcom/appsflyer/internal/bx;

    .line 50972
    instance-of v6, p1, Lcom/appsflyer/internal/bt;

    .line 51056
    iput-boolean v1, p1, Lcom/appsflyer/internal/f;->onInstallConversionDataLoadedNative:Z

    .line 50974
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/ag;->values(Lcom/appsflyer/internal/f;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "appsflyerKey"

    .line 50975
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_213

    .line 50977
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_59

    goto/16 :goto_213

    .line 50984
    :cond_59
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v8

    if-nez v8, :cond_64

    const-string v8, "AppsFlyerLib.sendWithEvent"

    .line 50985
    invoke-static {v8}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    :cond_64
    const-string v8, "appsFlyerCount"

    .line 51059
    invoke-static {v2, v8, v4}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v2

    const/4 v8, 0x2

    if-nez v6, :cond_c5

    if-eqz v5, :cond_70

    goto :goto_c5

    :cond_70
    if-eqz v1, :cond_aa

    if-ge v2, v8, :cond_8f

    .line 50996
    sget-object v5, Lcom/appsflyer/internal/ag;->onConversionDataFail:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    .line 51062
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 51063
    sget-object v8, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    .line 51062
    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_df

    .line 50998
    :cond_8f
    sget-object v5, Lcom/appsflyer/internal/ag;->onAttributionFailure:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    .line 51064
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 51065
    sget-object v8, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    .line 51064
    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_df

    .line 51001
    :cond_aa
    sget-object v5, Lcom/appsflyer/internal/ag;->onConversionDataSuccess:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    .line 51066
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 51067
    sget-object v8, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    .line 51066
    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_df

    .line 50993
    :cond_c5
    :goto_c5
    sget-object v5, Lcom/appsflyer/internal/ag;->onDeepLinking:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    .line 51060
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 51061
    sget-object v8, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    .line 51060
    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 51004
    :goto_df
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51005
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&buildnumber=6.4.2"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51007
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 51009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&channel="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51068
    :cond_11d
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v6, "collectAndroidIdForceByUser"

    .line 51069
    invoke-virtual {v0, v6, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_138

    .line 51070
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v6, "collectIMEIForceByUser"

    .line 51071
    invoke-virtual {v0, v6, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_136

    goto :goto_138

    :cond_136
    const/4 v0, 0x0

    goto :goto_139

    :cond_138
    :goto_138
    const/4 v0, 0x1

    :goto_139
    if-nez v0, :cond_174

    const-string v0, "advertiserId"

    .line 51074
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_174

    .line 51077
    :try_start_143
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->getLevel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_158

    const-string v0, "android_id"

    .line 51078
    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_158

    const-string v0, "validateGaidAndIMEI :: removing: android_id"

    .line 51080
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 51083
    :cond_158
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->init:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_174

    const-string v0, "imei"

    .line 51084
    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_174

    const-string v0, "validateGaidAndIMEI :: removing: imei"

    .line 51086
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_16d} :catch_16e

    goto :goto_174

    :catch_16e
    move-exception v0

    const-string v6, "failed to remove IMEI or AndroidID key from params; "

    .line 51090
    invoke-static {v6, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51014
    :cond_174
    :goto_174
    new-instance v0, Lcom/appsflyer/internal/ag$a;

    .line 51015
    invoke-virtual {p1, v5}, Lcom/appsflyer/internal/f;->values(Ljava/lang/String;)Lcom/appsflyer/internal/f;

    move-result-object p1

    .line 51016
    invoke-virtual {p1, v7}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName(Ljava/util/Map;)Lcom/appsflyer/internal/f;

    move-result-object p1

    .line 51094
    iput v2, p1, Lcom/appsflyer/internal/f;->onAppOpenAttributionNative:I

    .line 51017
    invoke-direct {v0, p0, p1, v4}, Lcom/appsflyer/internal/ag$a;-><init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;B)V

    if-eqz v1, :cond_1cf

    .line 51024
    iget-object p1, p0, Lcom/appsflyer/internal/ag;->AFVersionDeclaration:[Lcom/appsflyer/internal/cj;

    if-eqz p1, :cond_1b2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_18b
    if-ge v4, v1, :cond_1b1

    aget-object v5, p1, v4

    .line 51096
    iget-object v6, v5, Lcom/appsflyer/internal/cj;->valueOf:Lcom/appsflyer/internal/cj$e;

    .line 51025
    sget-object v7, Lcom/appsflyer/internal/cj$e;->values:Lcom/appsflyer/internal/cj$e;

    if-ne v6, v7, :cond_1ae

    .line 51028
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Failed to get "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51097
    iget-object v5, v5, Lcom/appsflyer/internal/cj;->values:Ljava/lang/String;

    .line 51028
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " referrer, wait ..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_18b

    :cond_1b1
    move v4, v2

    .line 51032
    :cond_1b2
    iget-boolean p1, p0, Lcom/appsflyer/internal/ag;->setCustomerIdAndLogSession:Z

    if-eqz p1, :cond_1c2

    invoke-direct {p0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper()Z

    move-result p1

    if-nez p1, :cond_1c2

    const-string p1, "fetching Facebook deferred AppLink data, wait ..."

    .line 51034
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 51036
    :cond_1c2
    iget-boolean p1, p0, Lcom/appsflyer/internal/ag;->waitForCustomerUserId:Z

    if-eqz p1, :cond_1cd

    invoke-direct {p0}, Lcom/appsflyer/internal/ag;->AFVersionDeclaration()Z

    move-result p0

    if-nez p0, :cond_1cd

    goto :goto_1d0

    :cond_1cd
    move v3, v4

    goto :goto_1d0

    :cond_1cf
    const/4 v3, 0x0

    .line 51044
    :goto_1d0
    sget-boolean p0, Lcom/appsflyer/internal/j;->values:Z

    if-eqz p0, :cond_1f5

    const-string p0, "ESP deeplink: execute launch on SerialExecutor"

    .line 51045
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 51098
    sget-object p0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez p0, :cond_1e4

    .line 51099
    new-instance p0, Lcom/appsflyer/internal/l;

    invoke-direct {p0}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 51101
    :cond_1e4
    sget-object p0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 51102
    iget-object p1, p0, Lcom/appsflyer/internal/l;->values:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_1f2

    .line 51103
    iget-object p1, p0, Lcom/appsflyer/internal/l;->AFInAppEventParameterName:Ljava/util/concurrent/ThreadFactory;

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/l;->values:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51105
    :cond_1f2
    iget-object p0, p0, Lcom/appsflyer/internal/l;->values:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_206

    .line 51106
    :cond_1f5
    sget-object p0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez p0, :cond_200

    .line 51107
    new-instance p0, Lcom/appsflyer/internal/l;

    invoke-direct {p0}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object p0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 51109
    :cond_200
    sget-object p0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 51048
    invoke-virtual {p0}, Lcom/appsflyer/internal/l;->AFInAppEventType()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p0

    :goto_206
    if-eqz v3, :cond_20b

    const-wide/16 v1, 0x1f4

    goto :goto_20d

    :cond_20b
    const-wide/16 v1, 0x0

    .line 51051
    :goto_20d
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_213
    :goto_213
    const-string p0, "Not sending data yet, waiting for dev key"

    .line 50978
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 51058
    iget-object p0, p1, Lcom/appsflyer/internal/f;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p0, :cond_223

    .line 50981
    sget p1, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v0, Lcom/appsflyer/internal/ay;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_223
    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 2699
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    if-nez p1, :cond_11

    move-object v0, v1

    goto :goto_20

    .line 50816
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CHANNEL"

    invoke-static {v2, v0, p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_20
    :goto_20
    if-eqz v0, :cond_2b

    const-string p1, ""

    .line 2703
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    return-object v1

    :cond_2b
    return-object v0
.end method

.method public final AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    const-string v0, "extraReferrers"

    .line 465
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "received a new (extra) referrer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 469
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 471
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    .line 472
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_29

    .line 474
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 475
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    goto :goto_48

    .line 477
    :cond_29
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 479
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_45

    .line 481
    :cond_40
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_45
    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 484
    :goto_48
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x5

    cmp-long v9, v5, v7

    if-gez v9, :cond_56

    .line 485
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 489
    :cond_56
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v5, 0x4

    cmp-long v7, v1, v5

    if-ltz v7, :cond_64

    .line 490
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->valueOf(Lorg/json/JSONObject;)V

    .line 493
    :cond_64
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10566
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 10567
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 10568
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11506
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_7d} :catch_95
    .catchall {:try_start_f .. :try_end_7d} :catchall_7e

    return-void

    :catchall_7e
    move-exception p1

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t save referrer - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_95
    return-void
.end method

.method public final AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2727
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CACHED_CHANNEL"

    .line 2728
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 p1, 0x0

    .line 2729
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50817
    :cond_12
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 50818
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 50819
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50822
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p2
.end method

.method public final AFInAppEventType(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "appsflyer_preinstall"

    .line 363
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 364
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5573
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "pid"

    .line 5575
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "preInstallName"

    .line 5597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_23
    const-string v0, "Cannot set preinstall attribution data without a media source"

    .line 5578
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception v0

    const-string v1, "Error parsing JSON for preinstall"

    .line 5581
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    const-string v0, "****** onReceive called *******"

    .line 366
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    const-string v0, "referrer"

    .line 370
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 371
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Play store referrer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    if-eqz p2, :cond_b6

    .line 6566
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6567
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6568
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7506
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "AF_REFERRER"

    .line 8155
    invoke-virtual {v0, v1, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8156
    iput-object p2, v0, Lcom/appsflyer/AppsFlyerProperties;->valueOf:Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper()Z

    move-result v0

    if-eqz v0, :cond_b6

    const-string v0, "onReceive: isLaunchCalled"

    .line 380
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 8488
    new-instance v0, Lcom/appsflyer/internal/bx;

    invoke-direct {v0}, Lcom/appsflyer/internal/bx;-><init>()V

    if-eqz p1, :cond_83

    .line 9053
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 9108
    :cond_83
    iput-object p2, v0, Lcom/appsflyer/internal/f;->getLevel:Ljava/lang/String;

    if-eqz p2, :cond_b6

    .line 8491
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x5

    if-le p2, v1, :cond_b6

    .line 8492
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Lcom/appsflyer/internal/f;Landroid/content/SharedPreferences;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 10045
    sget-object p1, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez p1, :cond_a3

    .line 10046
    new-instance p1, Lcom/appsflyer/internal/l;

    invoke-direct {p1}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object p1, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 10048
    :cond_a3
    sget-object p1, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 8493
    invoke-virtual {p1}, Lcom/appsflyer/internal/l;->AFInAppEventType()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    .line 8494
    new-instance p2, Lcom/appsflyer/internal/ag$e;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/appsflyer/internal/ag$e;-><init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;B)V

    const-wide/16 v0, 0x5

    .line 8495
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    :cond_b6
    return-void
.end method

.method protected final AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    const-string v0, "af_deeplink"

    .line 2234
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 2235
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/ag;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2237
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v2

    .line 2238
    iget-object v3, v2, Lcom/appsflyer/internal/j;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    if-eqz v3, :cond_7c

    iget-object v3, v2, Lcom/appsflyer/internal/j;->AFVersionDeclaration:Ljava/util/Map;

    if-eqz v3, :cond_7c

    iget-object v3, v2, Lcom/appsflyer/internal/j;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 2239
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2240
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 2241
    iget-object v2, v2, Lcom/appsflyer/internal/j;->AFVersionDeclaration:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2242
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2243
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3c

    .line 2245
    :cond_67
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2246
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appended_query_params"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    :cond_7c
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    :cond_7f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2253
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    new-instance v1, Lcom/appsflyer/internal/as;

    invoke-direct {v1, p3, p0, p1}, Lcom/appsflyer/internal/as;-><init>(Landroid/net/Uri;Lcom/appsflyer/internal/ag;Landroid/content/Context;)V

    .line 2255
    iget-boolean v2, v1, Lcom/appsflyer/internal/as;->valueOf:Z

    if-eqz v2, :cond_9d

    .line 2256
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isBrandedDomain"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    :cond_9d
    invoke-static {p1, v0, p3}, Lcom/appsflyer/internal/aa;->values(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)Ljava/util/Map;

    .line 2260
    invoke-virtual {v1}, Lcom/appsflyer/internal/as;->valueOf()Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 50799
    new-instance p1, Lcom/appsflyer/internal/ag$7;

    invoke-direct {p1, v0}, Lcom/appsflyer/internal/ag$7;-><init>(Ljava/util/Map;)V

    .line 50800
    iput-object p1, v1, Lcom/appsflyer/internal/as;->AFInAppEventParameterName:Lcom/appsflyer/internal/as$a;

    .line 50802
    sget-object p1, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez p1, :cond_b8

    .line 50803
    new-instance p1, Lcom/appsflyer/internal/l;

    invoke-direct {p1}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object p1, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 50805
    :cond_b8
    sget-object p1, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 2263
    invoke-virtual {p1}, Lcom/appsflyer/internal/l;->AFInAppEventParameterName()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 2265
    :cond_c2
    invoke-static {v0}, Lcom/appsflyer/internal/aq;->AFInAppEventParameterName(Ljava/util/Map;)V

    return-void
.end method

.method final AFKeystoreWrapper(Lcom/appsflyer/internal/f;Landroid/app/Activity;)V
    .registers 7

    .line 50311
    iget-object v0, p1, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    const-string v1, ""

    if-eqz p2, :cond_17

    .line 1348
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1349
    invoke-static {p2}, Lcom/appsflyer/internal/ar;->AFInAppEventType(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 1351
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_18

    :cond_17
    move-object p2, v1

    .line 50312
    :goto_18
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "AppsFlyerKey"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_35

    const-string p2, "[LogEvent/Launch] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    .line 1356
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    .line 50313
    iget-object p1, p1, Lcom/appsflyer/internal/f;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_34

    .line 1360
    sget p2, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v0, Lcom/appsflyer/internal/ay;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_34
    return-void

    .line 1363
    :cond_35
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    move-object v1, v0

    .line 50314
    :goto_41
    iput-object v1, p1, Lcom/appsflyer/internal/f;->getLevel:Ljava/lang/String;

    .line 50316
    iput-object p2, p1, Lcom/appsflyer/internal/f;->AFInAppEventParameterName:Ljava/lang/String;

    .line 1364
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/ag;->valueOf(Lcom/appsflyer/internal/f;)V

    return-void
.end method

.method public final varargs addPushNotificationDeepLinkPath([Ljava/lang/String;)V
    .registers 4

    .line 318
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 319
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/j;->getLevel:Ljava/util/List;

    .line 320
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public final anonymizeUser(Z)V
    .registers 6

    .line 50318
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50319
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50321
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1370
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "anonymizeUser"

    .line 50322
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1371
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "deviceTrackingDisabled"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    return-void
.end method

.method public final appendParametersToDeepLinkingURL(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v0

    .line 276
    iput-object p1, v0, Lcom/appsflyer/internal/j;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 277
    iput-object p2, v0, Lcom/appsflyer/internal/j;->AFVersionDeclaration:Ljava/util/Map;

    return-void
.end method

.method public final enableFacebookDeferredApplinks(Z)V
    .registers 2

    .line 972
    iput-boolean p1, p0, Lcom/appsflyer/internal/ag;->setCustomerIdAndLogSession:Z

    return-void
.end method

.method public final enableLocationCollection(Z)Lcom/appsflyer/AppsFlyerLib;
    .registers 2

    .line 561
    iput-boolean p1, p0, Lcom/appsflyer/internal/ag;->updateServerUninstallToken:Z

    return-object p0
.end method

.method public final getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 50844
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50845
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50847
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "public_api_call"

    const-string v3, "getAppsFlyerUID"

    .line 50848
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    return-object p1

    .line 2833
    :cond_1b
    new-instance v0, Lcom/appsflyer/internal/n;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/n;-><init>(Landroid/content/Context;)V

    .line 50850
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, v0, Lcom/appsflyer/internal/n;->values:Landroid/content/Context;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/appsflyer/internal/al;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 2758
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/ai;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/ai;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/appsflyer/internal/ai;->values()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-object p1

    :catchall_a
    move-exception p1

    const-string v0, "Could not collect facebook attribution id. "

    .line 2760
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getHostName()Ljava/lang/String;
    .registers 3

    .line 50953
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "custom_host"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-string v0, "appsflyer.com"

    return-object v0
.end method

.method public final getHostPrefix()Ljava/lang/String;
    .registers 3

    .line 50954
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "custom_host_prefix"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public final getOutOfStore(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 653
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "api_store_value"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const/4 v0, 0x0

    if-nez p1, :cond_12

    move-object p1, v0

    goto :goto_20

    .line 25526
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AF_STORE"

    invoke-static {v2, v1, p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_20
    if-eqz p1, :cond_23

    return-object p1

    :cond_23
    const-string p1, "No out-of-store value set"

    .line 663
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .registers 5

    .line 15037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 15038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 15040
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "public_api_call"

    const-string v3, "getSdkVersion"

    .line 15136
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version: 6.4.2 (build "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/internal/ag;->AFInAppEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
    .registers 12

    .line 832
    iget-boolean v0, p0, Lcom/appsflyer/internal/ag;->enableLocationCollection:Z

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    const/4 v0, 0x1

    .line 833
    iput-boolean v0, p0, Lcom/appsflyer/internal/ag;->enableLocationCollection:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_a2

    .line 37893
    iget-object v3, p0, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    if-nez v3, :cond_17

    new-instance v3, Lcom/appsflyer/internal/au;

    invoke-direct {v3, p3}, Lcom/appsflyer/internal/au;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 37894
    :cond_17
    iget-object v3, p0, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 38079
    invoke-virtual {v3}, Lcom/appsflyer/internal/au;->AFKeystoreWrapper()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 39071
    iget-object v3, v3, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "init_ts"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 836
    :cond_32
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    iput-object v3, p0, Lcom/appsflyer/internal/ag;->setPhoneNumber:Landroid/app/Application;

    .line 837
    iget-object v3, p0, Lcom/appsflyer/internal/ag;->onAppOpenAttributionNative:Lcom/appsflyer/internal/be;

    .line 40044
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lcom/appsflyer/internal/be;->values:Landroid/content/Context;

    .line 838
    new-instance v3, Lcom/appsflyer/internal/cg;

    new-instance v4, Lcom/appsflyer/internal/ag$2;

    invoke-direct {v4, p0}, Lcom/appsflyer/internal/ag$2;-><init>(Lcom/appsflyer/internal/ag;)V

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/cg;-><init>(Ljava/lang/Runnable;)V

    .line 858
    new-instance v4, Lcom/appsflyer/internal/ag$1;

    invoke-direct {v4, p0, v3}, Lcom/appsflyer/internal/ag$1;-><init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/cg;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appsflyer/internal/cj;

    aput-object v3, v5, v2

    .line 869
    new-instance v3, Lcom/appsflyer/internal/cl;

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/cl;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v5, v0

    new-instance v3, Lcom/appsflyer/internal/ck;

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/ck;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v5, v1

    iput-object v5, p0, Lcom/appsflyer/internal/ag;->AFVersionDeclaration:[Lcom/appsflyer/internal/cj;

    .line 872
    array-length v3, v5

    const/4 v4, 0x0

    :goto_68
    if-ge v4, v3, :cond_74

    aget-object v6, v5, v4

    iget-object v7, p0, Lcom/appsflyer/internal/ag;->setPhoneNumber:Landroid/app/Application;

    invoke-virtual {v6, v7}, Lcom/appsflyer/internal/cj;->AFKeystoreWrapper(Landroid/content/Context;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 873
    :cond_74
    invoke-direct {p0, p3}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/appsflyer/internal/ag;->waitForCustomerUserId:Z

    .line 874
    iget-object v3, p0, Lcom/appsflyer/internal/ag;->setPhoneNumber:Landroid/app/Application;

    .line 41015
    sput-object v3, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    .line 875
    invoke-static {p3}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "appsFlyerCount"

    .line 41774
    invoke-static {v3, v4, v2}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v3

    if-nez v3, :cond_a7

    .line 877
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_a7

    .line 878
    new-instance v3, Lcom/appsflyer/internal/ch;

    invoke-direct {v3, p3}, Lcom/appsflyer/internal/ch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/appsflyer/internal/ag;->setAppInviteOneLink:Lcom/appsflyer/internal/ch;

    .line 42056
    new-instance p3, Ljava/lang/Thread;

    iget-object v3, v3, Lcom/appsflyer/internal/ch;->AFKeystoreWrapper:Ljava/util/concurrent/FutureTask;

    invoke-direct {p3, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    goto :goto_a7

    :cond_a2
    const-string p3, "context is null, Google Install Referrer will be not initialized"

    .line 882
    invoke-static {p3}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    .line 43037
    :cond_a7
    :goto_a7
    sget-object p3, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p3, :cond_b2

    .line 43038
    new-instance p3, Lcom/appsflyer/internal/ak;

    invoke-direct {p3}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p3, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 43040
    :cond_b2
    sget-object p3, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v2

    if-nez p2, :cond_bd

    const-string v4, "null"

    goto :goto_bf

    :cond_bd
    const-string v4, "conversionDataListener"

    :goto_bf
    aput-object v4, v3, v0

    const-string v4, "public_api_call"

    const-string v5, "init"

    .line 43136
    invoke-virtual {p3, v4, v5, v3}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-array p3, v1, [Ljava/lang/Object;

    const-string v1, "6.4.2"

    aput-object v1, p3, v2

    .line 885
    sget-object v1, Lcom/appsflyer/internal/ag;->AFInAppEventType:Ljava/lang/String;

    aput-object v1, p3, v0

    const-string v0, "Initializing AppsFlyer SDK: (v%s.%s)"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    .line 43597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p3

    const-string v0, "AppsFlyerKey"

    invoke-virtual {p3, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-static {p1}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;)V

    .line 888
    sput-object p2, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener;

    return-object p0
.end method

.method public final isPreInstalledApp(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 2712
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2717
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_14

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1a

    return v1

    :catch_14
    move-exception p1

    const-string v1, "Could not check if app is pre installed"

    .line 2721
    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    return v0
.end method

.method public final isStopped()Z
    .registers 2

    .line 2988
    iget-boolean v0, p0, Lcom/appsflyer/internal/ag;->setDebugLog:Z

    return v0
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1334
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    return-void
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/attribution/AppsFlyerRequestListener;",
            ")V"
        }
    .end annotation

    .line 1248
    new-instance v0, Lcom/appsflyer/internal/ca;

    invoke-direct {v0}, Lcom/appsflyer/internal/ca;-><init>()V

    if-eqz p1, :cond_f

    .line 50205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 50207
    :cond_f
    iput-object p2, v0, Lcom/appsflyer/internal/f;->AFVersionDeclaration:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p3, :cond_16

    move-object v2, v1

    goto :goto_1b

    .line 1250
    :cond_16
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 50209
    :goto_1b
    iput-object v2, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Ljava/util/Map;

    .line 50211
    iput-object p4, v0, Lcom/appsflyer/internal/f;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 50213
    sget-object p3, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p3, :cond_2a

    .line 50214
    new-instance p3, Lcom/appsflyer/internal/ak;

    invoke-direct {p3}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p3, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50216
    :cond_2a
    sget-object p3, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, p4, v2

    const/4 v2, 0x1

    .line 50217
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Ljava/util/Map;

    if-nez v4, :cond_3f

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto :goto_41

    :cond_3f
    iget-object v4, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Ljava/util/Map;

    :goto_41
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v2

    const-string v2, "public_api_call"

    const-string v3, "logEvent"

    .line 50218
    invoke-virtual {p3, v2, v3, p4}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p2, :cond_5a

    .line 1254
    invoke-static {p1}, Lcom/appsflyer/internal/ab;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/ab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper()V

    .line 1256
    :cond_5a
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_61

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    :cond_61
    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Lcom/appsflyer/internal/f;Landroid/app/Activity;)V

    return-void
.end method

.method public final logLocation(Landroid/content/Context;DD)V
    .registers 10

    .line 50170
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50171
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50173
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1170
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "logLocation"

    .line 50174
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1172
    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p4

    const-string p5, "af_long"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    const-string p3, "af_lat"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "af_location_coordinates"

    .line 1175
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final logSession(Landroid/content/Context;)V
    .registers 7

    .line 50193
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50194
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50196
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "public_api_call"

    const-string v4, "logSession"

    .line 50197
    invoke-virtual {v0, v3, v4, v2}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50199
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_22

    .line 50200
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50202
    :cond_22
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50203
    iput-boolean v1, v0, Lcom/appsflyer/internal/ak;->AFInAppEventType:Z

    const/4 v0, 0x0

    .line 1241
    invoke-direct {p0, p1, v0, v0}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final onPause(Landroid/content/Context;)V
    .registers 3

    .line 526
    sget-object v0, Lcom/appsflyer/internal/ae;->AFInAppEventType:Lcom/appsflyer/internal/ae$c;

    if-eqz v0, :cond_9

    .line 527
    sget-object v0, Lcom/appsflyer/internal/ae;->AFInAppEventType:Lcom/appsflyer/internal/ae$c;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/ae$c;->valueOf(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public final performOnAppAttribution(Landroid/content/Context;Ljava/net/URI;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "\""

    if-eqz p2, :cond_3d

    .line 244
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3d

    :cond_f
    if-nez p1, :cond_28

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Context is \""

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5015
    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {p1, p2}, Lcom/appsflyer/internal/aq;->valueOf(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 249
    :cond_28
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 249
    invoke-virtual {v0, p1, v1, p2}, Lcom/appsflyer/internal/j;->values(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return-void

    .line 245
    :cond_3d
    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Link is \""

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4015
    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {p1, p2}, Lcom/appsflyer/internal/aq;->valueOf(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void
.end method

.method public final performOnDeepLinking(Landroid/content/Intent;Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_a

    .line 294
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string p2, "performOnDeepLinking was called with null intent"

    invoke-static {p2, p1}, Lcom/appsflyer/internal/aq;->valueOf(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :cond_a
    if-nez p2, :cond_14

    .line 300
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string p2, "performOnDeepLinking was called with null context"

    invoke-static {p2, p1}, Lcom/appsflyer/internal/aq;->valueOf(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 305
    :cond_14
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 306
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->setAdditionalData:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/ag$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsflyer/internal/ag$5;-><init>(Lcom/appsflyer/internal/ag;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .registers 6

    .line 50324
    sget-object p1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p1, :cond_b

    .line 50325
    new-instance p1, Lcom/appsflyer/internal/ak;

    invoke-direct {p1}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50327
    :cond_b
    sget-object p1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "public_api_call"

    const-string v2, "registerConversionListener"

    .line 50328
    invoke-virtual {p1, v1, v2, v0}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p2, :cond_1b

    .line 50333
    sput-object p2, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener;

    :cond_1b
    return-void
.end method

.method public final registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V
    .registers 6

    .line 50341
    sget-object p1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez p1, :cond_b

    .line 50342
    new-instance p1, Lcom/appsflyer/internal/ak;

    invoke-direct {p1}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object p1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50344
    :cond_b
    sget-object p1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "public_api_call"

    const-string v2, "registerValidatorListener"

    .line 50345
    invoke-virtual {p1, v1, v2, v0}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "registerValidatorListener called"

    .line 1398
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    if-nez p2, :cond_24

    const-string p1, "registerValidatorListener null listener"

    .line 1401
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    .line 1404
    :cond_24
    sput-object p2, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    return-void
.end method

.method public final sendAdRevenue(Landroid/content/Context;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1261
    new-instance v0, Lcom/appsflyer/internal/bw;

    invoke-direct {v0}, Lcom/appsflyer/internal/bw;-><init>()V

    if-eqz p1, :cond_f

    .line 50220
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, v0, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 50222
    :cond_f
    iput-object p2, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Ljava/util/Map;

    .line 50287
    iget-object p1, v0, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 50225
    sget-object p2, Lcom/appsflyer/internal/ag;->onInstallConversionFailureNative:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 50288
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 50289
    sget-object v2, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    .line 50288
    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 50226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 50228
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "appsFlyerCount"

    .line 50290
    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v2

    const-string v5, "appsFlyerAdRevenueCount"

    .line 50291
    invoke-static {v1, v5, v4}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v4

    .line 50232
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 50292
    iget-object v6, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Ljava/util/Map;

    const-string v7, "ad_network"

    .line 50233
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50234
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "adrevenue_counter"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50293
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v6, "AppsFlyerKey"

    invoke-virtual {v4, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "af_key"

    .line 50237
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "launch_counter"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50241
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 50242
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "af_timestamp"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50244
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/appsflyer/internal/al;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "uid"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50246
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v7, "advertiserId"

    invoke-virtual {v6, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50247
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    const-string v9, "advertiserIdEnabled"

    invoke-virtual {v8, v9}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b9

    .line 50249
    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b9
    if-eqz v6, :cond_be

    .line 50252
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50255
    :cond_be
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "device"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50256
    invoke-static {p1, v5}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;)V

    .line 50259
    :try_start_c8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    const-string v7, "app_version_code"

    .line 50260
    iget v8, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "yyyy-MM-dd_HHmmssZ"

    .line 50294
    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 50264
    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string v9, "install_date"

    const-string v10, "UTC"

    .line 50295
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50296
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 50265
    invoke-interface {v5, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "appsFlyerFirstInstall"

    const/4 v7, 0x0

    .line 50267
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10e

    .line 50269
    invoke-direct {p0, v8, p1}, Lcom/appsflyer/internal/ag;->valueOf(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_10e
    const-string p1, "first_launch_date"

    .line 50272
    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_113
    .catchall {:try_start_c8 .. :try_end_113} :catchall_114

    goto :goto_11a

    :catchall_114
    move-exception p1

    const-string v1, "AdRevenue - Exception while collecting app version data "

    .line 50274
    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50277
    :goto_11a
    new-instance p1, Lcom/appsflyer/internal/ag$a;

    .line 50278
    invoke-virtual {v0, p2}, Lcom/appsflyer/internal/f;->values(Ljava/lang/String;)Lcom/appsflyer/internal/f;

    move-result-object p2

    .line 50279
    invoke-virtual {p2, v5}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName(Ljava/util/Map;)Lcom/appsflyer/internal/f;

    move-result-object p2

    .line 50297
    iput v2, p2, Lcom/appsflyer/internal/f;->onAppOpenAttributionNative:I

    .line 50299
    iput-object v4, p2, Lcom/appsflyer/internal/f;->init:Ljava/lang/String;

    .line 50281
    invoke-direct {p1, p0, p2, v3}, Lcom/appsflyer/internal/ag$a;-><init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;B)V

    .line 50301
    sget-object p2, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez p2, :cond_136

    .line 50302
    new-instance p2, Lcom/appsflyer/internal/l;

    invoke-direct {p2}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object p2, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 50304
    :cond_136
    sget-object p2, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 50283
    invoke-virtual {p2}, Lcom/appsflyer/internal/l;->AFInAppEventType()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    const-wide/16 v0, 0x1

    .line 50285
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p1, v0, v1, v2}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final sendPushNotificationData(Landroid/app/Activity;)V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "c"

    const-string v2, "pid"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "public_api_call"

    const-string v7, "sendPushNotificationData"

    if-eqz p1, :cond_46

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_46

    .line 28037
    sget-object v8, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v8, :cond_20

    .line 28038
    new-instance v8, Lcom/appsflyer/internal/ak;

    invoke-direct {v8}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v8, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 28040
    :cond_20
    sget-object v8, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    new-array v9, v5, [Ljava/lang/String;

    .line 702
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "activity_intent_"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .line 28136
    invoke-virtual {v8, v6, v7, v9}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7b

    :cond_46
    if-eqz p1, :cond_65

    .line 29037
    sget-object v8, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v8, :cond_53

    .line 29038
    new-instance v8, Lcom/appsflyer/internal/ak;

    invoke-direct {v8}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v8, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 29040
    :cond_53
    sget-object v8, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    new-array v9, v5, [Ljava/lang/String;

    .line 704
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v4, "activity_intent_null"

    aput-object v4, v9, v3

    .line 29136
    invoke-virtual {v8, v6, v7, v9}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7b

    .line 30037
    :cond_65
    sget-object v3, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v3, :cond_70

    .line 30038
    new-instance v3, Lcom/appsflyer/internal/ak;

    invoke-direct {v3}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v3, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 30040
    :cond_70
    sget-object v3, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const-string v4, "activity_null"

    .line 706
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 30136
    invoke-virtual {v3, v6, v7, v4}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 709
    :goto_7b
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/appsflyer/internal/ag;->getInstance:Ljava/lang/String;

    if-eqz v3, :cond_188

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 713
    iget-object v6, v1, Lcom/appsflyer/internal/ag;->onPause:Ljava/util/Map;

    const-string v7, ")"

    if-nez v6, :cond_9c

    const-string v0, "pushes: initializing pushes history.."

    .line 714
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/appsflyer/internal/ag;->onPause:Ljava/util/Map;

    move-wide v10, v3

    goto/16 :goto_14a

    .line 718
    :cond_9c
    :try_start_9c
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v8, "pushPayloadMaxAging"

    const-wide/32 v9, 0x1b7740

    invoke-virtual {v6, v8, v9, v10}, Lcom/appsflyer/AppsFlyerProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 719
    iget-object v6, v1, Lcom/appsflyer/internal/ag;->onPause:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_b3
    .catchall {:try_start_9c .. :try_end_b3} :catchall_12f

    move-wide v10, v3

    :goto_b4
    :try_start_b4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 721
    new-instance v13, Lorg/json/JSONObject;

    iget-object v14, v1, Lcom/appsflyer/internal/ag;->getInstance:Ljava/lang/String;

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 722
    new-instance v14, Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/appsflyer/internal/ag;->onPause:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 724
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PushNotificationMeasurement: A previous payload with same PID and campaign was already acknowledged! (old: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 728
    iput-object v0, v1, Lcom/appsflyer/internal/ag;->getInstance:Ljava/lang/String;

    return-void

    .line 733
    :cond_110
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    sub-long v13, v3, v13

    cmp-long v5, v13, v8

    if-lez v5, :cond_11f

    .line 734
    iget-object v5, v1, Lcom/appsflyer/internal/ag;->onPause:Ljava/util/Map;

    invoke-interface {v5, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_11f
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    cmp-long v5, v13, v10

    if-gtz v5, :cond_12b

    .line 739
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v10
    :try_end_12b
    .catchall {:try_start_b4 .. :try_end_12b} :catchall_12d

    :cond_12b
    const/4 v5, 0x2

    goto :goto_b4

    :catchall_12d
    move-exception v0

    goto :goto_131

    :catchall_12f
    move-exception v0

    move-wide v10, v3

    .line 743
    :goto_131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Error while handling push notification measurement: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 748
    :cond_14a
    :goto_14a
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "pushPayloadHistorySize"

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v5}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 749
    iget-object v2, v1, Lcom/appsflyer/internal/ag;->onPause:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v0, :cond_17a

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pushes: removing oldest overflowing push (oldest push:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 751
    iget-object v0, v1, Lcom/appsflyer/internal/ag;->onPause:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_17a
    iget-object v0, v1, Lcom/appsflyer/internal/ag;->onPause:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Lcom/appsflyer/internal/ag;->getInstance:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    :cond_188
    return-void
.end method

.method public final setAdditionalData(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_30

    .line 27037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_d

    .line 27038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 27040
    :cond_d
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 693
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setAdditionalData"

    .line 27136
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 694
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 695
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->setCustomData(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method public final setAndroidIdData(Ljava/lang/String;)V
    .registers 6

    .line 18037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 18038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 18040
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setAndroidIdData"

    .line 18136
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 556
    iput-object p1, p0, Lcom/appsflyer/internal/ag;->getLevel:Ljava/lang/String;

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .registers 6

    .line 50144
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50145
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50147
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setAppId"

    .line 50148
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50150
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAppInviteOneLink(Ljava/lang/String;)V
    .registers 6

    .line 26037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 26038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 26040
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setAppInviteOneLink"

    .line 26136
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 681
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAppInviteOneLink = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    const-string v0, "oneLinkSlug"

    if-eqz p1, :cond_39

    .line 682
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 683
    :cond_39
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkDomain"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 684
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkVersion"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkScheme"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 26597
    :cond_54
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCollectAndroidID(Z)V
    .registers 6

    .line 33037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 33038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 33040
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 797
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setCollectAndroidID"

    .line 33136
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 798
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 33597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "collectAndroidId"

    invoke-virtual {v1, v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    .line 34597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectAndroidIdForceByUser"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCollectIMEI(Z)V
    .registers 6

    .line 35037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 35038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 35040
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 804
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setCollectIMEI"

    .line 35136
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 805
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 35597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "collectIMEI"

    invoke-virtual {v1, v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    .line 36597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectIMEIForceByUser"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCollectOaid(Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 37038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 37040
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 812
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setCollectOaid"

    .line 37136
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 813
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    .line 37597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectOAID"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .registers 6

    .line 50164
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50165
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50167
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setCurrencyCode"

    .line 50168
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1165
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "currencyCode"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    if-eqz p2, :cond_70

    .line 629
    invoke-virtual {p0}, Lcom/appsflyer/internal/ag;->valueOf()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_60

    .line 630
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CustomerUserId set: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - Initializing AppsFlyer Tacking"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    .line 632
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 22605
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "AppsFlyerKey"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_38

    const-string p1, ""

    .line 640
    :cond_38
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_42

    .line 641
    move-object v1, p2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23420
    :cond_42
    new-instance v1, Lcom/appsflyer/internal/cb;

    invoke-direct {v1}, Lcom/appsflyer/internal/cb;-><init>()V

    if-eqz p2, :cond_51

    .line 24053
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    iput-object p2, v1, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    :cond_51
    const/4 p2, 0x0

    .line 24099
    iput-object p2, v1, Lcom/appsflyer/internal/f;->AFVersionDeclaration:Ljava/lang/String;

    .line 24127
    iput-object v0, v1, Lcom/appsflyer/internal/f;->init:Ljava/lang/String;

    .line 25062
    iput-object p2, v1, Lcom/appsflyer/internal/f;->AFInAppEventType:Ljava/util/Map;

    .line 25108
    iput-object p1, v1, Lcom/appsflyer/internal/f;->getLevel:Ljava/lang/String;

    .line 25117
    iput-object p2, v1, Lcom/appsflyer/internal/f;->AFInAppEventParameterName:Ljava/lang/String;

    .line 23420
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/ag;->valueOf(Lcom/appsflyer/internal/f;)V

    return-void

    .line 645
    :cond_60
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 646
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "waitForCustomerUserId is false; setting CustomerUserID: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    :cond_70
    return-void
.end method

.method public final setCustomerUserId(Ljava/lang/String;)V
    .registers 7

    .line 50134
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50135
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50137
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "public_api_call"

    const-string v4, "setCustomerUserId"

    .line 50138
    invoke-virtual {v0, v3, v4, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1129
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCustomerUserId = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 50140
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "AppUserId"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50142
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "waitForCustomerId"

    invoke-virtual {p1, v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setDebugLog(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 538
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    :goto_7
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    return-void
.end method

.method public final setDisableAdvertisingIdentifiers(Z)V
    .registers 4

    .line 331
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisableAdvertisingIdentifiers: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    .line 332
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/appsflyer/internal/z;->AFInAppEventType:Ljava/lang/Boolean;

    .line 333
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserIdEnabled"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserId"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final setExtension(Ljava/lang/String;)V
    .registers 6

    .line 50152
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50153
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50155
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setExtension"

    .line 50156
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1153
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "sdkExtension"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setHost(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_b

    .line 50949
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "custom_host_prefix"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p2, :cond_1d

    .line 3108
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 50951
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "custom_host"

    invoke-virtual {p1, v0, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    const-string p1, "hostName cannot be null or empty"

    .line 3111
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    return-void
.end method

.method public final setImeiData(Ljava/lang/String;)V
    .registers 6

    .line 16037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 16038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 16040
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setImeiData"

    .line 16136
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 544
    iput-object p1, p0, Lcom/appsflyer/internal/ag;->init:Ljava/lang/String;

    return-void
.end method

.method public final setIsUpdate(Z)V
    .registers 6

    .line 50158
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50159
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50161
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1158
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setIsUpdate"

    .line 50162
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1159
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "IS_UPDATE"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V
    .registers 6

    .line 3098
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v0

    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 50941
    :goto_11
    sget-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v1, :cond_1c

    .line 50942
    new-instance v1, Lcom/appsflyer/internal/ak;

    invoke-direct {v1}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50944
    :cond_1c
    sget-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    new-array v2, v2, [Ljava/lang/String;

    .line 3099
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "public_api_call"

    const-string v3, "log"

    .line 50945
    invoke-virtual {v1, v0, v3, v2}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3100
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 50947
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result p1

    const-string v1, "logLevel"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public final setMinTimeBetweenSessions(I)V
    .registers 5

    .line 3137
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/ag;->AppsFlyerConversionListener:J

    return-void
.end method

.method public final setOaidData(Ljava/lang/String;)V
    .registers 6

    .line 17037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 17038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 17040
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "public_api_call"

    const-string v3, "setOaidData"

    .line 17136
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 550
    sput-object p1, Lcom/appsflyer/internal/z;->values:Ljava/lang/String;

    return-void
.end method

.method public final varargs setOneLinkCustomDomain([Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 824
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setOneLinkCustomDomain %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 825
    sput-object p1, Lcom/appsflyer/internal/j;->AFLogger$LogLevel:[Ljava/lang/String;

    return-void
.end method

.method public final setOutOfStore(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 670
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 671
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "api_store_value"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Store API set with value: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    return-void

    :cond_1e
    const-string p1, "Cannot set setOutOfStore with null"

    .line 674
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void
.end method

.method public final setPartnerData(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->setOutOfStore:Lcom/appsflyer/internal/bb;

    if-nez v0, :cond_b

    new-instance v0, Lcom/appsflyer/internal/bb;

    invoke-direct {v0}, Lcom/appsflyer/internal/bb;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/ag;->setOutOfStore:Lcom/appsflyer/internal/bb;

    .line 326
    :cond_b
    iget-object v0, p0, Lcom/appsflyer/internal/ag;->setOutOfStore:Lcom/appsflyer/internal/bb;

    if-eqz p1, :cond_8d

    .line 5019
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_8d

    :cond_17
    if-eqz p2, :cond_74

    .line 5023
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_74

    .line 5029
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting partner data for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 5030
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_69

    const-string p2, "Partner data 1000 characters limit exceeded"

    .line 5032
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    .line 5033
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 5034
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "limit exceeded: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5035
    iget-object v0, v0, Lcom/appsflyer/internal/bb;->valueOf:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5037
    :cond_69
    iget-object v1, v0, Lcom/appsflyer/internal/bb;->values:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5038
    iget-object p2, v0, Lcom/appsflyer/internal/bb;->valueOf:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5024
    :cond_74
    :goto_74
    iget-object p2, v0, Lcom/appsflyer/internal/bb;->values:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7f

    const-string p1, "Partner data is missing or `null`"

    goto :goto_89

    .line 5026
    :cond_7f
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cleared partner data for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5024
    :goto_89
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    return-void

    :cond_8d
    :goto_8d
    const-string p1, "Partner ID is missing or `null`"

    .line 5020
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .registers 2

    .line 1137
    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/ag;->sendPushNotificationData:Ljava/lang/String;

    return-void
.end method

.method public final setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "setPreinstallAttribution API called"

    .line 2547
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 2548
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "pid"

    if-eqz p1, :cond_11

    .line 2551
    :try_start_e
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    if-eqz p2, :cond_1b

    const-string p1, "c"

    .line 2554
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1b

    :catch_19
    move-exception p1

    goto :goto_23

    :cond_1b
    :goto_1b
    if-eqz p3, :cond_2a

    const-string p1, "af_siteid"

    .line 2557
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_22} :catch_19

    goto :goto_2a

    .line 2561
    :goto_23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2564
    :cond_2a
    :goto_2a
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 2565
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50811
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    const-string p3, "preInstallName"

    invoke-virtual {p2, p3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    const-string p1, "Cannot set preinstall attribution data without a media source"

    .line 2567
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setResolveDeepLinkURLs([Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 818
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setResolveDeepLinkURLs %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 819
    sput-object p1, Lcom/appsflyer/internal/j;->valueOf:[Ljava/lang/String;

    return-void
.end method

.method public final varargs setSharingFilter([Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    return-void
.end method

.method public final setSharingFilterForAllPartners()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "all"

    .line 265
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setSharingFilterForPartners([Ljava/lang/String;)V
    .registers 3

    .line 270
    new-instance v0, Lcom/appsflyer/internal/o;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/o;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ag;->onAttributionFailureNative:Lcom/appsflyer/internal/o;

    return-void
.end method

.method public final varargs setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
    .registers 10

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 767
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32037
    sget-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v1, :cond_21

    .line 32038
    new-instance v1, Lcom/appsflyer/internal/ak;

    invoke-direct {v1}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 32040
    :cond_21
    sget-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 769
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "public_api_call"

    const-string v3, "setUserEmails"

    .line 32136
    invoke-virtual {v1, v2, v3, v0}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->getValue()I

    move-result v1

    const-string v2, "userEmailsCryptType"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    .line 772
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 776
    array-length v3, p2

    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v3, :cond_70

    aget-object v1, p2, v4

    .line 777
    sget-object v5, Lcom/appsflyer/internal/ag$8;->valueOf:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_68

    .line 781
    invoke-static {v1}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v1, "sha256_el_arr"

    goto :goto_6d

    .line 785
    :cond_68
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v1, "plain_el_arr"

    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 790
    :cond_70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 792
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsflyer/AppsFlyerProperties;->setUserEmails(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setUserEmails([Ljava/lang/String;)V
    .registers 5

    .line 31037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 31038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 31040
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const-string v1, "public_api_call"

    const-string v2, "setUserEmails"

    .line 31136
    invoke-virtual {v0, v1, v2, p1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 761
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 977
    invoke-virtual {p0, p1, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 982
    invoke-virtual {p0, p1, p2, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 988
    sget-object v0, Lcom/appsflyer/internal/ae;->AFInAppEventType:Lcom/appsflyer/internal/ae$c;

    if-eqz v0, :cond_d

    return-void

    .line 989
    :cond_d
    iget-boolean v0, v1, Lcom/appsflyer/internal/ag;->enableLocationCollection:Z

    if-nez v0, :cond_22

    const-string v0, "ERROR: AppsFlyer SDK is not initialized! The API call \'start()\' must be called after the \'init(String, AppsFlyerConversionListener)\' API method, which should be called on the Application\'s onCreate."

    .line 990
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    if-nez v3, :cond_22

    if-eqz v4, :cond_21

    .line 996
    sget v0, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v2, Lcom/appsflyer/internal/ay;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {v4, v0, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_21
    return-void

    .line 1001
    :cond_22
    iget-object v0, v1, Lcom/appsflyer/internal/ag;->onAppOpenAttributionNative:Lcom/appsflyer/internal/be;

    .line 45044
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v0, Lcom/appsflyer/internal/be;->values:Landroid/content/Context;

    .line 45893
    iget-object v0, v1, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    if-nez v0, :cond_35

    new-instance v0, Lcom/appsflyer/internal/au;

    invoke-direct {v0, v2}, Lcom/appsflyer/internal/au;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 45894
    :cond_35
    iget-object v5, v1, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 46147
    instance-of v0, v2, Landroid/app/Activity;

    if-eqz v0, :cond_3e

    const-string v0, "activity"

    goto :goto_47

    .line 46149
    :cond_3e
    instance-of v0, v2, Landroid/app/Application;

    if-eqz v0, :cond_45

    const-string v0, "application"

    goto :goto_47

    :cond_45
    const-string v0, "other"

    .line 47091
    :goto_47
    iget-object v6, v5, Lcom/appsflyer/internal/au;->values:Ljava/util/Map;

    const-string v7, "start_with"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, v1, Lcom/appsflyer/internal/ag;->setPhoneNumber:Landroid/app/Application;

    .line 48037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_61

    .line 48038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 48040
    :cond_61
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const-string v9, "public_api_call"

    const-string v10, "start"

    .line 48136
    invoke-virtual {v0, v9, v10, v7}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    const-string v9, "6.4.2"

    aput-object v9, v0, v8

    .line 1006
    sget-object v9, Lcom/appsflyer/internal/ag;->AFInAppEventType:Ljava/lang/String;

    aput-object v9, v0, v6

    const-string v10, "Starting AppsFlyer: (v%s.%s)"

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Build Number: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1008
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    iget-object v9, v1, Lcom/appsflyer/internal/ag;->setPhoneNumber:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/appsflyer/AppsFlyerProperties;->loadProperties(Landroid/content/Context;)V

    .line 1009
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v9, "AppsFlyerKey"

    if-nez v0, :cond_b5

    .line 48597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-static/range {p2 .. p2}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;)V

    goto :goto_d2

    .line 48605
    :cond_b5
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d2

    const-string v0, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the \'init\' API method (should be called on Application\'s onCreate),or in the start() API (should be called on Activity\'s onCreate)."

    .line 1014
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    if-eqz v4, :cond_d1

    .line 1018
    sget v0, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v2, Lcom/appsflyer/internal/ay;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {v4, v0, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_d1
    return-void

    .line 1023
    :cond_d2
    :goto_d2
    iget-object v0, v1, Lcom/appsflyer/internal/ag;->setPhoneNumber:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 49084
    :try_start_d8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 49085
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v10, 0x8000

    and-int/2addr v9, v10

    if-eqz v9, :cond_122

    .line 49086
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "appsflyer_backup_rules"

    const-string v11, "xml"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v11, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_106

    const-string v0, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data"

    .line 49088
    invoke-static {v0, v6}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    goto :goto_122

    :cond_106
    const-string v0, "\'allowBackup\' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application\'s <full-backup-content> rules"

    .line 49090
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_10b} :catch_10c

    goto :goto_122

    :catch_10c
    move-exception v0

    .line 49094
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkBackupRules Exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 1025
    :cond_122
    :goto_122
    iget-boolean v0, v1, Lcom/appsflyer/internal/ag;->setCustomerIdAndLogSession:Z

    if-eqz v0, :cond_1d7

    .line 1026
    iget-object v0, v1, Lcom/appsflyer/internal/ag;->setPhoneNumber:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 49933
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v1, Lcom/appsflyer/internal/ag;->getOutOfStore:Ljava/util/Map;

    .line 49934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 49935
    new-instance v11, Lcom/appsflyer/internal/ag$4;

    invoke-direct {v11, v1, v9, v10}, Lcom/appsflyer/internal/ag$4;-><init>(Lcom/appsflyer/internal/ag;J)V

    :try_start_13c
    const-string v9, "com.facebook.FacebookSdk"

    .line 50033
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "sdkInitialize"

    new-array v12, v6, [Ljava/lang/Class;

    .line 50034
    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v8

    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v0, v10, v8

    const/4 v12, 0x0

    .line 50035
    invoke-virtual {v9, v12, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "com.facebook.applinks.AppLinkData"

    .line 50037
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "com.facebook.applinks.AppLinkData$CompletionHandler"

    .line 50038
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v13, "fetchDeferredAppLinkData"

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    .line 50039
    const-class v16, Landroid/content/Context;

    aput-object v16, v15, v8

    const-class v16, Ljava/lang/String;

    aput-object v16, v15, v6

    aput-object v10, v15, v7

    invoke-virtual {v9, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 50041
    new-instance v15, Lcom/appsflyer/internal/o$2;

    invoke-direct {v15, v9, v11}, Lcom/appsflyer/internal/o$2;-><init>(Ljava/lang/Class;Lcom/appsflyer/internal/o$d;)V

    .line 50089
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-array v12, v6, [Ljava/lang/Class;

    aput-object v10, v12, v8

    invoke-static {v9, v12, v15}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    .line 50093
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v12, "facebook_app_id"

    const-string v15, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v12, v15, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 50094
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1a6

    const-string v0, "Facebook app id not defined in resources"

    .line 50095
    invoke-interface {v11, v0}, Lcom/appsflyer/internal/o$d;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_1d7

    :cond_1a6
    new-array v10, v14, [Ljava/lang/Object;

    aput-object v0, v10, v8

    aput-object v7, v10, v6

    const/4 v6, 0x2

    aput-object v9, v10, v6

    const/4 v0, 0x0

    .line 50097
    invoke-virtual {v13, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13c .. :try_end_1b3} :catch_1cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13c .. :try_end_1b3} :catch_1c6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13c .. :try_end_1b3} :catch_1bd
    .catch Ljava/lang/IllegalAccessException; {:try_start_13c .. :try_end_1b3} :catch_1b4

    goto :goto_1d7

    :catch_1b4
    move-exception v0

    .line 50107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/appsflyer/internal/o$d;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_1d7

    :catch_1bd
    move-exception v0

    .line 50105
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/appsflyer/internal/o$d;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_1d7

    :catch_1c6
    move-exception v0

    .line 50103
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/appsflyer/internal/o$d;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_1d7

    :catch_1cf
    move-exception v0

    .line 50101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/appsflyer/internal/o$d;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 1029
    :cond_1d7
    :goto_1d7
    new-instance v0, Lcom/appsflyer/internal/ag$10;

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/appsflyer/internal/ag$10;-><init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/au;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    iget-object v3, v1, Lcom/appsflyer/internal/ag;->setAdditionalData:Ljava/util/concurrent/Executor;

    invoke-static {v2, v0, v3}, Lcom/appsflyer/internal/ae;->valueOf(Landroid/content/Context;Lcom/appsflyer/internal/ae$c;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final stop(ZLandroid/content/Context;)V
    .registers 8

    .line 511
    iput-boolean p1, p0, Lcom/appsflyer/internal/ag;->setDebugLog:Z

    .line 512
    invoke-static {}, Lcom/appsflyer/internal/ah;->values()Lcom/appsflyer/internal/ah;

    .line 12158
    :try_start_5
    invoke-static {p2}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 12159
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 12160
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    goto :goto_44

    .line 12162
    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 12163
    array-length v0, p1

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_44

    aget-object v2, p1, v1

    .line 12164
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found cached request"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 12165
    invoke-static {v2}, Lcom/appsflyer/internal/ah;->valueOf(Ljava/io/File;)Lcom/appsflyer/internal/h;

    move-result-object v2

    .line 13081
    iget-object v2, v2, Lcom/appsflyer/internal/h;->values:Ljava/lang/String;

    .line 12165
    invoke-static {v2, p2}, Lcom/appsflyer/internal/ah;->values(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3e

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :catch_3e
    move-exception p1

    const-string v0, "Could not cache request"

    .line 12169
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    :cond_44
    :goto_44
    iget-boolean p1, p0, Lcom/appsflyer/internal/ag;->setDebugLog:Z

    if-eqz p1, :cond_59

    .line 13573
    invoke-static {p2}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 13574
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "is_stop_tracking_used"

    const/4 v0, 0x1

    .line 13575
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 14506
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_59
    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V
    .registers 5

    .line 282
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V

    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V
    .registers 5

    .line 287
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v0

    iput-object p1, v0, Lcom/appsflyer/internal/j;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkListener;

    .line 288
    sput-wide p2, Lcom/appsflyer/internal/ao;->onDeepLinkingNative:J

    return-void
.end method

.method public final unregisterConversionListener()V
    .registers 5

    .line 50335
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_b

    .line 50336
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50338
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "public_api_call"

    const-string v3, "unregisterConversionListener"

    .line 50339
    invoke-virtual {v0, v2, v3, v1}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1391
    sput-object v0, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerConversionListener;

    return-void
.end method

.method public final updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 533
    new-instance v0, Lcom/appsflyer/internal/bp;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/bp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/appsflyer/internal/bp;->valueOf(Ljava/lang/String;)V

    return-void
.end method

.method public final validateAndLogInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 50934
    sget-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v1, :cond_11

    .line 50935
    new-instance v1, Lcom/appsflyer/internal/ak;

    invoke-direct {v1}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 50937
    :cond_11
    sget-object v1, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    const/4 v3, 0x4

    aput-object v7, v2, v3

    const/4 v3, 0x5

    if-nez p7, :cond_2b

    const-string v4, ""

    goto :goto_2f

    .line 2946
    :cond_2b
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2f
    aput-object v4, v2, v3

    const-string v3, "public_api_call"

    const-string v4, "validateAndTrackInAppPurchase"

    .line 50938
    invoke-virtual {v1, v3, v4, v2}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2948
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 2949
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Validate in app called with parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    :cond_5d
    if-eqz p2, :cond_97

    if-eqz v6, :cond_97

    if-eqz p3, :cond_97

    if-eqz v7, :cond_97

    if-nez v5, :cond_68

    goto :goto_97

    .line 2956
    :cond_68
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/appsflyer/internal/ad;

    .line 2957
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 50940
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "AppsFlyerKey"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2965
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_83

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    :cond_83
    move-object v0, v10

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/appsflyer/internal/ad;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_a0

    .line 2952
    :cond_97
    :goto_97
    sget-object v0, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_a0

    const-string v1, "Please provide purchase parameters"

    .line 2953
    invoke-interface {v0, v1}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    return-void
.end method

.method public final valueOf(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5

    .line 587
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 19591
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 19592
    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 20506
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final valueOf(Ljava/lang/ref/WeakReference;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1179
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "app went to background"

    .line 1183
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1185
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    .line 1188
    iget-wide v1, p0, Lcom/appsflyer/internal/ag;->stop:J

    iget-wide v3, p0, Lcom/appsflyer/internal/ag;->getSdkVersion:J

    sub-long/2addr v1, v3

    .line 1190
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 50176
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v5, "AppsFlyerKey"

    invoke-virtual {v4, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_39

    const-string p1, "[callStats] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    .line 1193
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    return-void

    .line 50177
    :cond_39
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "KSAppsFlyerId"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1198
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v7, "deviceTrackingDisabled"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_55

    const-string v6, "true"

    .line 1200
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    :cond_55
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/z;->valueOf(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/b$e$a;

    move-result-object v6

    if-eqz v6, :cond_77

    .line 50178
    iget-object v7, v6, Lcom/appsflyer/internal/b$e$a;->valueOf:Ljava/lang/String;

    const-string v9, "amazon_aid"

    .line 1204
    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50179
    iget-object v6, v6, Lcom/appsflyer/internal/b$e$a;->AFInAppEventParameterName:Ljava/lang/Boolean;

    .line 1205
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "amazon_aid_limit"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    :cond_77
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    const-string v7, "advertiserId"

    invoke-virtual {v6, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_86

    .line 1209
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    :cond_86
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_id"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "devkey"

    .line 1212
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    invoke-static {p1}, Lcom/appsflyer/internal/al;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "uid"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    .line 1214
    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time_in_app"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "statType"

    const-string v2, "user_closed_app"

    .line 1215
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "Android"

    .line 1216
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appsFlyerCount"

    .line 50180
    invoke-static {v0, v1, v8}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    .line 1217
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch_counter"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "channel"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_de

    goto :goto_e0

    :cond_de
    const-string v5, ""

    :goto_e0
    const-string p1, "originalAppsflyerId"

    .line 1219
    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    iget-boolean p1, p0, Lcom/appsflyer/internal/ag;->setAndroidIdData:Z

    if-eqz p1, :cond_134

    :try_start_e9
    const-string p1, "Running callStats task"

    .line 1223
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 1224
    new-instance p1, Lcom/appsflyer/internal/af;

    new-instance v0, Lcom/appsflyer/internal/cd;

    invoke-direct {v0}, Lcom/appsflyer/internal/cd;-><init>()V

    .line 1225
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    .line 50181
    iput-boolean v1, v0, Lcom/appsflyer/internal/bv;->onConversionDataFail:Z

    .line 1226
    invoke-virtual {v0, v3}, Lcom/appsflyer/internal/bv;->AFInAppEventParameterName(Ljava/util/Map;)Lcom/appsflyer/internal/f;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/internal/ag;->onDeepLinkingNative:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 50183
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    .line 50184
    sget-object v4, Lcom/appsflyer/internal/ag;->onAppOpenAttribution:Lcom/appsflyer/internal/ag;

    .line 50183
    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1227
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/f;->values(Ljava/lang/String;)Lcom/appsflyer/internal/f;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/bv;

    invoke-direct {p1, v0}, Lcom/appsflyer/internal/af;-><init>(Lcom/appsflyer/internal/bv;)V

    .line 50185
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50191
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_12c
    .catchall {:try_start_e9 .. :try_end_12c} :catchall_12d

    return-void

    :catchall_12d
    move-exception p1

    const-string v0, "Could not send callStats request"

    .line 1229
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_134
    const-string p1, "Stats call is disabled, ignore ..."

    .line 1232
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    return-void
.end method

.method public final valueOf()Z
    .registers 4

    const-string v0, "waitForCustomerId"

    const/4 v1, 0x0

    .line 617
    invoke-static {v0, v1}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 21605
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "AppUserId"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    return v1
.end method

.method final values()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3252
    invoke-direct {p0}, Lcom/appsflyer/internal/ag;->AFVersionDeclaration()Z

    move-result v1

    const-string v2, "lvl"

    if-eqz v1, :cond_13

    .line 3253
    iget-object v1, p0, Lcom/appsflyer/internal/ag;->setCustomerUserId:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 3254
    :cond_13
    iget-boolean v1, p0, Lcom/appsflyer/internal/ag;->waitForCustomerUserId:Z

    if-eqz v1, :cond_2a

    .line 3255
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/ag;->setCustomerUserId:Ljava/util/Map;

    const-string v3, "error"

    const-string v4, "operation timed out."

    .line 3256
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3257
    iget-object v1, p0, Lcom/appsflyer/internal/ag;->setCustomerUserId:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    :goto_2a
    return-object v0
.end method

.method final values(Lcom/appsflyer/internal/f;)Ljava/util/Map;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/f;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "sdkExtension"

    const-string v4, "AppsFlyerTimePassedSincePrevLaunch"

    const-string v5, "yyyy-MM-dd_HHmmssZ"

    const-string v6, "use cached IMEI: "

    const-string v7, "uid"

    const-string v8, "appid"

    const-string v9, "INSTALL_STORE"

    const-string v10, "gcd"

    const-string v11, "prev_event_name"

    const-string v12, "preInstallName"

    .line 50359
    iget-object v13, v2, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 50360
    iget-object v14, v2, Lcom/appsflyer/internal/f;->init:Ljava/lang/String;

    .line 50361
    iget-object v15, v2, Lcom/appsflyer/internal/f;->AFVersionDeclaration:Ljava/lang/String;

    move-object/from16 v16, v5

    .line 50362
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v17, v7

    iget-object v7, v2, Lcom/appsflyer/internal/f;->AFInAppEventType:Ljava/util/Map;

    if-nez v7, :cond_2e

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    goto :goto_30

    :cond_2e
    iget-object v7, v2, Lcom/appsflyer/internal/f;->AFInAppEventType:Ljava/util/Map;

    :goto_30
    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50363
    iget-object v7, v2, Lcom/appsflyer/internal/f;->getLevel:Ljava/lang/String;

    move-object/from16 v18, v6

    .line 1672
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object/from16 v19, v8

    .line 1673
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/f;->AFInAppEventType()Z

    move-result v8

    move-object/from16 v20, v5

    .line 50364
    iget-object v5, v2, Lcom/appsflyer/internal/f;->AFInAppEventParameterName:Ljava/lang/String;

    .line 1675
    iget-object v2, v2, Lcom/appsflyer/internal/f;->AFKeystoreWrapper:Ljava/util/Map;

    .line 1676
    invoke-static {v13, v2}, Lcom/appsflyer/internal/z;->values(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/b$e$a;

    .line 1677
    sget-object v21, Lcom/appsflyer/internal/z;->AFInAppEventType:Ljava/lang/Boolean;

    move-object/from16 v22, v5

    if-eqz v21, :cond_74

    .line 1678
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_74

    .line 1679
    invoke-static {v2}, Lcom/appsflyer/internal/ag;->values(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    const/16 v23, 0x1

    xor-int/lit8 v21, v21, 0x1

    move-object/from16 v23, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v21, v12

    const-string v12, "ad_ids_disabled"

    invoke-interface {v5, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    :cond_74
    move-object/from16 v21, v12

    move-object/from16 v23, v14

    .line 1681
    :goto_78
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v12, v15

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 1682
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v9

    const-string v9, "af_timestamp"

    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_98

    const-string v14, "cksm_v1"

    .line 1686
    invoke-interface {v2, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    :cond_98
    :try_start_98
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v5

    if-nez v5, :cond_b6

    .line 1691
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "******* sendTrackingWithEvent: "

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_aa

    const-string v14, "Launch"

    goto :goto_ab

    :cond_aa
    move-object v14, v12

    :goto_ab
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_bb

    :cond_b6
    const-string v5, "Reporting has been stopped"

    .line 1693
    invoke-static {v5}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1695
    :goto_bb
    invoke-static {}, Lcom/appsflyer/internal/ah;->values()Lcom/appsflyer/internal/ah;
    :try_end_be
    .catchall {:try_start_98 .. :try_end_be} :catchall_cac

    .line 50365
    :try_start_be
    invoke-static {v13}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_d7

    .line 50366
    invoke-static {v13}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_cf} :catch_d0
    .catchall {:try_start_be .. :try_end_cf} :catchall_cac

    goto :goto_d7

    :catch_d0
    move-exception v0

    move-object v5, v0

    :try_start_d2
    const-string v14, "Could not create cache directory"

    .line 50369
    invoke-static {v14, v5}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_cac

    .line 1699
    :cond_d7
    :goto_d7
    :try_start_d7
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1000

    invoke-virtual {v5, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1700
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v14, "android.permission.INTERNET"

    .line 1701
    invoke-interface {v5, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f8

    const-string v14, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    .line 1702
    invoke-static {v14}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    :cond_f8
    const-string v14, "android.permission.ACCESS_NETWORK_STATE"

    .line 1704
    invoke-interface {v5, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_105

    const-string v14, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    .line 1705
    invoke-static {v14}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    :cond_105
    const-string v14, "android.permission.ACCESS_WIFI_STATE"

    .line 1707
    invoke-interface {v5, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11a

    const-string v5, "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml"

    .line 1708
    invoke-static {v5}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_112} :catch_113
    .catchall {:try_start_d7 .. :try_end_112} :catchall_cac

    goto :goto_11a

    :catch_113
    move-exception v0

    move-object v5, v0

    :try_start_115
    const-string v14, "Exception while validation permissions. "

    .line 1711
    invoke-static {v14, v5}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11a
    :goto_11a
    const-string v5, "af_events_api"

    const-string v14, "1"

    .line 1714
    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "brand"

    .line 1715
    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "device"

    .line 1716
    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "product"

    .line 1717
    sget-object v14, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sdk"

    .line 1718
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "model"

    .line 1719
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "deviceType"

    .line 1720
    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    invoke-static {v13, v2}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;)V

    .line 1722
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    .line 50372
    iget-object v14, v1, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    if-nez v14, :cond_161

    new-instance v14, Lcom/appsflyer/internal/au;

    invoke-direct {v14, v13}, Lcom/appsflyer/internal/au;-><init>(Landroid/content/Context;)V

    iput-object v14, v1, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 50373
    :cond_161
    iget-object v14, v1, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;
    :try_end_163
    .catchall {:try_start_115 .. :try_end_163} :catchall_cac

    const-string v15, "phone"

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    if-eqz v8, :cond_2d7

    .line 1725
    :try_start_16b
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1bb

    .line 1726
    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerProperties;->isOtherSdkStringDisabled()Z

    move-result v12

    if-nez v12, :cond_184

    .line 1727
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel(Landroid/content/Context;)F

    move-result v12

    const-string v11, "batteryLevel"

    .line 1728
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    :cond_184
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->values(Landroid/content/Context;)V

    .line 1732
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v11, v12, :cond_196

    .line 1733
    const-class v11, Landroid/app/UiModeManager;

    invoke-virtual {v13, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/UiModeManager;

    goto :goto_19e

    :cond_196
    const-string v11, "uimode"

    .line 1734
    invoke-virtual {v13, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/UiModeManager;

    :goto_19e
    if-eqz v11, :cond_1ae

    .line 1735
    invoke-virtual {v11}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1ae

    const-string v11, "tv"

    .line 1737
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    :cond_1ae
    invoke-static {v13}, Lcom/appsflyer/internal/bs;->values(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1bb

    const-string v11, "inst_app"

    .line 1741
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1bb
    const-string v11, "timepassedsincelastlaunch"

    .line 50374
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    move/from16 v27, v8

    move-object/from16 v28, v9

    const-wide/16 v8, 0x0

    .line 50376
    invoke-interface {v12, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v29

    .line 50378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 50381
    invoke-virtual {v1, v13, v4, v8, v9}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;Ljava/lang/String;J)V

    const-wide/16 v31, 0x0

    cmp-long v4, v29, v31

    if-lez v4, :cond_1df

    sub-long v8, v8, v29

    const-wide/16 v29, 0x3e8

    .line 50391
    div-long v8, v8, v29

    goto :goto_1e1

    :cond_1df
    const-wide/16 v8, -0x1

    .line 1744
    :goto_1e1
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50392
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v8, "oneLinkSlug"

    invoke-virtual {v4, v8}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50393
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    const-string v9, "onelinkVersion"

    invoke-virtual {v8, v9}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_203

    const-string v9, "onelink_id"

    .line 50395
    invoke-interface {v2, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_203
    if-eqz v8, :cond_20a

    const-string v4, "onelink_ver"

    .line 50398
    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50402
    :cond_20a
    iget-object v4, v1, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 50416
    iget-object v4, v4, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    const/4 v8, 0x0

    invoke-interface {v4, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_213
    .catchall {:try_start_16b .. :try_end_213} :catchall_cac

    if-eqz v4, :cond_23b

    .line 50405
    :try_start_215
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50406
    invoke-static {v8}, Lcom/appsflyer/internal/n;->valueOf(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 50407
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_23b

    .line 50408
    invoke-static {v2}, Lcom/appsflyer/internal/ag;->values(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 50409
    invoke-interface {v8, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50410
    iget-object v4, v1, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 50417
    iget-object v4, v4, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v4, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_23b
    .catch Lorg/json/JSONException; {:try_start_215 .. :try_end_23b} :catch_23b
    .catchall {:try_start_215 .. :try_end_23b} :catchall_cac

    .line 1747
    :catch_23b
    :cond_23b
    :try_start_23b
    iget-object v4, v1, Lcom/appsflyer/internal/ag;->sendPushNotificationData:Ljava/lang/String;

    if-eqz v4, :cond_242

    .line 1748
    invoke-interface {v2, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    :cond_242
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_246
    .catchall {:try_start_23b .. :try_end_246} :catchall_cac

    const-string v8, "referrer"

    if-nez v4, :cond_24d

    :try_start_24a
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24d
    const-string v4, "extraReferrers"

    const/4 v7, 0x0

    .line 1752
    invoke-interface {v6, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25b

    const-string v7, "extraReferrers"

    .line 1753
    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    :cond_25b
    invoke-virtual {v5, v13}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1756
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_26e

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_26e

    .line 1757
    invoke-interface {v2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26e
    const-string v4, "prev_session_dur"

    .line 50419
    iget-object v7, v14, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v7, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v4, v10, v8

    if-eqz v4, :cond_285

    const-string v4, "prev_session_dur"

    .line 1760
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_285
    const-string v4, "exception_number"

    .line 50420
    sget-object v7, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    if-nez v7, :cond_28e

    const-wide/16 v11, -0x1

    goto :goto_29c

    .line 50421
    :cond_28e
    sget-object v7, Lcom/appsflyer/internal/bc;->values:Landroid/app/Application;

    invoke-static {v7}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "exception_number"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 1761
    :goto_29c
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    iget-object v4, v1, Lcom/appsflyer/internal/ag;->setOutOfStore:Lcom/appsflyer/internal/bb;

    if-eqz v4, :cond_2d0

    .line 50422
    iget-object v7, v4, Lcom/appsflyer/internal/bb;->values:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2b6

    const-string v7, "partner_data"

    iget-object v8, v4, Lcom/appsflyer/internal/bb;->values:Ljava/util/Map;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50423
    :cond_2b6
    iget-object v7, v4, Lcom/appsflyer/internal/bb;->valueOf:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2d0

    .line 50424
    invoke-static {v2}, Lcom/appsflyer/internal/ag;->values(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "partner_data"

    iget-object v9, v4, Lcom/appsflyer/internal/bb;->valueOf:Ljava/util/Map;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50425
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v4, Lcom/appsflyer/internal/bb;->valueOf:Ljava/util/Map;

    :cond_2d0
    move-object v12, v14

    move-object/from16 v25, v15

    move-object/from16 v4, v26

    goto/16 :goto_333

    :cond_2d7
    move/from16 v27, v8

    move-object/from16 v28, v9

    .line 50428
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 50429
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7
    :try_end_2e3
    .catchall {:try_start_24a .. :try_end_2e3} :catchall_cac

    move-object/from16 v8, v25

    const/4 v9, 0x0

    .line 50433
    :try_start_2e6
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2ea
    .catch Ljava/lang/Exception; {:try_start_2e6 .. :try_end_2ea} :catch_327
    .catchall {:try_start_2e6 .. :try_end_2ea} :catchall_cac

    const-string v9, "prev_event_timestamp"

    if-eqz v10, :cond_312

    .line 50435
    :try_start_2ee
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_2f3} :catch_30a
    .catchall {:try_start_2ee .. :try_end_2f3} :catchall_cac

    move-object v12, v14

    move-object/from16 v25, v15

    const-wide/16 v14, -0x1

    .line 50436
    :try_start_2f8
    invoke-interface {v4, v9, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-virtual {v11, v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50437
    invoke-virtual {v11, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "prev_event"

    .line 50438
    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_307
    .catch Ljava/lang/Exception; {:try_start_2f8 .. :try_end_307} :catch_308
    .catchall {:try_start_2f8 .. :try_end_307} :catchall_cac

    goto :goto_315

    :catch_308
    move-exception v0

    goto :goto_30e

    :catch_30a
    move-exception v0

    move-object v12, v14

    move-object/from16 v25, v15

    :goto_30e
    move-object v7, v0

    move-object/from16 v4, v26

    goto :goto_32e

    :cond_312
    move-object v12, v14

    move-object/from16 v25, v15

    :goto_315
    move-object/from16 v4, v26

    .line 50440
    :try_start_317
    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v7, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 50447
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_324
    .catch Ljava/lang/Exception; {:try_start_317 .. :try_end_324} :catch_325
    .catchall {:try_start_317 .. :try_end_324} :catchall_cac

    goto :goto_333

    :catch_325
    move-exception v0

    goto :goto_32d

    :catch_327
    move-exception v0

    move-object v12, v14

    move-object/from16 v25, v15

    move-object/from16 v4, v26

    :goto_32d
    move-object v7, v0

    :goto_32e
    :try_start_32e
    const-string v8, "Error while processing previous event."

    .line 50444
    invoke-static {v8, v7}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_333
    const-string v7, "KSAppsFlyerId"

    .line 50449
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "KSAppsFlyerRICounter"

    .line 50450
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_35f

    if-eqz v8, :cond_35f

    .line 1769
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_35f

    const-string v9, "reinstallCounter"

    .line 1770
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "originalAppsflyerId"

    .line 1771
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35f
    const-string v7, "additionalCustomData"

    .line 50451
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_370

    const-string v8, "customData"

    .line 1776
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_370
    .catchall {:try_start_32e .. :try_end_370} :catchall_cac

    .line 1780
    :cond_370
    :try_start_370
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_38b

    const-string v8, "installer_package"

    .line 1782
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_383
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_383} :catch_384
    .catchall {:try_start_370 .. :try_end_383} :catchall_cac

    goto :goto_38b

    :catch_384
    move-exception v0

    move-object v7, v0

    :try_start_386
    const-string v8, "Exception while getting the app\'s installer package. "

    .line 1785
    invoke-static {v8, v7}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1788
    :cond_38b
    :goto_38b
    invoke-virtual {v5, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_39a

    .line 1789
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_39a

    .line 1790
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    :cond_39a
    invoke-virtual {v1, v13}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1794
    invoke-virtual {v1, v13, v3}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3aa

    .line 1801
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3ae

    :cond_3aa
    if-nez v7, :cond_3b3

    if-eqz v3, :cond_3b3

    :cond_3ae
    const-string v7, "af_latestchannel"

    .line 1803
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50452
    :cond_3b3
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v7, v24

    .line 50453
    invoke-interface {v3, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3c5

    const/4 v8, 0x0

    .line 50454
    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3f8

    .line 50456
    :cond_3c5
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3e9

    .line 50460
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v8, "api_store_value"

    invoke-virtual {v3, v8}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d8

    goto :goto_3ea

    :cond_3d8
    const-string v3, "AF_STORE"

    if-eqz v13, :cond_3e9

    .line 50468
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3ea

    :cond_3e9
    const/4 v3, 0x0

    .line 50469
    :goto_3ea
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 50470
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 50471
    invoke-interface {v8, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50474
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_3f8
    if-eqz v3, :cond_403

    const-string v7, "af_installstore"

    .line 1808
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50476
    :cond_403
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 50500
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    move-object/from16 v8, v21

    invoke-virtual {v7, v8}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4a0

    .line 50480
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_421

    const/4 v7, 0x0

    .line 50481
    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_497

    .line 50483
    :cond_421
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_487

    const-string v3, "ro.appsflyer.preinstall.path"

    .line 50501
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50502
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 50504
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_449

    const-string v3, "AF_PRE_INSTALL_PATH"

    .line 50506
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v7, v9}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50507
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 50510
    :cond_449
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_455

    const-string v3, "/data/local/tmp/pre_install.appsflyer"

    .line 50511
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 50513
    :cond_455
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_461

    const-string v3, "/etc/pre_install.appsflyer"

    .line 50514
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 50517
    :cond_461
    invoke-static {v3}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_469

    const/4 v3, 0x0

    goto :goto_471

    .line 50521
    :cond_469
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/appsflyer/internal/ag;->valueOf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_471
    if-eqz v3, :cond_474

    goto :goto_486

    :cond_474
    const-string v3, "AF_PRE_INSTALL_NAME"

    if-nez v13, :cond_47a

    const/4 v3, 0x0

    goto :goto_486

    .line 50526
    :cond_47a
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v7, v9}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_486
    move-object v7, v3

    :cond_487
    if-eqz v7, :cond_497

    .line 50527
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 50528
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 50529
    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50532
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_497
    :goto_497
    if-eqz v7, :cond_4a0

    .line 50534
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a0
    if-eqz v7, :cond_4ab

    const-string v3, "af_preinstall_name"

    .line 1813
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50536
    :cond_4ab
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    const-string v7, "api_store_value"

    invoke-virtual {v3, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4b8

    goto :goto_4ca

    :cond_4b8
    const-string v3, "AF_STORE"

    if-nez v13, :cond_4be

    const/4 v3, 0x0

    goto :goto_4ca

    .line 50544
    :cond_4be
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4ca
    if-eqz v3, :cond_4d5

    const-string v7, "af_currentstore"

    .line 1818
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d5
    .catchall {:try_start_386 .. :try_end_4d5} :catchall_cac

    :cond_4d5
    const-string v3, "appsflyerKey"

    if-eqz v23, :cond_4e5

    .line 1821
    :try_start_4d9
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4e5

    move-object/from16 v7, v23

    .line 1822
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4fa

    :cond_4e5
    const-string v7, "AppsFlyerKey"

    .line 50545
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_ca0

    .line 1825
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ca0

    .line 1826
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4fa
    const-string v7, "AppUserId"

    .line 50547
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_50b

    const-string v8, "appUserId"

    .line 1836
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50b
    const-string v7, "userEmails"

    .line 1839
    invoke-virtual {v5, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_519

    const-string v8, "user_emails"

    .line 1842
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52e

    :cond_519
    const-string v7, "userEmail"

    .line 50548
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_52e

    const-string v8, "sha1_el"

    .line 1846
    invoke-static {v7}, Lcom/appsflyer/internal/af;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52e
    :goto_52e
    if-eqz v4, :cond_53c

    const-string v7, "eventName"

    .line 1851
    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "eventValue"

    move-object/from16 v8, v20

    .line 1852
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50550
    :cond_53c
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    move-object/from16 v8, v19

    invoke-virtual {v7, v8}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_553

    .line 50551
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1856
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_553
    const-string v7, "currencyCode"

    .line 50552
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_581

    .line 1860
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_57c

    .line 1861
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WARNING: currency code should be 3 characters!!! \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' is not a legal value."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    :cond_57c
    const-string v8, "currency"

    .line 1863
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_581
    const-string v7, "IS_UPDATE"

    .line 50553
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_592

    const-string v8, "isUpdate"

    .line 1868
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    :cond_592
    invoke-virtual {v1, v13}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v7

    const-string v8, "af_preinstalled"

    .line 1871
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "collectFacebookAttrId"

    const/4 v8, 0x1

    .line 1873
    invoke-virtual {v5, v7, v8}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7
    :try_end_5a6
    .catchall {:try_start_4d9 .. :try_end_5a6} :catchall_cac

    const/4 v8, 0x0

    if-eqz v7, :cond_5cd

    .line 1878
    :try_start_5a9
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.facebook.katana"

    invoke-virtual {v7, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1879
    invoke-virtual {v1, v13}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7
    :try_end_5b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a9 .. :try_end_5b6} :catch_5c0
    .catchall {:try_start_5a9 .. :try_end_5b6} :catchall_5b7

    goto :goto_5c6

    :catchall_5b7
    move-exception v0

    move-object v7, v0

    :try_start_5b9
    const-string v9, "Exception while collecting facebook\'s attribution ID. "

    .line 1885
    invoke-static {v9, v7}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5be
    const/4 v7, 0x0

    goto :goto_5c6

    :catch_5c0
    const-string v7, "Exception while collecting facebook\'s attribution ID. "

    .line 1882
    invoke-static {v7}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    goto :goto_5be

    :goto_5c6
    if-eqz v7, :cond_5cd

    const-string v9, "fb"

    .line 1888
    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50554
    :cond_5cd
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    const-string v9, "deviceTrackingDisabled"

    .line 50555
    invoke-virtual {v7, v9, v8}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5e4

    const-string v7, "deviceTrackingDisabled"

    const-string v9, "true"

    .line 50558
    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v3

    goto/16 :goto_761

    .line 50560
    :cond_5e4
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "collectIMEI"

    .line 50561
    invoke-virtual {v7, v10, v8}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "imeiCached"

    const/4 v14, 0x0

    .line 50562
    invoke-interface {v9, v11, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_699

    .line 50564
    iget-object v10, v1, Lcom/appsflyer/internal/ag;->init:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_699

    .line 50565
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AppsFlyer2dXConversionCallback(Landroid/content/Context;)Z

    move-result v10
    :try_end_603
    .catchall {:try_start_5b9 .. :try_end_603} :catchall_cac

    if-eqz v10, :cond_696

    move-object/from16 v10, v25

    .line 50567
    :try_start_607
    invoke-virtual {v13, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 50568
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "getDeviceId"
    :try_end_613
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_607 .. :try_end_613} :catch_66b
    .catch Ljava/lang/Exception; {:try_start_607 .. :try_end_613} :catch_640
    .catchall {:try_start_607 .. :try_end_613} :catchall_cac

    move-object/from16 v19, v3

    :try_start_615
    new-array v3, v8, [Ljava/lang/Class;

    invoke-virtual {v14, v15, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v14, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v10, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_627

    goto/16 :goto_69f

    :cond_627
    if-eqz v11, :cond_6a1

    .line 50572
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_62d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_615 .. :try_end_62d} :catch_63e
    .catch Ljava/lang/Exception; {:try_start_615 .. :try_end_62d} :catch_63c
    .catchall {:try_start_615 .. :try_end_62d} :catchall_cac

    move-object/from16 v10, v18

    :try_start_62f
    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_636
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_62f .. :try_end_636} :catch_63a
    .catch Ljava/lang/Exception; {:try_start_62f .. :try_end_636} :catch_638
    .catchall {:try_start_62f .. :try_end_636} :catchall_cac

    goto/16 :goto_6a2

    :catch_638
    move-exception v0

    goto :goto_645

    :catch_63a
    move-exception v0

    goto :goto_670

    :catch_63c
    move-exception v0

    goto :goto_643

    :catch_63e
    move-exception v0

    goto :goto_66e

    :catch_640
    move-exception v0

    move-object/from16 v19, v3

    :goto_643
    move-object/from16 v10, v18

    :goto_645
    move-object v3, v0

    if-eqz v11, :cond_654

    .line 50583
    :try_start_648
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_655

    :cond_654
    const/4 v11, 0x0

    .line 50586
    :goto_655
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "WARNING: Can\'t collect IMEI: other reason: "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a2

    :catch_66b
    move-exception v0

    move-object/from16 v19, v3

    :goto_66e
    move-object/from16 v10, v18

    :goto_670
    move-object v3, v0

    if-eqz v11, :cond_67f

    .line 50577
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_680

    :cond_67f
    const/4 v11, 0x0

    .line 50580
    :goto_680
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "WARNING: Can\'t collect IMEI because of missing permissions: "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a2

    :cond_696
    move-object/from16 v19, v3

    goto :goto_6a1

    :cond_699
    move-object/from16 v19, v3

    .line 50590
    iget-object v3, v1, Lcom/appsflyer/internal/ag;->init:Ljava/lang/String;

    if-eqz v3, :cond_6a1

    :goto_69f
    move-object v11, v3

    goto :goto_6a2

    :cond_6a1
    :goto_6a1
    const/4 v11, 0x0

    :goto_6a2
    if-eqz v11, :cond_6ba

    const-string v3, "imeiCached"

    .line 50647
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 50648
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 50649
    invoke-interface {v10, v3, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50652
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v3, "imei"

    .line 50597
    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6bf

    :cond_6ba
    const-string v3, "IMEI was not collected."

    .line 50599
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    :goto_6bf
    const-string v3, "collectAndroidId"

    .line 50603
    invoke-virtual {v7, v3, v8}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v7, "androidIdCached"

    const/4 v10, 0x0

    .line 50604
    invoke-interface {v9, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_717

    .line 50606
    iget-object v3, v1, Lcom/appsflyer/internal/ag;->getLevel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_717

    .line 50607
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AppsFlyer2dXConversionCallback(Landroid/content/Context;)Z

    move-result v3
    :try_end_6da
    .catchall {:try_start_648 .. :try_end_6da} :catchall_cac

    if-eqz v3, :cond_71c

    .line 50609
    :try_start_6dc
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "android_id"

    invoke-static {v3, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6e9

    goto :goto_71d

    :cond_6e9
    if-eqz v7, :cond_6f9

    const-string v3, "use cached AndroidId: "

    .line 50613
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_6f8
    .catch Ljava/lang/Exception; {:try_start_6dc .. :try_end_6f8} :catch_6fb
    .catchall {:try_start_6dc .. :try_end_6f8} :catchall_cac

    goto :goto_715

    :cond_6f9
    const/4 v7, 0x0

    goto :goto_715

    :catch_6fb
    move-exception v0

    move-object v3, v0

    if-eqz v7, :cond_70d

    :try_start_6ff
    const-string v9, "use cached AndroidId: "

    .line 50618
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_70e

    :cond_70d
    const/4 v7, 0x0

    .line 50621
    :goto_70e
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_715
    move-object v3, v7

    goto :goto_71d

    .line 50625
    :cond_717
    iget-object v3, v1, Lcom/appsflyer/internal/ag;->getLevel:Ljava/lang/String;

    if-eqz v3, :cond_71c

    goto :goto_71d

    :cond_71c
    const/4 v3, 0x0

    :goto_71d
    if-eqz v3, :cond_735

    const-string v7, "androidIdCached"

    .line 50654
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 50655
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 50656
    invoke-interface {v9, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50659
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v7, "android_id"

    .line 50632
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73a

    :cond_735
    const-string v3, "Android ID was not collected."

    .line 50634
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 50636
    :goto_73a
    invoke-static {v13}, Lcom/appsflyer/internal/z;->values(Landroid/content/Context;)Lcom/appsflyer/internal/b$e$a;

    move-result-object v3

    if-eqz v3, :cond_761

    .line 50638
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "isManual"

    .line 50661
    iget-object v10, v3, Lcom/appsflyer/internal/b$e$a;->AFInAppEventType:Ljava/lang/Boolean;

    .line 50639
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "val"

    .line 50662
    iget-object v10, v3, Lcom/appsflyer/internal/b$e$a;->valueOf:Ljava/lang/String;

    .line 50640
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50663
    iget-object v3, v3, Lcom/appsflyer/internal/b$e$a;->AFInAppEventParameterName:Ljava/lang/Boolean;

    if-eqz v3, :cond_75c

    const-string v9, "isLat"

    .line 50642
    invoke-interface {v7, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75c
    const-string v3, "oaid"

    .line 50643
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_761
    .catchall {:try_start_6ff .. :try_end_761} :catchall_cac

    .line 1895
    :cond_761
    :goto_761
    :try_start_761
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/appsflyer/internal/al;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v3
    :try_end_76a
    .catch Ljava/lang/Exception; {:try_start_761 .. :try_end_76a} :catch_774
    .catchall {:try_start_761 .. :try_end_76a} :catchall_cac

    move-object/from16 v7, v17

    if-eqz v3, :cond_78d

    .line 1897
    :try_start_76e
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_771
    .catch Ljava/lang/Exception; {:try_start_76e .. :try_end_771} :catch_772
    .catchall {:try_start_76e .. :try_end_771} :catchall_cac

    goto :goto_78d

    :catch_772
    move-exception v0

    goto :goto_777

    :catch_774
    move-exception v0

    move-object/from16 v7, v17

    :goto_777
    move-object v3, v0

    .line 1899
    :try_start_778
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ERROR: could not get uid "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_78d
    .catchall {:try_start_778 .. :try_end_78d} :catchall_cac

    :cond_78d
    :goto_78d
    :try_start_78d
    const-string v3, "lang"

    .line 1903
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79a
    .catch Ljava/lang/Exception; {:try_start_78d .. :try_end_79a} :catch_79b
    .catchall {:try_start_78d .. :try_end_79a} :catchall_cac

    goto :goto_7a2

    :catch_79b
    move-exception v0

    move-object v3, v0

    :try_start_79d
    const-string v9, "Exception while collecting display language name. "

    .line 1905
    invoke-static {v9, v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7a2
    .catchall {:try_start_79d .. :try_end_7a2} :catchall_cac

    :goto_7a2
    :try_start_7a2
    const-string v3, "lang_code"

    .line 1909
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7af
    .catch Ljava/lang/Exception; {:try_start_7a2 .. :try_end_7af} :catch_7b0
    .catchall {:try_start_7a2 .. :try_end_7af} :catchall_cac

    goto :goto_7b7

    :catch_7b0
    move-exception v0

    move-object v3, v0

    :try_start_7b2
    const-string v9, "Exception while collecting display language code. "

    .line 1911
    invoke-static {v9, v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7b7
    .catchall {:try_start_7b2 .. :try_end_7b7} :catchall_cac

    :goto_7b7
    :try_start_7b7
    const-string v3, "country"

    .line 1915
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c4
    .catch Ljava/lang/Exception; {:try_start_7b7 .. :try_end_7c4} :catch_7c5
    .catchall {:try_start_7b7 .. :try_end_7c4} :catchall_cac

    goto :goto_7cc

    :catch_7c5
    move-exception v0

    move-object v3, v0

    :try_start_7c7
    const-string v9, "Exception while collecting country name. "

    .line 1917
    invoke-static {v9, v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7cc
    const-string v3, "platformextension"

    .line 1920
    iget-object v9, v1, Lcom/appsflyer/internal/ag;->setOaidData:Lcom/appsflyer/internal/an;

    invoke-virtual {v9}, Lcom/appsflyer/internal/an;->AFInAppEventType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    invoke-static {v13, v2}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Landroid/content/Context;Ljava/util/Map;)V

    .line 50664
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v10, v16

    invoke-direct {v3, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_7e3
    .catchall {:try_start_7c7 .. :try_end_7e3} :catchall_cac

    .line 1928
    :try_start_7e3
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-wide v14, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string v9, "installDate"

    const-string v11, "UTC"

    .line 50665
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50666
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 1929
    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_808
    .catch Ljava/lang/Exception; {:try_start_7e3 .. :try_end_808} :catch_809
    .catchall {:try_start_7e3 .. :try_end_808} :catchall_cac

    goto :goto_810

    :catch_809
    move-exception v0

    move-object v9, v0

    :try_start_80b
    const-string v11, "Exception while collecting install date. "

    .line 1931
    invoke-static {v11, v9}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_810
    .catchall {:try_start_80b .. :try_end_810} :catchall_cac

    .line 1935
    :goto_810
    :try_start_810
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    const-string v11, "versionCode"

    .line 1937
    invoke-interface {v6, v11, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1939
    iget v14, v9, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_824
    .catchall {:try_start_810 .. :try_end_824} :catchall_894

    if-le v14, v11, :cond_840

    :try_start_826
    const-string v11, "versionCode"

    .line 1942
    iget v14, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 50667
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 50668
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 50669
    invoke-interface {v15, v11, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50672
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_838
    .catchall {:try_start_826 .. :try_end_838} :catchall_839

    goto :goto_840

    :catchall_839
    move-exception v0

    move-object v3, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v7

    goto :goto_89a

    :cond_840
    :goto_840
    :try_start_840
    const-string v11, "app_version_code"

    .line 1946
    iget v14, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "app_version_name"

    .line 1947
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    iget-wide v14, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1950
    iget-wide v8, v9, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-string v11, "date1"
    :try_end_858
    .catchall {:try_start_840 .. :try_end_858} :catchall_894

    move-object/from16 v17, v7

    .line 50674
    :try_start_85a
    new-instance v7, Ljava/text/SimpleDateFormat;
    :try_end_85c
    .catchall {:try_start_85a .. :try_end_85c} :catchall_890

    move-object/from16 v18, v5

    :try_start_85e
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v10, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1951
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 1952
    invoke-virtual {v7, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1951
    invoke-interface {v2, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "date2"

    .line 50675
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1953
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1954
    invoke-virtual {v7, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1953
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    invoke-direct {v1, v3, v13}, Lcom/appsflyer/internal/ag;->valueOf(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "firstLaunchDate"

    .line 1956
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88d
    .catchall {:try_start_85e .. :try_end_88d} :catchall_88e

    goto :goto_89f

    :catchall_88e
    move-exception v0

    goto :goto_899

    :catchall_890
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_899

    :catchall_894
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v7

    :goto_899
    move-object v3, v0

    :goto_89a
    :try_start_89a
    const-string v5, "Exception while collecting app version data "

    .line 1958
    invoke-static {v5, v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1961
    :goto_89f
    invoke-static {v13}, Lcom/appsflyer/internal/bp;->values(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/appsflyer/internal/ag;->setImeiData:Z

    .line 1965
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "didConfigureTokenRefreshService="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/appsflyer/internal/ag;->setImeiData:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 1966
    iget-boolean v3, v1, Lcom/appsflyer/internal/ag;->setImeiData:Z

    if-nez v3, :cond_8c3

    const-string v3, "tokenRefreshConfigured"

    .line 1967
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c3
    if-eqz v27, :cond_8f8

    .line 1973
    iget-object v3, v1, Lcom/appsflyer/internal/ag;->getInstance:Ljava/lang/String;

    if-eqz v3, :cond_8ee

    const-string v3, "af_deeplink"

    .line 1974
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8d7

    const-string v3, "Skip \'af\' payload as deeplink was found by path"

    .line 1975
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_8ee

    .line 1977
    :cond_8d7
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/appsflyer/internal/ag;->getInstance:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "isPush"

    const-string v7, "true"

    .line 1978
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "af_deeplink"

    .line 1979
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8ee
    :goto_8ee
    const/4 v3, 0x0

    .line 1982
    iput-object v3, v1, Lcom/appsflyer/internal/ag;->getInstance:Ljava/lang/String;

    const-string v3, "open_referrer"

    move-object/from16 v5, v22

    .line 1984
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f8
    .catchall {:try_start_89a .. :try_end_8f8} :catchall_cac

    :cond_8f8
    const-string v3, "sensors"

    if-nez v27, :cond_93c

    .line 1990
    :try_start_8fc
    invoke-static {v13}, Lcom/appsflyer/internal/ab;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/ab;

    move-result-object v5

    .line 50676
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50677
    invoke-virtual {v5}, Lcom/appsflyer/internal/ab;->AFInAppEventType()Ljava/util/List;

    move-result-object v5

    .line 50678
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_91c

    .line 50680
    new-instance v8, Lcom/appsflyer/internal/i;

    invoke-direct {v8}, Lcom/appsflyer/internal/i;-><init>()V

    invoke-virtual {v8, v5}, Lcom/appsflyer/internal/i;->AFInAppEventType(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 50681
    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_921

    :cond_91c
    const-string v5, "na"

    .line 50683
    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    :goto_921
    invoke-interface {v2, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_924
    .catch Ljava/lang/Exception; {:try_start_8fc .. :try_end_924} :catch_925
    .catchall {:try_start_8fc .. :try_end_924} :catchall_cac

    goto :goto_93c

    :catch_925
    move-exception v0

    move-object v5, v0

    .line 1992
    :try_start_927
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected exception from AFSensorManager: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    :cond_93c
    :goto_93c
    const-string v5, "advertiserId"

    .line 50686
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_963

    .line 1996
    invoke-static {v13, v2}, Lcom/appsflyer/internal/z;->values(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/b$e$a;

    const-string v5, "GAID_retry"

    const-string v7, "advertiserId"

    .line 50687
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_95b

    const/4 v7, 0x1

    goto :goto_95c

    :cond_95b
    const/4 v7, 0x0

    .line 1997
    :goto_95c
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    :cond_963
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/z;->valueOf(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/b$e$a;

    move-result-object v5

    if-eqz v5, :cond_97f

    const-string v7, "amazon_aid"

    .line 50688
    iget-object v8, v5, Lcom/appsflyer/internal/b$e$a;->valueOf:Ljava/lang/String;

    .line 2002
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "amazon_aid_limit"

    .line 50689
    iget-object v5, v5, Lcom/appsflyer/internal/b$e$a;->AFInAppEventParameterName:Ljava/lang/Boolean;

    .line 2003
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    :cond_97f
    invoke-static {v6}, Lcom/appsflyer/internal/bp;->valueOf(Landroid/content/SharedPreferences;)Z

    move-result v5

    const-string v7, "registeredUninstall"

    .line 2006
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "appsFlyerCount"

    move/from16 v7, v27

    .line 50690
    invoke-static {v6, v5, v7}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v5

    const-string v8, "counter"

    .line 2008
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "iaecounter"

    if-eqz v4, :cond_9a3

    const/4 v4, 0x1

    goto :goto_9a4

    :cond_9a3
    const/4 v4, 0x0

    :goto_9a4
    const-string v9, "appsFlyerInAppEventCount"

    .line 50691
    invoke-static {v6, v9, v4}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v4

    .line 2009
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_a1e

    const/4 v4, 0x1

    if-eq v5, v4, :cond_9d1

    const/4 v4, 0x2

    if-eq v5, v4, :cond_9ba

    goto :goto_a1e

    .line 2031
    :cond_9ba
    invoke-static {v2}, Lcom/appsflyer/internal/ag;->values(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 50696
    new-instance v8, Ljava/util/HashMap;

    iget-object v9, v12, Lcom/appsflyer/internal/au;->values:Ljava/util/Map;

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2034
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a1e

    const-string v9, "first_launch"

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1e

    :cond_9d1
    move-object/from16 v4, v18

    const/4 v8, 0x1

    .line 50692
    iput-boolean v8, v4, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper:Z

    const-string v4, "waitForCustomerId"

    const/4 v9, 0x0

    .line 2015
    invoke-static {v4, v9}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9e8

    const-string v4, "wait_cid"

    .line 2016
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    :cond_9e8
    invoke-static {v2}, Lcom/appsflyer/internal/ag;->values(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    const-string v9, "ddl"

    .line 50694
    iget-object v10, v12, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    const/4 v14, 0x0

    invoke-interface {v10, v9, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a0b

    .line 2021
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2022
    invoke-static {v10}, Lcom/appsflyer/internal/n;->valueOf(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    .line 2023
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a0b

    const-string v10, "ddl"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50695
    :cond_a0b
    new-instance v9, Ljava/util/HashMap;

    iget-object v10, v12, Lcom/appsflyer/internal/au;->values:Ljava/util/Map;

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2027
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a1f

    const-string v10, "first_launch"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1f

    :cond_a1e
    :goto_a1e
    const/4 v8, 0x1

    :cond_a1f
    :goto_a1f
    const-string v4, "isFirstCall"

    .line 2038
    invoke-static {v6}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Landroid/content/SharedPreferences;)Z

    move-result v9

    if-nez v9, :cond_a28

    goto :goto_a29

    :cond_a28
    const/4 v8, 0x0

    :goto_a29
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50697
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v8, "cpu_abi"

    const-string v9, "ro.product.cpu.abi"

    .line 50698
    invoke-static {v9}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "cpu_abi2"

    const-string v9, "ro.product.cpu.abi2"

    .line 50699
    invoke-static {v9}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "arch"

    const-string v9, "os.arch"

    .line 50700
    invoke-static {v9}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "build_display_id"

    const-string v9, "ro.build.display.id"

    .line 50701
    invoke-static {v9}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_aed

    .line 50704
    iget-boolean v7, v1, Lcom/appsflyer/internal/ag;->updateServerUninstallToken:Z

    if-eqz v7, :cond_aa7

    .line 50734
    sget-object v7, Lcom/appsflyer/internal/w$e;->values:Lcom/appsflyer/internal/w;

    .line 50726
    invoke-virtual {v7, v13}, Lcom/appsflyer/internal/w;->AFInAppEventParameterName(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v7

    .line 50727
    new-instance v8, Ljava/util/HashMap;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v7, :cond_a9c

    const-string v9, "lat"

    .line 50729
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "lon"

    .line 50730
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "ts"

    .line 50731
    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50707
    :cond_a9c
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_aa7

    const-string v7, "loc"

    .line 50708
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50741
    :cond_aa7
    sget-object v7, Lcom/appsflyer/internal/d$e;->values:Lcom/appsflyer/internal/d;

    .line 50735
    invoke-virtual {v7, v13}, Lcom/appsflyer/internal/d;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/d$b;

    move-result-object v7

    const-string v8, "btl"

    .line 50742
    iget v9, v7, Lcom/appsflyer/internal/d$b;->AFInAppEventParameterName:F

    .line 50736
    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50743
    iget-object v8, v7, Lcom/appsflyer/internal/d$b;->valueOf:Ljava/lang/String;

    if-eqz v8, :cond_ac3

    const-string v8, "btch"

    .line 50744
    iget-object v7, v7, Lcom/appsflyer/internal/d$b;->valueOf:Ljava/lang/String;

    .line 50738
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ac3
    const/4 v7, 0x2

    if-gt v5, v7, :cond_aed

    .line 50716
    invoke-static {v13}, Lcom/appsflyer/internal/ab;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/ab;

    move-result-object v5

    .line 50745
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50746
    invoke-virtual {v5}, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName()Ljava/util/List;

    move-result-object v8

    .line 50748
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_add

    .line 50749
    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aea

    .line 50752
    :cond_add
    invoke-virtual {v5}, Lcom/appsflyer/internal/ab;->AFInAppEventType()Ljava/util/List;

    move-result-object v5

    .line 50753
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_aea

    .line 50754
    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50716
    :cond_aea
    :goto_aea
    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50720
    :cond_aed
    invoke-static {v13}, Lcom/appsflyer/internal/v;->AFKeystoreWrapper(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    const-string v5, "dim"

    .line 50721
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "deviceData"

    .line 50724
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v19

    .line 50758
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, v28

    .line 50759
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v8, v17

    .line 50760
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 50762
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x7

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50763
    invoke-virtual {v9, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50764
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50762
    invoke-static {v4}, Lcom/appsflyer/internal/af;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "af_v"

    .line 2045
    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50765
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "installDate"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "counter"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "iaecounter"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50771
    invoke-static {v3}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/af;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "af_v2"

    .line 2048
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    invoke-static {v13}, Lcom/appsflyer/internal/ag;->init(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "ivc"

    .line 2052
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_stop_tracking_used"

    .line 2062
    invoke-interface {v6, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bde

    const-string v3, "istu"

    const-string v4, "is_stop_tracking_used"

    const/4 v5, 0x0

    .line 2063
    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    :cond_bde
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "mcc"

    .line 2066
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "mnc"

    .line 2067
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cell"

    .line 2068
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sig"

    .line 50772
    iget-object v4, v12, Lcom/appsflyer/internal/au;->AFInAppEventType:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v12, Lcom/appsflyer/internal/au;->AFInAppEventType:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appsflyer/internal/aa;->values(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2069
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "last_boot_time"

    .line 50773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 2070
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "disk"

    .line 50774
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 50777
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_c5b

    .line 50778
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    .line 50779
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v7

    mul-long v7, v7, v5

    .line 50780
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    mul-long v9, v9, v5

    goto :goto_c6d

    .line 50782
    :cond_c5b
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    .line 50783
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    mul-int v6, v6, v5

    int-to-long v7, v6

    .line 50784
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    mul-int v4, v4, v5

    int-to-long v9, v4

    :goto_c6d
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    .line 50786
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    long-to-double v6, v7

    div-double/2addr v6, v4

    double-to-long v6, v6

    long-to-double v8, v9

    div-double/2addr v8, v4

    double-to-long v4, v8

    .line 50789
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2071
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    iget-object v3, v1, Lcom/appsflyer/internal/ag;->onAttributionFailureNative:Lcom/appsflyer/internal/o;

    if-eqz v3, :cond_cb5

    .line 50790
    iget-object v3, v3, Lcom/appsflyer/internal/o;->valueOf:[Ljava/lang/String;

    if-eqz v3, :cond_cb5

    const-string v4, "sharing_filter"

    .line 2074
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cb5

    :cond_ca0
    const-string v3, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. "

    .line 1828
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    const-string v3, "AppsFlyer will not track this event."

    .line 1829
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V
    :try_end_caa
    .catchall {:try_start_927 .. :try_end_caa} :catchall_cac

    const/4 v2, 0x0

    return-object v2

    :catchall_cac
    move-exception v0

    move-object v3, v0

    .line 2077
    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_cb5
    :goto_cb5
    return-object v2
.end method

.method public final waitForCustomerUserId(Z)V
    .registers 4

    .line 622
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initAfterCustomerUserID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    .line 22601
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "waitForCustomerId"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    return-void
.end method

###### Class com.appsflyer.internal.ag.AnonymousClass1 (com.appsflyer.internal.ag$1)
.class final Lcom/appsflyer/internal/ag$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ag;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/cg;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/cg;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 858
    iput-object p1, p0, Lcom/appsflyer/internal/ag$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    iput-object p2, p0, Lcom/appsflyer/internal/ag$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 861
    iget-object v0, p0, Lcom/appsflyer/internal/ag$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Lcom/appsflyer/internal/ag;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    .line 3774
    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v1

    const-string v3, "newGPReferrerSent"

    .line 863
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 864
    iget-object v3, p0, Lcom/appsflyer/internal/ag$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/cg;

    .line 4048
    iget-object v3, v3, Lcom/appsflyer/internal/cj;->valueOf:Lcom/appsflyer/internal/cj$e;

    .line 864
    sget-object v4, Lcom/appsflyer/internal/cj$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/cj$e;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_21

    const/4 v2, 0x1

    :cond_21
    if-ne v1, v5, :cond_41

    if-nez v2, :cond_27

    if-eqz v0, :cond_41

    .line 866
    :cond_27
    iget-object v0, p0, Lcom/appsflyer/internal/ag$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    new-instance v1, Lcom/appsflyer/internal/bt;

    invoke-direct {v1}, Lcom/appsflyer/internal/bt;-><init>()V

    iget-object v2, p0, Lcom/appsflyer/internal/ag$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v2}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Lcom/appsflyer/internal/ag;)Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 4053
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, v1, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 866
    :cond_3e
    invoke-static {v0, v1}, Lcom/appsflyer/internal/ag;->values(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V

    :cond_41
    return-void
.end method

###### Class com.appsflyer.internal.ag.AnonymousClass10 (com.appsflyer.internal.ag$10)
.class final Lcom/appsflyer/internal/ag$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/ae$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ag;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Ljava/lang/String;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field private synthetic valueOf:Lcom/appsflyer/internal/ag;

.field private synthetic values:Lcom/appsflyer/internal/au;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/au;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1029
    iput-object p1, p0, Lcom/appsflyer/internal/ag$10;->valueOf:Lcom/appsflyer/internal/ag;

    iput-object p2, p0, Lcom/appsflyer/internal/ag$10;->values:Lcom/appsflyer/internal/au;

    iput-object p3, p0, Lcom/appsflyer/internal/ag$10;->AFInAppEventParameterName:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsflyer/internal/ag$10;->AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Landroid/app/Activity;)V
    .registers 10

    .line 1031
    iget-object v0, p0, Lcom/appsflyer/internal/ag$10;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ag;->valueOf(Lcom/appsflyer/internal/ag;J)J

    .line 1032
    iget-object v0, p0, Lcom/appsflyer/internal/ag$10;->values:Lcom/appsflyer/internal/au;

    .line 3083
    invoke-virtual {v0}, Lcom/appsflyer/internal/au;->AFKeystoreWrapper()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4071
    iget-object v0, v0, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "fg_ts"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1033
    :cond_24
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "appsFlyerCount"

    .line 4774
    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_51

    .line 1035
    iget-object v1, p0, Lcom/appsflyer/internal/ag$10;->values:Lcom/appsflyer/internal/au;

    iget-object v2, p0, Lcom/appsflyer/internal/ag$10;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {v2}, Lcom/appsflyer/internal/ag;->valueOf(Lcom/appsflyer/internal/ag;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/appsflyer/internal/ag$10;->values:Lcom/appsflyer/internal/au;

    .line 5062
    iget-object v4, v4, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    const-string v7, "init_ts"

    invoke-interface {v4, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1035
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 5091
    iget-object v1, v1, Lcom/appsflyer/internal/au;->values:Ljava/util/Map;

    const-string v3, "init_to_fg"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    const-string v1, "onBecameForeground"

    .line 1037
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6b

    .line 1039
    invoke-static {p1}, Lcom/appsflyer/internal/ab;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/ab;

    move-result-object v0

    .line 5150
    iget-object v1, v0, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v2, v0, Lcom/appsflyer/internal/ab;->AFVersionDeclaration:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5152
    iget-object v1, v0, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v0, v0, Lcom/appsflyer/internal/ab;->valueOf:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1040
    :cond_6b
    new-instance v0, Lcom/appsflyer/internal/cb;

    invoke-direct {v0}, Lcom/appsflyer/internal/cb;-><init>()V

    .line 1041
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v1

    .line 1042
    invoke-virtual {v0}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/ag$10;->values:Lcom/appsflyer/internal/au;

    .line 1044
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1045
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    .line 1041
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/appsflyer/internal/j;->values(Ljava/util/Map;Lcom/appsflyer/internal/au;Landroid/content/Intent;Landroid/content/Context;)V

    .line 1046
    iget-object v1, p0, Lcom/appsflyer/internal/ag$10;->valueOf:Lcom/appsflyer/internal/ag;

    if-eqz p1, :cond_91

    .line 6053
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, v0, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 1046
    :cond_91
    iget-object v2, p0, Lcom/appsflyer/internal/ag$10;->AFInAppEventParameterName:Ljava/lang/String;

    .line 6127
    iput-object v2, v0, Lcom/appsflyer/internal/f;->init:Ljava/lang/String;

    .line 1047
    iget-object v2, p0, Lcom/appsflyer/internal/ag$10;->AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 7089
    iput-object v2, v0, Lcom/appsflyer/internal/f;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 1046
    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Lcom/appsflyer/internal/f;Landroid/app/Activity;)V

    return-void
.end method

.method public final valueOf(Landroid/content/Context;)V
    .registers 10

    const-string v0, "onBecameBackground"

    .line 1052
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/appsflyer/internal/ag$10;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Lcom/appsflyer/internal/ag;J)J

    .line 1054
    iget-object v0, p0, Lcom/appsflyer/internal/ag$10;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->values(Lcom/appsflyer/internal/ag;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appsflyer/internal/ag$10;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {v2}, Lcom/appsflyer/internal/ag;->valueOf(Lcom/appsflyer/internal/ag;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_28

    cmp-long v4, v0, v2

    if-gez v4, :cond_28

    move-wide v0, v2

    .line 1059
    :cond_28
    iget-object v2, p0, Lcom/appsflyer/internal/ag$10;->valueOf:Lcom/appsflyer/internal/ag;

    .line 7893
    iget-object v3, v2, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    if-nez v3, :cond_35

    new-instance v3, Lcom/appsflyer/internal/au;

    invoke-direct {v3, p1}, Lcom/appsflyer/internal/au;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 7894
    :cond_35
    iget-object v2, v2, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 1059
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1060
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 8071
    iget-object v2, v2, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "prev_session_dur"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "callStatsBackground background call"

    .line 1062
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/appsflyer/internal/ag$10;->valueOf:Lcom/appsflyer/internal/ag;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/ag;->valueOf(Ljava/lang/ref/WeakReference;)V

    .line 9037
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v0, :cond_66

    .line 9038
    new-instance v0, Lcom/appsflyer/internal/ak;

    invoke-direct {v0}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 9040
    :cond_66
    sget-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 1065
    invoke-virtual {v0}, Lcom/appsflyer/internal/ak;->AppsFlyer2dXConversionCallback()Z

    move-result v1

    if-eqz v1, :cond_118

    .line 1066
    invoke-virtual {v0}, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName()V

    if-eqz p1, :cond_114

    .line 1067
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-nez v1, :cond_114

    .line 1068
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 9065
    :try_start_85
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/ak;->values(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 9066
    invoke-virtual {v0}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper()Ljava/util/Map;

    move-result-object v1

    .line 9067
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    move-result-object v2

    .line 9228
    iget-object v2, v2, Lcom/appsflyer/internal/ag;->onAppOpenAttributionNative:Lcom/appsflyer/internal/be;

    .line 9069
    invoke-interface {v2}, Lcom/appsflyer/internal/bg;->AFInAppEventParameterName()Lcom/appsflyer/internal/bh;

    move-result-object v2

    .line 10053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/bh;->AFKeystoreWrapper:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 10062
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 10053
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/appsflyer/internal/bh;->AFInAppEventParameterName:Lcom/appsflyer/internal/n;

    .line 11045
    iget-object v4, v4, Lcom/appsflyer/internal/n;->values:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 10053
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10054
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 10055
    new-instance v4, Lcom/appsflyer/internal/v;

    const-string v5, "POST"

    .line 10059
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v3, v1, v5, v6}, Lcom/appsflyer/internal/v;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)V

    .line 10061
    iget-object v1, v2, Lcom/appsflyer/internal/bh;->values:Lcom/appsflyer/internal/u;

    new-instance v2, Lcom/appsflyer/internal/bk;

    invoke-direct {v2}, Lcom/appsflyer/internal/bk;-><init>()V

    .line 12021
    new-instance v3, Lcom/appsflyer/internal/bm;

    iget-object v5, v1, Lcom/appsflyer/internal/u;->values:Ljava/util/concurrent/ExecutorService;

    iget-object v1, v1, Lcom/appsflyer/internal/u;->AFInAppEventParameterName:Lcom/appsflyer/internal/bj;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/appsflyer/internal/bm;-><init>(Lcom/appsflyer/internal/v;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/bj;Lcom/appsflyer/internal/br;)V

    .line 12074
    iget-object v1, v3, Lcom/appsflyer/internal/bm;->AFInAppEventParameterName:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_108

    .line 12052
    iget-object v1, v3, Lcom/appsflyer/internal/bm;->values:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/appsflyer/internal/bm$3;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/appsflyer/internal/bm$3;-><init>(Lcom/appsflyer/internal/bm;Lcom/appsflyer/internal/bl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_114

    .line 12075
    :cond_108
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Http call is already executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_110
    .catchall {:try_start_85 .. :try_end_110} :catchall_110

    :catchall_110
    move-exception v1

    .line 9073
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/Throwable;)V

    .line 1072
    :cond_114
    :goto_114
    invoke-virtual {v0}, Lcom/appsflyer/internal/ak;->values()V

    goto :goto_11d

    :cond_118
    const-string v0, "RD status is OFF"

    .line 1074
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 13045
    :goto_11d
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez v0, :cond_128

    .line 13046
    new-instance v0, Lcom/appsflyer/internal/l;

    invoke-direct {v0}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 13048
    :cond_128
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 13092
    :try_start_12a
    iget-object v1, v0, Lcom/appsflyer/internal/l;->valueOf:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Lcom/appsflyer/internal/l;->valueOf(Ljava/util/concurrent/ExecutorService;)V

    .line 13094
    iget-object v1, v0, Lcom/appsflyer/internal/l;->AFInAppEventType:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_143

    .line 13095
    iget-object v0, v0, Lcom/appsflyer/internal/l;->AFInAppEventType:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/appsflyer/internal/l;->valueOf(Ljava/util/concurrent/ExecutorService;)V
    :try_end_13c
    .catchall {:try_start_12a .. :try_end_13c} :catchall_13d

    goto :goto_143

    :catchall_13d
    move-exception v0

    const-string v1, "failed to stop Executors"

    .line 13098
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1077
    :cond_143
    :goto_143
    invoke-static {p1}, Lcom/appsflyer/internal/ab;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/ab;

    move-result-object p1

    .line 13183
    iget-object v0, p1, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object p1, p1, Lcom/appsflyer/internal/ab;->AFVersionDeclaration:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.appsflyer.internal.ag.AnonymousClass2 (com.appsflyer.internal.ag$2)
.class final Lcom/appsflyer/internal/ag$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ag;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AFInAppEventType:Lcom/appsflyer/internal/ag;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ag;)V
    .registers 2

    .line 838
    iput-object p1, p0, Lcom/appsflyer/internal/ag$2;->AFInAppEventType:Lcom/appsflyer/internal/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1045
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez v0, :cond_b

    .line 1046
    new-instance v0, Lcom/appsflyer/internal/l;

    invoke-direct {v0}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 1048
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 841
    invoke-virtual {v0}, Lcom/appsflyer/internal/l;->AFInAppEventType()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/ag$2$1;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/ag$2$1;-><init>(Lcom/appsflyer/internal/ag$2;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

###### Class com.appsflyer.internal.ag.AnonymousClass2.AnonymousClass1 (com.appsflyer.internal.ag$2$1)
.class final Lcom/appsflyer/internal/ag$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ag$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/ag$2;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ag$2;)V
    .registers 2

    .line 842
    iput-object p1, p0, Lcom/appsflyer/internal/ag$2$1;->AFInAppEventType:Lcom/appsflyer/internal/ag$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 846
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/bt;

    invoke-direct {v0}, Lcom/appsflyer/internal/bt;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/internal/ag$2$1;->AFInAppEventType:Lcom/appsflyer/internal/ag$2;

    iget-object v1, v1, Lcom/appsflyer/internal/ag$2;->AFInAppEventType:Lcom/appsflyer/internal/ag;

    invoke-static {v1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Lcom/appsflyer/internal/ag;)Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1053
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 847
    :cond_17
    iget-object v1, p0, Lcom/appsflyer/internal/ag$2$1;->AFInAppEventType:Lcom/appsflyer/internal/ag$2;

    iget-object v1, v1, Lcom/appsflyer/internal/ag$2;->AFInAppEventType:Lcom/appsflyer/internal/ag;

    iget-object v2, p0, Lcom/appsflyer/internal/ag$2$1;->AFInAppEventType:Lcom/appsflyer/internal/ag$2;

    iget-object v2, v2, Lcom/appsflyer/internal/ag$2;->AFInAppEventType:Lcom/appsflyer/internal/ag;

    invoke-static {v2}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Lcom/appsflyer/internal/ag;)Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/appsflyer/internal/ag;->valueOf(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 848
    iget-object v1, p0, Lcom/appsflyer/internal/ag$2$1;->AFInAppEventType:Lcom/appsflyer/internal/ag$2;

    iget-object v1, v1, Lcom/appsflyer/internal/ag$2;->AFInAppEventType:Lcom/appsflyer/internal/ag;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ag;->values(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    :cond_34
    return-void

    :catchall_35
    move-exception v0

    .line 850
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.appsflyer.internal.ag.AnonymousClass3 (com.appsflyer.internal.ag$3)
.class final Lcom/appsflyer/internal/ag$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ag;->AFInAppEventType(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

.field private synthetic valueOf:J


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ag;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 902
    iput-object p1, p0, Lcom/appsflyer/internal/ag$3;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    iput-wide p2, p0, Lcom/appsflyer/internal/ag$3;->valueOf:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 905
    iget-object v0, p0, Lcom/appsflyer/internal/ag$3;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "signedData"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object p1, p0, Lcom/appsflyer/internal/ag$3;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "signature"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/appsflyer/internal/ag$3;->valueOf:J

    sub-long/2addr p1, v0

    .line 909
    iget-object v0, p0, Lcom/appsflyer/internal/ag$3;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "ttr"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Successfully retrieved Google LVL data."

    .line 911
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public final AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    .line 916
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "unknown"

    .line 920
    :cond_8
    iget-object v1, p0, Lcom/appsflyer/internal/ag$3;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v1}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-static {p1, p2}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.appsflyer.internal.ag.AnonymousClass4 (com.appsflyer.internal.ag$4)
.class final Lcom/appsflyer/internal/ag$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:J

.field private synthetic valueOf:Lcom/appsflyer/internal/ag;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ag;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 935
    iput-object p1, p0, Lcom/appsflyer/internal/ag$4;->valueOf:Lcom/appsflyer/internal/ag;

    iput-wide p2, p0, Lcom/appsflyer/internal/ag$4;->AFKeystoreWrapper:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/lang/String;)V
    .registers 4

    .line 964
    iget-object v0, p0, Lcom/appsflyer/internal/ag$4;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "link"

    if-eqz p1, :cond_49

    .line 939
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Facebook Deferred AppLink data received: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 940
    iget-object v1, p0, Lcom/appsflyer/internal/ag$4;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {v1}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_27

    .line 943
    iget-object p1, p0, Lcom/appsflyer/internal/ag$4;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "target_url"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    if-eqz p3, :cond_54

    .line 947
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 948
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "promo_code"

    .line 949
    invoke-virtual {p2, v0, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "deeplink_context"

    .line 950
    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    iget-object p2, p0, Lcom/appsflyer/internal/ag$4;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {p2}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "extras"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 954
    :cond_49
    iget-object p1, p0, Lcom/appsflyer/internal/ag$4;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    :cond_54
    :goto_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 958
    iget-wide v0, p0, Lcom/appsflyer/internal/ag$4;->AFKeystoreWrapper:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 959
    iget-object p2, p0, Lcom/appsflyer/internal/ag$4;->valueOf:Lcom/appsflyer/internal/ag;

    invoke-static {p2}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "ttr"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.appsflyer.internal.ag.AnonymousClass5 (com.appsflyer.internal.ag$5)
.class final Lcom/appsflyer/internal/ag$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ag;->performOnDeepLinking(Landroid/content/Intent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Landroid/content/Context;

.field private synthetic valueOf:Landroid/content/Intent;

.field private synthetic values:Lcom/appsflyer/internal/ag;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ag;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/appsflyer/internal/ag$5;->values:Lcom/appsflyer/internal/ag;

    iput-object p2, p0, Lcom/appsflyer/internal/ag$5;->valueOf:Landroid/content/Intent;

    iput-object p3, p0, Lcom/appsflyer/internal/ag$5;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 309
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    iget-object v0, p0, Lcom/appsflyer/internal/ag$5;->valueOf:Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsflyer/internal/ag$5;->AFInAppEventParameterName:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/internal/ag$5;->values:Lcom/appsflyer/internal/ag;

    .line 1893
    iget-object v3, v2, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    if-nez v3, :cond_14

    new-instance v3, Lcom/appsflyer/internal/au;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/au;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 1894
    :cond_14
    iget-object v2, v2, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel:Lcom/appsflyer/internal/au;

    .line 2288
    invoke-static {v0}, Lcom/appsflyer/internal/j;->AFKeystoreWrapper(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    .line 2289
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    .line 2290
    :goto_2a
    invoke-static {v1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "ddl_sent"

    .line 2291
    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3f

    if-nez v3, :cond_3f

    const/4 v0, 0x0

    const-string v1, "No direct deep link"

    .line 2293
    invoke-static {v1, v0}, Lcom/appsflyer/internal/aq;->valueOf(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 2295
    :cond_3f
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/appsflyer/internal/j;->values(Ljava/util/Map;Lcom/appsflyer/internal/au;Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

###### Class com.appsflyer.internal.ag.AnonymousClass7 (com.appsflyer.internal.ag$7)
.class final Lcom/appsflyer/internal/ag$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2315
    iput-object p1, p0, Lcom/appsflyer/internal/ag$7;->AFInAppEventType:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventType(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3328
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3329
    iget-object v2, p0, Lcom/appsflyer/internal/ag$7;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2319
    :cond_1e
    iget-object p1, p0, Lcom/appsflyer/internal/ag$7;->AFInAppEventType:Ljava/util/Map;

    invoke-static {p1}, Lcom/appsflyer/internal/aq;->AFInAppEventParameterName(Ljava/util/Map;)V

    return-void
.end method

.method public final valueOf(Ljava/lang/String;)V
    .registers 3

    .line 4015
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {p1, v0}, Lcom/appsflyer/internal/aq;->valueOf(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void
.end method

###### Class com.appsflyer.internal.ag.AnonymousClass8 (com.appsflyer.internal.ag$8)
.class final synthetic Lcom/appsflyer/internal/ag$8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic AFInAppEventType:[I

.field static final synthetic valueOf:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 3181
    invoke-static {}, Lcom/appsflyer/internal/cj$e;->values()[Lcom/appsflyer/internal/cj$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/appsflyer/internal/ag$8;->AFInAppEventType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/appsflyer/internal/cj$e;->AFInAppEventType:Lcom/appsflyer/internal/cj$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/appsflyer/internal/ag$8;->AFInAppEventType:[I

    sget-object v3, Lcom/appsflyer/internal/cj$e;->values:Lcom/appsflyer/internal/cj$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 777
    :catch_1d
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->values()[Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/appsflyer/internal/ag$8;->valueOf:[I

    :try_start_26
    sget-object v3, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->SHA256:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/appsflyer/internal/ag$8;->valueOf:[I

    sget-object v2, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method

###### Class com.appsflyer.internal.ag.a (com.appsflyer.internal.ag$a)
.class final Lcom/appsflyer/internal/ag$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

.field private final values:Lcom/appsflyer/internal/f;


# direct methods
.method private constructor <init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V
    .registers 3

    .line 3159
    iput-object p1, p0, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3160
    iput-object p2, p0, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;B)V
    .registers 4

    .line 3156
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/ag$a;-><init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 17

    move-object/from16 v1, p0

    .line 3164
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    invoke-virtual {v0}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v2

    .line 3165
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    invoke-virtual {v0}, Lcom/appsflyer/internal/f;->AFInAppEventType()Z

    move-result v0

    .line 3166
    iget-object v3, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    .line 4081
    iget-object v3, v3, Lcom/appsflyer/internal/f;->onAttributionFailureNative:Ljava/lang/String;

    .line 3167
    iget-object v4, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    .line 4159
    iget v4, v4, Lcom/appsflyer/internal/f;->onAppOpenAttributionNative:I

    .line 3168
    iget-object v5, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    .line 5058
    iget-object v9, v5, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 3170
    iget-object v5, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 3171
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    .line 5095
    iget-object v0, v0, Lcom/appsflyer/internal/f;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz v0, :cond_2f

    .line 3173
    sget v2, Lcom/appsflyer/attribution/RequestError;->STOP_TRACKING:I

    sget-object v3, Lcom/appsflyer/internal/ay;->valueOf:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_2f
    return-void

    :cond_30
    const/4 v5, 0x0

    new-array v6, v5, [B

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_101

    if-gt v4, v7, :cond_101

    .line 3178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3179
    iget-object v10, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v10}, Lcom/appsflyer/internal/ag;->AppsFlyer2dXConversionCallback(Lcom/appsflyer/internal/ag;)[Lcom/appsflyer/internal/cj;

    move-result-object v10

    if-eqz v10, :cond_ac

    iget-object v10, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v10}, Lcom/appsflyer/internal/ag;->AppsFlyer2dXConversionCallback(Lcom/appsflyer/internal/ag;)[Lcom/appsflyer/internal/cj;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_4e
    if-ge v12, v11, :cond_ac

    aget-object v13, v10, v12

    .line 3180
    instance-of v14, v13, Lcom/appsflyer/internal/cg;

    .line 3181
    sget-object v15, Lcom/appsflyer/internal/ag$8;->AFInAppEventType:[I

    .line 6048
    iget-object v5, v13, Lcom/appsflyer/internal/cj;->valueOf:Lcom/appsflyer/internal/cj$e;

    .line 3181
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v15, v5

    if-eq v5, v8, :cond_86

    if-eq v5, v7, :cond_63

    goto :goto_a8

    :cond_63
    if-ne v4, v7, :cond_a8

    if-nez v14, :cond_a8

    .line 3194
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v14, "source"

    .line 6052
    iget-object v13, v13, Lcom/appsflyer/internal/cj;->values:Ljava/lang/String;

    .line 3195
    invoke-interface {v5, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "response"

    const-string v14, "TIMEOUT"

    .line 3196
    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    new-instance v13, Lcom/appsflyer/internal/ci;

    invoke-direct {v13}, Lcom/appsflyer/internal/ci;-><init>()V

    invoke-interface {v5, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3198
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_86
    if-eqz v14, :cond_a3

    const-string v5, "rfr"

    .line 3184
    move-object v14, v13

    check-cast v14, Lcom/appsflyer/internal/cg;

    iget-object v14, v14, Lcom/appsflyer/internal/cg;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v2, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3185
    invoke-static {v9}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3186
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v14, "newGPReferrerSent"

    .line 3187
    invoke-interface {v5, v14, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 3188
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3190
    :cond_a3
    iget-object v5, v13, Lcom/appsflyer/internal/cj;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a8
    :goto_a8
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_4e

    .line 3203
    :cond_ac
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b7

    const-string v4, "referrers"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3204
    :cond_b7
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_ca

    const-string v0, "fb_ddl"

    .line 3205
    iget-object v4, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v4}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Lcom/appsflyer/internal/ag;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3207
    :cond_ca
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->getLevel(Lcom/appsflyer/internal/ag;)Lcom/appsflyer/internal/ch;

    move-result-object v0

    if-eqz v0, :cond_101

    .line 3208
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->getLevel(Lcom/appsflyer/internal/ag;)Lcom/appsflyer/internal/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/ch;->AFInAppEventParameterName()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 3209
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->getLevel(Lcom/appsflyer/internal/ag;)Lcom/appsflyer/internal/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/ch;->valueOf()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_101

    .line 3210
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_101

    const-string v4, "preload_id"

    .line 3211
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_101

    :cond_f6
    const-string v0, "preload_id"

    const-string v4, "timeout"

    .line 3214
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3218
    :cond_101
    :goto_101
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    instance-of v0, v0, Lcom/appsflyer/internal/bw;

    if-nez v0, :cond_118

    .line 3219
    new-instance v0, Lcom/appsflyer/internal/b$e;

    invoke-direct {v0, v2, v9}, Lcom/appsflyer/internal/b$e;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3220
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    invoke-virtual {v0}, Lcom/appsflyer/internal/ag;->values()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_118
    const/4 v4, 0x0

    .line 3223
    :try_start_119
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    instance-of v5, v0, Lcom/appsflyer/internal/bw;

    if-eqz v5, :cond_128

    const-string v5, "af_key"

    .line 3224
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_130

    :cond_128
    const-string v5, "appsflyerKey"

    .line 3225
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6127
    :goto_130
    iput-object v5, v0, Lcom/appsflyer/internal/f;->init:Ljava/lang/String;

    .line 3226
    monitor-enter v2
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_133} :catch_1a2
    .catchall {:try_start_119 .. :try_end_133} :catchall_18a

    .line 3227
    :try_start_133
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;
    :try_end_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_187

    :try_start_135
    new-array v5, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v5, v10

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/graphics/PointF;->length(FF)F

    move-result v11

    cmpl-float v11, v11, v0

    add-int/lit8 v11, v11, 0x30

    invoke-static {v10, v0, v0}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v12

    cmpl-float v0, v12, v0

    int-to-char v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v10, v10, 0x18

    invoke-static {v11, v0, v10}, Lcom/appsflyer/internal/e;->AFInAppEventType(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v10, "valueOf"

    new-array v11, v8, [Ljava/lang/Class;

    const-class v12, Lcom/appsflyer/internal/f;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [B
    :try_end_16c
    .catchall {:try_start_135 .. :try_end_16c} :catchall_17e

    .line 3228
    :try_start_16c
    monitor-exit v2
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_17b

    .line 3229
    :try_start_16d
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    iget-object v2, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    .line 6163
    iput-object v5, v2, Lcom/appsflyer/internal/f;->AFLogger$LogLevel:[B

    .line 3229
    invoke-static {v0, v2}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_176} :catch_177
    .catchall {:try_start_16d .. :try_end_176} :catchall_18a

    return-void

    :catch_177
    move-exception v0

    move-object v12, v0

    move-object v6, v5

    goto :goto_1a4

    :catchall_17b
    move-exception v0

    move-object v6, v5

    goto :goto_188

    :catchall_17e
    move-exception v0

    .line 3227
    :try_start_17f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_186

    throw v5

    :cond_186
    throw v0
    :try_end_187
    .catchall {:try_start_17f .. :try_end_187} :catchall_187

    :catchall_187
    move-exception v0

    .line 3228
    :goto_188
    :try_start_188
    monitor-exit v2

    throw v0
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18a} :catch_1a2
    .catchall {:try_start_188 .. :try_end_18a} :catchall_18a

    :catchall_18a
    move-exception v0

    .line 3242
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3243
    iget-object v2, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    .line 9095
    iget-object v2, v2, Lcom/appsflyer/internal/f;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz v2, :cond_1a1

    .line 3245
    sget v3, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_1a1
    return-void

    :catch_1a2
    move-exception v0

    move-object v12, v0

    :goto_1a4
    const-string v0, "Exception while sending request to server. "

    .line 3232
    invoke-static {v0, v12}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_26c

    if-eqz v9, :cond_26c

    const-string v0, "&isCachedRequest=true&timeincache="

    .line 3233
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26c

    .line 3234
    invoke-static {}, Lcom/appsflyer/internal/ah;->values()Lcom/appsflyer/internal/ah;

    new-instance v0, Lcom/appsflyer/internal/h;

    const-string v2, "6.4.2"

    invoke-direct {v0, v3, v6, v2}, Lcom/appsflyer/internal/h;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 7058
    :try_start_1bf
    invoke-static {v9}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 7059
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1ce

    .line 7061
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_258

    .line 7064
    :cond_1ce
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1e0

    .line 7065
    array-length v2, v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_1e0

    const-string v0, "reached cache limit, not caching request"

    .line 7066
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto/16 :goto_258

    :cond_1e0
    const-string v2, "caching request..."

    .line 7069
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 7070
    new-instance v2, Ljava/io/File;

    invoke-static {v9}, Lcom/appsflyer/internal/ah;->AFInAppEventType(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7071
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 7072
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_207} :catch_247
    .catchall {:try_start_1bf .. :try_end_207} :catchall_244

    :try_start_207
    const-string v2, "version="

    .line 7073
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8057
    iget-object v2, v0, Lcom/appsflyer/internal/h;->AFInAppEventParameterName:Ljava/lang/String;

    .line 7074
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 7075
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    const-string v4, "url="

    .line 7077
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8073
    iget-object v4, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/lang/String;

    .line 7078
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7079
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    const-string v4, "data="

    .line 7081
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7082
    invoke-virtual {v0}, Lcom/appsflyer/internal/h;->AFKeystoreWrapper()[B

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7083
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    .line 7085
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_239} :catch_241
    .catchall {:try_start_207 .. :try_end_239} :catchall_23d

    .line 7092
    :try_start_239
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_23c
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_23c} :catch_253

    goto :goto_258

    :catchall_23d
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    goto :goto_260

    :catch_241
    move-exception v0

    move-object v4, v3

    goto :goto_248

    :catchall_244
    move-exception v0

    move-object v2, v0

    goto :goto_260

    :catch_247
    move-exception v0

    :goto_248
    :try_start_248
    const-string v2, "Could not cache request"

    .line 7088
    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24d
    .catchall {:try_start_248 .. :try_end_24d} :catchall_244

    if-eqz v4, :cond_258

    .line 7092
    :try_start_24f
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_252
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_252} :catch_253

    goto :goto_258

    :catch_253
    move-exception v0

    move-object v2, v0

    .line 7095
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/Throwable;)V

    .line 3235
    :cond_258
    :goto_258
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26c

    :goto_260
    if-eqz v4, :cond_26b

    .line 7092
    :try_start_262
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_265
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_265} :catch_266

    goto :goto_26b

    :catch_266
    move-exception v0

    move-object v3, v0

    .line 7095
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/Throwable;)V

    .line 7097
    :cond_26b
    :goto_26b
    throw v2

    .line 3237
    :cond_26c
    :goto_26c
    iget-object v0, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    .line 8095
    iget-object v0, v0, Lcom/appsflyer/internal/f;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz v0, :cond_27b

    .line 3239
    sget v2, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 3240
    :cond_27b
    iget-object v6, v1, Lcom/appsflyer/internal/ag$a;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    iget-object v7, v1, Lcom/appsflyer/internal/ag$a;->values:Lcom/appsflyer/internal/f;

    .line 8132
    iget-object v8, v7, Lcom/appsflyer/internal/f;->init:Ljava/lang/String;

    .line 3240
    invoke-static {v9}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {v6 .. v12}, Lcom/appsflyer/internal/bn;->AFInAppEventParameterName(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.appsflyer.internal.ag.c (com.appsflyer.internal.ag$c)
.class final Lcom/appsflyer/internal/ag$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private final AFInAppEventParameterName:Landroid/app/Application;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/ag;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/ag;Landroid/content/Context;)V
    .registers 3

    .line 3295
    iput-object p1, p0, Lcom/appsflyer/internal/ag$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3296
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appsflyer/internal/ag$c;->AFInAppEventParameterName:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 3300
    iget-object v0, p0, Lcom/appsflyer/internal/ag$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFVersionDeclaration(Lcom/appsflyer/internal/ag;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 3303
    :cond_9
    iget-object v0, p0, Lcom/appsflyer/internal/ag$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/appsflyer/internal/ag;->AppsFlyer2dXConversionCallback:J

    .line 3304
    iget-object v0, p0, Lcom/appsflyer/internal/ag$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/ag;->valueOf(Lcom/appsflyer/internal/ag;Z)Z

    const/4 v0, 0x0

    :try_start_18
    const-string v1, "AppsFlyerKey"

    .line 3306
    invoke-static {v1}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3307
    invoke-static {}, Lcom/appsflyer/internal/ah;->values()Lcom/appsflyer/internal/ah;

    iget-object v2, p0, Lcom/appsflyer/internal/ag$c;->AFInAppEventParameterName:Landroid/app/Application;

    invoke-static {v2}, Lcom/appsflyer/internal/ah;->valueOf(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appsflyer/internal/h;

    .line 3309
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resending request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4073
    iget-object v5, v3, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/lang/String;

    .line 3309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4a} :catch_a2
    .catchall {:try_start_18 .. :try_end_4a} :catchall_a0

    .line 3314
    :try_start_4a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4081
    iget-object v6, v3, Lcom/appsflyer/internal/h;->values:Ljava/lang/String;

    const/16 v7, 0xa

    .line 3316
    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 3317
    iget-object v8, p0, Lcom/appsflyer/internal/ag$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    new-instance v9, Lcom/appsflyer/internal/bz;

    invoke-direct {v9}, Lcom/appsflyer/internal/bz;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 5073
    iget-object v11, v3, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Ljava/lang/String;

    .line 3318
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "&isCachedRequest=true&timeincache="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/appsflyer/internal/f;->values(Ljava/lang/String;)Lcom/appsflyer/internal/f;

    move-result-object v4

    .line 3321
    invoke-virtual {v3}, Lcom/appsflyer/internal/h;->AFKeystoreWrapper()[B

    move-result-object v5

    .line 5163
    iput-object v5, v4, Lcom/appsflyer/internal/f;->AFLogger$LogLevel:[B

    .line 6127
    iput-object v1, v4, Lcom/appsflyer/internal/f;->init:Ljava/lang/String;

    .line 3322
    iget-object v5, p0, Lcom/appsflyer/internal/ag$c;->AFInAppEventParameterName:Landroid/app/Application;

    if-eqz v5, :cond_8f

    .line 7053
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Application;

    iput-object v5, v4, Lcom/appsflyer/internal/f;->values:Landroid/app/Application;

    .line 7081
    :cond_8f
    iget-object v3, v3, Lcom/appsflyer/internal/h;->values:Ljava/lang/String;

    .line 7172
    iput-object v3, v4, Lcom/appsflyer/internal/f;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 8136
    iput-boolean v0, v4, Lcom/appsflyer/internal/f;->onInstallConversionDataLoadedNative:Z

    .line 3317
    invoke-static {v8, v4}, Lcom/appsflyer/internal/ag;->AFInAppEventParameterName(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_98} :catch_99
    .catchall {:try_start_4a .. :try_end_98} :catchall_a0

    goto :goto_2b

    :catch_99
    move-exception v3

    :try_start_9a
    const-string v4, "Failed to resend cached request"

    .line 3328
    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9f} :catch_a2
    .catchall {:try_start_9a .. :try_end_9f} :catchall_a0

    goto :goto_2b

    :catchall_a0
    move-exception v1

    goto :goto_bc

    :catch_a2
    move-exception v1

    :try_start_a3
    const-string v2, "failed to check cache. "

    .line 3332
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_a0

    .line 3334
    :cond_a8
    iget-object v1, p0, Lcom/appsflyer/internal/ag$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ag;->valueOf(Lcom/appsflyer/internal/ag;Z)Z

    .line 3336
    iget-object v0, p0, Lcom/appsflyer/internal/ag$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->AFLogger$LogLevel(Lcom/appsflyer/internal/ag;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 3337
    iget-object v0, p0, Lcom/appsflyer/internal/ag$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    invoke-static {v0}, Lcom/appsflyer/internal/ag;->init(Lcom/appsflyer/internal/ag;)Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .line 3334
    :goto_bc
    iget-object v2, p0, Lcom/appsflyer/internal/ag$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    invoke-static {v2, v0}, Lcom/appsflyer/internal/ag;->valueOf(Lcom/appsflyer/internal/ag;Z)Z

    .line 3335
    throw v1
.end method

###### Class com.appsflyer.internal.ag.e (com.appsflyer.internal.ag$e)
.class final Lcom/appsflyer/internal/ag$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

.field private final values:Lcom/appsflyer/internal/f;


# direct methods
.method private constructor <init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V
    .registers 3

    .line 3147
    iput-object p1, p0, Lcom/appsflyer/internal/ag$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3148
    iput-object p2, p0, Lcom/appsflyer/internal/ag$e;->values:Lcom/appsflyer/internal/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;B)V
    .registers 4

    .line 3144
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/ag$e;-><init>(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 3152
    iget-object v0, p0, Lcom/appsflyer/internal/ag$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/ag;

    iget-object v1, p0, Lcom/appsflyer/internal/ag$e;->values:Lcom/appsflyer/internal/f;

    invoke-static {v0, v1}, Lcom/appsflyer/internal/ag;->values(Lcom/appsflyer/internal/ag;Lcom/appsflyer/internal/f;)V

    return-void
.end method

###### Class com.appsflyer.internal.o.AnonymousClass2 (com.appsflyer.internal.o$2)
.class final Lcom/appsflyer/internal/o$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Ljava/lang/Class;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/appsflyer/internal/o$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/appsflyer/internal/o$2;->AFInAppEventType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/appsflyer/internal/o$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDeferredAppLinkDataFetched"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6c

    const/4 p1, 0x0

    .line 45
    aget-object v0, p3, p1

    if-eqz v0, :cond_64

    .line 54
    iget-object v0, p0, Lcom/appsflyer/internal/o$2;->AFInAppEventType:Ljava/lang/Class;

    aget-object p3, p3, p1

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 55
    iget-object v0, p0, Lcom/appsflyer/internal/o$2;->AFInAppEventType:Ljava/lang/Class;

    new-array v1, p1, [Ljava/lang/Class;

    const-string v2, "getArgumentBundle"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    const-class v1, Landroid/os/Bundle;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_59

    const-string p3, "com.facebook.platform.APPLINK_NATIVE_URL"

    .line 59
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "target_url"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extras"

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_57

    const-string v1, "deeplink_context"

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_57

    const-string v1, "promo_code"

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    :cond_57
    move-object p1, p2

    goto :goto_5c

    :cond_59
    move-object p1, p2

    move-object p3, p1

    move-object v0, p3

    .line 70
    :goto_5c
    iget-object v1, p0, Lcom/appsflyer/internal/o$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;

    if-eqz v1, :cond_6b

    .line 71
    invoke-interface {v1, p3, v0, p1}, Lcom/appsflyer/internal/o$d;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 75
    :cond_64
    iget-object p1, p0, Lcom/appsflyer/internal/o$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;

    if-eqz p1, :cond_6b

    .line 76
    invoke-interface {p1, p2, p2, p2}, Lcom/appsflyer/internal/o$d;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-object p2

    .line 81
    :cond_6c
    iget-object p1, p0, Lcom/appsflyer/internal/o$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;

    if-eqz p1, :cond_75

    const-string p3, "onDeferredAppLinkDataFetched invocation failed"

    .line 82
    invoke-interface {p1, p3}, Lcom/appsflyer/internal/o$d;->AFInAppEventParameterName(Ljava/lang/String;)V

    :cond_75
    return-object p2
.end method

###### Class com.appsflyer.internal.u.AnonymousClass3 (com.appsflyer.internal.u$3)
.class final Lcom/appsflyer/internal/u$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/u$e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/appsflyer/internal/u$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLvlResult"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    .line 29
    aget-object p1, p3, v1

    if-eqz p1, :cond_17

    .line 30
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    goto :goto_18

    :cond_17
    move-object p1, v0

    :goto_18
    const/4 p2, 0x1

    .line 33
    aget-object v1, p3, p2

    if-eqz v1, :cond_22

    .line 34
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object p2, v0

    .line 37
    :goto_23
    iget-object p3, p0, Lcom/appsflyer/internal/u$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;

    if-eqz p3, :cond_49

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    .line 39
    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_2f
    const-string p1, "onLvlResult with error"

    if-nez p2, :cond_3e

    .line 41
    new-instance p2, Ljava/lang/Exception;

    const-string v1, "AFLVL Invalid signature"

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8e

    .line 43
    :cond_3e
    new-instance p2, Ljava/lang/Exception;

    const-string v1, "AFLVL Invalid signedData"

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8e

    :cond_49
    const-string p1, "onLvlResult invocation succeeded, but listener is null"

    .line 46
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_8e

    .line 48
    :cond_4f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLvlFailure"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 49
    iget-object p1, p0, Lcom/appsflyer/internal/u$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;

    if-eqz p1, :cond_78

    .line 50
    aget-object v2, p3, v1

    if-eqz v2, :cond_6d

    .line 51
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Exception;

    const-string p3, "onLvlFailure with exception"

    .line 52
    invoke-interface {p1, p3, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8e

    .line 54
    :cond_6d
    new-instance p3, Ljava/lang/Exception;

    const-string v1, "unknown"

    invoke-direct {p3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8e

    :cond_78
    const-string p1, "onLvlFailure: listener is null"

    .line 57
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_8e

    .line 61
    :cond_7e
    iget-object p1, p0, Lcom/appsflyer/internal/u$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;

    if-eqz p1, :cond_8e

    .line 62
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p3, "lvlInvocation failed"

    invoke-interface {p1, p3, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_8e
    :goto_8e
    return-object v0
.end method
