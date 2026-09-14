###### Class com.appsflyer.oaid.OaidMsaClient (com.appsflyer.oaid.OaidMsaClient)
.class Lcom/appsflyer/oaid/OaidMsaClient;
.super Ljava/lang/Object;
.source "OaidMsaClient.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fetchMsa(Landroid/content/Context;Ljava/util/logging/Logger;JLjava/util/concurrent/TimeUnit;)Lcom/appsflyer/oaid/OaidClient$Info;
    .registers 9

    const/4 v0, 0x0

    .line 21
    :try_start_1
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    new-instance v3, Lcom/appsflyer/oaid/OaidMsaClient$1;

    invoke-direct {v3, v1, p1}, Lcom/appsflyer/oaid/OaidMsaClient$1;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/logging/Logger;)V

    invoke-static {p0, v2, v3}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result p0

    if-eqz p0, :cond_36

    packed-switch p0, :pswitch_data_54

    .line 54
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    :pswitch_22
    const-string p0, "Reflection call error"

    goto :goto_33

    :pswitch_25
    const-string p0, "Callback will be executed in a different thread"

    goto :goto_33

    :pswitch_28
    const-string p0, "Error loading configuration file"

    goto :goto_33

    :pswitch_2b
    const-string p0, "Unsupported device"

    goto :goto_33

    :pswitch_2e
    const-string p0, "Unsupported manufacturer"

    goto :goto_33

    :pswitch_31
    const-string p0, "Init error begin"

    .line 56
    :goto_33
    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 58
    :cond_36
    invoke-interface {v1, p2, p3, p4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_43

    goto :goto_49

    :cond_43
    new-instance p2, Lcom/appsflyer/oaid/OaidClient$Info;

    invoke-direct {p2, p0}, Lcom/appsflyer/oaid/OaidClient$Info;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    move-object v0, p2

    :goto_49
    return-object v0

    :catchall_4a
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0xf63e2
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

###### Class com.appsflyer.oaid.OaidMsaClient.AnonymousClass1 (com.appsflyer.oaid.OaidMsaClient$1)
.class Lcom/appsflyer/oaid/OaidMsaClient$1;
.super Ljava/lang/Object;
.source "OaidMsaClient.java"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/oaid/OaidMsaClient;->fetchMsa(Landroid/content/Context;Ljava/util/logging/Logger;JLjava/util/concurrent/TimeUnit;)Lcom/appsflyer/oaid/OaidClient$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$logger:Ljava/util/logging/Logger;

.field final synthetic val$oaidHolder:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/logging/Logger;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/appsflyer/oaid/OaidMsaClient$1;->val$oaidHolder:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/appsflyer/oaid/OaidMsaClient$1;->val$logger:Ljava/util/logging/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .registers 3

    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/appsflyer/oaid/OaidMsaClient$1;->val$oaidHolder:Ljava/util/concurrent/BlockingQueue;

    if-nez p2, :cond_7

    const-string p2, ""

    goto :goto_b

    :cond_7
    invoke-interface {p2}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p2

    :goto_b
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception p1

    .line 28
    iget-object p2, p0, Lcom/appsflyer/oaid/OaidMsaClient$1;->val$logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_19
    return-void
.end method
