###### Class com.facebook.imagepipeline.producers.BaseConsumer (com.facebook.imagepipeline.producers.BaseConsumer)
.class public abstract Lcom/facebook/imagepipeline/producers/BaseConsumer;
.super Ljava/lang/Object;
.source "BaseConsumer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mIsFinished:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/BaseConsumer;->mIsFinished:Z

    return-void
.end method

.method public static isLast(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static isNotLast(I)Z
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static simpleStatusForIsLast(Z)I
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLast"
        }
    .end annotation

    return p0
.end method

.method public static statusHasAnyFlag(II)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "flag"
        }
    .end annotation

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static statusHasFlag(II)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "flag"
        }
    .end annotation

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static turnOffStatusFlag(II)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "flag"
        }
    .end annotation

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static turnOnStatusFlag(II)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "flag"
        }
    .end annotation

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public declared-synchronized onCancellation()V
    .registers 2

    monitor-enter p0

    .line 110
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/BaseConsumer;->mIsFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_7

    .line 111
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 113
    :try_start_8
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/BaseConsumer;->mIsFinished:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_14

    .line 115
    :try_start_a
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->onCancellationImpl()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    goto :goto_12

    :catch_e
    move-exception v0

    .line 117
    :try_start_f
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->onUnhandledException(Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    .line 119
    :goto_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onCancellationImpl()V
.end method

.method public declared-synchronized onFailure(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/BaseConsumer;->mIsFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_7

    .line 98
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 100
    :try_start_8
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/BaseConsumer;->mIsFinished:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_14

    .line 102
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->onFailureImpl(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    goto :goto_12

    :catch_e
    move-exception p1

    .line 104
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->onUnhandledException(Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    .line 106
    :goto_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract onFailureImpl(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation
.end method

.method public declared-synchronized onNewResult(Ljava/lang/Object;I)V
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
            "newResult",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/BaseConsumer;->mIsFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    .line 85
    monitor-exit p0

    return-void

    .line 87
    :cond_7
    :try_start_7
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/BaseConsumer;->mIsFinished:Z
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_17

    .line 89
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->onNewResultImpl(Ljava/lang/Object;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_17

    goto :goto_15

    :catch_11
    move-exception p1

    .line 91
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->onUnhandledException(Ljava/lang/Exception;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    .line 93
    :goto_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract onNewResultImpl(Ljava/lang/Object;I)V
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
            "newResult",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public declared-synchronized onProgressUpdate(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/BaseConsumer;->mIsFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 129
    monitor-exit p0

    return-void

    .line 132
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->onProgressUpdateImpl(F)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_11

    goto :goto_f

    :catch_b
    move-exception p1

    .line 134
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->onUnhandledException(Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    .line 136
    :goto_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onProgressUpdateImpl(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    return-void
.end method

.method protected onUnhandledException(Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "unhandled exception"

    invoke-static {v0, v1, p1}, Lcom/facebook/common/logging/FLog;->wtf(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
