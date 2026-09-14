###### Class com.igexin.b.a.c.a (com.igexin.b.a.c.a)
.class public Lcom/igexin/b/a/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(C)B
    .registers 2

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2f

    array-length v1, p0

    if-gtz v1, :cond_d

    goto :goto_2f

    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_2a

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/CipherOutputStream;
    .registers 10

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 p0, 0x10

    new-array p0, p0, [B

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_30

    invoke-virtual {p1}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/a;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_53

    :cond_30
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x90

    cmp-long v7, v1, v5

    if-ltz v7, :cond_71

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x10

    rem-long/2addr v1, v5

    cmp-long v7, v1, v3

    if-eqz v7, :cond_48

    invoke-static {v0}, Lcom/igexin/b/a/c/a;->a(Ljava/io/RandomAccessFile;)V

    :cond_48
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->read([B)I

    :goto_53
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p0, Ljavax/crypto/CipherOutputStream;

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p0

    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid file length (need 2 blocks for iv and data)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()V
    .registers 3

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->aB:[B

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    sget-object v1, Lcom/igexin/push/core/f;->aB:[B

    invoke-static {v1}, Lcom/igexin/push/util/EncryptUtils;->getBytesEncrypted([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/a;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logkey2"

    invoke-static {v0, v2, v1}, Lcom/igexin/push/util/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/io/RandomAccessFile;)V
    .registers 6

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    rem-long/2addr v0, v2

    long-to-int v1, v0

    int-to-long v0, v1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1c

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_14

    goto :goto_1c

    :cond_14
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 6

    if-eqz p0, :cond_38

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_38

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_37

    mul-int/lit8 v3, v2, 0x2

    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/igexin/b/a/c/a;->a(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/igexin/b/a/c/a;->a(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_37
    return-object v1

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()[B
    .registers 3

    sget-object v0, Lcom/igexin/push/core/f;->aB:[B

    if-nez v0, :cond_24

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v1, "logkey2"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/igexin/push/util/t;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x0

    return-object v0

    :cond_18
    invoke-static {v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/b/a/a/a;->c([BLjava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/f;->aB:[B

    :cond_24
    sget-object v0, Lcom/igexin/push/core/f;->aB:[B

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 4

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCzbMQ22qV6umuPXYWXEOGdlpJR\nBWMP68/ArS7XG8+7GmRbWMW1HOMLOOdwuIfPFp9QiwOshG0mYXlm1ecQ/fCXhRMW\nfh+OMCoBdl7vnCpoDYPmjYQBkm9fRW6oej33UhZtlnTZjECAsyC2Eybha7jg3Lft\ngYVnwaPShTmv5+Z9SQIDAQAB"

    invoke-static {v0}, Lcom/igexin/b/a/c/a;->c(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/igexin/push/util/j;->a(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    return-object p0
.end method
