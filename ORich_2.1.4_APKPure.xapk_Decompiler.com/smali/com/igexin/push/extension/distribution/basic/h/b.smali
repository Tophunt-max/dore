###### Class com.igexin.push.extension.distribution.basic.h.b (com.igexin.push.extension.distribution.basic.h.b)
.class public abstract Lcom/igexin/push/extension/distribution/basic/h/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/basic/h/b;->a:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/basic/h/b;->b:J

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/basic/h/b;->a:J

    return-void
.end method

.method public b()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/extension/distribution/basic/h/b;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/igexin/push/extension/distribution/basic/h/b;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method
