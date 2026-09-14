###### Class com.facebook.imagepipeline.datasource.ListDataSource (com.facebook.imagepipeline.datasource.ListDataSource)
.class public Lcom/facebook/imagepipeline/datasource/ListDataSource;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "ListDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "Ljava/util/List<",
        "Lcom/facebook/common/references/CloseableReference<",
        "TT;>;>;>;"
    }
.end annotation


# instance fields
.field private final mDataSources:[Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mFinishedDataSources:I


# direct methods
.method protected constructor <init>([Lcom/facebook/datasource/DataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mDataSources:[Lcom/facebook/datasource/DataSource;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mFinishedDataSources:I

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/datasource/ListDataSource;Lcom/facebook/datasource/DataSource;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->onDataSourceFailed(Lcom/facebook/datasource/DataSource;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->onDataSourceCancelled()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->onDataSourceFinished()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->onDataSourceProgress()V

    return-void
.end method

.method public static varargs create([Lcom/facebook/datasource/DataSource;)Lcom/facebook/imagepipeline/datasource/ListDataSource;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)",
            "Lcom/facebook/imagepipeline/datasource/ListDataSource<",
            "TT;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 47
    new-instance v0, Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;-><init>([Lcom/facebook/datasource/DataSource;)V

    .line 48
    array-length v2, p0

    :goto_13
    if-ge v1, v2, :cond_29

    aget-object v3, p0, v1

    if-eqz v3, :cond_26

    .line 50
    new-instance v4, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;-><init>(Lcom/facebook/imagepipeline/datasource/ListDataSource;Lcom/facebook/imagepipeline/datasource/ListDataSource$1;)V

    .line 51
    invoke-static {}, Lcom/facebook/common/executors/CallerThreadExecutor;->getInstance()Lcom/facebook/common/executors/CallerThreadExecutor;

    move-result-object v5

    .line 50
    invoke-interface {v3, v4, v5}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_29
    return-object v0
.end method

.method private declared-synchronized increaseAndCheckIfLast()Z
    .registers 4

    monitor-enter p0

    .line 93
    :try_start_1
    iget v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mFinishedDataSources:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mFinishedDataSources:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mDataSources:[Lcom/facebook/datasource/DataSource;

    array-length v2, v2
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    if-ne v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit p0

    return v1

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onDataSourceCancelled()V
    .registers 2

    .line 102
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->setFailure(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private onDataSourceFailed(Lcom/facebook/datasource/DataSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getFailureCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_e

    .line 98
    :cond_7
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Unknown failure cause"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->setFailure(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private onDataSourceFinished()V
    .registers 3

    .line 87
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->increaseAndCheckIfLast()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v1, v0, v1}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->setResult(Ljava/lang/Object;ZLjava/util/Map;)Z

    :cond_b
    return-void
.end method

.method private onDataSourceProgress()V
    .registers 6

    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mDataSources:[Lcom/facebook/datasource/DataSource;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 108
    invoke-interface {v4}, Lcom/facebook/datasource/DataSource;->getProgress()F

    move-result v4

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 110
    :cond_11
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mDataSources:[Lcom/facebook/datasource/DataSource;

    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->setProgress(F)Z

    return-void
.end method


# virtual methods
.method public close()Z
    .registers 5

    .line 77
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 80
    :cond_8
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mDataSources:[Lcom/facebook/datasource/DataSource;

    array-length v2, v0

    :goto_b
    if-ge v1, v2, :cond_15

    aget-object v3, v0, v1

    .line 81
    invoke-interface {v3}, Lcom/facebook/datasource/DataSource;->close()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->getResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getResult()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->hasResult()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_26

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 61
    monitor-exit p0

    return-object v0

    .line 63
    :cond_a
    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mDataSources:[Lcom/facebook/datasource/DataSource;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mDataSources:[Lcom/facebook/datasource/DataSource;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 65
    invoke-interface {v4}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_26

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 67
    :cond_24
    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasResult()Z
    .registers 3

    monitor-enter p0

    .line 72
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mFinishedDataSources:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource;->mDataSources:[Lcom/facebook/datasource/DataSource;

    array-length v1, v1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.facebook.imagepipeline.datasource.ListDataSource.AnonymousClass1 (com.facebook.imagepipeline.datasource.ListDataSource$1)
.class synthetic Lcom/facebook/imagepipeline/datasource/ListDataSource$1;
.super Ljava/lang/Object;
.source "ListDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/datasource/ListDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.imagepipeline.datasource.ListDataSource.InternalDataSubscriber (com.facebook.imagepipeline.datasource.ListDataSource$InternalDataSubscriber)
.class Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;
.super Ljava/lang/Object;
.source "ListDataSource.java"

# interfaces
.implements Lcom/facebook/datasource/DataSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/datasource/ListDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalDataSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/DataSubscriber<",
        "Lcom/facebook/common/references/CloseableReference<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field mFinished:Z

.field final synthetic this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->mFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/datasource/ListDataSource;Lcom/facebook/imagepipeline/datasource/ListDataSource$1;)V
    .registers 3

    .line 113
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;-><init>(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V

    return-void
.end method

.method private declared-synchronized tryFinish()Z
    .registers 2

    monitor-enter p0

    .line 118
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->mFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 119
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    .line 121
    :try_start_9
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->mFinished:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    .line 122
    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancellation(Lcom/facebook/datasource/DataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-static {p1}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->access$200(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V

    return-void
.end method

.method public onFailure(Lcom/facebook/datasource/DataSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->access$100(Lcom/facebook/imagepipeline/datasource/ListDataSource;Lcom/facebook/datasource/DataSource;)V

    return-void
.end method

.method public onNewResult(Lcom/facebook/datasource/DataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->tryFinish()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 138
    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-static {p1}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->access$300(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V

    :cond_11
    return-void
.end method

.method public onProgressUpdate(Lcom/facebook/datasource/DataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 144
    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/ListDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/imagepipeline/datasource/ListDataSource;

    invoke-static {p1}, Lcom/facebook/imagepipeline/datasource/ListDataSource;->access$400(Lcom/facebook/imagepipeline/datasource/ListDataSource;)V

    return-void
.end method
