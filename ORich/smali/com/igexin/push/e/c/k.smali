###### Class com.igexin.push.e.c.k (com.igexin.push.e.c.k)
.class public Lcom/igexin/push/e/c/k;
.super Lcom/igexin/push/e/c/e;


# instance fields
.field public a:J

.field public b:B

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/push/e/c/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/e/c/e;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/igexin/push/e/c/k;->i:I

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/igexin/push/e/c/k;->j:B

    return-void
.end method

.method private a([BII)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a([B)V
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->e([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/e/c/k;->a:J

    const/16 v0, 0x8

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/igexin/push/e/c/k;->b:B

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->d([BI)I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/igexin/push/e/c/k;->c:I

    array-length v0, p1

    const/16 v1, 0xd

    if-le v0, v1, :cond_63

    const/16 v0, 0xe

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_61

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/igexin/push/e/c/k;->e:Ljava/util/List;

    add-int/2addr v1, v0

    :goto_2c
    if-ge v0, v1, :cond_5f

    new-instance v2, Lcom/igexin/push/e/c/l;

    invoke-direct {v2}, Lcom/igexin/push/e/c/l;-><init>()V

    iget-object v3, p0, Lcom/igexin/push/e/c/k;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->a([BI)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v3, 0x1

    invoke-static {p1, v3}, Lcom/igexin/b/a/b/f;->a([BI)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v5, v0

    iput-byte v5, v2, Lcom/igexin/push/e/c/l;->a:B

    const/4 v5, 0x1

    if-eq v0, v5, :cond_51

    const/4 v5, 0x4

    if-ne v0, v5, :cond_5c

    :cond_51
    if-lez v3, :cond_5c

    :try_start_53
    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v0, p1, v4, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, v2, Lcom/igexin/push/e/c/l;->b:Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5c} :catch_5c

    :catch_5c
    :cond_5c
    add-int v0, v4, v3

    goto :goto_2c

    :cond_5f
    move v1, v0

    goto :goto_63

    :cond_61
    const/16 v1, 0xe

    :cond_63
    :goto_63
    array-length v0, p1

    if-le v0, v1, :cond_72

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/e/c/k;->a([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/e/c/k;->d:Ljava/lang/String;

    :cond_72
    return-void
.end method

.method public d()[B
    .registers 8

    iget-object v0, p0, Lcom/igexin/push/e/c/k;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/igexin/push/e/c/k;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/e/c/l;

    invoke-virtual {v3}, Lcom/igexin/push/e/c/l;->d()[B

    move-result-object v3

    :try_start_26
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_16

    :catch_2e
    nop

    goto :goto_16

    :cond_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    nop

    :cond_35
    :goto_35
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    array-length v3, v1

    add-int/lit8 v4, v3, 0x1

    goto :goto_3f

    :cond_3d
    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_3f
    add-int/lit8 v4, v4, 0xc

    iget-object v5, p0, Lcom/igexin/push/e/c/k;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    new-array v2, v4, [B

    iget-wide v4, p0, Lcom/igexin/push/e/c/k;->a:J

    invoke-static {v4, v5, v2, v0}, Lcom/igexin/b/a/b/f;->a(J[BI)I

    move-result v4

    iget-byte v5, p0, Lcom/igexin/push/e/c/k;->b:B

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    iget v6, p0, Lcom/igexin/push/e/c/k;->c:I

    or-int/2addr v5, v6

    invoke-static {v5, v2, v4}, Lcom/igexin/b/a/b/f;->a(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v2, v4}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    if-lez v3, :cond_6c

    invoke-static {v1, v0, v2, v4, v3}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v4, v1

    :cond_6c
    iget-object v1, p0, Lcom/igexin/push/e/c/k;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    array-length v3, v1

    invoke-static {v1, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    return-object v2
.end method
