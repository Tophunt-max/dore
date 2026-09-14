###### Class dc.squareup.okhttp3.ConnectionPool (dc.squareup.okhttp3.ConnectionPool)
.class public final Ldc/squareup/okhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ldc/squareup/okhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Ldc/squareup/okhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 7
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Ldc/squareup/okhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Ldc/squareup/okhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ldc/squareup/okhttp3/ConnectionPool$1;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/ConnectionPool$1;-><init>(Ldc/squareup/okhttp3/ConnectionPool;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    .line 23
    new-instance v0, Ldc/squareup/okhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Ldc/squareup/okhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->routeDatabase:Ldc/squareup/okhttp3/internal/connection/RouteDatabase;

    .line 36
    iput p1, p0, Ldc/squareup/okhttp3/ConnectionPool;->maxIdleConnections:I

    .line 37
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_27

    return-void

    .line 41
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keepAliveDuration <= 0: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pruneAndGetAllocationCount(Ldc/squareup/okhttp3/internal/connection/RealConnection;J)I
    .registers 10

    .line 1
    iget-object v0, p1, Ldc/squareup/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 5
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 11
    :cond_19
    check-cast v3, Ldc/squareup/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route()Ldc/squareup/okhttp3/Route;

    move-result-object v5

    invoke-virtual {v5}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v5

    iget-object v3, v3, Ldc/squareup/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Ldc/squareup/okhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 18
    iput-boolean v3, p1, Ldc/squareup/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    iget-wide v2, p0, Ldc/squareup/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Ldc/squareup/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return v1

    .line 27
    :cond_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method cleanup(J)J
    .registers 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;

    .line 6
    invoke-direct {p0, v7, p1, p2}, Ldc/squareup/okhttp3/ConnectionPool;->pruneAndGetAllocationCount(Ldc/squareup/okhttp3/internal/connection/RealConnection;J)I

    move-result v8

    if-lez v8, :cond_22

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_22
    add-int/lit8 v5, v5, 0x1

    .line 14
    iget-wide v8, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_d

    move-object v2, v7

    move-wide v3, v8

    goto :goto_d

    .line 21
    :cond_2f
    iget-wide p1, p0, Ldc/squareup/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_49

    iget v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->maxIdleConnections:I

    if-le v5, v0, :cond_3a

    goto :goto_49

    :cond_3a
    if-lez v5, :cond_3f

    sub-long/2addr p1, v3

    .line 28
    monitor-exit p0

    return-wide p1

    :cond_3f
    if-lez v6, :cond_43

    .line 31
    monitor-exit p0

    return-wide p1

    .line 34
    :cond_43
    iput-boolean v1, p0, Ldc/squareup/okhttp3/ConnectionPool;->cleanupRunning:Z

    const-wide/16 p1, -0x1

    .line 35
    monitor-exit p0

    return-wide p1

    .line 36
    :cond_49
    :goto_49
    iget-object p1, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 48
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_59

    .line 50
    invoke-virtual {v2}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_59
    move-exception p1

    .line 51
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1
.end method

.method connectionBecameIdle(Ldc/squareup/okhttp3/internal/connection/RealConnection;)Z
    .registers 3

    .line 2
    iget-boolean v0, p1, Ldc/squareup/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_e

    iget v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_9

    goto :goto_e

    .line 6
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_e
    :goto_e
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized connectionCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method deduplicate(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .registers 6

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldc/squareup/okhttp3/internal/connection/RealConnection;

    .line 3
    invoke-virtual {v1, p1, v2}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->isEligible(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/Route;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4
    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {p2}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->connection()Ldc/squareup/okhttp3/internal/connection/RealConnection;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 6
    invoke-virtual {p2, v1}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->releaseAndAcquire(Ldc/squareup/okhttp3/internal/connection/RealConnection;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :cond_2a
    return-object v2
.end method

.method public evictAll()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_6
    iget-object v1, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okhttp3/internal/connection/RealConnection;

    .line 5
    iget-object v3, v2, Ldc/squareup/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, v2, Ldc/squareup/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 11
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_44

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldc/squareup/okhttp3/internal/connection/RealConnection;

    .line 14
    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_2f

    :cond_43
    return-void

    :catchall_44
    move-exception v0

    .line 15
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method get(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;Ldc/squareup/okhttp3/Route;)Ldc/squareup/okhttp3/internal/connection/RealConnection;
    .registers 7

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldc/squareup/okhttp3/internal/connection/RealConnection;

    .line 3
    invoke-virtual {v1, p1, p3}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->isEligible(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/Route;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, v1, p1}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->acquire(Ldc/squareup/okhttp3/internal/connection/RealConnection;Z)V

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized idleConnectionCount()I
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iget-object v1, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okhttp3/internal/connection/RealConnection;

    .line 2
    iget-object v2, v2, Ldc/squareup/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_21

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1f
    monitor-exit p0

    return v0

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(Ldc/squareup/okhttp3/internal/connection/RealConnection;)V
    .registers 4

    .line 2
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->cleanupRunning:Z

    .line 4
    sget-object v0, Ldc/squareup/okhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ldc/squareup/okhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_e
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class dc.squareup.okhttp3.ConnectionPool.AnonymousClass1 (dc.squareup.okhttp3.ConnectionPool$1)
.class Ldc/squareup/okhttp3/ConnectionPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/ConnectionPool;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/ConnectionPool;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/ConnectionPool$1;->this$0:Ldc/squareup/okhttp3/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Ldc/squareup/okhttp3/ConnectionPool$1;->this$0:Ldc/squareup/okhttp3/ConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/ConnectionPool;->cleanup(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0xf4240

    .line 4
    div-long v4, v0, v2

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    .line 6
    iget-object v2, p0, Ldc/squareup/okhttp3/ConnectionPool$1;->this$0:Ldc/squareup/okhttp3/ConnectionPool;

    monitor-enter v2

    .line 8
    :try_start_22
    iget-object v3, p0, Ldc/squareup/okhttp3/ConnectionPool$1;->this$0:Ldc/squareup/okhttp3/ConnectionPool;

    long-to-int v1, v0

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_28} :catch_2b
    .catchall {:try_start_22 .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception v0

    goto :goto_2d

    .line 11
    :catch_2b
    :goto_2b
    :try_start_2b
    monitor-exit v2

    goto :goto_0

    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_29

    throw v0
.end method
