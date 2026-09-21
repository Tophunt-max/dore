###### Class com.igexin.push.e.c.e (com.igexin.push.e.c.e)
.class public abstract Lcom/igexin/push/e/c/e;
.super Lcom/igexin/b/a/d/a;


# instance fields
.field public i:I

.field public j:B

.field public k:B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/b/a/d/a;-><init>()V

    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/igexin/push/e/c/e;->k:B

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .registers 4

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "UTF-16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x2

    return p1

    :cond_14
    const-string v0, "UTF-16BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 p1, 0x10

    return p1

    :cond_1f
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 p1, 0x11

    return p1

    :cond_2a
    const-string v0, "GBK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 p1, 0x19

    return p1

    :cond_35
    const-string v0, "GB2312"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 p1, 0x1a

    return p1

    :cond_40
    const-string v0, "GB18030"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/16 p1, 0x1b

    return p1

    :cond_4b
    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/16 p1, 0x21

    return p1

    :cond_56
    return v1
.end method

.method protected a(B)Ljava/lang/String;
    .registers 4

    and-int/lit8 p1, p1, 0x3f

    const/4 v0, 0x1

    const-string v1, "UTF-8"

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x10

    if-eq p1, v0, :cond_29

    const/16 v0, 0x11

    if-eq p1, v0, :cond_26

    const/16 v0, 0x21

    if-eq p1, v0, :cond_23

    packed-switch p1, :pswitch_data_30

    goto :goto_2e

    :pswitch_1a
    const-string v1, "GB18030"

    goto :goto_2e

    :pswitch_1d
    const-string v1, "GB2312"

    goto :goto_2e

    :pswitch_20
    const-string v1, "GBK"

    goto :goto_2e

    :cond_23
    const-string v1, "ISO-8859-1"

    goto :goto_2e

    :cond_26
    const-string v1, "UTF-16LE"

    goto :goto_2e

    :cond_29
    const-string v1, "UTF-16BE"

    goto :goto_2e

    :cond_2c
    const-string v1, "UTF-16"

    :cond_2e
    :goto_2e
    return-object v1

    nop

    :pswitch_data_30
    .packed-switch 0x19
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public abstract a([B)V
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/e/c/e;->i:I

    return v0
.end method

.method public abstract d()[B
.end method
