###### Class com.igexin.b.a.b.a.a.a (com.igexin.b.a.b.a.a.a)
.class public abstract Lcom/igexin/b/a/b/a/a/a;
.super Lcom/igexin/b/a/b/e;


# instance fields
.field protected volatile e:Z

.field protected volatile f:Lcom/igexin/b/a/b/a/a/b;

.field protected g:Ljava/lang/String;

.field protected volatile h:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/igexin/b/a/b/b;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/b/a/b/e;-><init>(ILjava/lang/String;Lcom/igexin/b/a/b/b;)V

    sget-object p1, Lcom/igexin/b/a/b/a/a/b;->a:Lcom/igexin/b/a/b/a/a/b;

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/a;->f:Lcom/igexin/b/a/b/a/a/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igexin/b/a/b/a/a/a;->h:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/b/a/b/e;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/b/a/a/a;->n:Z

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method protected i()Z
    .registers 3

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/a;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v1, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
