###### Class com.igexin.push.extension.distribution.gbd.d.j (com.igexin.push.extension.distribution.gbd.d.j)
.class Lcom/igexin/push/extension/distribution/gbd/d/j;
.super Lcom/igexin/push/g/b/h;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/d/d;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/d/d;J)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/d/j;->a:Lcom/igexin/push/extension/distribution/gbd/d/d;

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/g/b/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/j;->l:Ljava/lang/String;

    const-string v1, "gbd config task init"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->e()Lcom/igexin/push/extension/distribution/gbd/h/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->c()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->b()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/j;->a:Lcom/igexin/push/extension/distribution/gbd/d/d;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/d/d;->e(Lcom/igexin/push/extension/distribution/gbd/d/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->a(J)V

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->a()V

    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->as:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->y:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5e

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->f(J)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/f/a;

    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/f/a/c;

    invoke-direct {v2}, Lcom/igexin/push/extension/distribution/gbd/f/a/c;-><init>()V

    invoke-direct {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/f/a;-><init>(Lcom/igexin/push/extension/distribution/gbd/f/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z
    :try_end_59
    .catchall {:try_start_0 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
