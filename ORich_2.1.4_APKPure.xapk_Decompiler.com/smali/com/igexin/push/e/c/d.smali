###### Class com.igexin.push.e.c.d (com.igexin.push.e.c.d)
.class public Lcom/igexin/push/e/c/d;
.super Lcom/igexin/push/e/c/e;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/e/c/e;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/push/e/c/d;->g:Ljava/lang/String;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/igexin/push/e/c/d;->h:Ljava/lang/String;

    const/16 v0, 0x19

    iput v0, p0, Lcom/igexin/push/e/c/d;->i:I

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/igexin/push/e/c/d;->j:B

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/16 v0, 0x80

    iput v0, p0, Lcom/igexin/push/e/c/d;->b:I

    return-void
.end method

.method public a([B)V
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->c([BI)I

    move-result v1

    iput v1, p0, Lcom/igexin/push/e/c/d;->a:I

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    const/16 v3, 0xc0

    and-int/2addr v2, v3

    iput v2, p0, Lcom/igexin/push/e/c/d;->b:I

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/igexin/push/e/c/d;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/push/e/c/d;->h:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/igexin/b/a/b/f;->e([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/igexin/push/e/c/d;->c:J

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc

    :try_start_26
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/igexin/push/e/c/d;->h:Ljava/lang/String;

    invoke-direct {v4, p1, v2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, p0, Lcom/igexin/push/e/c/d;->d:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_2f

    :catch_2f
    add-int/2addr v2, v1

    const/4 v1, 0x0

    :goto_31
    aget-byte v4, p1, v2

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v1, v4

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_41

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_41
    add-int/lit8 v2, v2, 0x1

    if-lez v1, :cond_5a

    iget v4, p0, Lcom/igexin/push/e/c/d;->b:I

    if-ne v4, v3, :cond_51

    new-array v3, v1, [B

    iput-object v3, p0, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5a

    :cond_51
    :try_start_51
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/push/e/c/d;->h:Ljava/lang/String;

    invoke-direct {v3, p1, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_5a

    :catch_5a
    :cond_5a
    :goto_5a
    add-int/2addr v2, v1

    const/4 v1, 0x0

    :goto_5c
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v1, v3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6c

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    if-lez v1, :cond_77

    new-array v3, v1, [B

    iput-object v3, p0, Lcom/igexin/push/e/c/d;->f:Ljava/lang/Object;

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_77
    add-int/2addr v2, v1

    array-length v0, p1

    if-le v0, v2, :cond_8a

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    :try_start_81
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/e/c/d;->h:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/push/e/c/d;->g:Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8a} :catch_8a

    :catch_8a
    :cond_8a
    return-void
.end method

.method public d()[B
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/e/c/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/push/e/c/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget v2, p0, Lcom/igexin/push/e/c/d;->b:I

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    goto :goto_2c

    :cond_20
    iget-object v2, p0, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/e/c/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_2c

    :cond_2b
    move-object v2, v0

    :goto_2c
    iget-object v3, p0, Lcom/igexin/push/e/c/d;->f:Ljava/lang/Object;

    if-eqz v3, :cond_35

    check-cast v3, [B

    check-cast v3, [B

    goto :goto_36

    :cond_35
    move-object v3, v0

    :goto_36
    iget-object v4, p0, Lcom/igexin/push/e/c/d;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/igexin/push/e/c/d;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_43

    const/4 v6, 0x0

    goto :goto_44

    :cond_43
    array-length v6, v2

    :goto_44
    if-nez v3, :cond_48

    const/4 v7, 0x0

    goto :goto_49

    :cond_48
    array-length v7, v3

    :goto_49
    invoke-static {v6}, Lcom/igexin/b/a/b/f;->a(I)[B

    move-result-object v8

    invoke-static {v7}, Lcom/igexin/b/a/b/f;->a(I)[B

    move-result-object v9

    array-length v10, v1

    add-int/lit8 v10, v10, 0xd

    array-length v11, v8

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    array-length v11, v9

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    array-length v11, v4

    add-int/2addr v10, v11

    new-array v0, v10, [B

    iget v10, p0, Lcom/igexin/push/e/c/d;->a:I

    invoke-static {v10, v0, v5}, Lcom/igexin/b/a/b/f;->b(I[BI)I

    move-result v10

    iget v11, p0, Lcom/igexin/push/e/c/d;->b:I

    iget-object v12, p0, Lcom/igexin/push/e/c/d;->h:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/igexin/push/e/c/d;->a(Ljava/lang/String;)I

    move-result v12

    or-int/2addr v11, v12

    invoke-static {v11, v0, v10}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v11

    add-int/2addr v10, v11

    iget-wide v11, p0, Lcom/igexin/push/e/c/d;->c:J

    invoke-static {v11, v12, v0, v10}, Lcom/igexin/b/a/b/f;->a(J[BI)I

    move-result v11

    add-int/2addr v10, v11

    array-length v11, v1

    invoke-static {v11, v0, v10}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v11

    add-int/2addr v10, v11

    array-length v11, v1

    invoke-static {v1, v5, v0, v10, v11}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v10, v1

    array-length v1, v8

    invoke-static {v8, v5, v0, v10, v1}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v10, v1

    if-lez v6, :cond_92

    invoke-static {v2, v5, v0, v10, v6}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v10, v1

    :cond_92
    array-length v1, v9

    invoke-static {v9, v5, v0, v10, v1}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v10, v1

    if-lez v7, :cond_9f

    invoke-static {v3, v5, v0, v10, v7}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v10, v1

    :cond_9f
    array-length v1, v4

    invoke-static {v1, v0, v10}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v1

    add-int/2addr v10, v1

    array-length v1, v4

    invoke-static {v4, v5, v0, v10, v1}, Lcom/igexin/b/a/b/f;->a([BI[BII)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a9} :catch_aa

    goto :goto_ab

    :catch_aa
    nop

    :goto_ab
    if-eqz v0, :cond_b9

    array-length v1, v0

    const/16 v2, 0x200

    if-lt v1, v2, :cond_b9

    iget-byte v1, p0, Lcom/igexin/push/e/c/d;->j:B

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/igexin/push/e/c/d;->j:B

    :cond_b9
    return-object v0
.end method
