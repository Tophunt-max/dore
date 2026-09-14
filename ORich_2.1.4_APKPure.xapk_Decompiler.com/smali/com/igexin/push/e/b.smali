###### Class com.igexin.push.e.b (com.igexin.push.e.b)
.class public Lcom/igexin/push/e/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:J

.field private f:I

.field private g:J

.field private h:Lcom/igexin/push/e/d;

.field private i:Lcom/igexin/push/e/i;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/igexin/push/config/k;->G:I

    iput v0, p0, Lcom/igexin/push/e/b;->a:I

    sget v0, Lcom/igexin/push/config/k;->I:I

    iput v0, p0, Lcom/igexin/push/e/b;->b:I

    new-instance v0, Lcom/igexin/push/e/f;

    invoke-direct {v0}, Lcom/igexin/push/e/f;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/b;->i:Lcom/igexin/push/e/i;

    invoke-static {}, Lcom/igexin/push/util/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/igexin/push/e/d;->a:Lcom/igexin/push/e/d;

    goto :goto_1d

    :cond_1b
    sget-object v0, Lcom/igexin/push/e/d;->b:Lcom/igexin/push/e/d;

    :goto_1d
    iput-object v0, p0, Lcom/igexin/push/e/b;->h:Lcom/igexin/push/e/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/push/e/c;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/e/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/e/b;
    .registers 1

    invoke-static {}, Lcom/igexin/push/e/e;->a()Lcom/igexin/push/e/b;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 5

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.igexin.sdk.action.polling"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_21

    :catchall_21
    return-void
.end method

.method private h()V
    .registers 3

    const-string v0, "ConnectModelCoordinator|reset current model = normal"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/e/b;->i:Lcom/igexin/push/e/i;

    if-eqz v0, :cond_14

    instance-of v0, v0, Lcom/igexin/push/e/f;

    if-nez v0, :cond_14

    new-instance v0, Lcom/igexin/push/e/f;

    invoke-direct {v0}, Lcom/igexin/push/e/f;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/b;->i:Lcom/igexin/push/e/i;

    :cond_14
    invoke-static {}, Lcom/igexin/push/g/b/e;->i()Lcom/igexin/push/g/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/g/b/e;->k()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/e/b;->f:I

    iput v0, p0, Lcom/igexin/push/e/b;->d:I

    iput-boolean v0, p0, Lcom/igexin/push/e/b;->c:Z

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-boolean v1, p0, Lcom/igexin/push/e/b;->c:Z

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/h;->b(Z)Z

    return-void
.end method

.method private i()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/push/e/b;->a(I)V

    return-void
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igexin/push/e/b;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/igexin/push/e/b;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectModelCoordinator|init, current is polling model = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    invoke-static {}, Lcom/igexin/push/g/b/e;->i()Lcom/igexin/push/g/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/g/b/e;->j()V

    :cond_1f
    return-void
.end method

.method public declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/igexin/push/util/a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/igexin/push/e/d;->a:Lcom/igexin/push/e/d;

    goto :goto_c

    :cond_a
    sget-object v0, Lcom/igexin/push/e/d;->b:Lcom/igexin/push/e/d;

    :goto_c
    iget-object v1, p0, Lcom/igexin/push/e/b;->h:Lcom/igexin/push/e/d;

    if-eq v0, v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectModelCoordinator|net type changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/igexin/push/e/b;->h:Lcom/igexin/push/e/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/e/b;->h()V

    iput-object v0, p0, Lcom/igexin/push/e/b;->h:Lcom/igexin/push/e/d;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/igexin/push/e/i;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/e/b;->i:Lcom/igexin/push/e/i;

    return-object v0
.end method

.method public declared-synchronized d()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/igexin/push/e/b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_68

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/e/b;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-lez v4, :cond_66

    const-wide/32 v2, 0x30d40

    cmp-long v4, v0, v2

    if-gez v4, :cond_66

    iget v2, p0, Lcom/igexin/push/e/b;->d:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/igexin/push/e/b;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectModelCoordinator|read len = -1, interval = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", disconnect ="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/igexin/push/e/b;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/igexin/push/e/b;->d:I

    iget v1, p0, Lcom/igexin/push/e/b;->a:I

    if-lt v0, v1, :cond_66

    const-string v0, "ConnectModelCoordinator|enter polling mode ####"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/e/b;->i()V

    iput-boolean v3, p0, Lcom/igexin/push/e/b;->c:Z

    new-instance v0, Lcom/igexin/push/e/g;

    invoke-direct {v0}, Lcom/igexin/push/e/g;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/b;->i:Lcom/igexin/push/e/i;

    invoke-static {}, Lcom/igexin/push/g/b/e;->i()Lcom/igexin/push/g/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/g/b/e;->j()V

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-boolean v1, p0, Lcom/igexin/push/e/b;->c:Z

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/h;->b(Z)Z
    :try_end_66
    .catchall {:try_start_7 .. :try_end_66} :catchall_68

    :cond_66
    monitor-exit p0

    return-void

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/igexin/push/e/b;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4e

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/e/b;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_46

    iget v0, p0, Lcom/igexin/push/e/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/push/e/b;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectModelCoordinator|polling mode, cur hearbeat ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/igexin/push/e/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/igexin/push/e/b;->f:I

    iget v1, p0, Lcom/igexin/push/e/b;->b:I

    if-lt v0, v1, :cond_46

    const-string v0, "ConnectModelCoordinator|enter normal mode ####"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/e/b;->j()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igexin/push/core/f;->D:J

    invoke-direct {p0}, Lcom/igexin/push/e/b;->h()V

    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/e/b;->g:J
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return-void

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/e/b;->e:J

    iget-boolean v0, p0, Lcom/igexin/push/e/b;->c:Z

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/igexin/push/e/g;

    invoke-direct {v0}, Lcom/igexin/push/e/g;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/b;->i:Lcom/igexin/push/e/i;

    invoke-static {}, Lcom/igexin/push/g/b/e;->i()Lcom/igexin/push/g/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/g/b/e;->j()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/e/b;->f:I

    :cond_1b
    return-void
.end method

.method public g()V
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/e/b;->c:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/igexin/push/e/b;->i:Lcom/igexin/push/e/i;

    if-eqz v0, :cond_13

    instance-of v0, v0, Lcom/igexin/push/e/f;

    if-nez v0, :cond_13

    new-instance v0, Lcom/igexin/push/e/f;

    invoke-direct {v0}, Lcom/igexin/push/e/f;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/e/b;->i:Lcom/igexin/push/e/i;

    :cond_13
    return-void
.end method
