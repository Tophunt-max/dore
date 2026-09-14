###### Class com.igexin.push.g.b.e (com.igexin.push.g.b.e)
.class public Lcom/igexin/push/g/b/e;
.super Lcom/igexin/push/g/b/h;


# instance fields
.field private a:J

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/32 v0, 0x240c8400

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/g/b/h;-><init>(J)V

    sget-wide v0, Lcom/igexin/push/config/k;->H:J

    iput-wide v0, p0, Lcom/igexin/push/g/b/e;->a:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/push/g/b/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/g/b/e;->o:Z

    return-void
.end method

.method private a(J)V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lcom/igexin/push/g/b/e;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method public static i()Lcom/igexin/push/g/b/e;
    .registers 1

    invoke-static {}, Lcom/igexin/push/g/b/f;->a()Lcom/igexin/push/g/b/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 4

    iget-wide v0, p0, Lcom/igexin/push/g/b/e;->a:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/g/b/e;->a(JLjava/util/concurrent/TimeUnit;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/igexin/push/util/a;->a(J)Z

    move-result v0

    sget-boolean v1, Lcom/igexin/push/core/f;->l:Z

    if-nez v1, :cond_3f

    sget-boolean v1, Lcom/igexin/push/core/f;->h:Z

    if-eqz v1, :cond_3f

    sget-boolean v1, Lcom/igexin/push/core/f;->i:Z

    if-eqz v1, :cond_3f

    sget-boolean v1, Lcom/igexin/push/core/f;->j:Z

    if-eqz v1, :cond_3f

    if-nez v0, :cond_3f

    invoke-static {}, Lcom/igexin/push/util/a;->b()Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_3f

    :cond_28
    const-string v0, "PollingTimerTask|run = true"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/e/b;->a()Lcom/igexin/push/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->g()V

    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/igexin/push/core/f;->D:J

    invoke-static {}, Lcom/igexin/push/g/b/g;->i()Lcom/igexin/push/g/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/g/b/g;->j()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x133a075

    return v0
.end method

.method public j()V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/g/b/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    iget-object v0, p0, Lcom/igexin/push/g/b/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_16
    iget-wide v0, p0, Lcom/igexin/push/g/b/e;->a:J

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/g/b/e;->a(J)V

    return-void
.end method

.method public k()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x240c8400

    invoke-virtual {p0, v1, v2, v0}, Lcom/igexin/push/g/b/e;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method
