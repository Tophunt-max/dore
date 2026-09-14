###### Class com.igexin.push.a.a.a (com.igexin.push.a.a.a)
.class public Lcom/igexin/push/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/g/b/d;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/a/a/a;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget v1, Lcom/igexin/push/core/b;->l:I

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/e;->a(Landroid/os/Message;)Z

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/a/a/a;->a:J

    return-void
.end method

.method public b()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/a/a/a;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x57e40

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
