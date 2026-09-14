###### Class com.igexin.push.f.a (com.igexin.push.f.a)
.class public Lcom/igexin/push/f/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "com.igexin.push.f.a"


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|call setActive, param active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; this.active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/igexin/push/f/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/igexin/push/f/a;->b:Z

    if-eq v0, p1, :cond_60

    iput-boolean p1, p0, Lcom/igexin/push/f/a;->b:Z

    if-eqz p1, :cond_45

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|active = true, start connect~~~~"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/push/f/a;->e()V

    goto :goto_8b

    :cond_45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|active = false, disconnect..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/igexin/push/f/a;->a(Z)V

    goto :goto_8b

    :cond_60
    if-eqz v0, :cond_8b

    sget-boolean p1, Lcom/igexin/push/core/f;->l:Z

    if-nez p1, :cond_8b

    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    const-wide/16 v2, 0x5dc

    cmp-long p1, v0, v2

    if-lez p1, :cond_8b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|start active again, online = false, reset delay"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igexin/push/core/f;->D:J

    invoke-virtual {p0}, Lcom/igexin/push/f/a;->d()V

    :cond_8b
    :goto_8b
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/igexin/push/e/c/e;)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;Z)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/igexin/push/e/c/e;Z)I
    .registers 12

    if-eqz p1, :cond_82

    if-nez p2, :cond_6

    goto/16 :goto_82

    :cond_6
    sget-boolean p1, Lcom/igexin/push/core/f;->l:Z

    if-nez p1, :cond_34

    instance-of p1, p2, Lcom/igexin/push/e/c/i;

    if-nez p1, :cond_34

    instance-of p1, p2, Lcom/igexin/push/e/c/k;

    if-nez p1, :cond_34

    instance-of p1, p2, Lcom/igexin/push/e/c/f;

    if-nez p1, :cond_34

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "networkLayer|sendData|not online|"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1

    :cond_34
    iget-boolean p1, p0, Lcom/igexin/push/f/a;->b:Z

    if-eqz p1, :cond_80

    const/4 p1, -0x2

    if-eqz p3, :cond_66

    const/16 p3, 0xa

    sget v0, Lcom/igexin/push/config/k;->e:I

    if-lez v0, :cond_45

    sget p3, Lcom/igexin/push/config/k;->e:I

    move v6, p3

    goto :goto_47

    :cond_45
    const/16 v6, 0xa

    :goto_47
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getCmAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/igexin/push/core/e;->f()Lcom/igexin/b/a/b/b;

    move-result-object v3

    const/4 v5, 0x1

    new-instance v7, Lcom/igexin/push/e/h;

    invoke-direct {v7}, Lcom/igexin/push/e/h;-><init>()V

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/String;ILcom/igexin/b/a/b/b;Ljava/lang/Object;ZILcom/igexin/b/a/d/a/f;)Lcom/igexin/b/a/b/e;

    move-result-object p2

    if-nez p2, :cond_80

    return p1

    :cond_66
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getCmAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/igexin/push/core/e;->f()Lcom/igexin/b/a/b/b;

    move-result-object v3

    const/4 v5, 0x1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/String;ILcom/igexin/b/a/b/b;Ljava/lang/Object;Z)Lcom/igexin/b/a/b/e;

    move-result-object p2

    if-nez p2, :cond_80

    return p1

    :cond_80
    const/4 p1, 0x0

    return p1

    :cond_82
    :goto_82
    const/4 p1, -0x1

    return p1
.end method

.method public a(Lcom/igexin/b/a/b/a/a/q;)V
    .registers 3

    sget-object v0, Lcom/igexin/b/a/b/a/a/q;->a:Lcom/igexin/b/a/b/a/a/q;

    if-ne p1, v0, :cond_18

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/e/b/b;

    invoke-direct {v0}, Lcom/igexin/push/e/b/b;-><init>()V

    :goto_d
    invoke-virtual {p1, v0}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/c;->c()V

    goto :goto_26

    :cond_18
    sget-object v0, Lcom/igexin/b/a/b/a/a/q;->b:Lcom/igexin/b/a/b/a/a/q;

    if-ne p1, v0, :cond_26

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/e/b/a;

    invoke-direct {v0}, Lcom/igexin/push/e/b/a;-><init>()V

    goto :goto_d

    :cond_26
    :goto_26
    return-void
