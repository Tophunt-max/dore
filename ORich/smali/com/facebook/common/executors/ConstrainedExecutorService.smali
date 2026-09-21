###### Class com.facebook.common.executors.ConstrainedExecutorService (com.facebook.common.executors.ConstrainedExecutorService)
.class public Lcom/facebook/common/executors/ConstrainedExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ConstrainedExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mMaxConcurrency:I

.field private final mMaxQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mName:Ljava/lang/String;

.field private final mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTaskRunner:Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;

.field private final mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/facebook/common/executors/ConstrainedExecutorService;

    sput-object v0, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "maxConcurrency",
            "executor",
            "workQueue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    if-lez p2, :cond_25

    .line 52
    iput-object p1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 54
    iput p2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxConcurrency:I

    .line 55
    iput-object p4, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 56
    new-instance p1, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;-><init>(Lcom/facebook/common/executors/ConstrainedExecutorService;Lcom/facebook/common/executors/ConstrainedExecutorService$1;)V

    iput-object p1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mTaskRunner:Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;

    .line 57
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    .line 50
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max concurrency must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Class;
    .registers 1

    .line 26
    sget-object v0, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/common/executors/ConstrainedExecutorService;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/facebook/common/executors/ConstrainedExecutorService;->startWorkerIfNeeded()V

    return-void
.end method

.method public static newConstrainedExecutor(Ljava/lang/String;IILjava/util/concurrent/Executor;)Lcom/facebook/common/executors/ConstrainedExecutorService;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "maxConcurrency",
            "queueSize",
            "executor"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/facebook/common/executors/ConstrainedExecutorService;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/facebook/common/executors/ConstrainedExecutorService;-><init>(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method private startWorkerIfNeeded()V
    .registers 6

    .line 118
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 119
    :goto_6
    iget v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxConcurrency:I

    if-ge v0, v1, :cond_3f

    add-int/lit8 v1, v0, 0x1

    .line 121
    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 123
    sget-object v0, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxConcurrency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "%s: starting worker %d of %d"

    invoke-static {v0, v4, v2, v1, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mTaskRunner:Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3f

    .line 128
    :cond_2f
    sget-object v0, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    const-string v2, "%s: race in startWorkerIfNeeded; retrying"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_6

    :cond_3f
    :goto_3f
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    const-string v0, "runnable parameter is null"

    .line 94
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 101
    iget-object p1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    .line 102
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le p1, v0, :cond_30

    .line 103
    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mMaxQueueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 104
    sget-object v0, Lcom/facebook/common/executors/ConstrainedExecutorService;->TAG:Ljava/lang/Class;

    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "%s: max pending work in queue = %d"

    invoke-static {v0, v2, v1, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :cond_30
    invoke-direct {p0}, Lcom/facebook/common/executors/ConstrainedExecutorService;->startWorkerIfNeeded()V

    return-void

    .line 98
    :cond_34
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " queue is full, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isIdle()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService;->mPendingWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isShutdown()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .registers 2

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class com.facebook.common.executors.ConstrainedExecutorService.AnonymousClass1 (com.facebook.common.executors.ConstrainedExecutorService$1)
.class synthetic Lcom/facebook/common/executors/ConstrainedExecutorService$1;
.super Ljava/lang/Object;
.source "ConstrainedExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/executors/ConstrainedExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.common.executors.ConstrainedExecutorService.Worker (com.facebook.common.executors.ConstrainedExecutorService$Worker)
.class Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;
.super Ljava/lang/Object;
.source "ConstrainedExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/executors/ConstrainedExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;


# direct methods
.method private constructor <init>(Lcom/facebook/common/executors/ConstrainedExecutorService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/executors/ConstrainedExecutorService;Lcom/facebook/common/executors/ConstrainedExecutorService$1;)V
    .registers 3

    .line 163
    invoke-direct {p0, p1}, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;-><init>(Lcom/facebook/common/executors/ConstrainedExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "%s: worker finished; %d workers left"

    .line 168
    :try_start_2
    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v1}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$100(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_14

    .line 170
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_23

    .line 174
    :cond_14
    invoke-static {}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "%s: Worker has nothing to run"

    iget-object v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v3}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$300(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_51

    .line 177
    :goto_23
    iget-object v1, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v1}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$400(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v2}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$100(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 179
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v0}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$500(Lcom/facebook/common/executors/ConstrainedExecutorService;)V

    goto :goto_50

    .line 181
    :cond_3f
    invoke-static {}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$200()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v3}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$300(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_50
    return-void

    :catchall_51
    move-exception v1

    .line 177
    iget-object v2, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v2}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$400(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 178
    iget-object v3, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v3}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$100(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 179
    iget-object v0, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v0}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$500(Lcom/facebook/common/executors/ConstrainedExecutorService;)V

    goto :goto_7f

    .line 181
    :cond_6e
    invoke-static {}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$200()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/common/executors/ConstrainedExecutorService$Worker;->this$0:Lcom/facebook/common/executors/ConstrainedExecutorService;

    invoke-static {v4}, Lcom/facebook/common/executors/ConstrainedExecutorService;->access$300(Lcom/facebook/common/executors/ConstrainedExecutorService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v4, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    :goto_7f
    throw v1
.end method
