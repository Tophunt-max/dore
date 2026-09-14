###### Class com.facebook.datasource.AbstractDataSource (com.facebook.datasource.AbstractDataSource)
.class public abstract Lcom/facebook/datasource/AbstractDataSource;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Lcom/facebook/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;,
        Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/DataSource<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static volatile sDataSourceInstrumenter:Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFailureThrowable:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsClosed:Z

.field private mProgress:F

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSubscribers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Lcom/facebook/datasource/DataSubscriber<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mResult:Ljava/lang/Object;

    .line 55
    iput-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mFailureThrowable:Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mProgress:F

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mIsClosed:Z

    .line 72
    sget-object v0, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->IN_PROGRESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    iput-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mSubscribers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static getDataSourceInstrumenter()Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 367
    sget-object v0, Lcom/facebook/datasource/AbstractDataSource;->sDataSourceInstrumenter:Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;

    return-object v0
.end method

.method private notifyDataSubscribers()V
    .registers 6

    .line 179
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->hasFailed()Z

    move-result v0

    .line 180
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;->wasCancelled()Z

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/facebook/datasource/AbstractDataSource;->mSubscribers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 182
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/datasource/DataSubscriber;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v4, v3, v0, v1}, Lcom/facebook/datasource/AbstractDataSource;->notifyDataSubscriber(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;ZZ)V

    goto :goto_e

    :cond_26
    return-void
.end method

.method public static provideInstrumenter(Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;)V
    .registers 1
    .param p0    # Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSourceInstrumenter"
        }
    .end annotation

    .line 67
    sput-object p0, Lcom/facebook/datasource/AbstractDataSource;->sDataSourceInstrumenter:Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;

    return-void
.end method

.method private declared-synchronized setFailureInternal(Ljava/lang/Throwable;Ljava/util/Map;)Z
    .registers 5
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throwable",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 330
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mIsClosed:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    sget-object v1, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->IN_PROGRESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    if-eq v0, v1, :cond_c

    goto :goto_17

    .line 333
    :cond_c
    sget-object v0, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->FAILURE:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    iput-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    .line 334
    iput-object p1, p0, Lcom/facebook/datasource/AbstractDataSource;->mFailureThrowable:Ljava/lang/Throwable;

    .line 335
    iput-object p2, p0, Lcom/facebook/datasource/AbstractDataSource;->mExtras:Ljava/util/Map;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    const/4 p1, 0x1

    .line 336
    monitor-exit p0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x0

    .line 331
    monitor-exit p0

    return p1

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setProgressInternal(F)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mIsClosed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    sget-object v2, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->IN_PROGRESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    if-eq v0, v2, :cond_d

    goto :goto_1a

    .line 343
    :cond_d
    iget v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mProgress:F
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_15

    .line 344
    monitor-exit p0

    return v1

    .line 346
    :cond_15
    :try_start_15
    iput p1, p0, Lcom/facebook/datasource/AbstractDataSource;->mProgress:F
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1c

    const/4 p1, 0x1

    .line 347
    monitor-exit p0

    return p1

    .line 342
    :cond_1a
    :goto_1a
    monitor-exit p0

    return v1

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setResultInternal(Ljava/lang/Object;Z)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "isLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 305
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_3a

    .line 306
    :try_start_2
    iget-boolean v1, p0, Lcom/facebook/datasource/AbstractDataSource;->mIsClosed:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource;->mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    sget-object v2, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->IN_PROGRESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    if-eq v1, v2, :cond_d

    goto :goto_2b

    :cond_d
    if-eqz p2, :cond_17

    .line 311
    sget-object p2, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->SUCCESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    iput-object p2, p0, Lcom/facebook/datasource/AbstractDataSource;->mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 312
    iput p2, p0, Lcom/facebook/datasource/AbstractDataSource;->mProgress:F

    .line 314
    :cond_17
    iget-object p2, p0, Lcom/facebook/datasource/AbstractDataSource;->mResult:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_37

    if-eq p2, p1, :cond_22

    .line 316
    :try_start_1b
    iput-object p1, p0, Lcom/facebook/datasource/AbstractDataSource;->mResult:Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1f

    move-object p1, p2

    goto :goto_23

    :catchall_1f
    move-exception p1

    move-object v0, p2

    goto :goto_38

    :cond_22
    move-object p1, v0

    :goto_23
    const/4 p2, 0x1

    .line 318
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    if-eqz p1, :cond_2a

    .line 323
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->closeResult(Ljava/lang/Object;)V

    :cond_2a
    return p2

    :cond_2b
    :goto_2b
    const/4 p2, 0x0

    .line 308
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_33

    if-eqz p1, :cond_32

    .line 323
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->closeResult(Ljava/lang/Object;)V

    :cond_32
    return p2

    :catchall_33
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_38

    :catchall_37
    move-exception p1

    .line 320
    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    if-eqz v0, :cond_40

    .line 323
    invoke-virtual {p0, v0}, Lcom/facebook/datasource/AbstractDataSource;->closeResult(Ljava/lang/Object;)V

    .line 325
    :cond_40
    throw p1
