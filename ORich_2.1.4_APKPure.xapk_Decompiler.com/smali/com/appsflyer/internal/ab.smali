###### Class com.appsflyer.internal.ab (com.appsflyer.internal.ab)
.class public final Lcom/appsflyer/internal/ab;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AppsFlyer2dXConversionCallback:Landroid/os/Handler;

.field private static volatile getLevel:Lcom/appsflyer/internal/ab;

.field private static final init:Ljava/util/BitSet;


# instance fields
.field final AFInAppEventParameterName:Landroid/os/Handler;

.field AFInAppEventType:Z

.field final AFKeystoreWrapper:Ljava/lang/Runnable;

.field final AFLogger$LogLevel:Ljava/util/concurrent/Executor;

.field final AFVersionDeclaration:Ljava/lang/Runnable;

.field private final onAppOpenAttribution:Ljava/lang/Runnable;

.field private onAppOpenAttributionNative:Z

.field private final onAttributionFailureNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/x;",
            "Lcom/appsflyer/internal/x;",
            ">;"
        }
    .end annotation
.end field

.field private onConversionDataFail:J

.field private final onDeepLinkingNative:Landroid/hardware/SensorManager;

.field private onInstallConversionDataLoadedNative:I

.field private final onInstallConversionFailureNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/internal/x;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final valueOf:Ljava/lang/Runnable;

