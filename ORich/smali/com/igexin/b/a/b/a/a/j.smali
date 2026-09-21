###### Class com.igexin.b.a.b.a.a.j (com.igexin.b.a.b.a.a.j)
.class Lcom/igexin/b/a/b/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/igexin/b/a/b/a/a/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/igexin/b/a/b/a/a/f;


# direct methods
.method constructor <init>(Lcom/igexin/b/a/b/a/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/j;->a:Lcom/igexin/b/a/b/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/b/a/a/m;Lcom/igexin/b/a/b/a/a/m;)I
    .registers 11

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, -0x1

    if-nez p2, :cond_8

    return v1

    :cond_8
    iget v2, p1, Lcom/igexin/b/a/b/a/a/m;->y:I

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/igexin/b/a/b/a/a/m;->w:J

    add-long/2addr v2, v4

    iget v4, p2, Lcom/igexin/b/a/b/a/a/m;->y:I

    int-to-long v4, v4

    iget-wide v6, p2, Lcom/igexin/b/a/b/a/a/m;->w:J

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_19

    goto :goto_2c

    :cond_19
    iget v0, p1, Lcom/igexin/b/a/b/a/a/m;->y:I

    int-to-long v2, v0

    iget-wide v4, p1, Lcom/igexin/b/a/b/a/a/m;->w:J

    add-long/2addr v2, v4

    iget p1, p2, Lcom/igexin/b/a/b/a/a/m;->y:I

    int-to-long v4, p1

    iget-wide p1, p2, Lcom/igexin/b/a/b/a/a/m;->w:J

    add-long/2addr v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_2b

    const/4 v0, -0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/igexin/b/a/b/a/a/m;

    check-cast p2, Lcom/igexin/b/a/b/a/a/m;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/b/a/b/a/a/j;->a(Lcom/igexin/b/a/b/a/a/m;Lcom/igexin/b/a/b/a/a/m;)I

    move-result p1

    return p1
.end method
