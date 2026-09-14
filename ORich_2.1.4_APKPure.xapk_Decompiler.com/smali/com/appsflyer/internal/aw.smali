###### Class com.appsflyer.internal.aw (com.appsflyer.internal.aw)
.class final Lcom/appsflyer/internal/aw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/av;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/av;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/appsflyer/internal/aw;->values:Lcom/appsflyer/internal/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBillingServiceDisconnected()V
    .registers 1

    return-void
.end method

.method public final onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/appsflyer/internal/aw;->values:Lcom/appsflyer/internal/av;

    .line 1152
    iget-object v1, v0, Lcom/appsflyer/internal/av;->AFInAppEventParameterName:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/appsflyer/internal/av$3;

    invoke-direct {v2, v0, p1}, Lcom/appsflyer/internal/av$3;-><init>(Lcom/appsflyer/internal/av;Lcom/android/billingclient/api/BillingResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

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
