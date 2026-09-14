###### Class com.igexin.push.extension.distribution.gbd.e.a.c (com.igexin.push.extension.distribution.gbd.e.a.c)
.class Lcom/igexin/push/extension/distribution/gbd/e/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/igexin/push/extension/distribution/gbd/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/e/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/c;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/push/extension/distribution/gbd/b/i;Lcom/igexin/push/extension/distribution/gbd/b/i;)I
    .registers 5

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->e()I

    move-result v0

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->e()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->e()I

    move-result p1

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->e()I

    move-result p2

    if-le p1, p2, :cond_18

    const/4 p1, -0x1

    return p1

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/igexin/push/extension/distribution/gbd/b/i;

    check-cast p2, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/c;->a(Lcom/igexin/push/extension/distribution/gbd/b/i;Lcom/igexin/push/extension/distribution/gbd/b/i;)I

    move-result p1

    return p1
.end method
