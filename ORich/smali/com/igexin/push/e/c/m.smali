###### Class com.igexin.push.e.c.m (com.igexin.push.e.c.m)
.class public Lcom/igexin/push/e/c/m;
.super Lcom/igexin/push/e/c/e;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/e/c/e;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/igexin/push/e/c/m;->i:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 7

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit8 v2, v1, 0x40

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    iput-boolean v2, p0, Lcom/igexin/push/e/c/m;->a:Z

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    iput-boolean v0, p0, Lcom/igexin/push/e/c/m;->b:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0, v1}, Lcom/igexin/push/e/c/m;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/e/c/m;->c:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/igexin/b/a/b/f;->c([BI)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    add-int/2addr v3, v1

    :try_start_23
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/igexin/push/e/c/m;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/igexin/push/e/c/m;->d:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    nop

    :cond_2f
    :goto_2f
    array-length v0, p1

    if-le v0, v3, :cond_4e

    invoke-static {p1, v3}, Lcom/igexin/b/a/b/f;->e([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/e/c/m;->e:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LoginResult|session = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/igexin/push/e/c/m;->e:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

.method public d()[B
    .registers 7

    iget-boolean v0, p0, Lcom/igexin/push/e/c/m;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/16 v0, 0x40

    int-to-byte v0, v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-boolean v2, p0, Lcom/igexin/push/e/c/m;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    const/4 v2, 0x3

    :try_start_13
    iget-object v4, p0, Lcom/igexin/push/e/c/m;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/igexin/push/e/c/m;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1e

    add-int/2addr v2, v4

    goto :goto_1f

    :catch_1e
    const/4 v4, 0x0

    :goto_1f
    iget-object v5, p0, Lcom/igexin/push/e/c/m;->c:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/igexin/push/e/c/m;->a(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v0, v5

    int-to-byte v0, v0

    goto :goto_2a

    :cond_28
    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_2a
    add-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    invoke-static {v0, v2, v1}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v0

    iget-boolean v5, p0, Lcom/igexin/push/e/c/m;->b:Z

    if-eqz v5, :cond_41

    invoke-static {v4, v2, v0}, Lcom/igexin/b/a/b/f;->b(I[BI)I

    move-result v0

    if-eqz v3, :cond_41

    invoke-static {v3, v1, v2, v0, v4}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    add-int/2addr v0, v1

    :cond_41
    iget-wide v3, p0, Lcom/igexin/push/e/c/m;->e:J

    invoke-static {v3, v4, v2, v0}, Lcom/igexin/b/a/b/f;->a(J[BI)I

    return-object v2
.end method
