###### Class com.igexin.push.e.f (com.igexin.push.e.f)
.class public Lcom/igexin/push/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/e/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 8

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

    const-string v3, "NormalModel|isSdkOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/igexin/push/core/f;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isPushOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/igexin/push/core/f;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " checkIsSilentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isBlockEndTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isNetworkAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/igexin/push/core/f;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-boolean v2, Lcom/igexin/push/core/f;->h:Z

    const-wide/32 v3, 0x36ee80

    if-eqz v2, :cond_a9

    sget-boolean v2, Lcom/igexin/push/core/f;->i:Z

    if-eqz v2, :cond_a9

    sget-boolean v2, Lcom/igexin/push/core/f;->j:Z

    if-eqz v2, :cond_a9

    if-nez v0, :cond_a9

    if-nez v1, :cond_60

    goto :goto_a9

    :cond_60
    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-gtz v2, :cond_6d

    const-wide/16 v0, 0x64

    :goto_6a
    sput-wide v0, Lcom/igexin/push/core/f;->D:J

    goto :goto_8a

    :cond_6d
    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    const-wide/16 v5, 0x2710

    cmp-long v2, v0, v5

    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    if-gtz v2, :cond_7b

    const-wide/16 v5, 0x1f4

    :goto_79
    add-long/2addr v0, v5

    goto :goto_6a

    :cond_7b
    const-wide/16 v5, 0x7530

    cmp-long v2, v0, v5

    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    if-gtz v2, :cond_86

    const-wide/16 v5, 0x5dc

    goto :goto_79

    :cond_86
    const-wide/32 v5, 0x1d4c0

    goto :goto_79

    :goto_8a
    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    cmp-long v2, v0, v3

    if-lez v2, :cond_92

    sput-wide v3, Lcom/igexin/push/core/f;->D:J

    :cond_92
    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NormalModel|after add auto reconnect delay time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-wide v0

    :cond_a9
    :goto_a9
    const-string v0, "NormalModel|reconnect stop, interval= 1h ++++"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-wide v3
.end method
