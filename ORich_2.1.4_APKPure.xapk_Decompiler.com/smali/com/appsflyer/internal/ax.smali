###### Class com.appsflyer.internal.ax (com.appsflyer.internal.ax)
.class final Lcom/appsflyer/internal/ax;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/av;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/av;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/appsflyer/internal/ax;->valueOf:Lcom/appsflyer/internal/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/appsflyer/internal/ax;->valueOf:Lcom/appsflyer/internal/av;

    .line 1106
    :try_start_2
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_4f

    if-nez p2, :cond_b

    goto :goto_4f

    .line 1111
    :cond_b
    iget-object p1, v0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Lcom/android/billingclient/api/BillingClient;

    if-nez p1, :cond_15

    const-string p1, "Got Ars billing callback but billing client is missing!"

    .line 1112
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    return-void

    .line 1115
    :cond_15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1117
    :cond_32
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    const-string v2, "subs"

    .line 1118
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    .line 1119
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    .line 1120
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    .line 1121
    iget-object v1, v0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/appsflyer/internal/av$1;

    invoke-direct {v2, v0, p2}, Lcom/appsflyer/internal/av$1;-><init>(Lcom/appsflyer/internal/av;Ljava/util/List;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void

    .line 1107
    :cond_4f
    :goto_4f
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to setup Ars Play billing service: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1107
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_2 .. :try_end_70} :catchall_71

    return-void

    :catchall_71
    move-exception p1

    .line 1222
    instance-of p2, p1, Ljava/lang/NoSuchMethodError;

    if-nez p2, :cond_7a

    instance-of p2, p1, Ljava/lang/NoClassDefFoundError;

    if-eqz p2, :cond_7f

    :cond_7a
    const-string p2, "It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3"

    .line 1223
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    :cond_7f
    const-string p2, "Failed to query new purchase details"

    .line 1147
    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

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
