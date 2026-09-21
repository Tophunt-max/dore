###### Class com.igexin.push.g.b.a (com.igexin.push.g.b.a)
.class public Lcom/igexin/push/g/b/a;
.super Lcom/igexin/push/g/b/h;


# static fields
.field private static b:Lcom/igexin/push/g/b/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/push/g/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    const-wide/32 v0, 0xea60

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/g/b/a;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/g/b/a;->a:Ljava/util/List;

    return-void
.end method

.method public static i()Lcom/igexin/push/g/b/a;
    .registers 1

    sget-object v0, Lcom/igexin/push/g/b/a;->b:Lcom/igexin/push/g/b/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/g/b/a;

    invoke-direct {v0}, Lcom/igexin/push/g/b/a;-><init>()V

    sput-object v0, Lcom/igexin/push/g/b/a;->b:Lcom/igexin/push/g/b/a;

    :cond_b
    sget-object v0, Lcom/igexin/push/g/b/a;->b:Lcom/igexin/push/g/b/a;

    return-object v0
.end method

.method private j()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x57e40

    invoke-virtual {p0, v1, v2, v0}, Lcom/igexin/push/g/b/a;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->k()V

    iget-object v0, p0, Lcom/igexin/push/g/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/g/b/d;

    invoke-interface {v1}, Lcom/igexin/push/g/b/d;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Lcom/igexin/push/g/b/d;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/igexin/push/g/b/d;->a(J)V

    goto :goto_d

    :cond_2a
    invoke-direct {p0}, Lcom/igexin/push/g/b/a;->j()V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/igexin/push/g/b/d;)Z
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/g/b/a;->a:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/igexin/push/g/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
