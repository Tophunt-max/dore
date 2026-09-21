###### Class com.igexin.push.extension.distribution.gbd.i.c (com.igexin.push.extension.distribution.gbd.i.c)
.class public Lcom/igexin/push/extension/distribution/gbd/i/c;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 14

    if-eqz p0, :cond_72

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_72

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    array-length v3, p0

    if-ge p1, v3, :cond_6d

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    const/4 v5, 0x3

    if-ge v3, v5, :cond_27

    array-length v6, p0

    if-ge p1, v6, :cond_27

    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v6, v3, 0x3

    rsub-int/lit8 v6, v6, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_27
    if-lez p2, :cond_31

    if-ne v2, p2, :cond_31

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cond_31
    shl-int/lit8 v6, v4, 0x8

    ushr-int/lit8 v6, v6, 0x1a

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v8, v4, 0xe

    ushr-int/lit8 v8, v8, 0x1a

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x2

    const/16 v10, 0x3d

    if-ge v3, v9, :cond_4b

    const/16 v9, 0x3d

    goto :goto_53

    :cond_4b
    shl-int/lit8 v9, v4, 0x14

    ushr-int/lit8 v9, v9, 0x1a

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_53
    if-ge v3, v5, :cond_56

    goto :goto_5e

    :cond_56
    shl-int/lit8 v3, v4, 0x1a

    ushr-int/lit8 v3, v3, 0x1a

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_5e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4

    goto :goto_d

    :cond_6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_72
    :goto_72
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BI)[B
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/c;->a([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BIII)[B
    .registers 6

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/i/e;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/igexin/push/extension/distribution/gbd/i/e;-><init>(I[B)V

    const/4 p3, 0x1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/igexin/push/extension/distribution/gbd/i/e;->a([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_29

    iget p0, v0, Lcom/igexin/push/extension/distribution/gbd/i/e;->b:I

    iget-object p1, v0, Lcom/igexin/push/extension/distribution/gbd/i/e;->a:[B

    array-length p1, p1

    if-ne p0, p1, :cond_1c

    iget-object p0, v0, Lcom/igexin/push/extension/distribution/gbd/i/e;->a:[B

    return-object p0

    :cond_1c
    iget p0, v0, Lcom/igexin/push/extension/distribution/gbd/i/e;->b:I

    new-array p0, p0, [B

    iget-object p1, v0, Lcom/igexin/push/extension/distribution/gbd/i/e;->a:[B

    iget p2, v0, Lcom/igexin/push/extension/distribution/gbd/i/e;->b:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

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

.method public static b([BI)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/c;->c([BI)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static b([BIII)[B
    .registers 9

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/i/f;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/igexin/push/extension/distribution/gbd/i/f;-><init>(I[B)V

    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    iget-boolean v1, v0, Lcom/igexin/push/extension/distribution/gbd/i/f;->d:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_23

    add-int/lit8 p3, p3, 0x4

    goto :goto_23

    :cond_17
    rem-int/lit8 v1, p2, 0x3

    if-eq v1, v3, :cond_21

    if-eq v1, v2, :cond_1e

    goto :goto_23

    :cond_1e
    add-int/lit8 p3, p3, 0x3

    goto :goto_23

    :cond_21
    add-int/lit8 p3, p3, 0x2

    :cond_23
    :goto_23
    iget-boolean v1, v0, Lcom/igexin/push/extension/distribution/gbd/i/f;->e:Z

    if-eqz v1, :cond_37

    if-lez p2, :cond_37

    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v3

    iget-boolean v4, v0, Lcom/igexin/push/extension/distribution/gbd/i/f;->f:Z

    if-eqz v4, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x1

    :goto_34
    mul-int v1, v1, v2

    add-int/2addr p3, v1

    :cond_37
    new-array v1, p3, [B

    iput-object v1, v0, Lcom/igexin/push/extension/distribution/gbd/i/f;->a:[B

    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/f;->a([BIIZ)Z

    sget-boolean p0, Lcom/igexin/push/extension/distribution/gbd/i/c;->a:Z

    if-nez p0, :cond_4d

    iget p0, v0, Lcom/igexin/push/extension/distribution/gbd/i/f;->b:I

    if-ne p0, p3, :cond_47

    goto :goto_4d

    :cond_47
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4d
    :goto_4d
    iget-object p0, v0, Lcom/igexin/push/extension/distribution/gbd/i/f;->a:[B

    return-object p0
.end method

.method public static c([BI)[B
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/c;->b([BIII)[B

    move-result-object p0

    return-object p0
.end method
