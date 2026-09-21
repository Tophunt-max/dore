###### Class com.igexin.push.extension.distribution.basic.h.a (com.igexin.push.extension.distribution.basic.h.a)
.class public Lcom/igexin/push/extension/distribution/basic/h/a;
.super Lcom/igexin/push/extension/distribution/basic/h/b;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/h/b;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/h/a;->a(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/d;->a()Lcom/igexin/push/extension/distribution/basic/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/c/d;->e()V

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/basic/h/a;->a:J

    return-void
.end method

.method public b()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/extension/distribution/basic/h/a;->a:J

    sub-long/2addr v0, v2

    sget v2, Lcom/igexin/push/extension/distribution/basic/c/g;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
