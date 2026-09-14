###### Class com.igexin.push.g.b.c (com.igexin.push.g.b.c)
.class public Lcom/igexin/push/g/b/c;
.super Lcom/igexin/push/g/b/h;


# static fields
.field private static a:Lcom/igexin/push/g/b/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-static {}, Lcom/igexin/push/core/j;->a()Lcom/igexin/push/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/j;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/g/b/c;->o:Z

    return-void
.end method

.method public static i()Lcom/igexin/push/g/b/c;
    .registers 1

    sget-object v0, Lcom/igexin/push/g/b/c;->a:Lcom/igexin/push/g/b/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/g/b/c;

    invoke-direct {v0}, Lcom/igexin/push/g/b/c;-><init>()V

    sput-object v0, Lcom/igexin/push/g/b/c;->a:Lcom/igexin/push/g/b/c;

    :cond_b
    sget-object v0, Lcom/igexin/push/g/b/c;->a:Lcom/igexin/push/g/b/c;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->k()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/push/core/f;->E:J

    sget-boolean v0, Lcom/igexin/push/core/f;->l:Z

    if-eqz v0, :cond_22

    const-string v0, "heartbeatReq"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->h()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->b()V

    goto :goto_2a

    :cond_22
    const-string v0, "HeartBeatTimerTask doTaskMethod isOnline = false, refresh wait time !!!!!!"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/push/g/b/c;->j()V

    :goto_2a
    return-void
.end method

.method public final b()I
    .registers 2

    const v0, -0x7ffffffa

    return v0
.end method

.method public c()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/push/g/b/h;->c()V

    iget-boolean v0, p0, Lcom/igexin/push/g/b/c;->k:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/igexin/push/g/b/c;->j()V

    :cond_a
    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public j()V
    .registers 4

    invoke-static {}, Lcom/igexin/push/core/j;->a()Lcom/igexin/push/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/j;->b()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/g/b/c;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method public k()V
    .registers 1

    return-void
.end method
