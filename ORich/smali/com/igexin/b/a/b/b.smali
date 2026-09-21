###### Class com.igexin.b.a.b.b (com.igexin.b.a.b.b)
.class public abstract Lcom/igexin/b/a/b/b;
.super Ljava/lang/Object;


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:Lcom/igexin/b/a/b/b;

.field protected e:Lcom/igexin/b/a/b/b;

.field protected f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/b/a/b/b;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/igexin/b/a/b/b;->f:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected final a(Lcom/igexin/b/a/b/b;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/igexin/b/a/b/b;->d:Lcom/igexin/b/a/b/b;

    iput-object p0, p1, Lcom/igexin/b/a/b/b;->d:Lcom/igexin/b/a/b/b;

    iput-object p1, p0, Lcom/igexin/b/a/b/b;->e:Lcom/igexin/b/a/b/b;

    iput-object v0, p0, Lcom/igexin/b/a/b/b;->d:Lcom/igexin/b/a/b/b;

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/igexin/b/a/b/b;->f:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    :goto_7
    iget-object p1, p0, Lcom/igexin/b/a/b/b;->d:Lcom/igexin/b/a/b/b;

    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/igexin/b/a/b/b;->d:Lcom/igexin/b/a/b/b;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/igexin/b/a/b/b;->d:Lcom/igexin/b/a/b/b;

    iput-object v0, p0, Lcom/igexin/b/a/b/b;->d:Lcom/igexin/b/a/b/b;

    goto :goto_7

    :cond_13
    return-void
.end method

.method public abstract c(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final d(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "Nothing to encode!"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/igexin/b/a/b/b;->d:Lcom/igexin/b/a/b/b;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/b/a/b/b;->d(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/b/a/b/b;->a(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
