###### Class com.igexin.push.extension.distribution.basic.j.b (com.igexin.push.extension.distribution.basic.j.b)
.class public final Lcom/igexin/push/extension/distribution/basic/j/b;
.super Ljava/lang/Object;


# direct methods
.method public static a([CI)[B
    .registers 14

    if-eqz p0, :cond_b9

    array-length v0, p0

    if-nez v0, :cond_7

    goto/16 :goto_b9

    :cond_7
    const/4 v0, 0x4

    new-array v1, v0, [C

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_12
    array-length v3, p0

    if-ge p1, v3, :cond_ae

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_17
    array-length v6, p0

    const-string v7, "bad BASE 64 In->"

    if-lt p1, v6, :cond_29

    if-gtz v5, :cond_23

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_23
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    add-int/lit8 v6, p1, 0x1

    aget-char p1, p0, p1

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v8, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    const/16 v11, 0x3d

    if-ne v9, v10, :cond_4a

    if-ne p1, v11, :cond_3b

    goto :goto_4a

    :cond_3b
    const/16 v9, 0xd

    if-eq p1, v9, :cond_4f

    const/16 v9, 0xa

    if-ne p1, v9, :cond_44

    goto :goto_4f

    :cond_44
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    :goto_4a
    add-int/lit8 v9, v5, 0x1

    aput-char p1, v1, v5

    move v5, v9

    :cond_4f
    :goto_4f
    if-lt v5, v0, :cond_ab

    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_53
    if-ge p1, v0, :cond_6c

    aget-char v9, v1, p1

    if-eq v9, v11, :cond_62

    if-nez v5, :cond_5c

    goto :goto_62

    :cond_5c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    :goto_62
    if-nez v5, :cond_69

    aget-char v9, v1, p1

    if-ne v9, v11, :cond_69

    const/4 v5, 0x1

    :cond_69
    add-int/lit8 p1, p1, 0x1

    goto :goto_53

    :cond_6c
    const/4 p1, 0x3

    aget-char v5, v1, p1

    if-ne v5, v11, :cond_81

    array-length p1, p0

    if-lt v6, p1, :cond_7b

    const/4 p1, 0x2

    aget-char v5, v1, p1

    if-ne v5, v11, :cond_81

    const/4 p1, 0x1

    goto :goto_81

    :cond_7b
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_81
    :goto_81
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_83
    if-ge v5, v0, :cond_98

    aget-char v9, v1, v5

    if-eq v9, v11, :cond_95

    aget-char v9, v1, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    rsub-int/lit8 v10, v5, 0x3

    mul-int/lit8 v10, v10, 0x6

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    :cond_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    :cond_98
    :goto_98
    if-ge v3, p1, :cond_a8

    rsub-int/lit8 v5, v3, 0x2

    mul-int/lit8 v5, v5, 0x8

    ushr-int v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    :cond_a8
    move p1, v6

    goto/16 :goto_12

    :cond_ab
    move p1, v6

    goto/16 :goto_17

    :cond_ae
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :cond_b9
    :goto_b9
    const/4 p0, 0x0

    return-object p0
.end method
