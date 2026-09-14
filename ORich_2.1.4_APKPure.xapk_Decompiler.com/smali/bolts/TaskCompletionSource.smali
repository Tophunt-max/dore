###### Class bolts.TaskCompletionSource (bolts.TaskCompletionSource)
.class public Lbolts/TaskCompletionSource;
.super Ljava/lang/Object;
.source "TaskCompletionSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final task:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lbolts/Task;

    invoke-direct {v0}, Lbolts/Task;-><init>()V

    iput-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    return-void
.end method


# virtual methods
.method public getTask()Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    return-object v0
.end method

.method public setCancelled()V
    .registers 3

    .line 53
    invoke-virtual {p0}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 54
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setError(Ljava/lang/Exception;)V
    .registers 3

    .line 71
    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 72
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the error on a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 63
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the result of a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public trySetCancelled()Z
    .registers 2

    .line 32
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->trySetCancelled()Z

    move-result v0

    return v0
.end method

.method public trySetError(Ljava/lang/Exception;)Z
    .registers 3

    .line 46
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    invoke-virtual {v0, p1}, Lbolts/Task;->trySetError(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lbolts/TaskCompletionSource;->task:Lbolts/Task;

    invoke-virtual {v0, p1}, Lbolts/Task;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
