###### Class com.igexin.push.extension.distribution.gbd.i.ac (com.igexin.push.extension.distribution.gbd.i.ac)
.class public Lcom/igexin/push/extension/distribution/gbd/i/ac;
.super Ljava/lang/Object;


# direct methods
.method public static a([III)V
    .registers 5

    aget v0, p0, p1

    aget v1, p0, p2

    aput v1, p0, p1

    aput v0, p0, p2

    return-void
.end method

.method public static a([B)Z
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_1f

    const/16 v2, 0x100

    if-gt v0, v2, :cond_1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v2, v0, :cond_1d

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xe

    if-ne v4, v5, :cond_1a

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    if-le v3, v4, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method

.method public static a([BLjava/lang/String;)[B
    .registers 2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/ac;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[B)[B
    .registers 11

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/ac;->a([B)Z

    move-result v0

    if-eqz v0, :cond_57

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4f

    const/16 v0, 0x100

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v0, :cond_17

    aput v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_17
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_19
    if-ge v4, v0, :cond_2d

    aget v6, v2, v4

    add-int/2addr v5, v6

    array-length v6, p1

    rem-int v6, v4, v6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    rem-int/2addr v5, v0

    invoke-static {v2, v4, v5}, Lcom/igexin/push/extension/distribution/gbd/i/ac;->a([III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2d
    array-length p1, p0

    new-array v4, p1, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_32
    if-ge v3, p1, :cond_4e

    add-int/2addr v5, v1

    rem-int/2addr v5, v0

    aget v7, v2, v5

    add-int/2addr v6, v7

    rem-int/2addr v6, v0

    invoke-static {v2, v5, v6}, Lcom/igexin/push/extension/distribution/gbd/i/ac;->a([III)V

    aget v7, v2, v5

    aget v8, v2, v6

    add-int/2addr v7, v8

    rem-int/2addr v7, v0

    aget v7, v2, v7

    aget-byte v8, p0, v3

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_4e
    return-object v4

    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data is fail!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is fail!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BLjava/lang/String;)[B
    .registers 2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/ac;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method
