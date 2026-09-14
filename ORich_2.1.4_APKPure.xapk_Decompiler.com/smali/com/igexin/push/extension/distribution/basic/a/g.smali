###### Class com.igexin.push.extension.distribution.basic.a.g (com.igexin.push.extension.distribution.basic.a.g)
.class Lcom/igexin/push/extension/distribution/basic/a/g;
.super Lcom/igexin/push/g/b/h;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/igexin/push/extension/distribution/basic/a/f;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/basic/a/f;JLjava/util/Map;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->c:Lcom/igexin/push/extension/distribution/basic/a/f;

    iput-object p4, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->a:Ljava/util/Map;

    iput-object p5, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/g/b/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 11

    const-string v0, "serviceName"

    const-string v1, "pkgName"

    const-string v2, "#"

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->c:Lcom/igexin/push/extension/distribution/basic/a/f;

    iget-object v5, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->a:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/igexin/push/extension/distribution/basic/a/f;->a(Lcom/igexin/push/extension/distribution/basic/a/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/basic/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "1"

    :goto_61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_65
    const-string v0, "0"

    goto :goto_61

    :goto_68
    iget-object v4, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->c:Lcom/igexin/push/extension/distribution/basic/a/f;

    iget-object v5, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->a:Ljava/util/Map;

    const-string v1, "messageId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->a:Ljava/util/Map;

    const-string v1, "taskId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->a:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/igexin/push/extension/distribution/basic/a/f;->a(Lcom/igexin/push/extension/distribution/basic/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feedback actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b6} :catch_b6

    :catch_b6
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
