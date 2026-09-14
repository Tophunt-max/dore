###### Class io.dcloud.f.a.d.f (io.dcloud.f.a.d.f)
.class public Lio/dcloud/f/a/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lio/dcloud/f/a/d/f;


# instance fields
.field a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x6

    const-wide/16 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lio/dcloud/f/a/d/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a()Lio/dcloud/f/a/d/f;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/f/a/d/f;->b:Lio/dcloud/f/a/d/f;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lio/dcloud/f/a/d/f;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/f/a/d/f;->b:Lio/dcloud/f/a/d/f;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lio/dcloud/f/a/d/f;

    invoke-direct {v1}, Lio/dcloud/f/a/d/f;-><init>()V

    sput-object v1, Lio/dcloud/f/a/d/f;->b:Lio/dcloud/f/a/d/f;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/f/a/d/f;->b:Lio/dcloud/f/a/d/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .line 9
    iget-object v0, p0, Lio/dcloud/f/a/d/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
