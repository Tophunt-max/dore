###### Class com.appsflyer.internal.av (com.appsflyer.internal.av)
.class public final Lcom/appsflyer/internal/av;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final AFInAppEventParameterName:Ljava/util/concurrent/ExecutorService;

.field final AFInAppEventType:Lcom/appsflyer/internal/az;

.field AFKeystoreWrapper:Lcom/android/billingclient/api/BillingClient;

.field private final getLevel:Lcom/appsflyer/internal/bh;

.field public final valueOf:Lcom/appsflyer/internal/bd;

.field private values:Lcom/appsflyer/internal/bf;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/bd;Lcom/appsflyer/internal/bf;Lcom/appsflyer/internal/az;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/bh;)V
    .registers 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/appsflyer/internal/av;->valueOf:Lcom/appsflyer/internal/bd;

    .line 61
    iput-object p2, p0, Lcom/appsflyer/internal/av;->values:Lcom/appsflyer/internal/bf;

    .line 62
    iput-object p3, p0, Lcom/appsflyer/internal/av;->AFInAppEventType:Lcom/appsflyer/internal/az;

    .line 63
    iput-object p4, p0, Lcom/appsflyer/internal/av;->AFInAppEventParameterName:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-object p5, p0, Lcom/appsflyer/internal/av;->getLevel:Lcom/appsflyer/internal/bh;

    return-void
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/av;ZLjava/util/List;)V
    .registers 13

    .line 1188
    new-instance v0, Lcom/appsflyer/internal/aa;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/appsflyer/internal/aa;-><init>(ZZLjava/util/List;Ljava/util/Map;)V

    .line 1189
    iget-object p2, p0, Lcom/appsflyer/internal/av;->getLevel:Lcom/appsflyer/internal/bh;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 2062
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, "https://%sars.%s/api/v1/android/validate_subscription"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2066
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2067
    iget-object v5, p2, Lcom/appsflyer/internal/bh;->AFInAppEventParameterName:Lcom/appsflyer/internal/n;

    .line 3045
    iget-object v5, v5, Lcom/appsflyer/internal/n;->values:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id"

    .line 2067
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4028
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "AppUserId"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    const-string v6, "cuid"

    .line 2069
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    :cond_4a
    iget-object v5, p2, Lcom/appsflyer/internal/bh;->AFInAppEventParameterName:Lcom/appsflyer/internal/n;

    .line 4050
    iget-object v6, v5, Lcom/appsflyer/internal/n;->values:Landroid/content/Context;

    .line 5045
    iget-object v5, v5, Lcom/appsflyer/internal/n;->values:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4050
    invoke-static {v6, v5}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_version_name"

    .line 2070
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2073
    iget-object v6, p2, Lcom/appsflyer/internal/bh;->AFInAppEventParameterName:Lcom/appsflyer/internal/n;

    .line 6040
    iget-object v6, v6, Lcom/appsflyer/internal/n;->values:Landroid/content/Context;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7}, Lcom/appsflyer/internal/z;->values(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/b$e$a;

    move-result-object v6

    if-eqz v6, :cond_74

    .line 7024
    iget-object v6, v6, Lcom/appsflyer/internal/b$e$a;->valueOf:Ljava/lang/String;

    goto :goto_75

    :cond_74
    move-object v6, v2

    :goto_75
    if-eqz v6, :cond_7c

    const-string v7, "advertising_id"

    .line 2074
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    :cond_7c
    iget-object v6, p2, Lcom/appsflyer/internal/bh;->AFInAppEventParameterName:Lcom/appsflyer/internal/n;

    .line 7055
    new-instance v7, Ljava/lang/ref/WeakReference;

    iget-object v6, v6, Lcom/appsflyer/internal/n;->values:Landroid/content/Context;

    invoke-direct {v7, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/appsflyer/internal/al;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "appsflyer_id"

    .line 2075
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "os_version"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    sget-object v6, Lcom/appsflyer/internal/ag;->valueOf:Ljava/lang/String;

    const-string v7, "sdk_version"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "device_data"

    .line 2078
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    invoke-virtual {v0}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "is_cached"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    invoke-virtual {v0}, Lcom/appsflyer/internal/aa;->values()Z

    move-result v5

    if-eqz v5, :cond_c3

    const-string v5, "SANDBOX"

    goto :goto_c5

    :cond_c3
    const-string v5, "PRODUCTION"

    :goto_c5
    const-string v6, "environment"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8046
    iget-object v5, v0, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v6, "additional_parameters"

    .line 2081
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9041
    iget-object v0, v0, Lcom/appsflyer/internal/aa;->valueOf:Ljava/util/List;

    .line 2084
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/Purchase;

    .line 2085
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2086
    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v8

    const-string v9, "token"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v6

    const-string v8, "subscription_id"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    :cond_103
    const-string v0, "subscriptions"

    .line 2090
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2040
    new-instance v3, Lcom/appsflyer/internal/v;

    .line 2044
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const-string v6, "POST"

    invoke-direct {v3, v1, v0, v6, v5}, Lcom/appsflyer/internal/v;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)V

    .line 2046
    iget-object p2, p2, Lcom/appsflyer/internal/bh;->values:Lcom/appsflyer/internal/u;

    new-instance v0, Lcom/appsflyer/internal/bk;

    invoke-direct {v0}, Lcom/appsflyer/internal/bk;-><init>()V

    .line 10021
    new-instance v1, Lcom/appsflyer/internal/bm;

    iget-object v5, p2, Lcom/appsflyer/internal/u;->values:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p2, Lcom/appsflyer/internal/u;->AFInAppEventParameterName:Lcom/appsflyer/internal/bj;

    invoke-direct {v1, v3, v5, p2, v0}, Lcom/appsflyer/internal/bm;-><init>(Lcom/appsflyer/internal/v;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/bj;Lcom/appsflyer/internal/br;)V

    .line 1190
    new-instance p2, Lcom/appsflyer/internal/av$4;

    invoke-direct {p2, p0, p1, v2}, Lcom/appsflyer/internal/av$4;-><init>(Lcom/appsflyer/internal/av;ZLcom/appsflyer/internal/z;)V

    .line 10074
    iget-object p0, v1, Lcom/appsflyer/internal/bm;->AFInAppEventParameterName:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-nez p0, :cond_148

    .line 10052
    iget-object p0, v1, Lcom/appsflyer/internal/bm;->values:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/appsflyer/internal/bm$3;

    invoke-direct {p1, v1, p2}, Lcom/appsflyer/internal/bm$3;-><init>(Lcom/appsflyer/internal/bm;Lcom/appsflyer/internal/bl;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 10075
    :cond_148
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Http call is already executed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 12041
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_27

    .line 13041
    iget-object v0, p0, Lcom/appsflyer/internal/av;->values:Lcom/appsflyer/internal/bf;

    .line 11076
    new-instance v1, Lcom/appsflyer/internal/ax;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/ax;-><init>(Lcom/appsflyer/internal/av;)V

    .line 14017
    iget-object v0, v0, Lcom/appsflyer/internal/bf;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 14018
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 14019
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 14020
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    .line 14041
    iput-object v0, p0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Lcom/android/billingclient/api/BillingClient;

    .line 11082
    new-instance v1, Lcom/appsflyer/internal/aw;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/aw;-><init>(Lcom/appsflyer/internal/av;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    .line 16222
    instance-of v1, v0, Ljava/lang/NoSuchMethodError;

    if-nez v1, :cond_31

    instance-of v1, v0, Ljava/lang/NoClassDefFoundError;

    if-eqz v1, :cond_36

    :cond_31
    const-string v1, "It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3"

    .line 16223
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    :cond_36
    const-string v1, "Failed to setup Play billing"

    .line 11095
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.appsflyer.internal.av.AnonymousClass1 (com.appsflyer.internal.av$1)
.class final Lcom/appsflyer/internal/av$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/av;

.field private synthetic valueOf:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/av;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/appsflyer/internal/av$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/av;

    iput-object p2, p0, Lcom/appsflyer/internal/av$1;->valueOf:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 125
    :try_start_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_58

    if-nez p2, :cond_9

    goto :goto_58

    .line 128
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 130
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 132
    :cond_26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/appsflyer/internal/av$1;->valueOf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 134
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 135
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 137
    :cond_4b
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_52

    return-void

    .line 138
    :cond_52
    iget-object p1, p0, Lcom/appsflyer/internal/av$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/av;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/appsflyer/internal/av;->AFKeystoreWrapper(Lcom/appsflyer/internal/av;ZLjava/util/List;)V
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_59

    :cond_58
    :goto_58
    return-void

    :catchall_59
    move-exception p1

    .line 1222
    instance-of p2, p1, Ljava/lang/NoSuchMethodError;

    if-nez p2, :cond_62

    instance-of p2, p1, Ljava/lang/NoClassDefFoundError;

    if-eqz p2, :cond_67

    :cond_62
    const-string p2, "It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3"

    .line 1223
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    :cond_67
    const-string p2, "Failed to log new purchase"

    .line 141
    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.appsflyer.internal.av.AnonymousClass3 (com.appsflyer.internal.av$3)
.class final Lcom/appsflyer/internal/av$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/android/billingclient/api/BillingResult;

.field private synthetic values:Lcom/appsflyer/internal/av;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/av;Lcom/android/billingclient/api/BillingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/appsflyer/internal/av$3;->values:Lcom/appsflyer/internal/av;

    iput-object p2, p0, Lcom/appsflyer/internal/av$3;->AFKeystoreWrapper:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/av$3;->AFKeystoreWrapper:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 158
    :cond_9
    iget-object v0, p0, Lcom/appsflyer/internal/av$3;->values:Lcom/appsflyer/internal/av;

    .line 1041
    iget-object v0, v0, Lcom/appsflyer/internal/av;->AFInAppEventType:Lcom/appsflyer/internal/az;

    const-string v1, "ars_history_sent"

    .line 158
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/az;->valueOf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 161
    :cond_16
    iget-object v0, p0, Lcom/appsflyer/internal/av$3;->values:Lcom/appsflyer/internal/av;

    .line 2041
    iget-object v0, v0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subs"

    .line 161
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v1

    .line 163
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3a

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_3a

    .line 167
    :cond_33
    iget-object v0, p0, Lcom/appsflyer/internal/av$3;->values:Lcom/appsflyer/internal/av;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/appsflyer/internal/av;->AFKeystoreWrapper(Lcom/appsflyer/internal/av;ZLjava/util/List;)V

    return-void

    :cond_3a
    :goto_3a
    const-string v0, "Failed to query purchases history"

    .line 164
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v0

    .line 3222
    instance-of v1, v0, Ljava/lang/NoSuchMethodError;

    if-nez v1, :cond_49

    instance-of v1, v0, Ljava/lang/NoClassDefFoundError;

    if-eqz v1, :cond_4e

    :cond_49
    const-string v1, "It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3"

    .line 3223
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    :cond_4e
    const-string v1, "Failed to log purchases history"

    .line 170
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.appsflyer.internal.av.AnonymousClass4 (com.appsflyer.internal.av$4)
.class final Lcom/appsflyer/internal/av$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/bl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/bl<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Z

.field private synthetic values:Lcom/appsflyer/internal/av;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/av;ZLcom/appsflyer/internal/z;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/appsflyer/internal/av$4;->values:Lcom/appsflyer/internal/av;

    iput-boolean p2, p0, Lcom/appsflyer/internal/av$4;->AFInAppEventParameterName:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Lcom/appsflyer/internal/bi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/bi<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Lcom/appsflyer/internal/bi;->AFInAppEventType()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 196
    iget-boolean p1, p0, Lcom/appsflyer/internal/av$4;->AFInAppEventParameterName:Z

    if-eqz p1, :cond_13

    .line 197
    iget-object p1, p0, Lcom/appsflyer/internal/av$4;->values:Lcom/appsflyer/internal/av;

    .line 1041
    iget-object p1, p1, Lcom/appsflyer/internal/av;->AFInAppEventType:Lcom/appsflyer/internal/az;

    const-string v0, "ars_history_sent"

    .line 198
    invoke-interface {p1, v0}, Lcom/appsflyer/internal/az;->AFInAppEventParameterName(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final AFInAppEventParameterName(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 216
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/Throwable;)V

    return-void
.end method
