###### Class dc.squareup.okio.HashingSink (dc.squareup.okio.HashingSink)
.class public final Ldc/squareup/okio/HashingSink;
.super Ldc/squareup/okio/ForwardingSink;
.source "SourceFile"


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Ldc/squareup/okio/Sink;Ldc/squareup/okio/ByteString;Ljava/lang/String;)V
    .registers 5

    .line 7
    invoke-direct {p0, p1}, Ldc/squareup/okio/ForwardingSink;-><init>(Ldc/squareup/okio/Sink;)V

    .line 9
    :try_start_3
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    .line 10
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ldc/squareup/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Ldc/squareup/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
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

.method private constructor <init>(Ldc/squareup/okio/Sink;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okio/ForwardingSink;-><init>(Ldc/squareup/okio/Sink;)V

    .line 3
    :try_start_3
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ldc/squareup/okio/HashingSink;->mac:Ljavax/crypto/Mac;
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_c} :catch_d

    return-void

    .line 6
    :catch_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static hmacSha1(Ldc/squareup/okio/Sink;Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/HashingSink;
    .registers 4

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSink;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Ldc/squareup/okio/HashingSink;-><init>(Ldc/squareup/okio/Sink;Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Ldc/squareup/okio/Sink;Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/HashingSink;
    .registers 4

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSink;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Ldc/squareup/okio/HashingSink;-><init>(Ldc/squareup/okio/Sink;Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512(Ldc/squareup/okio/Sink;Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/HashingSink;
    .registers 4

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSink;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, p1, v1}, Ldc/squareup/okio/HashingSink;-><init>(Ldc/squareup/okio/Sink;Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/HashingSink;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSink;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Ldc/squareup/okio/HashingSink;-><init>(Ldc/squareup/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/HashingSink;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSink;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Ldc/squareup/okio/HashingSink;-><init>(Ldc/squareup/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/HashingSink;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSink;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Ldc/squareup/okio/HashingSink;-><init>(Ldc/squareup/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha512(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/HashingSink;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/HashingSink;

    const-string v1, "SHA-512"

    invoke-direct {v0, p0, v1}, Ldc/squareup/okio/HashingSink;-><init>(Ldc/squareup/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final hash()Ldc/squareup/okio/ByteString;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Ldc/squareup/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 2
    :goto_f
    invoke-static {v0}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public write(Ldc/squareup/okio/Buffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 5
    iget-object v0, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    const-wide/16 v1, 0x0

    :goto_c
    cmp-long v3, v1, p2

    if-gez v3, :cond_37

    sub-long v3, p2, v1

    .line 6
    iget v5, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v6, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 7
    iget-object v3, p0, Ldc/squareup/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v3, :cond_29

    .line 8
    iget-object v5, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v6, v0, Ldc/squareup/okio/Segment;->pos:I

    invoke-virtual {v3, v5, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_32

    .line 10
    :cond_29
    iget-object v3, p0, Ldc/squareup/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    iget-object v5, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v6, v0, Ldc/squareup/okio/Segment;->pos:I

    invoke-virtual {v3, v5, v6, v4}, Ljavax/crypto/Mac;->update([BII)V

    :goto_32
    int-to-long v3, v4

    add-long/2addr v1, v3

    .line 11
    iget-object v0, v0, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    goto :goto_c

    .line 22
    :cond_37
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okio/ForwardingSink;->write(Ldc/squareup/okio/Buffer;J)V

    return-void
.end method
