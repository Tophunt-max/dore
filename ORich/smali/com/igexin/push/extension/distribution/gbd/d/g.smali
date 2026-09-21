###### Class com.igexin.push.extension.distribution.gbd.d.g (com.igexin.push.extension.distribution.gbd.d.g)
.class Lcom/igexin/push/extension/distribution/gbd/d/g;
.super Lcom/igexin/push/g/b/h;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/d/d;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/d/d;J)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/d/g;->a:Lcom/igexin/push/extension/distribution/gbd/d/d;

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/g/b/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/g;->l:Ljava/lang/String;

    const-string v1, "gbd guard task init"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/d/h;

    invoke-direct {v1, p0}, Lcom/igexin/push/extension/distribution/gbd/d/h;-><init>(Lcom/igexin/push/extension/distribution/gbd/d/g;)V

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/d/a;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/d/i;

    invoke-direct {v1, p0}, Lcom/igexin/push/extension/distribution/gbd/d/i;-><init>(Lcom/igexin/push/extension/distribution/gbd/d/g;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/d/a;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/i;->b()V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/g;->a:Lcom/igexin/push/extension/distribution/gbd/d/d;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->d(Lcom/igexin/push/extension/distribution/gbd/d/d;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_32
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
