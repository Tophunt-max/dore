###### Class com.igexin.push.e.c.l (com.igexin.push.e.c.l)
.class public Lcom/igexin/push/e/c/l;
.super Lcom/igexin/push/e/c/e;


# instance fields
.field public a:B

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/e/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 2

    return-void
.end method

.method public d()[B
    .registers 7

    iget-byte v0, p0, Lcom/igexin/push/e/c/l;->a:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_10

    :goto_7
    iget-object v0, p0, Lcom/igexin/push/e/c/l;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1c

    :cond_10
    if-ne v0, v3, :cond_13

    goto :goto_7

    :cond_13
    const/4 v4, 0x3

    if-ne v0, v4, :cond_17

    goto :goto_1b

    :cond_17
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1b

    goto :goto_7

    :cond_1b
    :goto_1b
    move-object v0, v2

    :goto_1c
    if-eqz v0, :cond_2f

    array-length v2, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    iget-byte v4, p0, Lcom/igexin/push/e/c/l;->a:B

    const/4 v5, 0x0

    aput-byte v4, v2, v5

    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    array-length v1, v0

    invoke-static {v0, v5, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    return-object v2
.end method