.end method

.method public a(Lcom/igexin/push/e/c/e;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/e/c/e;)Z

    return-void
.end method

.method public a(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|call -> disconnect, reset delay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igexin/push/core/f;->D:J

    :cond_1f
    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/a/a/f;->c()V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/f/a;->b:Z

    return v0
.end method

.method public b()V
    .registers 5

    sget-boolean v0, Lcom/igexin/push/core/f;->i:Z

    sget-boolean v1, Lcom/igexin/push/core/f;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/igexin/push/util/a;->a(J)Z

    move-result v2

    invoke-static {}, Lcom/igexin/push/util/a;->b()Z

    move-result v3

    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    if-nez v2, :cond_1c

    if-eqz v3, :cond_1c

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igexin/push/f/a;->b(Z)V

    :cond_1c
    return-void
.end method

.method public c()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|stop by user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/push/f/a;->b(Z)V

    sget-boolean v1, Lcom/igexin/push/core/f;->l:Z

    if-eqz v1, :cond_27

    sput-boolean v0, Lcom/igexin/push/core/f;->l:Z

    invoke-static {}, Lcom/igexin/push/core/a;->a()Lcom/igexin/push/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a;->b()V

    :cond_27
    return-void
.end method

.method public d()V
    .registers 3

    invoke-static {}, Lcom/igexin/push/e/b;->a()Lcom/igexin/push/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/e/b;->c()Lcom/igexin/push/e/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/igexin/push/e/i;->a()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/push/core/f;->D:J

    invoke-static {}, Lcom/igexin/push/g/b/g;->i()Lcom/igexin/push/g/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/g/b/g;->j()V

    return-void
.end method

.method public e()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|call -> tryConnect and reset delay = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igexin/push/f/a;->a(Z)V

    return-void
.end method

.method public f()V
    .registers 4

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/i;->d()Lcom/igexin/push/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/a;->c()V

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/i;->d()Lcom/igexin/push/c/a;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/j;->a()Lcom/igexin/push/core/j;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/l;->c:Lcom/igexin/push/core/l;

    invoke-virtual {v1, v2}, Lcom/igexin/push/core/j;->a(Lcom/igexin/push/core/l;)V

    invoke-virtual {v0}, Lcom/igexin/push/c/a;->i()V

    invoke-virtual {p0}, Lcom/igexin/push/f/a;->h()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|sdkOn = false or pushOn = false, disconect|user"

    goto :goto_3e

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|disconnect by network"

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    const-class v1, Lcom/igexin/b/a/b/a/a/m;

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Class;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igexin/push/f/a;->a(Z)V

    return-void
.end method

.method public g()V
    .registers 3

    const/4 v0, -0x1

    sput v0, Lcom/igexin/push/e/a/b;->b:I

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->isLoadSuccess()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/igexin/push/core/f;->ay:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/igexin/push/f/a;->d()V

    goto :goto_34

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|initSuccess = false"

    goto :goto_2a

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|so error ++++++++"

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method public h()Z
    .registers 2

    sget-boolean v0, Lcom/igexin/push/core/f;->i:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/igexin/push/core/f;->j:Z

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public i()V
    .registers 4

    invoke-static {}, Lcom/igexin/push/core/j;->a()Lcom/igexin/push/core/j;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/l;->d:Lcom/igexin/push/core/l;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/j;->a(Lcom/igexin/push/core/l;)V

    invoke-static {}, Lcom/igexin/push/util/a;->g()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|network changed, available = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", last = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/igexin/push/core/f;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/e/b;->a()Lcom/igexin/push/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/e/b;->b()V

    if-nez v0, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|network changed, available = false, do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_6d

    :cond_50
    sget-boolean v1, Lcom/igexin/push/core/f;->h:Z

    if-nez v1, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/f/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|network changed, try connect reset delay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/push/f/a;->e()V

    :cond_6d
    :goto_6d
    if-eqz v0, :cond_76

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/c/i;->c()V

    :cond_76
    sput-boolean v0, Lcom/igexin/push/core/f;->h:Z

    return-void
.end method
