###### Class com.igexin.push.extension.distribution.gbd.e.a.d (com.igexin.push.extension.distribution.gbd.e.a.d)
.class Lcom/igexin/push/extension/distribution/gbd/e/a/d;
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

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/e/a/d;->a:Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/push/extension/distribution/gbd/b/i;Lcom/igexin/push/extension/distribution/gbd/b/i;)I
    .registers 8

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->d()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->d()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->d()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/gbd/b/i;->d()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_1c

    const/4 p1, -0x1

    return p1

    :cond_1c
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/igexin/push/extension/distribution/gbd/b/i;

    check-cast p2, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/d;->a(Lcom/igexin/push/extension/distribution/gbd/b/i;Lcom/igexin/push/extension/distribution/gbd/b/i;)I

    move-result p1

    return p1
.end method
