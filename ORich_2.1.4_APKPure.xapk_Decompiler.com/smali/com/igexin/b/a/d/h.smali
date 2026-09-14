###### Class com.igexin.b.a.d.h (com.igexin.b.a.d.h)
.class final Lcom/igexin/b/a/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

.field b:Lcom/igexin/b/a/d/e;

.field c:Lcom/igexin/b/a/d/e;

.field volatile d:I

.field final synthetic e:Lcom/igexin/b/a/d/g;


# direct methods
.method public constructor <init>(Lcom/igexin/b/a/d/g;Lcom/igexin/b/a/d/e;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/igexin/b/a/d/h;->b:Lcom/igexin/b/a/d/e;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/igexin/b/a/d/h;->a:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/igexin/b/a/d/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/b/a/d/h;->c:Lcom/igexin/b/a/d/e;

    return-void
.end method

.method public final a(Lcom/igexin/b/a/d/e;)V
    .registers 10

    iget v0, p0, Lcom/igexin/b/a/d/h;->d:I

    if-nez v0, :cond_8

    iget v0, p1, Lcom/igexin/b/a/d/e;->z:I

    iput v0, p0, Lcom/igexin/b/a/d/h;->d:I

    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_a
    if-eqz v1, :cond_91

    const-wide/16 v2, 0x0

    :try_start_e
    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->b_()V

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->g()V

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->h()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_2f
    .catchall {:try_start_e .. :try_end_17} :catchall_2d

    iget-boolean v4, p1, Lcom/igexin/b/a/d/e;->t:Z

    if-nez v4, :cond_1e

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->c()V

    :cond_1e
    iget-boolean v4, p1, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v4, :cond_76

    iget-boolean v4, p1, Lcom/igexin/b/a/d/e;->o:Z

    if-eqz v4, :cond_76

    iget-wide v4, p1, Lcom/igexin/b/a/d/e;->u:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_76

    goto :goto_a

    :catchall_2d
    move-exception v4

    goto :goto_79

    :catch_2f
    move-exception v4

    :try_start_30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TaskService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iput-boolean v0, p1, Lcom/igexin/b/a/d/e;->t:Z

    iput-object v4, p1, Lcom/igexin/b/a/d/e;->B:Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->u()V

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->p()V

    iget-object v4, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    iget-object v4, v4, Lcom/igexin/b/a/d/g;->i:Lcom/igexin/b/a/d/f;

    invoke-virtual {v4, p1}, Lcom/igexin/b/a/d/f;->a(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    iget-object v4, v4, Lcom/igexin/b/a/d/g;->i:Lcom/igexin/b/a/d/f;

    invoke-virtual {v4}, Lcom/igexin/b/a/d/f;->f()V
    :try_end_60
    .catchall {:try_start_30 .. :try_end_60} :catchall_2d

    iget-boolean v4, p1, Lcom/igexin/b/a/d/e;->t:Z

    if-nez v4, :cond_67

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->c()V

    :cond_67
    iget-boolean v4, p1, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v4, :cond_76

    iget-boolean v4, p1, Lcom/igexin/b/a/d/e;->o:Z

    if-eqz v4, :cond_76

    iget-wide v4, p1, Lcom/igexin/b/a/d/e;->u:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_76

    goto :goto_a

    :cond_76
    const/4 v1, 0x0

    const/4 p1, 0x0

    goto :goto_a

    :goto_79
    iget-boolean v5, p1, Lcom/igexin/b/a/d/e;->t:Z

    if-nez v5, :cond_80

    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->c()V

    :cond_80
    iget-boolean v5, p1, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v5, :cond_90

    iget-boolean v5, p1, Lcom/igexin/b/a/d/e;->o:Z

    if-eqz v5, :cond_90

    iget-wide v5, p1, Lcom/igexin/b/a/d/e;->u:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_90

    goto/16 :goto_a

    :cond_90
    throw v4

    :cond_91
    return-void
.end method

.method final b()Lcom/igexin/b/a/d/e;
    .registers 6

    :cond_0
    :goto_0
    iget v0, p0, Lcom/igexin/b/a/d/h;->d:I

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    :try_start_5
    iget-object v0, p0, Lcom/igexin/b/a/d/h;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    iget-wide v2, v2, Lcom/igexin/b/a/d/g;->e:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/b/a/d/e;

    if-eqz v0, :cond_16

    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/igexin/b/a/d/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    iget-object v0, v0, Lcom/igexin/b/a/d/g;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_25} :catch_4f

    :try_start_25
    iget-object v2, p0, Lcom/igexin/b/a/d/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_4a

    if-nez v2, :cond_31

    :try_start_2d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_4f

    goto :goto_0

    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    iget-object v2, v2, Lcom/igexin/b/a/d/g;->b:Ljava/util/HashMap;

    iget v3, p0, Lcom/igexin/b/a/d/h;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/igexin/b/a/d/h;->c:Lcom/igexin/b/a/d/e;

    invoke-virtual {v2}, Lcom/igexin/b/a/d/e;->e()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/igexin/b/a/d/h;->d:I
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_4a

    :try_start_46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_4a
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_4f} :catch_4f

    :catch_4f
    nop

    goto :goto_0

    :cond_51
    return-object v1
.end method

.method public final run()V
    .registers 4

    const/4 v0, 0x1

    :cond_1
    :goto_1
    if-eqz v0, :cond_5e

    :try_start_3
    iget-object v0, p0, Lcom/igexin/b/a/d/h;->b:Lcom/igexin/b/a/d/e;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/igexin/b/a/d/h;->b:Lcom/igexin/b/a/d/e;

    :goto_8
    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/igexin/b/a/d/h;->b()Lcom/igexin/b/a/d/e;

    move-result-object v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    invoke-virtual {v0}, Lcom/igexin/b/a/d/g;->a()Lcom/igexin/b/a/d/e;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_30
    .catchall {:try_start_3 .. :try_end_16} :catchall_2e

    if-eqz v0, :cond_19

    goto :goto_25

    :cond_19
    iget-object v0, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    invoke-virtual {v0, p0}, Lcom/igexin/b/a/d/g;->a(Lcom/igexin/b/a/d/h;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_21
    invoke-virtual {p0}, Lcom/igexin/b/a/d/h;->a()V

    goto :goto_1

    :cond_25
    :goto_25
    :try_start_25
    iput-object v1, p0, Lcom/igexin/b/a/d/h;->c:Lcom/igexin/b/a/d/e;

    invoke-virtual {p0, v0}, Lcom/igexin/b/a/d/h;->a(Lcom/igexin/b/a/d/e;)V

    iput-object v0, p0, Lcom/igexin/b/a/d/h;->c:Lcom/igexin/b/a/d/e;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_30
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2e

    move-object v0, v1

    goto :goto_8

    :catchall_2e
    move-exception v0

    goto :goto_52

    :catch_30
    move-exception v0

    :try_start_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskService|Worker|run()|error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_2e

    iget-object v0, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    invoke-virtual {v0, p0}, Lcom/igexin/b/a/d/g;->a(Lcom/igexin/b/a/d/h;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_21

    :goto_52
    iget-object v1, p0, Lcom/igexin/b/a/d/h;->e:Lcom/igexin/b/a/d/g;

    invoke-virtual {v1, p0}, Lcom/igexin/b/a/d/g;->a(Lcom/igexin/b/a/d/h;)Z

    move-result v1

    if-nez v1, :cond_5d

    invoke-virtual {p0}, Lcom/igexin/b/a/d/h;->a()V

    :cond_5d
    throw v0

    :cond_5e
    return-void
.end method
