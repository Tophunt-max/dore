###### Class com.igexin.b.a.d.j (com.igexin.b.a.d.j)
.class final Lcom/igexin/b/a/d/j;
.super Ljava/lang/Thread;


# instance fields
.field volatile a:Z

.field b:Lcom/igexin/b/a/d/g;

.field final synthetic c:Lcom/igexin/b/a/d/f;


# direct methods
.method public constructor <init>(Lcom/igexin/b/a/d/f;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/b/a/d/j;->c:Lcom/igexin/b/a/d/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igexin/b/a/d/j;->a:Z

    const-string p1, "TS-processor"

    invoke-virtual {p0, p1}, Lcom/igexin/b/a/d/j;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/igexin/b/a/d/j;->c:Lcom/igexin/b/a/d/f;

    iget-object v0, v0, Lcom/igexin/b/a/d/f;->k:Lcom/igexin/b/a/d/d;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_b
    move-object v5, v2

    :goto_c
    const/4 v4, 0x1

    :goto_d
    iget-boolean v6, p0, Lcom/igexin/b/a/d/j;->a:Z

    if-eqz v6, :cond_11c

    if-eq v4, v1, :cond_1b

    if-eqz v4, :cond_62

    if-eq v4, v3, :cond_c9

    const/4 v6, 0x2

    if-eq v4, v6, :cond_e0

    goto :goto_d

    :cond_1b
    :try_start_1b
    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->d()V

    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->q()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/igexin/b/a/d/j;->b:Lcom/igexin/b/a/d/g;

    if-nez v4, :cond_31

    new-instance v4, Lcom/igexin/b/a/d/g;

    iget-object v6, p0, Lcom/igexin/b/a/d/j;->c:Lcom/igexin/b/a/d/f;

    invoke-direct {v4, v6}, Lcom/igexin/b/a/d/g;-><init>(Lcom/igexin/b/a/d/f;)V

    iput-object v4, p0, Lcom/igexin/b/a/d/j;->b:Lcom/igexin/b/a/d/g;

    :cond_31
    iget-object v4, p0, Lcom/igexin/b/a/d/j;->b:Lcom/igexin/b/a/d/g;

    invoke-virtual {v4, v5}, Lcom/igexin/b/a/d/g;->a(Lcom/igexin/b/a/d/e;)V

    goto :goto_b

    :cond_37
    iget-boolean v4, v5, Lcom/igexin/b/a/d/e;->o:Z

    if-eqz v4, :cond_62

    iget-wide v6, v5, Lcom/igexin/b/a/d/e;->u:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_62

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TaskService|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "|isBlock = false|cycyle = true|doTime = 0, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "invalid ###########"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_61} :catch_101

    goto :goto_c

    :cond_62
    const/4 v4, 0x0

    :try_start_63
    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->b_()V

    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->g()V

    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->h()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6c} :catch_8a
    .catchall {:try_start_63 .. :try_end_6c} :catchall_88

    iget-object v6, p0, Lcom/igexin/b/a/d/j;->c:Lcom/igexin/b/a/d/f;

    invoke-virtual {v6}, Lcom/igexin/b/a/d/f;->g()V

    iget-boolean v6, v5, Lcom/igexin/b/a/d/e;->t:Z

    if-nez v6, :cond_78

    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->c()V

    :cond_78
    iget-boolean v6, v5, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v6, :cond_85

    iget-boolean v6, v5, Lcom/igexin/b/a/d/e;->p:Z

    if-nez v6, :cond_85

    :goto_80
    iput v4, v5, Lcom/igexin/b/a/d/e;->A:I

    invoke-virtual {v0, v5}, Lcom/igexin/b/a/d/d;->a(Lcom/igexin/b/a/d/e;)Z

    :cond_85
    move-object v5, v2

    const/4 v4, 0x1

    goto :goto_c9

    :catchall_88
    move-exception v1

    goto :goto_e7

    :catch_8a
    move-exception v6

    :try_start_8b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TaskService|SERVICE_PROCESSING|error|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iput-boolean v3, v5, Lcom/igexin/b/a/d/e;->t:Z

    iput-object v6, v5, Lcom/igexin/b/a/d/e;->B:Ljava/lang/Exception;

    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->u()V

    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->p()V

    iget-object v6, p0, Lcom/igexin/b/a/d/j;->c:Lcom/igexin/b/a/d/f;

    iget-object v6, v6, Lcom/igexin/b/a/d/f;->j:Lcom/igexin/b/a/d/c;

    invoke-virtual {v6, v5}, Lcom/igexin/b/a/d/c;->a(Lcom/igexin/b/a/d/a/e;)V
    :try_end_b4
    .catchall {:try_start_8b .. :try_end_b4} :catchall_88

    iget-object v6, p0, Lcom/igexin/b/a/d/j;->c:Lcom/igexin/b/a/d/f;

    invoke-virtual {v6}, Lcom/igexin/b/a/d/f;->g()V

    iget-boolean v6, v5, Lcom/igexin/b/a/d/e;->t:Z

    if-nez v6, :cond_c0

    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->c()V

    :cond_c0
    iget-boolean v6, v5, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v6, :cond_85

    iget-boolean v6, v5, Lcom/igexin/b/a/d/e;->p:Z

    if-nez v6, :cond_85

    goto :goto_80

    :cond_c9
    :goto_c9
    :try_start_c9
    invoke-virtual {v0}, Lcom/igexin/b/a/d/d;->c()Lcom/igexin/b/a/d/e;

    move-result-object v5
    :try_end_cd
    .catch Ljava/lang/InterruptedException; {:try_start_c9 .. :try_end_cd} :catch_ce

    goto :goto_cf

    :catch_ce
    nop

    :goto_cf
    if-eqz v5, :cond_e0

    iget-boolean v6, v5, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v6, :cond_dd

    iget-boolean v6, v5, Lcom/igexin/b/a/d/e;->m:Z

    if-eqz v6, :cond_da

    goto :goto_dd

    :cond_da
    const/4 v4, -0x1

    goto/16 :goto_d

    :cond_dd
    :goto_dd
    move-object v5, v2

    goto/16 :goto_d

    :cond_e0
    iget-object v4, p0, Lcom/igexin/b/a/d/j;->c:Lcom/igexin/b/a/d/f;

    invoke-virtual {v4}, Lcom/igexin/b/a/d/f;->g()V

    goto/16 :goto_c

    :goto_e7
    iget-object v2, p0, Lcom/igexin/b/a/d/j;->c:Lcom/igexin/b/a/d/f;

    invoke-virtual {v2}, Lcom/igexin/b/a/d/f;->g()V

    iget-boolean v2, v5, Lcom/igexin/b/a/d/e;->t:Z

    if-nez v2, :cond_f3

    invoke-virtual {v5}, Lcom/igexin/b/a/d/e;->c()V

    :cond_f3
    iget-boolean v2, v5, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v2, :cond_100

    iget-boolean v2, v5, Lcom/igexin/b/a/d/e;->p:Z

    if-nez v2, :cond_100

    iput v4, v5, Lcom/igexin/b/a/d/e;->A:I

    invoke-virtual {v0, v5}, Lcom/igexin/b/a/d/d;->a(Lcom/igexin/b/a/d/e;)Z

    :cond_100
    throw v1

    :catch_101
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TaskService|TASK_INIT|error|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_11c
    invoke-virtual {v0}, Lcom/igexin/b/a/d/d;->d()V

    return-void
.end method
