###### Class com.igexin.b.a.d.b (com.igexin.b.a.d.b)
.class public abstract Lcom/igexin/b/a/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/b/a/d/a/f;


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/d/b;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/b/a/d/b;->a:Z

    return-void
.end method

.method public a(JLcom/igexin/b/a/d/e;)Z
    .registers 8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p3, Lcom/igexin/b/a/d/e;->y:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v2, p3, Lcom/igexin/b/a/d/e;->w:J

    sub-long/2addr p1, v2

    cmp-long p3, v0, p1

    if-gez p3, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public b(JLcom/igexin/b/a/d/e;)J
    .registers 8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p3, Lcom/igexin/b/a/d/e;->y:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v2, p3, Lcom/igexin/b/a/d/e;->w:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    return-wide v0
.end method
