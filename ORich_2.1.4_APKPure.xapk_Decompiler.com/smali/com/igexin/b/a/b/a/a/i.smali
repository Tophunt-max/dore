###### Class com.igexin.b.a.b.a.a.i (com.igexin.b.a.b.a.a.i)
.class Lcom/igexin/b/a/b/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/b/a/b/a/a/a/c;


# instance fields
.field final synthetic a:Lcom/igexin/b/a/b/a/a/f;


# direct methods
.method constructor <init>(Lcom/igexin/b/a/b/a/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/i;->a:Lcom/igexin/b/a/b/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/b/a/a/m;)V
    .registers 3

    invoke-static {}, Lcom/igexin/push/util/p;->d()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/i;->a:Lcom/igexin/b/a/b/a/a/f;

    invoke-static {v0, p1}, Lcom/igexin/b/a/b/a/a/f;->a(Lcom/igexin/b/a/b/a/a/f;Lcom/igexin/b/a/b/a/a/m;)V

    :cond_b
    return-void
.end method

.method public a(Lcom/igexin/b/a/b/e;)V
    .registers 3

    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/i;->a:Lcom/igexin/b/a/b/a/a/f;

    invoke-static {p1}, Lcom/igexin/b/a/b/a/a/f;->a(Lcom/igexin/b/a/b/a/a/f;)Landroid/os/Handler;

    move-result-object p1

    sget-object v0, Lcom/igexin/b/a/b/a/a/q;->f:Lcom/igexin/b/a/b/a/a/q;

    invoke-virtual {v0}, Lcom/igexin/b/a/b/a/a/q;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GS-M|w ex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/i;->a:Lcom/igexin/b/a/b/a/a/f;

    invoke-static {p1}, Lcom/igexin/b/a/b/a/a/f;->b(Lcom/igexin/b/a/b/a/a/f;)V

    return-void
.end method
