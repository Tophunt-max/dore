###### Class com.igexin.b.a.b.a.a.n (com.igexin.b.a.b.a.a.n)
.class public final Lcom/igexin/b/a/b/a/a/n;
.super Lcom/igexin/b/a/b/a/a/a;


# instance fields
.field private L:Lcom/igexin/b/a/b/a/a/a/c;

.field private M:Lcom/igexin/b/a/b/d;

.field public i:Lcom/igexin/b/a/b/b;

.field j:Lcom/igexin/b/a/b/a/a/p;


# direct methods
.method public constructor <init>(Lcom/igexin/b/a/b/a/a/p;Lcom/igexin/b/a/b/b;Lcom/igexin/b/a/b/d;)V
    .registers 6

    const/16 v0, -0x7f4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/igexin/b/a/b/a/a/a;-><init>(ILjava/lang/String;Lcom/igexin/b/a/b/b;)V

    iput-object p2, p0, Lcom/igexin/b/a/b/a/a/n;->i:Lcom/igexin/b/a/b/b;

    iput-object p3, p0, Lcom/igexin/b/a/b/a/a/n;->M:Lcom/igexin/b/a/b/d;

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/n;->j:Lcom/igexin/b/a/b/a/a/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/b/a/a/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/n;->L:Lcom/igexin/b/a/b/a/a/a/c;

    return-void
.end method

.method public final b()I
    .registers 2

    const/16 v0, -0x7f4

    return v0
.end method

.method public b_()V
    .registers 10

    invoke-super {p0}, Lcom/igexin/b/a/b/a/a/a;->b_()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GS-W|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " running"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object v1

    :goto_24
    iget-boolean v3, p0, Lcom/igexin/b/a/b/a/a/n;->h:Z

    if-eqz v3, :cond_e0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_e0

    iget-boolean v3, p0, Lcom/igexin/b/a/b/a/a/n;->e:Z

    if-nez v3, :cond_e0

    :try_start_32
    iget-object v3, v1, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v3, v1, Lcom/igexin/b/a/b/a/a/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    iget-boolean v3, p0, Lcom/igexin/b/a/b/a/a/n;->h:Z

    if-eqz v3, :cond_48

    iget-object v3, v1, Lcom/igexin/b/a/b/a/a/f;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V

    :cond_48
    iget-object v3, v1, Lcom/igexin/b/a/b/a/a/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/b/a/b/a/a/m;

    if-eqz v3, :cond_b8

    iget-boolean v4, p0, Lcom/igexin/b/a/b/a/a/n;->h:Z

    if-eqz v4, :cond_b8

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/n;->M:Lcom/igexin/b/a/b/d;

    iput-object v4, v3, Lcom/igexin/b/a/b/a/a/m;->d:Lcom/igexin/b/a/b/d;

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/n;->M:Lcom/igexin/b/a/b/d;

    if-eqz v4, :cond_b8

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/n;->j:Lcom/igexin/b/a/b/a/a/p;

    if-eqz v4, :cond_b8

    iget-boolean v4, p0, Lcom/igexin/b/a/b/a/a/n;->h:Z

    if-eqz v4, :cond_b8

    sget-object v4, Lcom/igexin/b/a/b/a/a/b;->a:Lcom/igexin/b/a/b/a/a/b;

    iput-object v4, p0, Lcom/igexin/b/a/b/a/a/n;->f:Lcom/igexin/b/a/b/a/a/b;

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/n;->j:Lcom/igexin/b/a/b/a/a/p;

    iget-object v5, p0, Lcom/igexin/b/a/b/a/a/n;->i:Lcom/igexin/b/a/b/b;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/igexin/b/a/b/a/a/n;->M:Lcom/igexin/b/a/b/d;

    iget-object v8, v3, Lcom/igexin/b/a/b/a/a/m;->c:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8}, Lcom/igexin/b/a/b/b;->d(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    invoke-virtual {v4, v5}, Lcom/igexin/b/a/b/a/a/p;->a([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/igexin/b/a/b/a/a/m;->c:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-- send success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/n;->L:Lcom/igexin/b/a/b/a/a/a/c;

    if-eqz v4, :cond_b8

    iget-boolean v4, p0, Lcom/igexin/b/a/b/a/a/n;->h:Z

    if-eqz v4, :cond_b8

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/n;->L:Lcom/igexin/b/a/b/a/a/a/c;

    invoke-interface {v4, v3}, Lcom/igexin/b/a/b/a/a/a/c;->a(Lcom/igexin/b/a/b/a/a/m;)V
    :try_end_b8
    .catchall {:try_start_32 .. :try_end_b8} :catchall_c2

    :cond_b8
    :try_start_b8
    iget-object v3, v1, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    :goto_ba
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bd} :catch_bf

    goto/16 :goto_24

    :catch_bf
    nop

    goto/16 :goto_24

    :catchall_c2
    move-exception v3

    const/4 v4, 0x0

    :try_start_c4
    iput-boolean v4, p0, Lcom/igexin/b/a/b/a/a/n;->h:Z

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/n;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v5, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    if-eq v4, v5, :cond_d6

    sget-object v4, Lcom/igexin/b/a/b/a/a/b;->b:Lcom/igexin/b/a/b/a/a/b;

    iput-object v4, p0, Lcom/igexin/b/a/b/a/a/n;->f:Lcom/igexin/b/a/b/a/a/b;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/igexin/b/a/b/a/a/n;->g:Ljava/lang/String;
    :try_end_d6
    .catchall {:try_start_c4 .. :try_end_d6} :catchall_d9

    :cond_d6
    :try_start_d6
    iget-object v3, v1, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d8} :catch_bf

    goto :goto_ba

    :catchall_d9
    move-exception v0

    :try_start_da
    iget-object v1, v1, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_df} :catch_df

    :catch_df
    throw v0

    :cond_e0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/b/a/a/n;->e:Z

    const-string v0, "GS-W|finish ~~~~~~"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 4

    invoke-super {p0}, Lcom/igexin/b/a/b/a/a/a;->f()V

    const-string v0, "GS-W|wt dispose"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/n;->L:Lcom/igexin/b/a/b/a/a/a/c;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/n;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v1, Lcom/igexin/b/a/b/a/a/b;->b:Lcom/igexin/b/a/b/a/a/b;

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/n;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/n;->L:Lcom/igexin/b/a/b/a/a/a/c;

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/igexin/b/a/b/a/a/n;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/igexin/b/a/b/a/a/a/c;->a(Ljava/lang/Exception;)V

    goto :goto_2c

    :cond_27
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/n;->L:Lcom/igexin/b/a/b/a/a/a/c;

    invoke-interface {v0, p0}, Lcom/igexin/b/a/b/a/a/a/c;->a(Lcom/igexin/b/a/b/e;)V

    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/n;->L:Lcom/igexin/b/a/b/a/a/a/c;

    return-void
.end method

.method public j()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/b/a/b/a/a/n;->h:Z

    sget-object v0, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/n;->f:Lcom/igexin/b/a/b/a/a/b;

    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object v0

    :try_start_b
    iget-boolean v1, p0, Lcom/igexin/b/a/b/a/a/n;->e:Z

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, v0, Lcom/igexin/b/a/b/a/a/f;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1f

    :catch_19
    :cond_19
    :try_start_19
    iget-object v0, v0, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_26

    goto :goto_26

    :catchall_1f
    move-exception v1

    :try_start_20
    iget-object v0, v0, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_25

    :catch_25
    throw v1

    :catch_26
    :goto_26
    return-void
.end method