.end method

.method private declared-synchronized wasCancelled()Z
    .registers 2

    monitor-enter p0

    .line 212
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->isFinished()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()Z
    .registers 4

    .line 125
    monitor-enter p0

    .line 126
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mIsClosed:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 127
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mIsClosed:Z

    .line 130
    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource;->mResult:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 131
    iput-object v2, p0, Lcom/facebook/datasource/AbstractDataSource;->mResult:Ljava/lang/Object;

    .line 132
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2a

    if-eqz v1, :cond_16

    .line 134
    invoke-virtual {p0, v1}, Lcom/facebook/datasource/AbstractDataSource;->closeResult(Ljava/lang/Object;)V

    .line 136
    :cond_16
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 137
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;->notifyDataSubscribers()V

    .line 139
    :cond_1f
    monitor-enter p0

    .line 140
    :try_start_20
    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource;->mSubscribers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 141
    monitor-exit p0

    return v0

    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v0

    :catchall_2a
    move-exception v0

    .line 132
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method protected closeResult(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public getExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mExtras:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized getFailureCause()Ljava/lang/Throwable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mFailureThrowable:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()F
    .registers 2

    monitor-enter p0

    .line 119
    :try_start_1
    iget v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mProgress:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasFailed()Z
    .registers 3

    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    sget-object v1, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->FAILURE:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMultipleResults()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized hasResult()Z
    .registers 2

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 78
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mIsClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFinished()Z
    .registers 3

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    sget-object v1, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->IN_PROGRESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyDataSubscriber(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "dataSubscriber",
            "executor",
            "isFailure",
            "isCancellation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSubscriber<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "ZZ)V"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/facebook/datasource/AbstractDataSource$1;

    invoke-direct {v0, p0, p3, p1, p4}, Lcom/facebook/datasource/AbstractDataSource$1;-><init>(Lcom/facebook/datasource/AbstractDataSource;ZLcom/facebook/datasource/DataSubscriber;Z)V

    .line 204
    invoke-static {}, Lcom/facebook/datasource/AbstractDataSource;->getDataSourceInstrumenter()Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string p3, "AbstractDataSource_notifyDataSubscriber"

    .line 206
    invoke-interface {p1, v0, p3}, Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;->decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    .line 208
    :cond_11
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyProgressUpdate()V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mSubscribers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 353
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/datasource/DataSubscriber;

    .line 354
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 355
    new-instance v3, Lcom/facebook/datasource/AbstractDataSource$2;

    invoke-direct {v3, p0, v2}, Lcom/facebook/datasource/AbstractDataSource$2;-><init>(Lcom/facebook/datasource/AbstractDataSource;Lcom/facebook/datasource/DataSubscriber;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_23
    return-void
.end method

.method protected setExtras(Ljava/util/Map;)V
    .registers 2
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/facebook/datasource/AbstractDataSource;->mExtras:Ljava/util/Map;

    return-void
.end method

.method protected setFailure(Ljava/lang/Throwable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, p1, v0}, Lcom/facebook/datasource/AbstractDataSource;->setFailure(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected setFailure(Ljava/lang/Throwable;Ljava/util/Map;)Z
    .registers 3
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throwable",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/AbstractDataSource;->setFailureInternal(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 275
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;->notifyDataSubscribers()V

    :cond_9
    return p1
.end method

.method protected setProgress(F)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->setProgressInternal(F)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 297
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->notifyProgressUpdate()V

    :cond_9
    return p1
.end method

.method public setResult(Ljava/lang/Object;Z)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "isLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected setResult(Ljava/lang/Object;ZLjava/util/Map;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "isLast",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p3}, Lcom/facebook/datasource/AbstractDataSource;->setExtras(Ljava/util/Map;)V

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/AbstractDataSource;->setResultInternal(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 242
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;->notifyDataSubscribers()V

    :cond_c
    return p1
.end method

.method public subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dataSubscriber",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSubscriber<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 157
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-enter p0

    .line 162
    :try_start_7
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mIsClosed:Z

    if-eqz v0, :cond_d

    .line 163
    monitor-exit p0

    return-void

    .line 166
    :cond_d
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mDataSourceStatus:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    sget-object v1, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->IN_PROGRESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    if-ne v0, v1, :cond_1c

    .line 167
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource;->mSubscribers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1c
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->hasResult()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->isFinished()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;->wasCancelled()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, 0x1

    .line 171
    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_41

    if-eqz v0, :cond_40

    .line 174
    invoke-virtual {p0}, Lcom/facebook/datasource/AbstractDataSource;->hasFailed()Z

    move-result v0

    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;->wasCancelled()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/datasource/AbstractDataSource;->notifyDataSubscriber(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;ZZ)V

    :cond_40
    return-void

    :catchall_41
    move-exception p1

    .line 171
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

###### Class com.facebook.datasource.AbstractDataSource.AnonymousClass1 (com.facebook.datasource.AbstractDataSource$1)
.class Lcom/facebook/datasource/AbstractDataSource$1;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/AbstractDataSource;->notifyDataSubscriber(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/datasource/AbstractDataSource;

.field final synthetic val$dataSubscriber:Lcom/facebook/datasource/DataSubscriber;

.field final synthetic val$isCancellation:Z

.field final synthetic val$isFailure:Z


# direct methods
.method constructor <init>(Lcom/facebook/datasource/AbstractDataSource;ZLcom/facebook/datasource/DataSubscriber;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$isCancellation",
            "val$dataSubscriber",
            "val$isFailure"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/facebook/datasource/AbstractDataSource$1;->this$0:Lcom/facebook/datasource/AbstractDataSource;

    iput-boolean p2, p0, Lcom/facebook/datasource/AbstractDataSource$1;->val$isFailure:Z

    iput-object p3, p0, Lcom/facebook/datasource/AbstractDataSource$1;->val$dataSubscriber:Lcom/facebook/datasource/DataSubscriber;

    iput-boolean p4, p0, Lcom/facebook/datasource/AbstractDataSource$1;->val$isCancellation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 195
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource$1;->val$isFailure:Z

    if-eqz v0, :cond_c

    .line 196
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$1;->val$dataSubscriber:Lcom/facebook/datasource/DataSubscriber;

    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$1;->this$0:Lcom/facebook/datasource/AbstractDataSource;

    invoke-interface {v0, v1}, Lcom/facebook/datasource/DataSubscriber;->onFailure(Lcom/facebook/datasource/DataSource;)V

    goto :goto_1f

    .line 197
    :cond_c
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource$1;->val$isCancellation:Z

    if-eqz v0, :cond_18

    .line 198
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$1;->val$dataSubscriber:Lcom/facebook/datasource/DataSubscriber;

    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$1;->this$0:Lcom/facebook/datasource/AbstractDataSource;

    invoke-interface {v0, v1}, Lcom/facebook/datasource/DataSubscriber;->onCancellation(Lcom/facebook/datasource/DataSource;)V

    goto :goto_1f

    .line 200
    :cond_18
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$1;->val$dataSubscriber:Lcom/facebook/datasource/DataSubscriber;

    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$1;->this$0:Lcom/facebook/datasource/AbstractDataSource;

    invoke-interface {v0, v1}, Lcom/facebook/datasource/DataSubscriber;->onNewResult(Lcom/facebook/datasource/DataSource;)V

    :goto_1f
    return-void
.end method

###### Class com.facebook.datasource.AbstractDataSource.AnonymousClass2 (com.facebook.datasource.AbstractDataSource$2)
.class Lcom/facebook/datasource/AbstractDataSource$2;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/AbstractDataSource;->notifyProgressUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/datasource/AbstractDataSource;

.field final synthetic val$subscriber:Lcom/facebook/datasource/DataSubscriber;


# direct methods
.method constructor <init>(Lcom/facebook/datasource/AbstractDataSource;Lcom/facebook/datasource/DataSubscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$subscriber"
        }
    .end annotation

    .line 356
    iput-object p1, p0, Lcom/facebook/datasource/AbstractDataSource$2;->this$0:Lcom/facebook/datasource/AbstractDataSource;

    iput-object p2, p0, Lcom/facebook/datasource/AbstractDataSource$2;->val$subscriber:Lcom/facebook/datasource/DataSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$2;->val$subscriber:Lcom/facebook/datasource/DataSubscriber;

    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$2;->this$0:Lcom/facebook/datasource/AbstractDataSource;

    invoke-interface {v0, v1}, Lcom/facebook/datasource/DataSubscriber;->onProgressUpdate(Lcom/facebook/datasource/DataSource;)V

    return-void
.end method

###### Class com.facebook.datasource.AbstractDataSource.DataSourceInstrumenter (com.facebook.datasource.AbstractDataSource$DataSourceInstrumenter)
.class public interface abstract Lcom/facebook/datasource/AbstractDataSource$DataSourceInstrumenter;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/AbstractDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataSourceInstrumenter"
.end annotation


# virtual methods
.method public abstract decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "tag"
        }
    .end annotation
.end method

###### Class com.facebook.datasource.AbstractDataSource.DataSourceStatus (com.facebook.datasource.AbstractDataSource$DataSourceStatus)
.class final enum Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;
.super Ljava/lang/Enum;
.source "AbstractDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/AbstractDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DataSourceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

.field public static final enum FAILURE:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

.field public static final enum IN_PROGRESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

.field public static final enum SUCCESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 37
    new-instance v0, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->IN_PROGRESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    .line 40
    new-instance v1, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->SUCCESS:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    .line 43
    new-instance v3, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->FAILURE:Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 35
    sput-object v5, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->$VALUES:[Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 35
    const-class v0, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    return-object p0
.end method

.method public static values()[Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;
    .registers 1

    .line 35
    sget-object v0, Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->$VALUES:[Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    invoke-virtual {v0}, [Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/datasource/AbstractDataSource$DataSourceStatus;

    return-object v0
.end method
