###### Class com.appsflyer.oaid.OaidClient (com.appsflyer.oaid.OaidClient)
.class public Lcom/appsflyer/oaid/OaidClient;
.super Ljava/lang/Object;
.source "OaidClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/oaid/OaidClient$Info;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Ljava/util/logging/Logger;

.field private final timeout:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/appsflyer/oaid/OaidClient;-><init>(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppsFlyerOaid6.2.4"

    .line 19
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    .line 25
    iput-object p1, p0, Lcom/appsflyer/oaid/OaidClient;->context:Landroid/content/Context;

    .line 26
    iput-wide p2, p0, Lcom/appsflyer/oaid/OaidClient;->timeout:J

    .line 27
    iput-object p4, p0, Lcom/appsflyer/oaid/OaidClient;->unit:Ljava/util/concurrent/TimeUnit;

    .line 28
    sget-object p1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsflyer/oaid/OaidClient;)Landroid/content/Context;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/appsflyer/oaid/OaidClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method private fetchHuawei()Lcom/appsflyer/oaid/OaidClient$Info;
    .registers 5

    .line 82
    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/appsflyer/oaid/OaidClient$1;

    invoke-direct {v1, p0}, Lcom/appsflyer/oaid/OaidClient$1;-><init>(Lcom/appsflyer/oaid/OaidClient;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 90
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 91
    iget-wide v1, p0, Lcom/appsflyer/oaid/OaidClient;->timeout:J

    iget-object v3, p0, Lcom/appsflyer/oaid/OaidClient;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/oaid/OaidClient$Info;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-object v0

    :catchall_1d
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static isHuawei()Z
    .registers 3

    const/4 v0, 0x0

    .line 40
    :try_start_1
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "com.huawei.android.os.BuildEx$VERSION"

    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EMUI_SDK_INT"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_22} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_22} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_22} :catch_25

    if-lez v1, :cond_25

    :cond_24
    const/4 v0, 0x1

    :catch_25
    :cond_25
    return v0
.end method

.method private static isMsaAvailableAtRuntime()Z
    .registers 1

    .line 51
    :try_start_0
    const-class v0, Lcom/bun/miitmdid/interfaces/IIdentifierListener;
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_2} :catch_4

    const/4 v0, 0x1

    return v0

    :catch_4
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public fetch()Lcom/appsflyer/oaid/OaidClient$Info;
    .registers 9

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_8

    return-object v1

    .line 65
    :cond_8
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    invoke-static {}, Lcom/appsflyer/oaid/OaidClient;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/appsflyer/oaid/OaidClient;->fetchHuawei()Lcom/appsflyer/oaid/OaidClient$Info;

    move-result-object v0

    goto :goto_2b

    .line 68
    :cond_17
    invoke-static {}, Lcom/appsflyer/oaid/OaidClient;->isMsaAvailableAtRuntime()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 69
    iget-object v0, p0, Lcom/appsflyer/oaid/OaidClient;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    iget-wide v5, p0, Lcom/appsflyer/oaid/OaidClient;->timeout:J

    iget-object v7, p0, Lcom/appsflyer/oaid/OaidClient;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v6, v7}, Lcom/appsflyer/oaid/OaidMsaClient;->fetchMsa(Landroid/content/Context;Ljava/util/logging/Logger;JLjava/util/concurrent/TimeUnit;)Lcom/appsflyer/oaid/OaidClient$Info;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    move-object v0, v1

    .line 71
    :goto_2b
    iget-object v4, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_4c

    return-object v0

    :catchall_4c
    move-exception v0

    .line 74
    iget-object v2, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v1
.end method

.method public setLogging(Z)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    sget-object p1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    :goto_8
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

###### Class com.appsflyer.oaid.OaidClient.AnonymousClass1 (com.appsflyer.oaid.OaidClient$1)
.class Lcom/appsflyer/oaid/OaidClient$1;
.super Ljava/lang/Object;
.source "OaidClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/oaid/OaidClient;->fetchHuawei()Lcom/appsflyer/oaid/OaidClient$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/appsflyer/oaid/OaidClient$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/oaid/OaidClient;


# direct methods
.method constructor <init>(Lcom/appsflyer/oaid/OaidClient;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/appsflyer/oaid/OaidClient$1;->this$0:Lcom/appsflyer/oaid/OaidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/appsflyer/oaid/OaidClient$Info;
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/appsflyer/oaid/OaidClient$1;->this$0:Lcom/appsflyer/oaid/OaidClient;

    invoke-static {v0}, Lcom/appsflyer/oaid/OaidClient;->access$000(Lcom/appsflyer/oaid/OaidClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_e
    new-instance v1, Lcom/appsflyer/oaid/OaidClient$Info;

    invoke-virtual {v0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/appsflyer/oaid/OaidClient$Info;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/appsflyer/oaid/OaidClient$1;->call()Lcom/appsflyer/oaid/OaidClient$Info;

    move-result-object v0

    return-object v0
.end method

###### Class com.appsflyer.oaid.OaidClient.Info (com.appsflyer.oaid.OaidClient$Info)
.class public Lcom/appsflyer/oaid/OaidClient$Info;
.super Ljava/lang/Object;
.source "OaidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/oaid/OaidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final lat:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/appsflyer/oaid/OaidClient$Info;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/appsflyer/oaid/OaidClient$Info;->id:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/appsflyer/oaid/OaidClient$Info;->lat:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/appsflyer/oaid/OaidClient$Info;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/Boolean;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/appsflyer/oaid/OaidClient$Info;->lat:Ljava/lang/Boolean;

    return-object v0
.end method
