###### Class com.igexin.push.extension.distribution.gbd.a.b.q (com.igexin.push.extension.distribution.gbd.a.b.q)
.class Lcom/igexin/push/extension/distribution/gbd/a/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/b/p;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "datetime"

    const-string v1, "srvName"

    const-string v2, "pkgName"

    :try_start_6
    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v3, v3, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v3, v3, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v3, v3, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v3, v3, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d0

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v3, v3, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d0

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v3, v3, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v4, v4, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v4, v4, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget v3, v3, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->b:I

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v4, v4, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v1, v3, v0, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "GBD_GTT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gbd guard success type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget v3, v3, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/q;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    iget-object v3, v3, Lcom/igexin/push/extension/distribution/gbd/a/b/p;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_6 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_d0
    :goto_d0
    return-void
.end method
