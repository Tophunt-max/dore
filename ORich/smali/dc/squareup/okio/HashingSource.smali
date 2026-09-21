###### Class dc.squareup.okio.HashingSource (dc.squareup.okio.HashingSource)
.class public final Ldc/squareup/okio/HashingSource;
.super Ldc/squareup/okio/ForwardingSource;
.source "SourceFile"


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Ldc/squareup/okio/Source;Ldc/squareup/okio/ByteString;Ljava/lang/String;)V
    .registers 5

    .line 7
    invoke-direct {p0, p1}, Ldc/squareup/okio/ForwardingSource;-><init>(Ldc/squareup/okio/Source;)V

    .line 9
    :try_start_3
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    .line 10
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ldc/squareup/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Ldc/squareup/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_18} :catch_20
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 16
    :catch_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private constructor <init>(Ldc/squareup/okio/Source;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okio/ForwardingSource;-><init>(Ldc/squareup/okio/Source;)V

    .line 3
    :try_start_3
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ldc/squareup/okio/HashingSource;->mac:Ljavax/crypto/Mac;
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_c} :catch_d

    return-void

    .line 6
    :catch_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static hmacSha1(Ldc/squareup/okio/Source;Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/HashingSource;
    .registers 4

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSource;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Ldc/squareup/okio/HashingSource;-><init>(Ldc/squareup/okio/Source;Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Ldc/squareup/okio/Source;Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/HashingSource;
    .registers 4

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSource;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Ldc/squareup/okio/HashingSource;-><init>(Ldc/squareup/okio/Source;Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Ldc/squareup/okio/Source;)Ldc/squareup/okio/HashingSource;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSource;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Ldc/squareup/okio/HashingSource;-><init>(Ldc/squareup/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Ldc/squareup/okio/Source;)Ldc/squareup/okio/HashingSource;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSource;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Ldc/squareup/okio/HashingSource;-><init>(Ldc/squareup/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Ldc/squareup/okio/Source;)Ldc/squareup/okio/HashingSource;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSource;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Ldc/squareup/okio/HashingSource;-><init>(Ldc/squareup/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final hash()Ldc/squareup/okio/ByteString;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Ldc/squareup/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 2
    :goto_f
    invoke-static {v0}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okio/ForwardingSource;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_4c

    .line 4
    iget-wide v0, p1, Ldc/squareup/okio/Buffer;->size:J

    sub-long v2, v0, p2

    .line 8
    iget-object v4, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    :goto_10
    cmp-long v5, v0, v2

    if-lez v5, :cond_1e

    .line 10
    iget-object v4, v4, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 11
    iget v5, v4, Ldc/squareup/okio/Segment;->limit:I

    iget v6, v4, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v0, v5

    goto :goto_10

    .line 15
    :cond_1e
    :goto_1e
    iget-wide v5, p1, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_4c

    .line 16
    iget v5, v4, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, v2

    sub-long/2addr v5, v0

    long-to-int v2, v5

    .line 17
    iget-object v3, p0, Ldc/squareup/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v3, :cond_37

    .line 18
    iget-object v5, v4, Ldc/squareup/okio/Segment;->data:[B

    iget v6, v4, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v2, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_41

    .line 20
    :cond_37
    iget-object v3, p0, Ldc/squareup/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    iget-object v5, v4, Ldc/squareup/okio/Segment;->data:[B

    iget v6, v4, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v2, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 22
    :goto_41
    iget v2, v4, Ldc/squareup/okio/Segment;->limit:I

    iget v3, v4, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 24
    iget-object v4, v4, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide v0, v2

    goto :goto_1e

    :cond_4c
    return-wide p2
.end method
