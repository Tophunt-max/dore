###### Class com.igexin.push.c.b (com.igexin.push.c.b)
.class Lcom/igexin/push/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/igexin/push/c/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/igexin/push/c/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/c/b;->a:Lcom/igexin/push/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/push/c/j;Lcom/igexin/push/c/j;)I
    .registers 5

    invoke-virtual {p1}, Lcom/igexin/push/c/j;->e()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/igexin/push/c/j;->e()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/igexin/push/c/j;

    check-cast p2, Lcom/igexin/push/c/j;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/c/b;->a(Lcom/igexin/push/c/j;Lcom/igexin/push/c/j;)I

    move-result p1

    return p1
.end method
