###### Class com.igexin.push.e.c.a (com.igexin.push.e.c.a)
.class public Lcom/igexin/push/e/c/a;
.super Lcom/igexin/push/e/c/e;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/e/c/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/e/c/a;->f:I

    iput v0, p0, Lcom/igexin/push/e/c/a;->g:I

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/igexin/push/e/c/a;->e:Ljava/lang/String;

    const/16 v0, 0x1c

    iput v0, p0, Lcom/igexin/push/e/c/a;->i:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/e/c/a;->f:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/e/c/a;->f:I

    return-void
.end method

.method public a([B)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->c([BI)I

    move-result v1

    iput v1, p0, Lcom/igexin/push/e/c/a;->a:I

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    const/16 v3, 0xc0

    and-int/2addr v2, v3

    iput v2, p0, Lcom/igexin/push/e/c/a;->b:I

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/igexin/push/e/c/a;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/push/e/c/a;->e:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    :goto_19
    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v2, v4

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_29

    shl-int/lit8 v2, v2, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_29
    add-int/lit8 v1, v1, 0x1

    if-lez v2, :cond_44

    iget v4, p0, Lcom/igexin/push/e/c/a;->b:I

    if-ne v4, v3, :cond_39

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/igexin/push/e/c/a;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    :cond_39
    :try_start_39
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/e/c/a;->e:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/igexin/push/e/c/a;->c:Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    nop

    :cond_44
    :goto_44
    add-int/2addr v1, v2

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    if-le v2, v1, :cond_57

    :try_start_4e
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/e/c/a;->e:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/push/e/c/a;->d:Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/e/c/a;->g:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/e/c/a;->g:I

    return v0
.end method

.method public d()[B
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/e/c/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/push/e/c/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/igexin/push/e/c/a;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget v2, p0, Lcom/igexin/push/e/c/a;->b:I

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/igexin/push/e/c/a;->c:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    goto :goto_2c

    :cond_20
    iget-object v2, p0, Lcom/igexin/push/e/c/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/e/c/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_2c

    :cond_2b
    move-object v2, v0

    :goto_2c
    const/4 v3, 0x0

    if-nez v2, :cond_31

    const/4 v4, 0x0

    goto :goto_32

    :cond_31
    array-length v4, v2

    :goto_32
    invoke-static {v4}, Lcom/igexin/b/a/b/f;->a(I)[B

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v0, v6, [B

    iget v6, p0, Lcom/igexin/push/e/c/a;->a:I

    invoke-static {v6, v0, v3}, Lcom/igexin/b/a/b/f;->b(I[BI)I

    move-result v6

    iget v7, p0, Lcom/igexin/push/e/c/a;->b:I

    iget-object v8, p0, Lcom/igexin/push/e/c/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/igexin/push/e/c/a;->a(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v7, v8

    invoke-static {v7, v0, v6}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v7

    add-int/2addr v6, v7

    array-length v7, v5

    invoke-static {v5, v3, v0, v6, v7}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v5

    add-int/2addr v6, v5

    if-lez v4, :cond_5f

    invoke-static {v2, v3, v0, v6, v4}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v2

    add-int/2addr v6, v2

    :cond_5f
    array-length v2, v1

    invoke-static {v2, v0, v6}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v2

    add-int/2addr v6, v2

    array-length v2, v1

    invoke-static {v1, v3, v0, v6, v2}, Lcom/igexin/b/a/b/f;->a([BI[BII)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_69} :catch_69

    :catch_69
    return-object v0
.end method
