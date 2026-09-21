###### Class com.igexin.b.a.d.g (com.igexin.b.a.d.g)
.class final Lcom/igexin/b/a/d/g;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/igexin/b/a/d/e;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/igexin/b/a/d/h;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/locks/ReentrantLock;

.field d:Ljava/util/concurrent/ThreadFactory;

.field volatile e:J

.field volatile f:I

.field volatile g:I

.field volatile h:I

.field final synthetic i:Lcom/igexin/b/a/d/f;


# direct methods
.method public constructor <init>(Lcom/igexin/b/a/d/f;)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/b/a/d/g;->i:Lcom/igexin/b/a/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/igexin/b/a/d/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {p1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object p1, p0, Lcom/igexin/b/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/igexin/b/a/d/g;->b:Ljava/util/HashMap;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/b/a/d/g;->e:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/igexin/b/a/d/g;->f:I

    new-instance p1, Lcom/igexin/b/a/d/i;

    invoke-direct {p1, p0}, Lcom/igexin/b/a/d/i;-><init>(Lcom/igexin/b/a/d/g;)V

    iput-object p1, p0, Lcom/igexin/b/a/d/g;->d:Ljava/util/concurrent/ThreadFactory;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/igexin/b/a/d/g;->h:I

    return-void
.end method


# virtual methods
.method final a()Lcom/igexin/b/a/d/e;
    .registers 5

    :catch_0
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/igexin/b/a/d/g;->g:I

    iget v1, p0, Lcom/igexin/b/a/d/g;->f:I

    if-le v0, v1, :cond_13

    iget-object v0, p0, Lcom/igexin/b/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    iget-wide v1, p0, Lcom/igexin/b/a/d/g;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    check-cast v0, Lcom/igexin/b/a/d/e;

    goto :goto_1a

    :cond_13
    iget-object v0, p0, Lcom/igexin/b/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    :goto_1a
    if-eqz v0, :cond_1d

    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/igexin/b/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_23} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Lcom/igexin/b/a/d/e;)V
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/igexin/b/a/d/e;->z:I

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/igexin/b/a/d/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_c
    iget-object v1, p0, Lcom/igexin/b/a/d/g;->b:Ljava/util/HashMap;

    iget v2, p1, Lcom/igexin/b/a/d/e;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/b/a/d/h;

    if-eqz v1, :cond_25

    iget-object v1, v1, Lcom/igexin/b/a/d/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2e

    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1}, Lcom/igexin/b/a/d/g;->b(Lcom/igexin/b/a/d/e;)V

    return-void
.end method

.method final a(Lcom/igexin/b/a/d/h;)Z
    .registers 5

    iget-object v0, p0, Lcom/igexin/b/a/d/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget v1, p0, Lcom/igexin/b/a/d/g;->g:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/igexin/b/a/d/g;->g:I

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/igexin/b/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/igexin/b/a/d/g;->f(Lcom/igexin/b/a/d/e;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_2c

    :cond_20
    iget-object v1, p1, Lcom/igexin/b/a/d/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_3c

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v1, p0, Lcom/igexin/b/a/d/g;->b:Ljava/util/HashMap;

    iget p1, p1, Lcom/igexin/b/a/d/h;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3c

    const/4 p1, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_3c
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method final b(Lcom/igexin/b/a/d/e;)V
    .registers 4

    iget v0, p0, Lcom/igexin/b/a/d/g;->g:I

    iget v1, p0, Lcom/igexin/b/a/d/g;->f:I

    if-ge v0, v1, :cond_c

    invoke-virtual {p0, p1}, Lcom/igexin/b/a/d/g;->c(Lcom/igexin/b/a/d/e;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_c
    iget-object v0, p0, Lcom/igexin/b/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/igexin/b/a/d/g;->g:I

    if-nez v0, :cond_22

    invoke-virtual {p0, p1}, Lcom/igexin/b/a/d/g;->e(Lcom/igexin/b/a/d/e;)V

    goto :goto_22

    :cond_1c
    invoke-virtual {p0, p1}, Lcom/igexin/b/a/d/g;->d(Lcom/igexin/b/a/d/e;)Z

    move-result p1

    if-nez p1, :cond_22

    :cond_22
    :goto_22
    return-void
.end method

.method final c(Lcom/igexin/b/a/d/e;)Z
    .registers 5

    iget-object v0, p0, Lcom/igexin/b/a/d/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget v1, p0, Lcom/igexin/b/a/d/g;->g:I

    iget v2, p0, Lcom/igexin/b/a/d/g;->f:I

    if-ge v1, v2, :cond_10

    invoke-virtual {p0, p1}, Lcom/igexin/b/a/d/g;->f(Lcom/igexin/b/a/d/e;)Ljava/lang/Thread;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1d

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :catchall_1d
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method final d(Lcom/igexin/b/a/d/e;)Z
    .registers 5

    iget-object v0, p0, Lcom/igexin/b/a/d/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget v1, p0, Lcom/igexin/b/a/d/g;->g:I

    iget v2, p0, Lcom/igexin/b/a/d/g;->h:I

    if-ge v1, v2, :cond_10

    invoke-virtual {p0, p1}, Lcom/igexin/b/a/d/g;->f(Lcom/igexin/b/a/d/e;)Ljava/lang/Thread;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1d

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :catchall_1d
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method final e(Lcom/igexin/b/a/d/e;)V
    .registers 5

    iget-object p1, p0, Lcom/igexin/b/a/d/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/igexin/b/a/d/g;->g:I

    iget v1, p0, Lcom/igexin/b/a/d/g;->f:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/igexin/b/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0, v2}, Lcom/igexin/b/a/d/g;->f(Lcom/igexin/b/a/d/e;)Ljava/lang/Thread;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_26

    :cond_1d
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_25
    return-void

    :catchall_26
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final f(Lcom/igexin/b/a/d/e;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Lcom/igexin/b/a/d/h;

    invoke-direct {v0, p0, p1}, Lcom/igexin/b/a/d/h;-><init>(Lcom/igexin/b/a/d/g;Lcom/igexin/b/a/d/e;)V

    if-eqz p1, :cond_16

    iget v1, p1, Lcom/igexin/b/a/d/e;->z:I

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/igexin/b/a/d/g;->b:Ljava/util/HashMap;

    iget p1, p1, Lcom/igexin/b/a/d/e;->z:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget-object p1, p0, Lcom/igexin/b/a/d/g;->d:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_24

    iget v0, p0, Lcom/igexin/b/a/d/g;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/b/a/d/g;->g:I

    :cond_24
    return-object p1
.end method
