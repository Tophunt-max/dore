###### Class com.igexin.push.extension.distribution.gbd.h.a (com.igexin.push.extension.distribution.gbd.h.a)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/b/a/d/a/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/h/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/d/a/e;Lcom/igexin/b/a/d/f;)Z
    .registers 7

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/extension/distribution/gbd/h/b;

    instance-of v3, v1, Lcom/igexin/push/extension/distribution/gbd/h/a/f;

    if-nez v3, :cond_2a

    instance-of v3, v1, Lcom/igexin/push/extension/distribution/gbd/h/a/b;

    if-nez v3, :cond_2a

    instance-of v3, v1, Lcom/igexin/push/extension/distribution/gbd/h/a/i;

    if-nez v3, :cond_2a

    instance-of v3, v1, Lcom/igexin/push/extension/distribution/gbd/h/a/e;

    if-eqz v3, :cond_2b

    :cond_2a
    const/4 v2, 0x1

    :cond_2b
    if-nez v2, :cond_2f

    if-eqz p1, :cond_d

    :cond_2f
    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/h/b;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/h/b;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/h/b;->d()I

    move-result v2

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(I)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/h/b;->a(J)V

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/h/b;->a()V

    goto :goto_d

    :cond_50
    return v2
.end method

.method public a(Lcom/igexin/b/a/d/e;Lcom/igexin/b/a/d/f;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/igexin/push/extension/distribution/gbd/h/b;)Z
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public k()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public l()J
    .registers 3

    const-wide/32 v0, -0x67626

    return-wide v0
.end method
