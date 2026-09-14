###### Class bolts.CancellationTokenSource (bolts.CancellationTokenSource)
.class public Lbolts/CancellationTokenSource;
.super Ljava/lang/Object;
.source "CancellationTokenSource.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private cancellationRequested:Z

.field private closed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/lang/Object;

.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbolts/CancellationTokenRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    .line 33
    invoke-static {}, Lbolts/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lbolts/CancellationTokenSource;)Ljava/lang/Object;
    .registers 1

    .line 29
    iget-object p0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lbolts/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    .line 29
    iput-object p1, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private cancelAfter(JLjava/util/concurrent/TimeUnit;)V
    .registers 8

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_30

    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_10

    .line 98
    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->cancel()V

    return-void

    .line 102
    :cond_10
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_13
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v1, :cond_19

    .line 104
    monitor-exit v0

    return-void

    .line 107
    :cond_19
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    if-eqz v2, :cond_2b

    .line 110
    iget-object v1, p0, Lbolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lbolts/CancellationTokenSource$1;

    invoke-direct {v2, p0}, Lbolts/CancellationTokenSource$1;-><init>(Lbolts/CancellationTokenSource;)V

    invoke-interface {v1, v2, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    .line 120
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_2d

    throw p1

    .line 94
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Delay must be >= -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cancelScheduledCancellation()V
    .registers 3

    .line 205
    iget-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 206
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lbolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    return-void
.end method

.method private notifyListeners(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbolts/CancellationTokenRegistration;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/CancellationTokenRegistration;

    .line 182
    invoke-virtual {v0}, Lbolts/CancellationTokenRegistration;->runAction()V

    goto :goto_4

    :cond_14
    return-void
.end method

.method private throwIfClosed()V
    .registers 3

    .line 198
    iget-boolean v0, p0, Lbolts/CancellationTokenSource;->closed:Z

    if-nez v0, :cond_5

    return-void

    .line 199
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 69
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 71
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz v1, :cond_c

    .line 72
    monitor-exit v0

    return-void

    .line 75
    :cond_c
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    .line 80
    invoke-direct {p0, v1}, Lbolts/CancellationTokenSource;->notifyListeners(Ljava/util/List;)V

    return-void

    :catchall_1e
    move-exception v1

    .line 79
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public cancelAfter(J)V
    .registers 4

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, v0}, Lbolts/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public close()V
    .registers 4

    .line 125
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->closed:Z

    if-eqz v1, :cond_9

    .line 127
    monitor-exit v0

    return-void

    .line 130
    :cond_9
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 132
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/CancellationTokenRegistration;

    .line 133
    invoke-virtual {v2}, Lbolts/CancellationTokenRegistration;->close()V

    goto :goto_12

    .line 135
    :cond_22
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, p0, Lbolts/CancellationTokenSource;->closed:Z

    .line 137
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public getToken()Lbolts/CancellationToken;
    .registers 3

    .line 58
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 60
    new-instance v1, Lbolts/CancellationToken;

    invoke-direct {v1, p0}, Lbolts/CancellationToken;-><init>(Lbolts/CancellationTokenSource;)V

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 61
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isCancellationRequested()Z
    .registers 3

    .line 48
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 50
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method register(Ljava/lang/Runnable;)Lbolts/CancellationTokenRegistration;
    .registers 4

    .line 142
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 145
    new-instance v1, Lbolts/CancellationTokenRegistration;

    invoke-direct {v1, p0, p1}, Lbolts/CancellationTokenRegistration;-><init>(Lbolts/CancellationTokenSource;Ljava/lang/Runnable;)V

    .line 146
    iget-boolean p1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz p1, :cond_13

    .line 147
    invoke-virtual {v1}, Lbolts/CancellationTokenRegistration;->runAction()V

    goto :goto_18

    .line 149
    :cond_13
    iget-object p1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :goto_18
    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method throwIfCancellationRequested()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 162
    iget-boolean v1, p0, Lbolts/CancellationTokenSource;->cancellationRequested:Z

    if-nez v1, :cond_c

    .line 165
    monitor-exit v0

    return-void

    .line 163
    :cond_c
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    :catchall_12
    move-exception v1

    .line 165
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 188
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s@%s[cancellationRequested=%s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister(Lbolts/CancellationTokenRegistration;)V
    .registers 4

    .line 169
    iget-object v0, p0, Lbolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    invoke-direct {p0}, Lbolts/CancellationTokenSource;->throwIfClosed()V

    .line 171
    iget-object v1, p0, Lbolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

###### Class bolts.CancellationTokenSource.AnonymousClass1 (bolts.CancellationTokenSource$1)
.class Lbolts/CancellationTokenSource$1;
.super Ljava/lang/Object;
.source "CancellationTokenSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/CancellationTokenSource;


# direct methods
.method constructor <init>(Lbolts/CancellationTokenSource;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 113
    iget-object v0, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    invoke-static {v0}, Lbolts/CancellationTokenSource;->access$000(Lbolts/CancellationTokenSource;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_7
    iget-object v1, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbolts/CancellationTokenSource;->access$102(Lbolts/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 115
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    .line 116
    iget-object v0, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    invoke-virtual {v0}, Lbolts/CancellationTokenSource;->cancel()V

    return-void

    :catchall_14
    move-exception v1

    .line 115
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method
