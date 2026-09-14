###### Class com.igexin.push.e.a (com.igexin.push.e.a)
.class public Lcom/igexin/push/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/b/a/d/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igexin/b/a/d/a/a<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/igexin/b/a/b/b;",
        "Lcom/igexin/b/a/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/e/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;Lcom/igexin/b/a/b/b;)Lcom/igexin/b/a/b/e;
    .registers 4

    const-string p2, "socket"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    sget-boolean p2, Lcom/igexin/push/core/f;->h:Z

    if-eqz p2, :cond_12

    new-instance p2, Lcom/igexin/b/a/b/a/a/m;

    invoke-direct {p2, p1, p3}, Lcom/igexin/b/a/b/a/a/m;-><init>(Ljava/lang/String;Lcom/igexin/b/a/b/b;)V

    return-object p2

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/igexin/b/a/d/e;
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lcom/igexin/b/a/b/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/e/a;->a(Ljava/lang/String;Ljava/lang/Integer;Lcom/igexin/b/a/b/b;)Lcom/igexin/b/a/b/e;

    move-result-object p1

    return-object p1
.end method
