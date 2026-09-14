###### Class com.igexin.push.d.b (com.igexin.push.d.b)
.class Lcom/igexin/push/d/b;
.super Lcom/igexin/push/g/b/h;


# instance fields
.field final synthetic a:Lcom/igexin/push/d/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/d/a;J)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/d/b;->a:Lcom/igexin/push/d/a;

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/g/b/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    const-string v0, " activityName = "

    const-string v1, "com.igexin.sdk.GActivity"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/igexin/push/d/b;->a:Lcom/igexin/push/d/a;

    invoke-static {v4}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/d/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/igexin/push/d/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|startActivity success pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/igexin/push/d/b;->a:Lcom/igexin/push/d/a;

    invoke-static {v4}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/d/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_44

    goto :goto_76

    :catch_44
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/igexin/push/d/b;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|startActivity exception pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/igexin/push/d/b;->a:Lcom/igexin/push/d/a;

    invoke-static {v5}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/d/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_76
    if-nez v2, :cond_89

    iget-object v0, p0, Lcom/igexin/push/d/b;->a:Lcom/igexin/push/d/a;

    invoke-static {v0}, Lcom/igexin/push/d/a;->b(Lcom/igexin/push/d/a;)Lcom/igexin/push/d/d;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/igexin/push/d/b;->a:Lcom/igexin/push/d/a;

    invoke-static {v0}, Lcom/igexin/push/d/a;->b(Lcom/igexin/push/d/a;)Lcom/igexin/push/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/igexin/push/d/d;->a()V

    :cond_89
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
