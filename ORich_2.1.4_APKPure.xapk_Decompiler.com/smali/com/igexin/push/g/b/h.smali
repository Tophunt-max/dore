###### Class com.igexin.push.g.b.h (com.igexin.push.g.b.h)
.class public abstract Lcom/igexin/push/g/b/h;
.super Lcom/igexin/b/a/d/e;


# instance fields
.field d:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/igexin/push/g/b/h;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 8

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_b

    goto :goto_11

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    add-long/2addr p3, p1

    :goto_11
    iput-wide p3, p0, Lcom/igexin/push/g/b/h;->d:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p3, p4, p1}, Lcom/igexin/push/g/b/h;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final b_()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->b_()V

    invoke-virtual {p0}, Lcom/igexin/push/g/b/h;->a()V

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method
