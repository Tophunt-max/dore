###### Class com.igexin.push.core.b.b (com.igexin.push.core.b.b)
.class Lcom/igexin/push/core/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/igexin/push/core/bean/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/igexin/push/core/b/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/b/b;->a:Lcom/igexin/push/core/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/push/core/bean/o;Lcom/igexin/push/core/bean/o;)I
    .registers 5

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/o;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/o;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/igexin/push/core/bean/o;

    check-cast p2, Lcom/igexin/push/core/bean/o;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/core/b/b;->a(Lcom/igexin/push/core/bean/o;Lcom/igexin/push/core/bean/o;)I

    move-result p1

    return p1
.end method
