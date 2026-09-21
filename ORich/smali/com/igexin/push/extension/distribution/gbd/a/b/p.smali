###### Class com.igexin.push.extension.distribution.gbd.a.b.p (com.igexin.push.extension.distribution.gbd.a.b.p)
.class final Lcom/igexin/push/extension/distribution/gbd/a/b/p;
.super Lcom/igexin/push/g/b/h;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(JLjava/util/Map;II)V
    .registers 6

    iput-object p3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    iput p4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->b:I

    iput p5, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->c:I

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/g/b/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    const-string v1, "checkList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_d

    return-void

    :cond_d
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_b6

    const-string v5, "pkgName"

    if-ge v3, v4, :cond_4d

    :try_start_2b
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_4d
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runing service = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/a/b/q;

    invoke-direct {v1, p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/q;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/b/p;)V

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/d/a;->post(Ljava/lang/Runnable;)Z

    goto :goto_ba

    :cond_7e
    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->c:I

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    iget v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/util/Map;II)V

    goto :goto_ba

    :cond_8b
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guard failed type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_2b .. :try_end_b5} :catchall_b6

    goto :goto_ba

    :catchall_b6
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_ba
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
