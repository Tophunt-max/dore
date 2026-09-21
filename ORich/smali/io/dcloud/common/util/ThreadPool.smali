###### Class io.dcloud.common.util.ThreadPool (io.dcloud.common.util.ThreadPool)
.class public Lio/dcloud/common/util/ThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/ThreadPool$ThreadPoolHolder;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x3


# instance fields
.field newFixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field singleThreadPool:Ljava/util/concurrent/ExecutorService;

.field threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .registers 16

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/common/util/ThreadPool;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    iput-object v0, p0, Lio/dcloud/common/util/ThreadPool;->singleThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object v0, p0, Lio/dcloud/common/util/ThreadPool;->newFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 8
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x3

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lio/dcloud/common/util/ThreadPool;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x3

    const/16 v10, 0x32

    const-wide/16 v11, 0x12c

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lio/dcloud/common/util/ThreadPool;->newFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/util/ThreadPool;->singleThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/common/util/ThreadPool$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/util/ThreadPool;-><init>()V

    return-void
.end method

.method public static self()Lio/dcloud/common/util/ThreadPool;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/ThreadPool$ThreadPoolHolder;->mInstance:Lio/dcloud/common/util/ThreadPool;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addSingleThreadTask(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/ThreadPool;->singleThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addThreadTask(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addThreadTask(Ljava/lang/Runnable;Z)V
    .registers 3

    monitor-enter p0

    if-eqz p2, :cond_9

    .line 2
    :try_start_3
    iget-object p2, p0, Lio/dcloud/common/util/ThreadPool;->newFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 4
    :cond_9
    iget-object p2, p0, Lio/dcloud/common/util/ThreadPool;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :goto_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class io.dcloud.common.util.ThreadPool.AnonymousClass1 (io.dcloud.common.util.ThreadPool$1)
.class synthetic Lio/dcloud/common/util/ThreadPool$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.common.util.ThreadPool.ThreadPoolHolder (io.dcloud.common.util.ThreadPool$ThreadPoolHolder)
.class Lio/dcloud/common/util/ThreadPool$ThreadPoolHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadPoolHolder"
.end annotation


# static fields
.field static mInstance:Lio/dcloud/common/util/ThreadPool;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/util/ThreadPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/common/util/ThreadPool;-><init>(Lio/dcloud/common/util/ThreadPool$1;)V

    sput-object v0, Lio/dcloud/common/util/ThreadPool$ThreadPoolHolder;->mInstance:Lio/dcloud/common/util/ThreadPool;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
