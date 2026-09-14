###### Class com.igexin.b.a.b.a.a.m (com.igexin.b.a.b.a.a.m)
.class public final Lcom/igexin/b/a/b/a/a/m;
.super Lcom/igexin/b/a/b/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/igexin/b/a/b/b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/igexin/b/a/b/e;-><init>(Ljava/lang/String;Lcom/igexin/b/a/b/b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igexin/b/a/b/a/a/m;->r:Z

    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/igexin/b/a/b/a/a/f;->a(Lcom/igexin/b/a/b/b;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    const/16 v0, -0x7f2

    return v0
.end method

.method public b_()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/b/a/b/e;->b_()V

    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/igexin/b/a/b/a/a/f;->a(Lcom/igexin/b/a/b/a/a/m;)V

    return-void
.end method

.method public final d()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/b/a/b/e;->d()V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/m;->c:Ljava/lang/Object;

    instance-of v0, v0, Lcom/igexin/push/e/c/i;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/a/a/f;->d()V

    :cond_10
    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/b/a/b/e;->f()V

    return-void
.end method
