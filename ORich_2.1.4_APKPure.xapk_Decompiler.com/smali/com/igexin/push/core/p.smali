###### Class com.igexin.push.core.p (com.igexin.push.core.p)
.class public Lcom/igexin/push/core/p;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/core/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/core/p;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/p;->a:Lcom/igexin/push/core/p;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/p;

    invoke-direct {v0}, Lcom/igexin/push/core/p;-><init>()V

    sput-object v0, Lcom/igexin/push/core/p;->a:Lcom/igexin/push/core/p;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/p;->a:Lcom/igexin/push/core/p;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igexin/push/e/c/l;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/util/p;->c(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    new-instance v2, Lcom/igexin/push/e/c/l;

    invoke-direct {v2}, Lcom/igexin/push/e/c/l;-><init>()V

    const/4 v3, 0x1

    iput-byte v3, v2, Lcom/igexin/push/e/c/l;->a:B

    iput-object v1, v2, Lcom/igexin/push/e/c/l;->b:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    new-instance v1, Lcom/igexin/push/e/c/l;

    invoke-direct {v1}, Lcom/igexin/push/e/c/l;-><init>()V

    const/4 v2, 0x4

    iput-byte v2, v1, Lcom/igexin/push/e/c/l;->a:B

    iput-object v0, v1, Lcom/igexin/push/e/c/l;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method private b(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/igexin/push/e/c/l;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    new-instance v1, Lcom/igexin/push/e/c/l;

    invoke-direct {v1}, Lcom/igexin/push/e/c/l;-><init>()V

    const/4 v2, 0x2

    iput-byte v2, v1, Lcom/igexin/push/e/c/l;->a:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/igexin/push/e/c/l;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return v0

    :catchall_28
    :cond_28
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public b()I
    .registers 5

    sget-boolean v0, Lcom/igexin/push/core/f;->i:Z

    if-eqz v0, :cond_36

    sget-boolean v0, Lcom/igexin/push/core/f;->j:Z

    if-eqz v0, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/igexin/push/util/a;->a(J)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {}, Lcom/igexin/push/util/a;->b()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_36

    :cond_19
    new-instance v0, Lcom/igexin/push/e/c/i;

    invoke-direct {v0}, Lcom/igexin/push/e/c/i;-><init>()V

    sget-object v1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/push/e/c/i;->a:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v1

    const-string v2, "K-"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;Z)I

    move-result v0

    if-gez v0, :cond_35

    const/4 v0, 0x0

    return v0

    :cond_35
    return v3

    :cond_36
    :goto_36
    const-string v0, "LoginInteractor|keyNegotiate stop ++++++++++"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public c()V
    .registers 8

    sget-boolean v0, Lcom/igexin/push/core/f;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    sput-boolean v1, Lcom/igexin/push/core/f;->k:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x36ee80

    mul-long v2, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    sput-wide v4, Lcom/igexin/push/core/f;->J:J

    :cond_23
    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/i;->d()Lcom/igexin/push/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/a;->g()V

    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_8b

    const-string v2, "registerReq #####"

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/igexin/push/e/c/f;

    sget-object v3, Lcom/igexin/push/core/f;->u:Ljava/lang/String;

    sget-object v4, Lcom/igexin/push/core/f;->v:Ljava/lang/String;

    sget-object v5, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    sget-object v6, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/igexin/push/e/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "R-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;Z)I

    move-result v2

    if-gez v2, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x1

    :goto_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReq|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_8b
    invoke-virtual {p0}, Lcom/igexin/push/core/p;->d()Lcom/igexin/push/e/c/k;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loginReqBefore|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/igexin/push/e/c/k;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/igexin/push/core/f;->r:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;Z)I

    move-result v2

    if-gez v2, :cond_cb

    goto :goto_cc

    :cond_cb
    const/4 v1, 0x1

    :goto_cc
    if-eqz v1, :cond_e4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginInteractor|loginReq|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_e4
    return-void
.end method

.method public d()Lcom/igexin/push/e/c/k;
    .registers 6

    new-instance v0, Lcom/igexin/push/e/c/k;

    invoke-direct {v0}, Lcom/igexin/push/e/c/k;-><init>()V

    sget-wide v1, Lcom/igexin/push/core/f;->r:J

    iput-wide v1, v0, Lcom/igexin/push/e/c/k;->a:J

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/igexin/push/e/c/k;->b:B

    const v1, 0xff00

    iput v1, v0, Lcom/igexin/push/e/c/k;->c:I

    sget-object v1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/push/e/c/k;->d:Ljava/lang/String;

    :try_start_15
    invoke-static {}, Lcom/igexin/push/util/a;->a()Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5b

    invoke-direct {p0, v2}, Lcom/igexin/push/core/p;->b(Ljava/util/List;)I

    move-result v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_5b

    :try_start_24
    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    new-instance v3, Lcom/igexin/push/e/c/l;

    invoke-direct {v3}, Lcom/igexin/push/e/c/l;-><init>()V

    const/4 v4, 0x2

    iput-byte v4, v3, Lcom/igexin/push/e/c/l;->a:B

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/igexin/push/e/c/l;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_4c

    goto :goto_4d

    :catchall_4c
    nop

    :cond_4d
    :goto_4d
    const/4 v3, 0x1

    if-ne v1, v3, :cond_53

    :try_start_50
    invoke-direct {p0, v2}, Lcom/igexin/push/core/p;->a(Ljava/util/List;)V

    :cond_53
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    iput-object v2, v0, Lcom/igexin/push/e/c/k;->e:Ljava/util/List;
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5b

    :catchall_5b
    :cond_5b
    return-object v0
.end method
