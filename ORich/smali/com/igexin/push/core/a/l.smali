###### Class com.igexin.push.core.a.l (com.igexin.push.core.a.l)
.class public Lcom/igexin/push/core/a/l;
.super Lcom/igexin/push/core/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    return-void
.end method

.method private b()V
    .registers 3

    invoke-static {}, Lcom/igexin/push/e/b;->a()Lcom/igexin/push/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->f()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginRsp|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCidBroadcasted|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/igexin/push/core/f;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/igexin/push/core/f;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_46

    invoke-static {}, Lcom/igexin/push/core/a;->a()Lcom/igexin/push/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a;->c()V

    sput-boolean v1, Lcom/igexin/push/core/f;->m:Z

    :cond_46
    sput-boolean v1, Lcom/igexin/push/core/f;->l:Z

    invoke-static {}, Lcom/igexin/push/core/a;->a()Lcom/igexin/push/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a;->b()V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->d()V

    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "LoginResultAction device id is empty, get device id from server +++++"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->e()V

    :cond_6a
    invoke-static {}, Lcom/igexin/push/util/g;->f()V

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/util/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-direct {p0}, Lcom/igexin/push/core/a/l;->e()V

    :cond_78
    invoke-virtual {p0}, Lcom/igexin/push/core/a/l;->a()V

    invoke-direct {p0}, Lcom/igexin/push/core/a/l;->d()V

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/c/h;->b()V

    invoke-direct {p0}, Lcom/igexin/push/core/a/l;->f()V

    invoke-direct {p0}, Lcom/igexin/push/core/a/l;->g()V

    invoke-direct {p0}, Lcom/igexin/push/core/a/l;->h()V

    return-void
.end method

.method private c()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginRsp|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-string v0, "LoginResultAction login failed, clear session or cid"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/c/h;->c()Z

    invoke-static {}, Lcom/igexin/push/core/p;->a()Lcom/igexin/push/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/p;->c()V

    return-void
.end method

.method private d()V
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/f;->I:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_28

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/g/a/c;

    new-instance v2, Lcom/igexin/push/core/d/f;

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getConfigServiceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/igexin/push/core/d/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/igexin/push/g/a/c;-><init>(Lcom/igexin/push/g/a/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_28

    :catch_28
    :cond_28
    return-void
.end method

.method private e()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/f;->G:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_24

    sget-boolean v0, Lcom/igexin/push/config/k;->g:Z

    if-nez v0, :cond_16

    goto :goto_24

    :cond_16
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/a/n;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/a/n;-><init>(Lcom/igexin/push/core/a/l;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    :cond_24
    :goto_24
    return-void
.end method

.method private f()V
    .registers 3

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/core/f;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/f;->t:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method private g()V
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/f;->K:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_3c

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/c/h;->g(J)Z

    invoke-static {}, Lcom/igexin/push/core/c/aj;->a()Lcom/igexin/push/core/c/aj;

    move-result-object v0

    const-string v1, "21"

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/aj;->b(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    goto :goto_3c

    :catchall_23
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginResultAction|report third party guard exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private h()V
    .registers 5

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/assist/sdk/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/a/o;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/a/o;-><init>(Lcom/igexin/push/core/a/l;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/f;->F:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    sget-object v1, Lcom/igexin/push/core/f;->z:Ljava/lang/String;

    sget-object v3, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v2

    sget-object v3, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    sget-object v4, Lcom/igexin/push/core/f;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-nez v0, :cond_2d

    if-nez v1, :cond_2d

    if-eqz v2, :cond_5b

    :cond_2d
    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/igexin/push/core/f;->ap:Lcom/igexin/push/g/b/h;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/igexin/push/core/f;->ap:Lcom/igexin/push/g/b/h;

    invoke-virtual {v0}, Lcom/igexin/push/g/b/h;->t()V

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/core/f;->ap:Lcom/igexin/push/g/b/h;

    :cond_41
    new-instance v0, Lcom/igexin/push/core/a/m;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, p0, v1, v2}, Lcom/igexin/push/core/a/m;-><init>(Lcom/igexin/push/core/a/l;J)V

    sput-object v0, Lcom/igexin/push/core/f;->ap:Lcom/igexin/push/g/b/h;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->ap:Lcom/igexin/push/g/b/h;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/e;->a(Lcom/igexin/push/g/b/h;)Z

    goto :goto_5b

    :cond_54
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->f()V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public a(Lcom/igexin/b/a/d/e;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/igexin/push/e/c/m;

    if-eqz v0, :cond_24

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igexin/push/core/f;->D:J

    sget-boolean v0, Lcom/igexin/push/core/f;->l:Z

    if-nez v0, :cond_24

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/i;->d()Lcom/igexin/push/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/a;->h()V

    check-cast p1, Lcom/igexin/push/e/c/m;

    iget-boolean p1, p1, Lcom/igexin/push/e/c/m;->a:Z

    if-eqz p1, :cond_21

    invoke-direct {p0}, Lcom/igexin/push/core/a/l;->b()V

    goto :goto_24

    :cond_21
    invoke-direct {p0}, Lcom/igexin/push/core/a/l;->c()V

    :cond_24
    :goto_24
    const/4 p1, 0x1

    return p1
.end method
