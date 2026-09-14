###### Class com.igexin.push.core.e.b (com.igexin.push.core.e.b)
.class Lcom/igexin/push/core/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/igexin/push/core/e/e;

.field final synthetic c:Lcom/igexin/push/core/e/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/e/a;Landroid/content/Context;Lcom/igexin/push/core/e/e;)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/core/e/b;->c:Lcom/igexin/push/core/e/a;

    iput-object p2, p0, Lcom/igexin/push/core/e/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/igexin/push/core/e/b;->b:Lcom/igexin/push/core/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/core/e/b;->c:Lcom/igexin/push/core/e/a;

    iget-object v1, p0, Lcom/igexin/push/core/e/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/igexin/push/core/e/a;->a(Lcom/igexin/push/core/e/a;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igexin/push/core/e/b;->b:Lcom/igexin/push/core/e/e;

    invoke-static {}, Lcom/igexin/push/core/e/a;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/igexin/push/core/e/b;->c:Lcom/igexin/push/core/e/a;

    invoke-static {v2}, Lcom/igexin/push/core/e/a;->a(Lcom/igexin/push/core/e/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/push/core/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/igexin/push/core/e/e;->a(ZLjava/lang/String;)V

    return-void
.end method
