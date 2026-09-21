###### Class com.igexin.push.e.c.q (com.igexin.push.e.c.q)
.class public Lcom/igexin/push/e/c/q;
.super Lcom/igexin/push/e/c/e;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/e/c/e;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/push/e/c/q;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/e/c/q;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/e/c/q;->d:Ljava/lang/String;

    const/16 v0, 0x9

    iput v0, p0, Lcom/igexin/push/e/c/q;->i:I

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
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->e([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/e/c/q;->a:J

    array-length v0, p1

    const/16 v1, 0x8

    if-le v0, v1, :cond_1e

    const/16 v0, 0x9

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_1c

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/e/c/q;->a([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igexin/push/e/c/q;->b:Ljava/lang/String;

    add-int/2addr v1, v0

    goto :goto_1e

    :cond_1c
    const/16 v1, 0x9

    :cond_1e
    :goto_1e
    array-length v0, p1

    if-le v0, v1, :cond_32

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_31

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/e/c/q;->a([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/igexin/push/e/c/q;->c:Ljava/lang/String;

    add-int/2addr v1, v0

    goto :goto_32

    :cond_31
    move v1, v0

    :cond_32
    :goto_32
    array-length v0, p1

    if-le v0, v1, :cond_43

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_43

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/e/c/q;->a([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/e/c/q;->d:Ljava/lang/String;

    :cond_43
    return-void
.end method

.method public d()[B
    .registers 10

    iget-object v0, p0, Lcom/igexin/push/e/c/q;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/igexin/push/e/c/q;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/igexin/push/e/c/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v4, p0, Lcom/igexin/push/e/c/q;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/igexin/push/e/c/q;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v0

    add-int/2addr v6, v2

    array-length v7, v4

    add-int/2addr v6, v7

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x3

    new-array v6, v6, [B

    iget-wide v7, p0, Lcom/igexin/push/e/c/q;->a:J

    invoke-static {v7, v8, v6, v3}, Lcom/igexin/b/a/b/f;->a(J[BI)I

    array-length v7, v0

    invoke-static {v7, v6, v2}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    array-length v2, v0

    invoke-static {v0, v3, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v1, v0

    array-length v0, v4

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v6, v1}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    array-length v0, v4

    invoke-static {v4, v3, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v4

    add-int/2addr v2, v0

    array-length v0, v5

    add-int/lit8 v1, v2, 0x1

    invoke-static {v0, v6, v2}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    array-length v0, v5

    invoke-static {v5, v3, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_70

    :cond_57
    iget-object v0, p0, Lcom/igexin/push/e/c/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v6, v4, [B

    iget-wide v4, p0, Lcom/igexin/push/e/c/q;->a:J

    invoke-static {v4, v5, v6, v3}, Lcom/igexin/b/a/b/f;->a(J[BI)I

    array-length v4, v0

    invoke-static {v4, v6, v2}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    array-length v2, v0

    invoke-static {v0, v3, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_70
    return-object v6
.end method
