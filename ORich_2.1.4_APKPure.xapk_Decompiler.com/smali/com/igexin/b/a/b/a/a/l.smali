###### Class com.igexin.b.a.b.a.a.l (com.igexin.b.a.b.a.a.l)
.class public final Lcom/igexin/b/a/b/a/a/l;
.super Lcom/igexin/b/a/b/a/a/a;


# instance fields
.field private L:Lcom/igexin/b/a/b/a/a/a/b;

.field private M:[B

.field private N:Lcom/igexin/b/a/b/d;

.field i:Lcom/igexin/b/a/b/a/a/o;

.field j:Lcom/igexin/b/a/b/b;


# direct methods
.method public constructor <init>(Lcom/igexin/b/a/b/a/a/o;Lcom/igexin/b/a/b/b;Lcom/igexin/b/a/b/d;)V
    .registers 6

    const/16 v0, -0x7f3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/igexin/b/a/b/a/a/a;-><init>(ILjava/lang/String;Lcom/igexin/b/a/b/b;)V

    iput-object p2, p0, Lcom/igexin/b/a/b/a/a/l;->j:Lcom/igexin/b/a/b/b;

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/l;->i:Lcom/igexin/b/a/b/a/a/o;

    iput-object p3, p0, Lcom/igexin/b/a/b/a/a/l;->N:Lcom/igexin/b/a/b/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/b/a/a/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/l;->L:Lcom/igexin/b/a/b/a/a/a/b;

    return-void
.end method

.method public final b()I
    .registers 2

    const/16 v0, -0x7f3

    return v0
.end method

.method public b_()V
    .registers 6

    invoke-super {p0}, Lcom/igexin/b/a/b/a/a/a;->b_()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GS-R|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_20
    :goto_20
    iget-boolean v1, p0, Lcom/igexin/b/a/b/a/a/l;->h:Z

    if-eqz v1, :cond_67

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_67

    iget-boolean v1, p0, Lcom/igexin/b/a/b/a/a/l;->e:Z

    if-nez v1, :cond_67

    :try_start_2e
    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/l;->j:Lcom/igexin/b/a/b/b;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igexin/b/a/b/a/a/l;->N:Lcom/igexin/b/a/b/d;

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/l;->i:Lcom/igexin/b/a/b/a/a/o;

    invoke-virtual {v1, v2, v3, v4}, Lcom/igexin/b/a/b/b;->c(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/igexin/b/a/b/a/a/b;->a:Lcom/igexin/b/a/b/a/a/b;

    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/l;->f:Lcom/igexin/b/a/b/a/a/b;
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3d

    goto :goto_20

    :catchall_3d
    move-exception v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/igexin/b/a/b/a/a/l;->h:Z

    iget-object v2, p0, Lcom/igexin/b/a/b/a/a/l;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v3, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    if-eq v2, v3, :cond_20

    sget-object v2, Lcom/igexin/b/a/b/a/a/b;->b:Lcom/igexin/b/a/b/a/a/b;

    iput-object v2, p0, Lcom/igexin/b/a/b/a/a/l;->f:Lcom/igexin/b/a/b/a/a/b;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_60

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "read = -1, end of stream !"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string v1, "end of stream"

    goto :goto_64

    :cond_60
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_64
    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/l;->g:Ljava/lang/String;

    goto :goto_20

    :cond_67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/b/a/a/l;->e:Z

    const-string v0, "GS-R|finish ~~~~~~"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 4

    invoke-super {p0}, Lcom/igexin/b/a/b/a/a/a;->f()V

    const-string v0, "GS-R|rt dispose"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/l;->L:Lcom/igexin/b/a/b/a/a/a/b;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/l;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v1, Lcom/igexin/b/a/b/a/a/b;->b:Lcom/igexin/b/a/b/a/a/b;

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/l;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/l;->L:Lcom/igexin/b/a/b/a/a/a/b;

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/igexin/b/a/b/a/a/l;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/igexin/b/a/b/a/a/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_2c

    :cond_27
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/l;->L:Lcom/igexin/b/a/b/a/a/a/b;

    invoke-interface {v0, p0}, Lcom/igexin/b/a/b/a/a/a/b;->a(Lcom/igexin/b/a/b/e;)V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/l;->M:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/l;->M:[B

    :cond_33
    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/l;->L:Lcom/igexin/b/a/b/a/a/a/b;

    return-void
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/b/a/b/a/a/l;->h:Z

    sget-object v0, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/l;->f:Lcom/igexin/b/a/b/a/a/b;

    return-void
.end method
