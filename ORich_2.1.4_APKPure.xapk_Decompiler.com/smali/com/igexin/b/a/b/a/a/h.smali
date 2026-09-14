###### Class com.igexin.b.a.b.a.a.h (com.igexin.b.a.b.a.a.h)
.class Lcom/igexin/b/a/b/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/b/a/b/a/a/a/b;


# instance fields
.field final synthetic a:Lcom/igexin/b/a/b/a/a/f;


# direct methods
.method constructor <init>(Lcom/igexin/b/a/b/a/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/h;->a:Lcom/igexin/b/a/b/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/b/e;)V
    .registers 3

    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/h;->a:Lcom/igexin/b/a/b/a/a/f;

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

    const-string v1, "GS-M|r ex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "end of stream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-static {}, Lcom/igexin/push/e/b;->a()Lcom/igexin/push/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/e/b;->d()V

    :cond_31
    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/h;->a:Lcom/igexin/b/a/b/a/a/f;

    invoke-static {p1}, Lcom/igexin/b/a/b/a/a/f;->b(Lcom/igexin/b/a/b/a/a/f;)V

    return-void
.end method
