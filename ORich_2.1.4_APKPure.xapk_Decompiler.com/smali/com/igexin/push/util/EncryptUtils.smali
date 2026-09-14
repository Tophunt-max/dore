###### Class com.igexin.push.util.EncryptUtils (com.igexin.push.util.EncryptUtils)
.class public Lcom/igexin/push/util/EncryptUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.igexin.push.util.EncryptUtils"

.field private static b:Z = false

.field private static c:I = 0x0

.field private static d:[B = null

.field private static e:[B = null

.field public static errorMsg:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lcom/igexin/push/extension/mod/SecurityUtils;->b:Z

    if-eqz v1, :cond_5b

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->initSocketAESKey()[B

    move-result-object v1

    sput-object v1, Lcom/igexin/push/util/EncryptUtils;->d:[B

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->initHttpAESKey()[B

    move-result-object v1

    sput-object v1, Lcom/igexin/push/util/EncryptUtils;->e:[B

    sget-object v2, Lcom/igexin/push/util/EncryptUtils;->d:[B

    if-eqz v2, :cond_31

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getSocketAESKey()[B

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getHttpAESKey()[B

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getRSAKeyId()[B

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    sput-boolean v1, Lcom/igexin/push/util/EncryptUtils;->b:Z
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    goto :goto_5b

    :catchall_35
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/util/EncryptUtils;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|load so error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sput-boolean v0, Lcom/igexin/push/util/EncryptUtils;->b:Z

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/util/EncryptUtils;->errorMsg:Ljava/lang/String;

    :cond_5b
    :goto_5b
    sget-object v0, Lcom/igexin/push/util/EncryptUtils;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, Lcom/igexin/push/extension/mod/SecurityUtils;->c:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/util/EncryptUtils;->errorMsg:Ljava/lang/String;

    :cond_67
    sget-boolean v0, Lcom/igexin/push/util/EncryptUtils;->b:Z

    if-nez v0, :cond_8e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/util/EncryptUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|load so error ++++++++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/util/EncryptUtils;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string v0, "value = null, normal error"

    sput-object v0, Lcom/igexin/push/util/EncryptUtils;->errorMsg:Ljava/lang/String;

    goto :goto_a4

    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/util/EncryptUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|load so success ~~~~~~~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesDecHttp([B[B)[B
    .registers 3

    sget-object v0, Lcom/igexin/push/util/EncryptUtils;->e:[B

    invoke-static {v0, p0, p1}, Lcom/igexin/push/extension/mod/SecurityUtils;->c([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static aesDecSocket([B[B)[B
    .registers 3

    sget-object v0, Lcom/igexin/push/util/EncryptUtils;->d:[B

    invoke-static {v0, p0, p1}, Lcom/igexin/push/extension/mod/SecurityUtils;->g([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static aesEncHttp([B[B)[B
    .registers 3

    sget-object v0, Lcom/igexin/push/util/EncryptUtils;->e:[B

    invoke-static {v0, p0, p1}, Lcom/igexin/push/extension/mod/SecurityUtils;->b([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static aesEncSocket([B[B)[B
    .registers 3

    sget-object v0, Lcom/igexin/push/util/EncryptUtils;->d:[B

    invoke-static {v0, p0, p1}, Lcom/igexin/push/extension/mod/SecurityUtils;->f([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static altAesDecSocket([B[B)[B
    .registers 2

    invoke-static {p0, p1}, Lcom/igexin/push/extension/mod/SecurityUtils;->m([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static altAesEncSocket([B[B)[B
    .registers 2

    invoke-static {p0, p1}, Lcom/igexin/push/extension/mod/SecurityUtils;->l([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesEncrypted([B)[B
    .registers 2

    sget-object v0, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/igexin/b/a/a/a;->d([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getHttpAESKey()[B
    .registers 1

    sget-object v0, Lcom/igexin/push/util/EncryptUtils;->e:[B

    invoke-static {v0}, Lcom/igexin/push/extension/mod/SecurityUtils;->d([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getHttpGTCV()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getHttpAESKey()[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/igexin/push/util/u;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v1

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/igexin/push/util/j;->b([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpSignature(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result p0

    array-length v1, p1

    if-lez v1, :cond_16

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    :cond_16
    invoke-static {v0}, Lcom/igexin/push/util/EncryptUtils;->sha1([B)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/igexin/push/util/j;->b([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIV([B)[B
    .registers 1

    invoke-static {p0}, Lcom/igexin/push/util/EncryptUtils;->md5([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPacketId()I
    .registers 2

    sget v0, Lcom/igexin/push/util/EncryptUtils;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/igexin/push/util/EncryptUtils;->c:I

    return v0
.end method

.method public static getRSAKeyId()[B
    .registers 1

    invoke-static {}, Lcom/igexin/push/extension/mod/SecurityUtils;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public static getSocketAESKey()[B
    .registers 1

    sget-object v0, Lcom/igexin/push/util/EncryptUtils;->d:[B

    invoke-static {v0}, Lcom/igexin/push/extension/mod/SecurityUtils;->h([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSocketSignature(Lcom/igexin/push/e/c/b;II)[B
    .registers 5

    iget v0, p0, Lcom/igexin/push/e/c/b;->a:I

    add-int/lit8 v0, v0, 0xb

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/igexin/b/a/b/f;->a(I[BI)I

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/igexin/b/a/b/f;->a(I[BI)I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/igexin/push/e/c/b;->a:I

    int-to-short p2, p2

    invoke-static {p2, v0, p1}, Lcom/igexin/b/a/b/f;->b(I[BI)I

    move-result p2

    add-int/2addr p1, p2

    iget-byte p2, p0, Lcom/igexin/push/e/c/b;->b:B

    invoke-static {p2, v0, p1}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/igexin/push/e/c/b;->e:[B

    iget p0, p0, Lcom/igexin/push/e/c/b;->a:I

    invoke-static {p2, v1, v0, p1, p0}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    invoke-static {v0}, Lcom/igexin/push/util/EncryptUtils;->sha1([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/igexin/push/extension/mod/SecurityUtils;->k()[B

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/util/EncryptUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "| so version is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-object v1

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initHttpAESKey()[B
    .registers 1

    invoke-static {}, Lcom/igexin/push/extension/mod/SecurityUtils;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public static initSocketAESKey()[B
    .registers 1

    invoke-static {}, Lcom/igexin/push/extension/mod/SecurityUtils;->e()[B

    move-result-object v0

    return-object v0
.end method

.method public static isLoadSuccess()Z
    .registers 1

    sget-boolean v0, Lcom/igexin/push/util/EncryptUtils;->b:Z

    return v0
.end method

.method public static md5([B)[B
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static reset()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lcom/igexin/push/extension/mod/SecurityUtils;->b:Z

    if-eqz v1, :cond_55

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->initSocketAESKey()[B

    move-result-object v1

    sput-object v1, Lcom/igexin/push/util/EncryptUtils;->d:[B

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->initHttpAESKey()[B

    move-result-object v1

    sput-object v1, Lcom/igexin/push/util/EncryptUtils;->e:[B

    sget-object v2, Lcom/igexin/push/util/EncryptUtils;->d:[B

    if-eqz v2, :cond_31

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getSocketAESKey()[B

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getHttpAESKey()[B

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getRSAKeyId()[B

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    sput-boolean v1, Lcom/igexin/push/util/EncryptUtils;->b:Z
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    goto :goto_55

    :catchall_35
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/util/EncryptUtils;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|load so error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sput-boolean v0, Lcom/igexin/push/util/EncryptUtils;->b:Z

    :cond_55
    :goto_55
    sget-boolean v0, Lcom/igexin/push/util/EncryptUtils;->b:Z

    if-nez v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/util/EncryptUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|load so error ++++++++"

    goto :goto_72

    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/util/EncryptUtils;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|load so success ~~~~~~~"

    :goto_72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/igexin/push/util/EncryptUtils;->b:Z

    return v0
.end method

.method public static rsaEnc([B)[B
    .registers 10

    array-length v0, p0

    const/16 v1, 0xd6

    if-gt v0, v1, :cond_a

    invoke-static {p0}, Lcom/igexin/push/extension/mod/SecurityUtils;->i([B)[B

    move-result-object p0

    return-object p0

    :cond_a
    rem-int/lit16 v1, v0, 0xc8

    if-nez v1, :cond_11

    div-int/lit16 v1, v0, 0xc8

    goto :goto_15

    :cond_11
    div-int/lit16 v1, v0, 0xc8

    add-int/lit8 v1, v1, 0x1

    :goto_15
    mul-int/lit16 v2, v1, 0x100

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1c
    if-ge v4, v1, :cond_3d

    add-int/lit8 v6, v1, -0x1

    if-ge v4, v6, :cond_25

    const/16 v6, 0xc8

    goto :goto_29

    :cond_25
    mul-int/lit16 v6, v4, 0xc8

    sub-int v6, v0, v6

    :goto_29
    new-array v7, v6, [B

    mul-int/lit16 v8, v4, 0xc8

    invoke-static {p0, v8, v7, v3, v6}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    invoke-static {v7}, Lcom/igexin/push/extension/mod/SecurityUtils;->i([B)[B

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v3, v2, v5, v7}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_3d
    return-object v2
.end method

.method public static sha1([B)[B
    .registers 2

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const/4 p0, 0x0

    return-object p0
.end method