.field final values:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/appsflyer/internal/ab;->init:Ljava/util/BitSet;

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/appsflyer/internal/ab;->AppsFlyer2dXConversionCallback:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x2

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v1, 0x4

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V
    .registers 6

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->values:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/appsflyer/internal/ab;->init:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->onAttributionFailureNative:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->onInstallConversionFailureNative:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/appsflyer/internal/ab$4;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/ab$4;-><init>(Lcom/appsflyer/internal/ab;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->valueOf:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/appsflyer/internal/ab$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/ab$1;-><init>(Lcom/appsflyer/internal/ab;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lcom/appsflyer/internal/ab$3;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/ab$3;-><init>(Lcom/appsflyer/internal/ab;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->AFVersionDeclaration:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/appsflyer/internal/ab;->onInstallConversionDataLoadedNative:I

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/appsflyer/internal/ab;->onConversionDataFail:J

    .line 83
    new-instance v0, Lcom/appsflyer/internal/ab$2;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/ab$2;-><init>(Lcom/appsflyer/internal/ab;)V

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->onAppOpenAttribution:Ljava/lang/Runnable;

    .line 95
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/ab;->AFLogger$LogLevel:Ljava/util/concurrent/Executor;

    .line 98
    iput-object p1, p0, Lcom/appsflyer/internal/ab;->onDeepLinkingNative:Landroid/hardware/SensorManager;

    .line 99
    iput-object p2, p0, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    return-void
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/ab;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/appsflyer/internal/ab;->onInstallConversionDataLoadedNative:I

    return p0
.end method

.method private static AFInAppEventParameterName(I)Z
    .registers 2

    if-ltz p0, :cond_c

    .line 142
    sget-object v0, Lcom/appsflyer/internal/ab;->init:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/ab;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcom/appsflyer/internal/ab;->onInstallConversionDataLoadedNative:I

    return p1
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/ab;)Ljava/lang/Runnable;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ab;->onAppOpenAttribution:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/ab;)Ljava/util/Map;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ab;->onAttributionFailureNative:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic AFKeystoreWrapper(I)Z
    .registers 1

    .line 25
    invoke-static {p0}, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName(I)Z

    move-result p0

    return p0
.end method

.method static synthetic AppsFlyer2dXConversionCallback(Lcom/appsflyer/internal/ab;)Ljava/util/Map;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ab;->onInstallConversionFailureNative:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/ab;)Landroid/hardware/SensorManager;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ab;->onDeepLinkingNative:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/ab;
    .registers 2

    .line 106
    sget-object v0, Lcom/appsflyer/internal/ab;->getLevel:Lcom/appsflyer/internal/ab;

    if-eqz v0, :cond_7

    .line 107
    sget-object p0, Lcom/appsflyer/internal/ab;->getLevel:Lcom/appsflyer/internal/ab;

    return-object p0

    .line 110
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "sensor"

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    .line 112
    sget-object v0, Lcom/appsflyer/internal/ab;->AppsFlyer2dXConversionCallback:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/appsflyer/internal/ab;->values(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/internal/ab;

    move-result-object p0

    return-object p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/ab;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/appsflyer/internal/ab;->onAppOpenAttributionNative:Z

    return p1
.end method

.method private static values(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/internal/ab;
    .registers 4

    .line 121
    sget-object v0, Lcom/appsflyer/internal/ab;->getLevel:Lcom/appsflyer/internal/ab;

    if-nez v0, :cond_17

    .line 122
    const-class v0, Lcom/appsflyer/internal/ab;

    monitor-enter v0

    .line 123
    :try_start_7
    sget-object v1, Lcom/appsflyer/internal/ab;->getLevel:Lcom/appsflyer/internal/ab;

    if-nez v1, :cond_12

    .line 1132
    new-instance v1, Lcom/appsflyer/internal/ab;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/ab;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V

    .line 124
    sput-object v1, Lcom/appsflyer/internal/ab;->getLevel:Lcom/appsflyer/internal/ab;

    .line 126
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0

    .line 128
    :cond_17
    :goto_17
    sget-object p0, Lcom/appsflyer/internal/ab;->getLevel:Lcom/appsflyer/internal/ab;

    return-object p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/ab;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/appsflyer/internal/ab;->AFLogger$LogLevel:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method final AFInAppEventParameterName()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->values:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object v1, p0, Lcom/appsflyer/internal/ab;->onAttributionFailureNative:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/appsflyer/internal/ab;->onAppOpenAttributionNative:Z

    if-eqz v1, :cond_2c

    .line 267
    iget-object v1, p0, Lcom/appsflyer/internal/ab;->onAttributionFailureNative:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/x;

    .line 268
    iget-object v3, p0, Lcom/appsflyer/internal/ab;->onInstallConversionFailureNative:Ljava/util/Map;

    const/4 v4, 0x0

    .line 1139
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/x;->values(Ljava/util/Map;Z)V

    goto :goto_19

    .line 271
    :cond_2c
    iget-object v1, p0, Lcom/appsflyer/internal/ab;->onInstallConversionFailureNative:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 272
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 274
    :cond_3f
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/appsflyer/internal/ab;->onInstallConversionFailureNative:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4c

    return-object v1

    :catchall_4c
    move-exception v1

    .line 275
    monitor-exit v0

    throw v1
.end method

.method final AFInAppEventType()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->onAttributionFailureNative:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/x;

    .line 247
    iget-object v2, p0, Lcom/appsflyer/internal/ab;->onInstallConversionFailureNative:Ljava/util/Map;

    const/4 v3, 0x1

    .line 1135
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/x;->values(Ljava/util/Map;Z)V

    goto :goto_a

    .line 250
    :cond_1d
    iget-object v0, p0, Lcom/appsflyer/internal/ab;->onInstallConversionFailureNative:Ljava/util/Map;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_34

    .line 254
    :cond_28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/appsflyer/internal/ab;->onInstallConversionFailureNative:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 251
    :cond_34
    :goto_34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method final AFKeystoreWrapper()V
    .registers 8

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    iget-wide v2, p0, Lcom/appsflyer/internal/ab;->onConversionDataFail:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_28

    .line 163
    iget v4, p0, Lcom/appsflyer/internal/ab;->onInstallConversionDataLoadedNative:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/appsflyer/internal/ab;->onInstallConversionDataLoadedNative:I

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gez v6, :cond_36

    .line 166
    iget-object v2, p0, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object v2, p0, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->valueOf:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_36

    .line 171
    :cond_28
    iget-object v2, p0, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->AFVersionDeclaration:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    iget-object v2, p0, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appsflyer/internal/ab;->valueOf:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_36
    :goto_36
    iput-wide v0, p0, Lcom/appsflyer/internal/ab;->onConversionDataFail:J

    return-void
.end method

###### Class com.appsflyer.internal.ab.AnonymousClass1 (com.appsflyer.internal.ab$1)
.class final Lcom/appsflyer/internal/ab$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/ab;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ab;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/appsflyer/internal/ab$1;->valueOf:Lcom/appsflyer/internal/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/appsflyer/internal/ab$1;->valueOf:Lcom/appsflyer/internal/ab;

    iget-object v0, v0, Lcom/appsflyer/internal/ab;->values:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_5
    iget-object v1, p0, Lcom/appsflyer/internal/ab$1;->valueOf:Lcom/appsflyer/internal/ab;

    .line 1219
    iget-object v2, v1, Lcom/appsflyer/internal/ab;->AFLogger$LogLevel:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/ab$10;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/ab$10;-><init>(Lcom/appsflyer/internal/ab;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

###### Class com.appsflyer.internal.ab.AnonymousClass10 (com.appsflyer.internal.ab$10)
.class final Lcom/appsflyer/internal/ab$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/ab;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ab;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/appsflyer/internal/ab$10;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/ab$10;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-static {v0}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Lcom/appsflyer/internal/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 225
    iget-object v0, p0, Lcom/appsflyer/internal/ab$10;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-static {v0}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Lcom/appsflyer/internal/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/x;

    .line 226
    iget-object v2, p0, Lcom/appsflyer/internal/ab$10;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-static {v2}, Lcom/appsflyer/internal/ab;->valueOf(Lcom/appsflyer/internal/ab;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 227
    iget-object v2, p0, Lcom/appsflyer/internal/ab$10;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-static {v2}, Lcom/appsflyer/internal/ab;->AppsFlyer2dXConversionCallback(Lcom/appsflyer/internal/ab;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    .line 1135
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/x;->values(Ljava/util/Map;Z)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    goto :goto_1a

    .line 233
    :catchall_3a
    :cond_3a
    iget-object v0, p0, Lcom/appsflyer/internal/ab$10;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsflyer/internal/ab;->AFInAppEventType(Lcom/appsflyer/internal/ab;I)I

    .line 234
    iget-object v0, p0, Lcom/appsflyer/internal/ab$10;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-static {v0, v1}, Lcom/appsflyer/internal/ab;->valueOf(Lcom/appsflyer/internal/ab;Z)Z

    return-void
.end method

###### Class com.appsflyer.internal.ab.AnonymousClass2 (com.appsflyer.internal.ab$2)
.class final Lcom/appsflyer/internal/ab$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/ab;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ab;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/appsflyer/internal/ab$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 86
    iget-object v0, p0, Lcom/appsflyer/internal/ab$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    iget-object v0, v0, Lcom/appsflyer/internal/ab;->values:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_5
    iget-object v1, p0, Lcom/appsflyer/internal/ab$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-static {v1}, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName(Lcom/appsflyer/internal/ab;)I

    move-result v1

    if-nez v1, :cond_13

    .line 88
    iget-object v1, p0, Lcom/appsflyer/internal/ab$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/appsflyer/internal/ab;->AFInAppEventType(Lcom/appsflyer/internal/ab;I)I

    .line 91
    :cond_13
    iget-object v1, p0, Lcom/appsflyer/internal/ab$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    iget-object v1, v1, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/internal/ab$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    iget-object v2, v2, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    iget-object v5, p0, Lcom/appsflyer/internal/ab$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-static {v5}, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName(Lcom/appsflyer/internal/ab;)I

    move-result v5

    int-to-long v5, v5

    mul-long v5, v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

###### Class com.appsflyer.internal.ab.AnonymousClass3 (com.appsflyer.internal.ab$3)
.class final Lcom/appsflyer/internal/ab$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/ab;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ab;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/appsflyer/internal/ab$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/appsflyer/internal/ab$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    iget-object v0, v0, Lcom/appsflyer/internal/ab;->values:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_5
    iget-object v1, p0, Lcom/appsflyer/internal/ab$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    iget-boolean v1, v1, Lcom/appsflyer/internal/ab;->AFInAppEventType:Z

    if-eqz v1, :cond_32

    .line 72
    iget-object v1, p0, Lcom/appsflyer/internal/ab$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    iget-object v1, v1, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/internal/ab$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    iget-object v2, v2, Lcom/appsflyer/internal/ab;->valueOf:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    iget-object v1, p0, Lcom/appsflyer/internal/ab$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    iget-object v1, v1, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/internal/ab$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    iget-object v2, v2, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object v1, p0, Lcom/appsflyer/internal/ab$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    .line 1219
    iget-object v2, v1, Lcom/appsflyer/internal/ab;->AFLogger$LogLevel:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/ab$10;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/ab$10;-><init>(Lcom/appsflyer/internal/ab;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    iget-object v1, p0, Lcom/appsflyer/internal/ab$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/ab;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/appsflyer/internal/ab;->AFInAppEventType:Z

    .line 78
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0

    throw v1
.end method

###### Class com.appsflyer.internal.ab.AnonymousClass4 (com.appsflyer.internal.ab$4)
.class final Lcom/appsflyer/internal/ab$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/ab;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ab;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/appsflyer/internal/ab$4;->valueOf:Lcom/appsflyer/internal/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 50
    iget-object v0, p0, Lcom/appsflyer/internal/ab$4;->valueOf:Lcom/appsflyer/internal/ab;

    iget-object v0, v0, Lcom/appsflyer/internal/ab;->values:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_5
    iget-object v1, p0, Lcom/appsflyer/internal/ab$4;->valueOf:Lcom/appsflyer/internal/ab;

    .line 1190
    iget-object v2, v1, Lcom/appsflyer/internal/ab;->AFLogger$LogLevel:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/ab$5;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/ab$5;-><init>(Lcom/appsflyer/internal/ab;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    iget-object v1, p0, Lcom/appsflyer/internal/ab$4;->valueOf:Lcom/appsflyer/internal/ab;

    iget-object v1, v1, Lcom/appsflyer/internal/ab;->AFInAppEventParameterName:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/internal/ab$4;->valueOf:Lcom/appsflyer/internal/ab;

    invoke-static {v2}, Lcom/appsflyer/internal/ab;->AFInAppEventType(Lcom/appsflyer/internal/ab;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    iget-object v1, p0, Lcom/appsflyer/internal/ab$4;->valueOf:Lcom/appsflyer/internal/ab;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/appsflyer/internal/ab;->AFInAppEventType:Z

    .line 55
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0

    throw v1
.end method

###### Class com.appsflyer.internal.ab.AnonymousClass5 (com.appsflyer.internal.ab$5)
.class final Lcom/appsflyer/internal/ab$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/ab;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ab;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/appsflyer/internal/ab$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/ab$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/ab;

    invoke-static {v0}, Lcom/appsflyer/internal/ab;->valueOf(Lcom/appsflyer/internal/ab;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 197
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 198
    new-instance v2, Lcom/appsflyer/internal/x;

    iget-object v3, p0, Lcom/appsflyer/internal/ab$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/ab;

    invoke-static {v3}, Lcom/appsflyer/internal/ab;->values(Lcom/appsflyer/internal/ab;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/appsflyer/internal/x;-><init>(Landroid/hardware/Sensor;Ljava/util/concurrent/Executor;)V

    .line 199
    iget-object v3, p0, Lcom/appsflyer/internal/ab$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/ab;

    invoke-static {v3}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Lcom/appsflyer/internal/ab;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 200
    iget-object v3, p0, Lcom/appsflyer/internal/ab$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/ab;

    invoke-static {v3}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Lcom/appsflyer/internal/ab;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_45
    iget-object v3, p0, Lcom/appsflyer/internal/ab$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/ab;

    invoke-static {v3}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Lcom/appsflyer/internal/ab;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorEventListener;

    .line 203
    iget-object v3, p0, Lcom/appsflyer/internal/ab$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/ab;

    invoke-static {v3}, Lcom/appsflyer/internal/ab;->valueOf(Lcom/appsflyer/internal/ab;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_5b
    .catchall {:try_start_0 .. :try_end_5b} :catchall_5c

    goto :goto_f

    .line 209
    :catchall_5c
    :cond_5c
    iget-object v0, p0, Lcom/appsflyer/internal/ab$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/ab;->valueOf(Lcom/appsflyer/internal/ab;Z)Z

    return-void
.end method
