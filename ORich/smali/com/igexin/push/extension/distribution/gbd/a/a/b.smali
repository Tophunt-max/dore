###### Class com.igexin.push.extension.distribution.gbd.a.a.b (com.igexin.push.extension.distribution.gbd.a.a.b)
.class Lcom/igexin/push/extension/distribution/gbd/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/extension/distribution/gbd/f/c;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/a/a/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/a/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_1b

    :try_start_2
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/a;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/a;->a(Z)V

    const-string v0, "GBD_RALA"

    const-string v1, "al d success."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/a/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/a/a;

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/a/a;->a(Lcom/igexin/push/extension/distribution/gbd/a/a/a;[B)V

    goto :goto_26

    :cond_1b
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/a/b;->a:Lcom/igexin/push/extension/distribution/gbd/a/a/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/a/a;->a(Lcom/igexin/push/extension/distribution/gbd/a/a/a;[B)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_26
    return-void
.end method
