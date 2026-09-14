###### Class com.igexin.push.g.b.g (com.igexin.push.g.b.g)
.class public Lcom/igexin/push/g/b/g;
.super Lcom/igexin/push/g/b/h;


# static fields
.field private static a:Lcom/igexin/push/g/b/g;


# instance fields
.field private b:J

.field private c:J


# direct methods
.method private constructor <init>()V
    .registers 3

    const-wide/32 v0, 0x36ee80

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/g/b/g;->o:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/g/b/g;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/g/b/g;->c:J

    return-void
.end method

.method public static declared-synchronized i()Lcom/igexin/push/g/b/g;
    .registers 2

    const-class v0, Lcom/igexin/push/g/b/g;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/g/b/g;->a:Lcom/igexin/push/g/b/g;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/g/b/g;

    invoke-direct {v1}, Lcom/igexin/push/g/b/g;-><init>()V

    sput-object v1, Lcom/igexin/push/g/b/g;->a:Lcom/igexin/push/g/b/g;

    :cond_e
    sget-object v1, Lcom/igexin/push/g/b/g;->a:Lcom/igexin/push/g/b/g;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()V
    .registers 6

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->k()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/igexin/push/util/a;->a(J)Z

    move-result v0

    invoke-static {}, Lcom/igexin/push/util/a;->b()Z

    move-result v1

    invoke-static {}, Lcom/igexin/push/util/a;->g()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/core/f;->h:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTTask|networkAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/igexin/push/core/f;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",sdkOnline = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/igexin/push/core/f;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sdkOn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/igexin/push/core/f;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pushOn ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/igexin/push/core/f;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSilentTime= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", blockEndTime= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-boolean v2, Lcom/igexin/push/core/f;->h:Z

    if-eqz v2, :cond_de

    sget-boolean v2, Lcom/igexin/push/core/f;->i:Z

    if-eqz v2, :cond_de

    sget-boolean v2, Lcom/igexin/push/core/f;->j:Z

    if-eqz v2, :cond_de

    sget-boolean v2, Lcom/igexin/push/core/f;->l:Z

    if-nez v2, :cond_de

    if-nez v0, :cond_de

    if-nez v1, :cond_77

    goto :goto_de

    :cond_77
    invoke-static {}, Lcom/igexin/push/util/a;->h()Z

    move-result v0

    if-nez v0, :cond_93

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-wide/32 v0, 0xdbba0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/g/b/g;->a(JLjava/util/concurrent/TimeUnit;)I

    const-string v0, "RTTask|date is error, set connect interval = 15min"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_93
    const-string v0, "RTTask reconnect timer task isOnline = false, try login..."

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/g/b/g;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v4, v0, v2

    if-gez v4, :cond_ab

    sget v0, Lcom/igexin/push/core/f;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/push/core/f;->o:I

    :cond_ab
    sget v0, Lcom/igexin/push/core/f;->o:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_cd

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/g/b/g;->c:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x40f1940000000000L    # 72000.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_cd

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/c/h;->e()V

    :cond_cd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/g/b/g;->b:J

    invoke-static {}, Lcom/igexin/push/core/p;->a()Lcom/igexin/push/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/p;->b()I

    const-wide/32 v0, 0x1b7740

    goto :goto_e6

    :cond_de
    :goto_de
    const-string v0, "RTTask reconnect timer task stop, connect interval= 1h #######"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-wide/32 v0, 0x36ee80

    :goto_e6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/g/b/g;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/g/b/g;->c:J

    return-void
.end method

.method public final b()I
    .registers 2

    const v0, -0x7ffffff9

    return v0
.end method

.method public c()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/push/g/b/h;->c()V

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public j()V
    .registers 5

    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTTask|refreshDelayTime, delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/g/b/g;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method
