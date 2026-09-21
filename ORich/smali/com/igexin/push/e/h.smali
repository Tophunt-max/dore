###### Class com.igexin.push.e.h (com.igexin.push.e.h)
.class public Lcom/igexin/push/e/h;
.super Lcom/igexin/b/a/d/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/b/a/d/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/e/h;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/b/a/d/b;->a()V

    return-void
.end method

.method public a(Lcom/igexin/b/a/d/e;)V
    .registers 2

    sget-boolean p1, Lcom/igexin/push/core/f;->l:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/igexin/push/g/b/c;->i()Lcom/igexin/push/g/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/g/b/c;->k()V

    :cond_b
    invoke-virtual {p0}, Lcom/igexin/push/e/h;->a()V

    return-void
.end method
