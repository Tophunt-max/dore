###### Class com.igexin.push.extension.distribution.gbd.e.a.e (com.igexin.push.extension.distribution.gbd.e.a.e)
.class Lcom/igexin/push/extension/distribution/gbd/e/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/extension/distribution/gbd/f/c;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/e/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/e;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    instance-of v0, p1, Lcom/igexin/push/extension/distribution/gbd/b/b;

    if-eqz v0, :cond_3b

    check-cast p1, Lcom/igexin/push/extension/distribution/gbd/b/b;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/b;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/b;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_37

    if-nez v1, :cond_3b

    const-string v1, "GBD_RALDataManager"

    if-eqz v0, :cond_20

    :try_start_1a
    const-string p1, "instant bir report s."

    :goto_1c
    invoke-static {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_20
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/extension/distribution/gbd/b/i;

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/e;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->b()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b(Ljava/lang/String;I)V

    const-string p1, "instant bir report f, insert ral."
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_37

    goto :goto_1c

    :catchall_37
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    return-void
.end method
