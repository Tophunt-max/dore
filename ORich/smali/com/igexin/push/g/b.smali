###### Class com.igexin.push.g.b (com.igexin.push.g.b)
.class public abstract Lcom/igexin/push/g/b;
.super Lcom/igexin/b/a/d/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0x133a132

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public b()I
    .registers 2

    const v0, 0x133a132

    return v0
.end method

.method public b_()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->b_()V

    invoke-virtual {p0}, Lcom/igexin/push/g/b;->a()V

    return-void
.end method

.method public c()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->c()V

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/g/b;->n:Z

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method
