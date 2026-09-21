###### Class com.igexin.push.e.c.o (com.igexin.push.e.c.o)
.class public Lcom/igexin/push/e/c/o;
.super Lcom/igexin/push/e/c/e;


# static fields
.field private static final m:Ljava/lang/String; = "com.igexin.push.e.c.o"


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
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/e/c/e;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/igexin/push/e/c/o;->h:Ljava/lang/String;

    const/16 v0, 0x1a

    iput v0, p0, Lcom/igexin/push/e/c/o;->i:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->c([BI)I

    move-result v1

    iput v1, p0, Lcom/igexin/push/e/c/o;->a:I

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    const/16 v3, 0xc0

    and-int/2addr v2, v3

    iput v2, p0, Lcom/igexin/push/e/c/o;->b:I

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/igexin/push/e/c/o;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/push/e/c/o;->h:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/igexin/b/a/b/f;->e([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/igexin/push/e/c/o;->c:J

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc

    :try_start_26
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/igexin/push/e/c/o;->h:Ljava/lang/String;

    invoke-direct {v4, p1, v2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, p0, Lcom/igexin/push/e/c/o;->d:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    const-string v4, ""

    iput-object v4, p0, Lcom/igexin/push/e/c/o;->d:Ljava/lang/String;

    :goto_34
    add-int/2addr v2, v1

    const/4 v1, 0x0

    :goto_36
    aget-byte v4, p1, v2

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v1, v4

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_46

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_46
    add-int/lit8 v2, v2, 0x1

    if-lez v1, :cond_5f

    iget v4, p0, Lcom/igexin/push/e/c/o;->b:I

    if-ne v4, v3, :cond_56

    new-array v3, v1, [B

    iput-object v3, p0, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5f

    :cond_56
    :try_start_56
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/push/e/c/o;->h:Ljava/lang/String;

    invoke-direct {v3, p1, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_5f

    :catch_5f
    :cond_5f
    :goto_5f
    add-int/2addr v2, v1

    const/4 v1, 0x0

    :goto_61
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v1, v3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_71

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_71
    add-int/lit8 v2, v2, 0x1

    if-lez v1, :cond_7c

    new-array v3, v1, [B

    iput-object v3, p0, Lcom/igexin/push/e/c/o;->f:Ljava/lang/Object;

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7c
    add-int/2addr v2, v1

    array-length v0, p1

    if-le v0, v2, :cond_8f

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    :try_start_86
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/e/c/o;->h:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/push/e/c/o;->g:Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8f} :catch_8f

    :catch_8f
    :cond_8f
    return-void
.end method

.method public final a()Z
    .registers 3

    iget v0, p0, Lcom/igexin/push/e/c/o;->b:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final c()V
    .registers 2

    const/16 v0, 0x80

    iput v0, p0, Lcom/igexin/push/e/c/o;->b:I

    return-void
.end method

.method public d()[B
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/e/c/o;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/push/e/c/o;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/push/e/c/o;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/e/c/o;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    iget v3, p0, Lcom/igexin/push/e/c/o;->b:I

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_28

    iget-object v3, p0, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    goto :goto_34

    :cond_28
    iget-object v3, p0, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/push/e/c/o;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_34

    :cond_33
    move-object v3, v0

    :goto_34
    iget-object v4, p0, Lcom/igexin/push/e/c/o;->f:Ljava/lang/Object;

    if-eqz v4, :cond_3d

    check-cast v4, [B

    check-cast v4, [B

    goto :goto_3e

    :cond_3d
    move-object v4, v0

    :goto_3e
    const/4 v5, 0x0

    if-nez v3, :cond_43

    const/4 v6, 0x0

    goto :goto_44

    :cond_43
    array-length v6, v3

    :goto_44
    if-nez v4, :cond_48

    const/4 v7, 0x0

    goto :goto_49

    :cond_48
    array-length v7, v4

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

    array-length v11, v2

    add-int/2addr v10, v11

    new-array v0, v10, [B

    iget v10, p0, Lcom/igexin/push/e/c/o;->a:I

    invoke-static {v10, v0, v5}, Lcom/igexin/b/a/b/f;->b(I[BI)I

    move-result v10

    iget v11, p0, Lcom/igexin/push/e/c/o;->b:I

    iget-object v12, p0, Lcom/igexin/push/e/c/o;->h:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/igexin/push/e/c/o;->a(Ljava/lang/String;)I

    move-result v12

    or-int/2addr v11, v12

    invoke-static {v11, v0, v10}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v11

    add-int/2addr v10, v11

    iget-wide v11, p0, Lcom/igexin/push/e/c/o;->c:J

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

    invoke-static {v3, v5, v0, v10, v6}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v10, v1

    :cond_92
    array-length v1, v9

    invoke-static {v9, v5, v0, v10, v1}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v10, v1

    if-lez v7, :cond_9f

    invoke-static {v4, v5, v0, v10, v7}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v10, v1

    :cond_9f
    array-length v1, v2

    invoke-static {v1, v0, v10}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v1

    add-int/2addr v10, v1

    array-length v1, v2

    invoke-static {v2, v5, v0, v10, v1}, Lcom/igexin/b/a/b/f;->a([BI[BII)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a9} :catch_a9

    :catch_a9
    return-object v0
.end method
