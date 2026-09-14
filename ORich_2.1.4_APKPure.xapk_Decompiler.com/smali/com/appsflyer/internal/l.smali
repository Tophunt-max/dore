###### Class com.appsflyer.internal.l (com.appsflyer.internal.l)
.class public final Lcom/appsflyer/internal/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static AFKeystoreWrapper:Lcom/appsflyer/internal/l;


# instance fields
.field final AFInAppEventParameterName:Ljava/util/concurrent/ThreadFactory;

.field AFInAppEventType:Ljava/util/concurrent/Executor;

.field valueOf:Ljava/util/concurrent/ScheduledExecutorService;

.field values:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/appsflyer/internal/l$3;

    invoke-direct {v0}, Lcom/appsflyer/internal/l$3;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/l;->AFInAppEventParameterName:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method static valueOf(Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    const-string v0, "killing non-finished tasks"

    :try_start_2
    const-string v1, "shut downing executor ..."

    .line 111
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 112
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v1, 0xa

    .line 113
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_11} :catch_20
    .catchall {:try_start_2 .. :try_end_11} :catchall_1e

    .line 118
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 119
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 121
    :cond_1a
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    :catchall_1e
    move-exception v1

    goto :goto_32

    :catch_20
    :try_start_20
    const-string v1, "InterruptedException!!!"

    .line 115
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1e

    .line 118
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 119
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 121
    :cond_2e
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void

    .line 118
    :goto_32
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 119
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 121
    :cond_3b
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 122
    throw v1
.end method


# virtual methods
.method public final AFInAppEventParameterName()Ljava/util/concurrent/Executor;
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/appsflyer/internal/l;->AFInAppEventType:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_27

    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_25

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/appsflyer/internal/l;->AFInAppEventType:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/appsflyer/internal/l;->AFInAppEventType:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    if-eqz v0, :cond_33

    const/4 v0, 0x2

    .line 68
    iget-object v1, p0, Lcom/appsflyer/internal/l;->AFInAppEventParameterName:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/l;->AFInAppEventType:Ljava/util/concurrent/Executor;

    .line 71
    :cond_33
    iget-object v0, p0, Lcom/appsflyer/internal/l;->AFInAppEventType:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final AFInAppEventType()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/appsflyer/internal/l;->valueOf:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_15

    .line 78
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/appsflyer/internal/l;->valueOf:Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_21

    const/4 v0, 0x2

    .line 82
    iget-object v1, p0, Lcom/appsflyer/internal/l;->AFInAppEventParameterName:Ljava/util/concurrent/ThreadFactory;

    .line 83
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/l;->valueOf:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    :cond_21
    iget-object v0, p0, Lcom/appsflyer/internal/l;->valueOf:Ljava/util/concurrent/ScheduledExecutorService;

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

###### Class com.appsflyer.internal.l.AnonymousClass3 (com.appsflyer.internal.l$3)
.class final Lcom/appsflyer/internal/l$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 27
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appsflyer/internal/l$3$2;

    invoke-direct {v1, p1}, Lcom/appsflyer/internal/l$3$2;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

###### Class com.appsflyer.internal.l.AnonymousClass3.AnonymousClass2 (com.appsflyer.internal.l$3$2)
.class final Lcom/appsflyer/internal/l$3$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/l$3;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/appsflyer/internal/l$3$2;->AFInAppEventType:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    const-string v0, "AppsFlyer"

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 31
    iget-object v0, p0, Lcom/appsflyer/internal/l$3$2;->AFInAppEventType:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
