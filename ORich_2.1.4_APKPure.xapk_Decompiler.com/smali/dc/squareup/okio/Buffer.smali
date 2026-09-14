###### Class dc.squareup.okio.Buffer (dc.squareup.okio.Buffer)
.class public final Ldc/squareup/okio/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/BufferedSource;
.implements Ldc/squareup/okio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okio/Buffer$UnsafeCursor;
    }
.end annotation


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Ldc/squareup/okio/Segment;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_a

    sput-object v0, Ldc/squareup/okio/Buffer;->DIGITS:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private digest(Ljava/lang/String;)Ldc/squareup/okio/ByteString;
    .registers 6

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-eqz v0, :cond_25

    .line 3
    iget-object v1, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    iget v0, v0, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 4
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    :goto_14
    iget-object v0, v0, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    iget-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-eq v0, v1, :cond_25

    .line 5
    iget-object v1, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    iget v3, v0, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_14

    .line 8
    :cond_25
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object p1
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object p1

    .line 10
    :catch_2e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private hmac(Ljava/lang/String;Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;
    .registers 6

    .line 1
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ldc/squareup/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 3
    iget-object p1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-eqz p1, :cond_31

    .line 4
    iget-object p2, p1, Ldc/squareup/okio/Segment;->data:[B

    iget v1, p1, Ldc/squareup/okio/Segment;->pos:I

    iget p1, p1, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Mac;->update([BII)V

    .line 5
    iget-object p1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    :goto_20
    iget-object p1, p1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    iget-object p2, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-eq p1, p2, :cond_31

    .line 6
    iget-object p2, p1, Ldc/squareup/okio/Segment;->data:[B

    iget v1, p1, Ldc/squareup/okio/Segment;->pos:I

    iget v2, p1, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, p2, v1, v2}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_20

    .line 9
    :cond_31
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object p1
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_39} :catch_41
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_39} :catch_3a

    return-object p1

    :catch_3a
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 14
    :catch_41
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private rangeEquals(Ldc/squareup/okio/Segment;ILdc/squareup/okio/ByteString;II)Z
    .registers 11

    .line 11
    iget v0, p1, Ldc/squareup/okio/Segment;->limit:I

    .line 12
    iget-object v1, p1, Ldc/squareup/okio/Segment;->data:[B

    :goto_4
    if-ge p4, p5, :cond_23

    if-ne p2, v0, :cond_14

    .line 16
    iget-object p1, p1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    .line 17
    iget-object p2, p1, Ldc/squareup/okio/Segment;->data:[B

    .line 18
    iget v0, p1, Ldc/squareup/okio/Segment;->pos:I

    .line 19
    iget v1, p1, Ldc/squareup/okio/Segment;->limit:I

    move v4, v1

    move-object v1, p2

    move p2, v0

    move v0, v4

    .line 22
    :cond_14
    aget-byte v2, v1, p2

    invoke-virtual {p3, p4}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_1e

    const/4 p1, 0x0

    return p1

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_23
    const/4 p1, 0x1

    return p1
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4b

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_c

    if-eqz p4, :cond_b

    goto :goto_c

    :cond_b
    return-void

    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v0

    .line 5
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 6
    iget-object v1, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v3, v0, Ldc/squareup/okio/Segment;->limit:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3e

    .line 8
    iget p1, v0, Ldc/squareup/okio/Segment;->pos:I

    iget p2, v0, Ldc/squareup/okio/Segment;->limit:I

    if-ne p1, p2, :cond_35

    .line 10
    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 11
    invoke-static {v0}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    :cond_35
    if-eqz p4, :cond_38

    return-void

    .line 14
    :cond_38
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 16
    :cond_3e
    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Ldc/squareup/okio/Segment;->limit:I

    .line 17
    iget-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    sub-long/2addr p2, v0

    goto :goto_2

    .line 18
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "in == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buffer()Ldc/squareup/okio/Buffer;
    .registers 1

    return-object p0
.end method

.method public final clear()V
    .registers 3

    .line 1
    :try_start_0
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public clone()Ldc/squareup/okio/Buffer;
    .registers 7

    .line 2
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 3
    iget-wide v1, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    .line 5
    :cond_e
    iget-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    invoke-virtual {v1}, Ldc/squareup/okio/Segment;->sharedCopy()Ldc/squareup/okio/Segment;

    move-result-object v1

    iput-object v1, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 6
    iput-object v1, v1, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    iput-object v1, v1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    .line 7
    iget-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget-object v1, v1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    :goto_1e
    iget-object v2, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-eq v1, v2, :cond_30

    .line 8
    iget-object v2, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget-object v2, v2, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    invoke-virtual {v1}, Ldc/squareup/okio/Segment;->sharedCopy()Ldc/squareup/okio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldc/squareup/okio/Segment;->push(Ldc/squareup/okio/Segment;)Ldc/squareup/okio/Segment;

    .line 9
    iget-object v1, v1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    goto :goto_1e

    .line 12
    :cond_30
    iget-wide v1, p0, Ldc/squareup/okio/Buffer;->size:J

    iput-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->clone()Ldc/squareup/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public final completeSegmentByteCount()J
    .registers 6

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 5
    :cond_9
    iget-object v2, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget-object v2, v2, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 6
    iget v3, v2, Ldc/squareup/okio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1c

    iget-boolean v4, v2, Ldc/squareup/okio/Segment;->owner:Z

    if-eqz v4, :cond_1c

    .line 7
    iget v2, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1c
    return-wide v0
.end method

.method public final copyTo(Ldc/squareup/okio/Buffer;JJ)Ldc/squareup/okio/Buffer;
    .registers 12

    if-eqz p1, :cond_5a

    .line 18
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    .line 21
    :cond_10
    iget-wide v2, p1, Ldc/squareup/okio/Buffer;->size:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Ldc/squareup/okio/Buffer;->size:J

    .line 24
    iget-object v2, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 25
    :goto_17
    iget v3, v2, Ldc/squareup/okio/Segment;->limit:I

    iget v4, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_25

    sub-long/2addr p2, v3

    iget-object v2, v2, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    goto :goto_17

    :cond_25
    :goto_25
    cmp-long v3, p4, v0

    if-lez v3, :cond_59

    .line 31
    invoke-virtual {v2}, Ldc/squareup/okio/Segment;->sharedCopy()Ldc/squareup/okio/Segment;

    move-result-object v3

    .line 32
    iget v4, v3, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, Ldc/squareup/okio/Segment;->pos:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    .line 33
    iget p3, v3, Ldc/squareup/okio/Segment;->limit:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Ldc/squareup/okio/Segment;->limit:I

    .line 34
    iget-object p2, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez p2, :cond_49

    .line 35
    iput-object v3, v3, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    iput-object v3, v3, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    iput-object v3, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    goto :goto_4e

    .line 37
    :cond_49
    iget-object p2, p2, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    invoke-virtual {p2, v3}, Ldc/squareup/okio/Segment;->push(Ldc/squareup/okio/Segment;)Ldc/squareup/okio/Segment;

    .line 39
    :goto_4e
    iget p2, v3, Ldc/squareup/okio/Segment;->limit:I

    iget p3, v3, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 40
    iget-object v2, v2, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide p2, v0

    goto :goto_25

    :cond_59
    return-object p0

    .line 41
    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final copyTo(Ljava/io/OutputStream;)Ldc/squareup/okio/Buffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v4, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Ldc/squareup/okio/Buffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3e

    .line 2
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    .line 6
    :cond_10
    iget-object v2, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 7
    :goto_12
    iget v3, v2, Ldc/squareup/okio/Segment;->limit:I

    iget v4, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_20

    sub-long/2addr p2, v3

    iget-object v2, v2, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    goto :goto_12

    :cond_20
    :goto_20
    cmp-long v3, p4, v0

    if-lez v3, :cond_3d

    .line 13
    iget v3, v2, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int p2, v3

    .line 14
    iget p3, v2, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    .line 15
    iget-object v3, v2, Ldc/squareup/okio/Segment;->data:[B

    invoke-virtual {p1, v3, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 16
    iget-object v2, v2, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide p2, v0

    goto :goto_20

    :cond_3d
    return-object p0

    .line 17
    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public emit()Ldc/squareup/okio/BufferedSink;
    .registers 1

    return-object p0
.end method

.method public emitCompleteSegments()Ldc/squareup/okio/Buffer;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->emitCompleteSegments()Ldc/squareup/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ldc/squareup/okio/Buffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Ldc/squareup/okio/Buffer;

    .line 3
    iget-wide v3, p0, Ldc/squareup/okio/Buffer;->size:J

    iget-wide v5, p1, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    .line 6
    :cond_1c
    iget-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 7
    iget-object p1, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 8
    iget v3, v1, Ldc/squareup/okio/Segment;->pos:I

    .line 9
    iget v4, p1, Ldc/squareup/okio/Segment;->pos:I

    .line 11
    :goto_24
    iget-wide v7, p0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_61

    .line 12
    iget v7, v1, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr v7, v3

    iget v8, p1, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    :goto_36
    int-to-long v10, v9

    cmp-long v12, v10, v7

    if-gez v12, :cond_4f

    .line 15
    iget-object v10, v1, Ldc/squareup/okio/Segment;->data:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Ldc/squareup/okio/Segment;->data:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_36

    .line 18
    :cond_4f
    iget v9, v1, Ldc/squareup/okio/Segment;->limit:I

    if-ne v3, v9, :cond_57

    .line 19
    iget-object v1, v1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    .line 20
    iget v3, v1, Ldc/squareup/okio/Segment;->pos:I

    .line 23
    :cond_57
    iget v9, p1, Ldc/squareup/okio/Segment;->limit:I

    if-ne v4, v9, :cond_5f

    .line 24
    iget-object p1, p1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    .line 25
    iget v4, p1, Ldc/squareup/okio/Segment;->pos:I

    :cond_5f
    add-long/2addr v5, v7

    goto :goto_24

    :cond_61
    return v0
.end method

.method public exhausted()Z
    .registers 6

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public getBuffer()Ldc/squareup/okio/Buffer;
    .registers 1

    return-object p0
.end method

.method public final getByte(J)B
    .registers 9

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 2
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    sub-long v2, v0, p1

    cmp-long v4, v2, p1

    if-lez v4, :cond_27

    .line 3
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 4
    :goto_12
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    cmp-long v1, p1, v3

    if-gez v1, :cond_23

    .line 5
    iget-object v0, v0, Ldc/squareup/okio/Segment;->data:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2

    return p1

    :cond_23
    sub-long/2addr p1, v3

    .line 6
    iget-object v0, v0, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    goto :goto_12

    :cond_27
    sub-long/2addr p1, v0

    .line 13
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget-object v0, v0, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 14
    :goto_2c
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    add-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-ltz v1, :cond_40

    .line 15
    iget-object v0, v0, Ldc/squareup/okio/Segment;->data:[B

    long-to-int p2, p1

    add-int/2addr v2, p2

    aget-byte p1, v0, v2

    return p1

    .line 16
    :cond_40
    iget-object v0, v0, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    goto :goto_2c
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    .line 5
    :cond_7
    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    iget v3, v0, Ldc/squareup/okio/Segment;->limit:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v4, v0, Ldc/squareup/okio/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 8
    :cond_17
    iget-object v0, v0, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    .line 9
    iget-object v2, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public final hmacSha1(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;
    .registers 3

    const-string v0, "HmacSHA1"

    .line 1
    invoke-direct {p0, v0, p1}, Ldc/squareup/okio/Buffer;->hmac(Ljava/lang/String;Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final hmacSha256(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;
    .registers 3

    const-string v0, "HmacSHA256"

    .line 1
    invoke-direct {p0, v0, p1}, Ldc/squareup/okio/Buffer;->hmac(Ljava/lang/String;Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final hmacSha512(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;
    .registers 3

    const-string v0, "HmacSHA512"

    .line 1
    invoke-direct {p0, v0, p1}, Ldc/squareup/okio/Buffer;->hmac(Ljava/lang/String;Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(B)J
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 10

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okio/Buffer;->indexOf(BJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public indexOf(BJJ)J
    .registers 21

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_81

    cmp-long v3, p4, p2

    if-ltz v3, :cond_81

    .line 3
    iget-wide v3, v0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v5, p4, v3

    if-lez v5, :cond_13

    move-wide v5, v3

    goto :goto_15

    :cond_13
    move-wide/from16 v5, p4

    :goto_15
    const-wide/16 v7, -0x1

    cmp-long v9, p2, v5

    if-nez v9, :cond_1c

    return-wide v7

    .line 12
    :cond_1c
    iget-object v9, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez v9, :cond_21

    return-wide v7

    :cond_21
    sub-long v10, v3, p2

    cmp-long v12, v10, p2

    if-gez v12, :cond_38

    :goto_27
    cmp-long v1, v3, p2

    if-lez v1, :cond_35

    .line 20
    iget-object v9, v9, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 21
    iget v1, v9, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v9, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v3, v1

    goto :goto_27

    :cond_35
    :goto_35
    move-wide/from16 v1, p2

    goto :goto_49

    .line 26
    :cond_38
    :goto_38
    iget v3, v9, Ldc/squareup/okio/Segment;->limit:I

    iget v4, v9, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v10, v3, p2

    if-gez v10, :cond_47

    .line 27
    iget-object v9, v9, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide v1, v3

    goto :goto_38

    :cond_47
    move-wide v3, v1

    goto :goto_35

    :goto_49
    cmp-long v10, v3, v5

    if-gez v10, :cond_80

    .line 35
    iget-object v10, v9, Ldc/squareup/okio/Segment;->data:[B

    .line 36
    iget v11, v9, Ldc/squareup/okio/Segment;->limit:I

    int-to-long v11, v11

    iget v13, v9, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v13, v13

    add-long/2addr v13, v5

    sub-long/2addr v13, v3

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    .line 37
    iget v11, v9, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v13, v11

    add-long/2addr v13, v1

    sub-long/2addr v13, v3

    long-to-int v1, v13

    :goto_62
    if-ge v1, v12, :cond_73

    .line 39
    aget-byte v2, v10, v1

    move/from16 v11, p1

    if-ne v2, v11, :cond_70

    .line 40
    iget v2, v9, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v1, v3

    return-wide v1

    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_73
    move/from16 v11, p1

    .line 45
    iget v1, v9, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v9, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 47
    iget-object v9, v9, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide v1, v3

    goto :goto_49

    :cond_80
    return-wide v7

    .line 48
    :cond_81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v0, Ldc/squareup/okio/Buffer;->size:J

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public indexOf(Ldc/squareup/okio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0, v1}, Ldc/squareup/okio/Buffer;->indexOf(Ldc/squareup/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Ldc/squareup/okio/ByteString;J)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 51
    invoke-virtual/range {p1 .. p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_a6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9e

    .line 60
    iget-object v2, v6, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    const-wide/16 v7, -0x1

    if-nez v2, :cond_15

    return-wide v7

    .line 64
    :cond_15
    iget-wide v3, v6, Ldc/squareup/okio/Buffer;->size:J

    sub-long v9, v3, p2

    cmp-long v5, v9, p2

    if-gez v5, :cond_2b

    :goto_1d
    cmp-long v0, v3, p2

    if-lez v0, :cond_3b

    .line 68
    iget-object v2, v2, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 69
    iget v0, v2, Ldc/squareup/okio/Segment;->limit:I

    iget v1, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v3, v0

    goto :goto_1d

    .line 74
    :cond_2b
    :goto_2b
    iget v3, v2, Ldc/squareup/okio/Segment;->limit:I

    iget v4, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v0

    cmp-long v5, v3, p2

    if-gez v5, :cond_3a

    .line 75
    iget-object v2, v2, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide v0, v3

    goto :goto_2b

    :cond_3a
    move-wide v3, v0

    :cond_3b
    const/4 v0, 0x0

    move-object/from16 v9, p1

    .line 83
    invoke-virtual {v9, v0}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v10

    .line 84
    invoke-virtual/range {p1 .. p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v11

    .line 85
    iget-wide v0, v6, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v12, v11

    sub-long/2addr v0, v12

    const-wide/16 v12, 0x1

    add-long/2addr v12, v0

    move-wide/from16 v0, p2

    move-object v14, v2

    move-wide v15, v3

    :goto_51
    cmp-long v2, v15, v12

    if-gez v2, :cond_9c

    .line 88
    iget-object v5, v14, Ldc/squareup/okio/Segment;->data:[B

    .line 89
    iget v2, v14, Ldc/squareup/okio/Segment;->limit:I

    int-to-long v2, v2

    iget v4, v14, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v7, v4

    add-long/2addr v7, v12

    sub-long/2addr v7, v15

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v7, v2

    .line 90
    iget v2, v14, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    sub-long/2addr v2, v15

    long-to-int v0, v2

    move v8, v0

    :goto_6b
    if-ge v8, v7, :cond_8f

    .line 91
    aget-byte v0, v5, v8

    if-ne v0, v10, :cond_88

    add-int/lit8 v2, v8, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v3, p1

    move-object/from16 v17, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Ldc/squareup/okio/Buffer;->rangeEquals(Ldc/squareup/okio/Segment;ILdc/squareup/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 92
    iget v0, v14, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v8, v0

    int-to-long v0, v8

    add-long/2addr v0, v15

    return-wide v0

    :cond_88
    move-object/from16 v17, v5

    :cond_8a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v17

    goto :goto_6b

    .line 97
    :cond_8f
    iget v0, v14, Ldc/squareup/okio/Segment;->limit:I

    iget v1, v14, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v15, v0

    .line 99
    iget-object v14, v14, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide v0, v15

    const-wide/16 v7, -0x1

    goto :goto_51

    :cond_9c
    move-wide v0, v7

    return-wide v0

    .line 100
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Ldc/squareup/okio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Ldc/squareup/okio/Buffer;->indexOfElement(Ldc/squareup/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Ldc/squareup/okio/ByteString;J)J
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_a6

    .line 2
    iget-object v2, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_d

    return-wide v3

    .line 6
    :cond_d
    iget-wide v5, p0, Ldc/squareup/okio/Buffer;->size:J

    sub-long v7, v5, p2

    cmp-long v9, v7, p2

    if-gez v9, :cond_23

    :goto_15
    cmp-long v0, v5, p2

    if-lez v0, :cond_33

    .line 10
    iget-object v2, v2, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 11
    iget v0, v2, Ldc/squareup/okio/Segment;->limit:I

    iget v1, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_15

    .line 16
    :cond_23
    :goto_23
    iget v5, v2, Ldc/squareup/okio/Segment;->limit:I

    iget v6, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gez v7, :cond_32

    .line 17
    iget-object v2, v2, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide v0, v5

    goto :goto_23

    :cond_32
    move-wide v5, v0

    .line 26
    :cond_33
    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v7, 0x0

    if-ne v0, v1, :cond_71

    .line 28
    invoke-virtual {p1, v7}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result p1

    .line 30
    :goto_44
    iget-wide v7, p0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_a5

    .line 31
    iget-object v1, v2, Ldc/squareup/okio/Segment;->data:[B

    .line 32
    iget v7, v2, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v5

    long-to-int p2, v7

    iget p3, v2, Ldc/squareup/okio/Segment;->limit:I

    :goto_54
    if-ge p2, p3, :cond_66

    .line 33
    aget-byte v7, v1, p2

    if-eq v7, v0, :cond_60

    if-ne v7, p1, :cond_5d

    goto :goto_60

    :cond_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_54

    .line 35
    :cond_60
    :goto_60
    iget p1, v2, Ldc/squareup/okio/Segment;->pos:I

    :goto_62
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v5

    return-wide p1

    .line 40
    :cond_66
    iget p2, v2, Ldc/squareup/okio/Segment;->limit:I

    iget p3, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    .line 42
    iget-object v2, v2, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide p2, v5

    goto :goto_44

    .line 46
    :cond_71
    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->internalArray()[B

    move-result-object p1

    .line 47
    :goto_75
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v8, v5, v0

    if-gez v8, :cond_a5

    .line 48
    iget-object v0, v2, Ldc/squareup/okio/Segment;->data:[B

    .line 49
    iget v1, v2, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v8, v1

    add-long/2addr v8, p2

    sub-long/2addr v8, v5

    long-to-int p2, v8

    iget p3, v2, Ldc/squareup/okio/Segment;->limit:I

    :goto_85
    if-ge p2, p3, :cond_9a

    .line 50
    aget-byte v1, v0, p2

    .line 51
    array-length v8, p1

    const/4 v9, 0x0

    :goto_8b
    if-ge v9, v8, :cond_97

    aget-byte v10, p1, v9

    if-ne v1, v10, :cond_94

    .line 52
    iget p1, v2, Ldc/squareup/okio/Segment;->pos:I

    goto :goto_62

    :cond_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    :cond_97
    add-int/lit8 p2, p2, 0x1

    goto :goto_85

    .line 57
    :cond_9a
    iget p2, v2, Ldc/squareup/okio/Segment;->limit:I

    iget p3, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    .line 59
    iget-object v2, v2, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide p2, v5

    goto :goto_75

    :cond_a5
    return-wide v3

    .line 60
    :cond_a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okio/Buffer$2;

    invoke-direct {v0, p0}, Ldc/squareup/okio/Buffer$2;-><init>(Ldc/squareup/okio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Ldc/squareup/okio/ByteString;
    .registers 2

    const-string v0, "MD5"

    .line 1
    invoke-direct {p0, v0}, Ldc/squareup/okio/Buffer;->digest(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okio/Buffer$1;

    invoke-direct {v0, p0}, Ldc/squareup/okio/Buffer$1;-><init>(Ldc/squareup/okio/Buffer;)V

    return-object v0
.end method

.method public peek()Ldc/squareup/okio/BufferedSource;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okio/PeekSource;

    invoke-direct {v0, p0}, Ldc/squareup/okio/PeekSource;-><init>(Ldc/squareup/okio/BufferedSource;)V

    invoke-static {v0}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLdc/squareup/okio/ByteString;)Z
    .registers 10

    .line 1
    invoke-virtual {p3}, Ldc/squareup/okio/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okio/Buffer;->rangeEquals(JLdc/squareup/okio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLdc/squareup/okio/ByteString;II)Z
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_32

    if-ltz p4, :cond_32

    if-ltz p5, :cond_32

    .line 2
    iget-wide v1, p0, Ldc/squareup/okio/Buffer;->size:J

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_32

    .line 6
    invoke-virtual {p3}, Ldc/squareup/okio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, p5, :cond_30

    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 10
    invoke-virtual {p0, v2, v3}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_30
    const/4 p1, 0x1

    return p1

    :cond_32
    :goto_32
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 18
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v3, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 19
    iget-object v2, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v3, v0, Ldc/squareup/okio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 21
    iget p1, v0, Ldc/squareup/okio/Segment;->pos:I

    add-int/2addr p1, v1

    iput p1, v0, Ldc/squareup/okio/Segment;->pos:I

    .line 22
    iget-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    .line 24
    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    if-ne p1, v2, :cond_32

    .line 25
    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 26
    invoke-static {v0}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    :cond_32
    return v1
.end method

.method public read([B)I
    .registers 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ldc/squareup/okio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 11

    .line 2
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 4
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    return p1

    .line 6
    :cond_d
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 7
    iget-object v1, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget p1, v0, Ldc/squareup/okio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Ldc/squareup/okio/Segment;->pos:I

    .line 10
    iget-wide v1, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Ldc/squareup/okio/Buffer;->size:J

    .line 12
    iget p2, v0, Ldc/squareup/okio/Segment;->limit:I

    if-ne p1, p2, :cond_35

    .line 13
    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 14
    invoke-static {v0}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    :cond_35
    return p3
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 9

    if-eqz p1, :cond_31

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    .line 27
    iget-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    .line 29
    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    return-wide p2

    .line 30
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAll(Ldc/squareup/okio/Sink;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    .line 3
    invoke-interface {p1, p0, v0, v1}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    :cond_b
    return-wide v0
.end method

.method public final readAndWriteUnsafe()Ldc/squareup/okio/Buffer$UnsafeCursor;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->readAndWriteUnsafe(Ldc/squareup/okio/Buffer$UnsafeCursor;)Ldc/squareup/okio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Ldc/squareup/okio/Buffer$UnsafeCursor;)Ldc/squareup/okio/Buffer$UnsafeCursor;
    .registers 3

    .line 2
    iget-object v0, p1, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    if-nez v0, :cond_a

    .line 6
    iput-object p0, p1, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Ldc/squareup/okio/Buffer$UnsafeCursor;->readWrite:Z

    return-object p1

    .line 8
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .registers 10

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    .line 3
    iget-object v2, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 4
    iget v3, v2, Ldc/squareup/okio/Segment;->pos:I

    .line 5
    iget v4, v2, Ldc/squareup/okio/Segment;->limit:I

    .line 7
    iget-object v5, v2, Ldc/squareup/okio/Segment;->data:[B

    add-int/lit8 v6, v3, 0x1

    .line 8
    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 9
    iput-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    if-ne v6, v4, :cond_25

    .line 12
    invoke-virtual {v2}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 13
    invoke-static {v2}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    goto :goto_27

    .line 15
    :cond_25
    iput v6, v2, Ldc/squareup/okio/Segment;->pos:I

    :goto_27
    return v3

    .line 16
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteArray()[B
    .registers 3

    .line 1
    :try_start_0
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer;->readByteArray(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 4
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_16

    long-to-int p2, p1

    .line 9
    new-array p1, p2, [B

    .line 10
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->readFully([B)V

    return-object p1

    .line 11
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteString()Ldc/squareup/okio/ByteString;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/ByteString;

    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ldc/squareup/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Ldc/squareup/okio/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 2
    new-instance v0, Ldc/squareup/okio/ByteString;

    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ldc/squareup/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 18

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c4

    const-wide v1, -0xcccccccccccccccL

    const-wide/16 v5, -0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 13
    :goto_14
    iget-object v10, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 15
    iget-object v11, v10, Ldc/squareup/okio/Segment;->data:[B

    .line 16
    iget v12, v10, Ldc/squareup/okio/Segment;->pos:I

    .line 17
    iget v13, v10, Ldc/squareup/okio/Segment;->limit:I

    :goto_1c
    if-ge v12, v13, :cond_9d

    .line 20
    aget-byte v15, v11, v12

    const/16 v14, 0x30

    if-lt v15, v14, :cond_6a

    const/16 v14, 0x39

    if-gt v15, v14, :cond_6a

    rsub-int/lit8 v14, v15, 0x30

    cmp-long v16, v3, v1

    if-ltz v16, :cond_3d

    if-nez v16, :cond_36

    int-to-long v1, v14

    cmp-long v16, v1, v5

    if-gez v16, :cond_36

    goto :goto_3d

    :cond_36
    const-wide/16 v1, 0xa

    mul-long v3, v3, v1

    int-to-long v1, v14

    add-long/2addr v3, v1

    goto :goto_74

    .line 26
    :cond_3d
    :goto_3d
    new-instance v1, Ldc/squareup/okio/Buffer;

    invoke-direct {v1}, Ldc/squareup/okio/Buffer;-><init>()V

    invoke-virtual {v1, v3, v4}, Ldc/squareup/okio/Buffer;->writeDecimalLong(J)Ldc/squareup/okio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v15}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    move-result-object v1

    if-nez v8, :cond_4f

    .line 27
    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->readByte()B

    .line 28
    :cond_4f
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6a
    const/16 v1, 0x2d

    if-ne v15, v1, :cond_7e

    if-nez v7, :cond_7e

    const-wide/16 v1, 0x1

    sub-long/2addr v5, v1

    const/4 v8, 0x1

    :goto_74
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    const-wide v1, -0xcccccccccccccccL

    goto :goto_1c

    :cond_7e
    if-eqz v7, :cond_82

    const/4 v9, 0x1

    goto :goto_9d

    .line 37
    :cond_82
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9d
    :goto_9d
    if-ne v12, v13, :cond_a9

    .line 47
    invoke-virtual {v10}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v1

    iput-object v1, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 48
    invoke-static {v10}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    goto :goto_ab

    .line 50
    :cond_a9
    iput v12, v10, Ldc/squareup/okio/Segment;->pos:I

    :goto_ab
    if-nez v9, :cond_b9

    .line 52
    iget-object v1, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez v1, :cond_b2

    goto :goto_b9

    :cond_b2
    const-wide v1, -0xcccccccccccccccL

    goto/16 :goto_14

    .line 54
    :cond_b9
    :goto_b9
    iget-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v5, v7

    sub-long/2addr v1, v5

    iput-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    if-eqz v8, :cond_c2

    goto :goto_c3

    :cond_c2
    neg-long v3, v3

    :goto_c3
    return-wide v3

    .line 55
    :cond_c4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readFrom(Ljava/io/InputStream;)Ldc/squareup/okio/Buffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Ldc/squareup/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Ldc/squareup/okio/Buffer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Ldc/squareup/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0

    .line 3
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFully(Ldc/squareup/okio/Buffer;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_a

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    return-void

    .line 6
    :cond_a
    invoke-virtual {p1, p0, v0, v1}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 9
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ldc/squareup/okio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/2addr v0, v1

    goto :goto_1

    .line 10
    :cond_f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_15
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 16

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_ac

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 8
    :cond_b
    iget-object v6, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 10
    iget-object v7, v6, Ldc/squareup/okio/Segment;->data:[B

    .line 11
    iget v8, v6, Ldc/squareup/okio/Segment;->pos:I

    .line 12
    iget v9, v6, Ldc/squareup/okio/Segment;->limit:I

    :goto_13
    if-ge v8, v9, :cond_91

    .line 17
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_22

    const/16 v11, 0x39

    if-gt v10, v11, :cond_22

    add-int/lit8 v11, v10, -0x30

    goto :goto_3a

    :cond_22
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2f

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2f

    add-int/lit8 v11, v10, -0x61

    :goto_2c
    add-int/lit8 v11, v11, 0xa

    goto :goto_3a

    :cond_2f
    const/16 v11, 0x41

    if-lt v10, v11, :cond_72

    const/16 v11, 0x46

    if-gt v10, v11, :cond_72

    add-int/lit8 v11, v10, -0x41

    goto :goto_2c

    :goto_3a
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_4a

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 36
    :cond_4a
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    invoke-virtual {v0, v4, v5}, Ldc/squareup/okio/Buffer;->writeHexadecimalUnsignedLong(J)Ldc/squareup/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    if-eqz v0, :cond_76

    const/4 v1, 0x1

    goto :goto_91

    .line 38
    :cond_76
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    :goto_91
    if-ne v8, v9, :cond_9d

    .line 57
    invoke-virtual {v6}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v7

    iput-object v7, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 58
    invoke-static {v6}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    goto :goto_9f

    .line 60
    :cond_9d
    iput v8, v6, Ldc/squareup/okio/Segment;->pos:I

    :goto_9f
    if-nez v1, :cond_a5

    .line 62
    iget-object v6, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez v6, :cond_b

    .line 64
    :cond_a5
    iget-wide v1, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Ldc/squareup/okio/Buffer;->size:J

    return-wide v4

    .line 65
    :cond_ac
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt()I
    .registers 11

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6a

    .line 3
    iget-object v4, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 4
    iget v5, v4, Ldc/squareup/okio/Segment;->pos:I

    .line 5
    iget v6, v4, Ldc/squareup/okio/Segment;->limit:I

    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_35

    .line 9
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 10
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 15
    :cond_35
    iget-object v7, v4, Ldc/squareup/okio/Segment;->data:[B

    add-int/lit8 v8, v5, 0x1

    .line 16
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 20
    iput-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    if-ne v9, v6, :cond_67

    .line 23
    invoke-virtual {v4}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 24
    invoke-static {v4}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    goto :goto_69

    .line 26
    :cond_67
    iput v9, v4, Ldc/squareup/okio/Segment;->pos:I

    :goto_69
    return v5

    .line 27
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readIntLe()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Ldc/squareup/okio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v3, 0x8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_8d

    .line 3
    iget-object v5, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 4
    iget v6, v5, Ldc/squareup/okio/Segment;->pos:I

    .line 5
    iget v7, v5, Ldc/squareup/okio/Segment;->limit:I

    sub-int v8, v7, v6

    const/16 v9, 0x20

    const/16 v10, 0x8

    if-ge v8, v10, :cond_2c

    .line 9
    invoke-virtual/range {p0 .. p0}, Ldc/squareup/okio/Buffer;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    shl-long/2addr v1, v9

    .line 10
    invoke-virtual/range {p0 .. p0}, Ldc/squareup/okio/Buffer;->readInt()I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1

    .line 13
    :cond_2c
    iget-object v8, v5, Ldc/squareup/okio/Segment;->data:[B

    add-int/lit8 v11, v6, 0x1

    .line 14
    aget-byte v6, v8, v6

    int-to-long v12, v6

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v6, 0x38

    shl-long/2addr v12, v6

    add-int/lit8 v6, v11, 0x1

    aget-byte v11, v8, v11

    int-to-long v3, v11

    and-long/2addr v3, v14

    const/16 v11, 0x30

    shl-long/2addr v3, v11

    or-long/2addr v3, v12

    add-int/lit8 v11, v6, 0x1

    aget-byte v6, v8, v6

    int-to-long v12, v6

    and-long/2addr v12, v14

    const/16 v6, 0x28

    shl-long/2addr v12, v6

    or-long/2addr v3, v12

    add-int/lit8 v6, v11, 0x1

    aget-byte v11, v8, v11

    int-to-long v11, v11

    and-long/2addr v11, v14

    shl-long/2addr v11, v9

    or-long/2addr v3, v11

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    int-to-long v11, v6

    and-long/2addr v11, v14

    const/16 v6, 0x18

    shl-long/2addr v11, v6

    or-long/2addr v3, v11

    add-int/lit8 v6, v9, 0x1

    aget-byte v9, v8, v9

    int-to-long v11, v9

    and-long/2addr v11, v14

    const/16 v9, 0x10

    shl-long/2addr v11, v9

    or-long/2addr v3, v11

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    int-to-long v11, v6

    and-long/2addr v11, v14

    shl-long v10, v11, v10

    or-long/2addr v3, v10

    add-int/lit8 v6, v9, 0x1

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v14

    or-long/2addr v3, v8

    const-wide/16 v8, 0x8

    sub-long/2addr v1, v8

    .line 22
    iput-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    if-ne v6, v7, :cond_8a

    .line 25
    invoke-virtual {v5}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v1

    iput-object v1, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 26
    invoke-static {v5}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    goto :goto_8c

    .line 28
    :cond_8a
    iput v6, v5, Ldc/squareup/okio/Segment;->pos:I

    :goto_8c
    return-wide v3

    .line 29
    :cond_8d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < 8: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLongLe()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldc/squareup/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 11

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_48

    .line 3
    iget-object v4, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 4
    iget v5, v4, Ldc/squareup/okio/Segment;->pos:I

    .line 5
    iget v6, v4, Ldc/squareup/okio/Segment;->limit:I

    sub-int v7, v6, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_24

    .line 9
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 10
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 14
    :cond_24
    iget-object v7, v4, Ldc/squareup/okio/Segment;->data:[B

    add-int/lit8 v8, v5, 0x1

    .line 15
    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    .line 17
    iput-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    if-ne v9, v6, :cond_44

    .line 20
    invoke-virtual {v4}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 21
    invoke-static {v4}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    goto :goto_46

    .line 23
    :cond_44
    iput v9, v4, Ldc/squareup/okio/Segment;->pos:I

    :goto_46
    int-to-short v0, v5

    return v0

    .line 24
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readShortLe()S
    .registers 2

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Ldc/squareup/okio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 4
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    if-eqz p3, :cond_6c

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_55

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1a

    const-string p1, ""

    return-object p1

    .line 11
    :cond_1a
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 12
    iget v1, v0, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Ldc/squareup/okio/Segment;->limit:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_31

    .line 14
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 17
    :cond_31
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v3, v0, Ldc/squareup/okio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 18
    iget p3, v0, Ldc/squareup/okio/Segment;->pos:I

    int-to-long v2, p3

    add-long/2addr v2, p1

    long-to-int p3, v2

    iput p3, v0, Ldc/squareup/okio/Segment;->pos:I

    .line 19
    iget-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    .line 21
    iget p1, v0, Ldc/squareup/okio/Segment;->limit:I

    if-ne p3, p1, :cond_54

    .line 22
    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 23
    invoke-static {v0}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    :cond_54
    return-object v1

    .line 24
    :cond_55
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 25
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Ldc/squareup/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final readUnsafe()Ldc/squareup/okio/Buffer$UnsafeCursor;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->readUnsafe(Ldc/squareup/okio/Buffer$UnsafeCursor;)Ldc/squareup/okio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Ldc/squareup/okio/Buffer$UnsafeCursor;)Ldc/squareup/okio/Buffer$UnsafeCursor;
    .registers 3

    .line 2
    iget-object v0, p1, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    if-nez v0, :cond_a

    .line 6
    iput-object p0, p1, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Ldc/squareup/okio/Buffer$UnsafeCursor;->readWrite:Z

    return-object p1

    .line 8
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    sget-object v2, Ldc/squareup/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Ldc/squareup/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 4
    sget-object v0, Ldc/squareup/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Ldc/squareup/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_ad

    .line 3
    invoke-virtual {p0, v2, v3}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_1c

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_3f

    :cond_1c
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_28

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_3f

    :cond_28
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_34

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_3f

    :cond_34
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a7

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 38
    :goto_3f
    iget-wide v7, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-ltz v11, :cond_75

    :goto_46
    if-ge v2, v5, :cond_5d

    int-to-long v7, v2

    .line 47
    invoke-virtual {p0, v7, v8}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_59

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 53
    :cond_59
    invoke-virtual {p0, v7, v8}, Ldc/squareup/okio/Buffer;->skip(J)V

    return v4

    .line 58
    :cond_5d
    invoke-virtual {p0, v9, v10}, Ldc/squareup/okio/Buffer;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_66

    return v4

    :cond_66
    const v0, 0xd800

    if-lt v1, v0, :cond_71

    const v0, 0xdfff

    if-gt v1, v0, :cond_71

    return v4

    :cond_71
    if-ge v1, v6, :cond_74

    return v4

    :cond_74
    return v1

    .line 59
    :cond_75
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a7
    const-wide/16 v0, 0x1

    .line 61
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer;->skip(J)V

    return v4

    .line 62
    :cond_ad
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    .line 4
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0

    .line 7
    :cond_1b
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1c

    sub-long v2, p1, v0

    .line 8
    invoke-virtual {p0, v2, v3}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1c

    .line 10
    invoke-virtual {p0, v2, v3}, Ldc/squareup/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 11
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer;->skip(J)V

    return-object p1

    .line 16
    :cond_1c
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer;->skip(J)V

    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_92

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_12

    goto :goto_14

    :cond_12
    add-long v2, p1, v0

    :goto_14
    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    move-object v4, p0

    move-wide v8, v2

    .line 2
    invoke-virtual/range {v4 .. v9}, Ldc/squareup/okio/Buffer;->indexOf(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_29

    .line 3
    invoke-virtual {p0, v4, v5}, Ldc/squareup/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_29
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_48

    sub-long v0, v2, v0

    .line 5
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_48

    invoke-virtual {p0, v2, v3}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_48

    .line 6
    invoke-virtual {p0, v2, v3}, Ldc/squareup/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_48
    new-instance v6, Ldc/squareup/okio/Buffer;

    invoke-direct {v6}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 9
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okio/Buffer;->copyTo(Ldc/squareup/okio/Buffer;JJ)Ldc/squareup/okio/Buffer;

    .line 10
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v6}, Ldc/squareup/okio/Buffer;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .registers 6

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public require(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget v2, v1, Ldc/squareup/okio/Segment;->limit:I

    iget v1, v1, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget-object v1, v1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    :goto_20
    iget-object v2, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-eq v1, v2, :cond_33

    .line 5
    iget v2, v1, Ldc/squareup/okio/Segment;->limit:I

    iget v3, v1, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, v1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    goto :goto_20

    :cond_33
    return-object v0
.end method

.method public select(Ldc/squareup/okio/Options;)I
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Ldc/squareup/okio/Buffer;->selectPrefix(Ldc/squareup/okio/Options;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    return v1

    .line 5
    :cond_9
    iget-object p1, p1, Ldc/squareup/okio/Options;->byteStrings:[Ldc/squareup/okio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    .line 7
    :try_start_12
    invoke-virtual {p0, v1, v2}, Ldc/squareup/okio/Buffer;->skip(J)V
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_15} :catch_16

    return v0

    .line 9
    :catch_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method selectPrefix(Ldc/squareup/okio/Options;Z)I
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    const/4 v3, -0x2

    if-nez v2, :cond_13

    if-eqz p2, :cond_c

    return v3

    .line 4
    :cond_c
    sget-object v2, Ldc/squareup/okio/ByteString;->EMPTY:Ldc/squareup/okio/ByteString;

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 8
    :cond_13
    iget-object v4, v2, Ldc/squareup/okio/Segment;->data:[B

    .line 9
    iget v5, v2, Ldc/squareup/okio/Segment;->pos:I

    .line 10
    iget v6, v2, Ldc/squareup/okio/Segment;->limit:I

    .line 12
    iget-object v0, v0, Ldc/squareup/okio/Options;->trie:[I

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v11, v2

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_20
    add-int/lit8 v12, v9, 0x1

    .line 19
    aget v9, v0, v9

    add-int/lit8 v13, v12, 0x1

    .line 21
    aget v12, v0, v12

    if-eq v12, v8, :cond_2b

    move v10, v12

    :cond_2b
    if-nez v11, :cond_2e

    goto :goto_55

    :cond_2e
    const/4 v12, 0x0

    if-gez v9, :cond_75

    mul-int/lit8 v9, v9, -0x1

    add-int v14, v13, v9

    :goto_35
    add-int/lit8 v9, v5, 0x1

    .line 35
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v15, v13, 0x1

    .line 36
    aget v13, v0, v13

    if-eq v5, v13, :cond_42

    return v10

    :cond_42
    if-ne v15, v14, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    if-ne v9, v6, :cond_62

    .line 41
    iget-object v4, v11, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    .line 42
    iget v6, v4, Ldc/squareup/okio/Segment;->pos:I

    .line 43
    iget-object v9, v4, Ldc/squareup/okio/Segment;->data:[B

    .line 44
    iget v11, v4, Ldc/squareup/okio/Segment;->limit:I

    if-ne v4, v2, :cond_5c

    if-nez v5, :cond_59

    :goto_55
    if-eqz p2, :cond_58

    return v3

    :cond_58
    return v10

    :cond_59
    move-object v4, v9

    move-object v9, v12

    goto :goto_68

    :cond_5c
    move-object/from16 v16, v9

    move-object v9, v4

    move-object/from16 v4, v16

    goto :goto_68

    :cond_62
    move-object/from16 v16, v11

    move v11, v6

    move v6, v9

    move-object/from16 v9, v16

    :goto_68
    if-eqz v5, :cond_70

    .line 52
    aget v5, v0, v15

    move v3, v6

    move v6, v11

    move-object v11, v9

    goto :goto_96

    :cond_70
    move v5, v6

    move v6, v11

    move v13, v15

    move-object v11, v9

    goto :goto_35

    :cond_75
    add-int/lit8 v14, v5, 0x1

    .line 59
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int v15, v13, v9

    :goto_7d
    if-ne v13, v15, :cond_80

    return v10

    .line 64
    :cond_80
    aget v3, v0, v13

    if-ne v5, v3, :cond_9d

    add-int/2addr v13, v9

    .line 65
    aget v5, v0, v13

    if-ne v14, v6, :cond_95

    .line 74
    iget-object v11, v11, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    .line 75
    iget v3, v11, Ldc/squareup/okio/Segment;->pos:I

    .line 76
    iget-object v4, v11, Ldc/squareup/okio/Segment;->data:[B

    .line 77
    iget v6, v11, Ldc/squareup/okio/Segment;->limit:I

    if-ne v11, v2, :cond_96

    move-object v11, v12

    goto :goto_96

    :cond_95
    move v3, v14

    :cond_96
    :goto_96
    if-ltz v5, :cond_99

    return v5

    :cond_99
    neg-int v9, v5

    move v5, v3

    const/4 v3, -0x2

    goto :goto_20

    :cond_9d
    add-int/lit8 v13, v13, 0x1

    const/4 v3, -0x2

    goto :goto_7d
.end method

.method public final sha1()Ldc/squareup/okio/ByteString;
    .registers 2

    const-string v0, "SHA-1"

    .line 1
    invoke-direct {p0, v0}, Ldc/squareup/okio/Buffer;->digest(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Ldc/squareup/okio/ByteString;
    .registers 2

    const-string v0, "SHA-256"

    .line 1
    invoke-direct {p0, v0}, Ldc/squareup/okio/Buffer;->digest(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Ldc/squareup/okio/ByteString;
    .registers 2

    const-string v0, "SHA-512"

    .line 1
    invoke-direct {p0, v0}, Ldc/squareup/okio/Buffer;->digest(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_37

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-eqz v0, :cond_31

    .line 3
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v0, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 4
    iget-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    sub-long/2addr p1, v4

    .line 6
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Ldc/squareup/okio/Segment;->pos:I

    .line 8
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    if-ne v2, v1, :cond_0

    .line 10
    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v1

    iput-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 11
    invoke-static {v0}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    goto :goto_0

    .line 12
    :cond_31
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_37
    return-void
.end method

.method public final snapshot()Ldc/squareup/okio/ByteString;
    .registers 6

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    long-to-int v1, v0

    .line 4
    invoke-virtual {p0, v1}, Ldc/squareup/okio/Buffer;->snapshot(I)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0

    .line 5
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final snapshot(I)Ldc/squareup/okio/ByteString;
    .registers 3

    if-nez p1, :cond_5

    .line 6
    sget-object p1, Ldc/squareup/okio/ByteString;->EMPTY:Ldc/squareup/okio/ByteString;

    return-object p1

    .line 7
    :cond_5
    new-instance v0, Ldc/squareup/okio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okio/SegmentedByteString;-><init>(Ldc/squareup/okio/Buffer;I)V

    return-object v0
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    sget-object v0, Ldc/squareup/okio/Timeout;->NONE:Ldc/squareup/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->snapshot()Ldc/squareup/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Ldc/squareup/okio/Segment;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2a

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2a

    .line 1
    iget-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez v1, :cond_16

    .line 2
    invoke-static {}, Ldc/squareup/okio/SegmentPool;->take()Ldc/squareup/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 3
    iput-object p1, p1, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    iput-object p1, p1, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    return-object p1

    .line 6
    :cond_16
    iget-object v1, v1, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 7
    iget v2, v1, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_21

    iget-boolean p1, v1, Ldc/squareup/okio/Segment;->owner:Z

    if-nez p1, :cond_29

    .line 8
    :cond_21
    invoke-static {}, Ldc/squareup/okio/SegmentPool;->take()Ldc/squareup/okio/Segment;

    move-result-object p1

    invoke-virtual {v1, p1}, Ldc/squareup/okio/Segment;->push(Ldc/squareup/okio/Segment;)Ldc/squareup/okio/Segment;

    move-result-object v1

    :cond_29
    return-object v1

    .line 9
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2b

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_7
    if-lez v1, :cond_24

    const/4 v2, 0x1

    .line 26
    invoke-virtual {p0, v2}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v2

    .line 28
    iget v3, v2, Ldc/squareup/okio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 29
    iget-object v4, v2, Ldc/squareup/okio/Segment;->data:[B

    iget v5, v2, Ldc/squareup/okio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 32
    iget v4, v2, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Ldc/squareup/okio/Segment;->limit:I

    goto :goto_7

    .line 35
    :cond_24
    iget-wide v1, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Ldc/squareup/okio/Buffer;->size:J

    return v0

    .line 36
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;
    .registers 3

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1, p0}, Ldc/squareup/okio/ByteString;->write(Ldc/squareup/okio/Buffer;)V

    return-object p0

    .line 5
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Ldc/squareup/okio/Buffer;
    .registers 4

    if-eqz p1, :cond_9

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ldc/squareup/okio/Buffer;->write([BII)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Ldc/squareup/okio/Buffer;
    .registers 13

    if-eqz p1, :cond_30

    .line 8
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_b
    if-ge p2, p3, :cond_2a

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    .line 14
    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    iget-object v2, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v3, v0, Ldc/squareup/okio/Segment;->limit:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 18
    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Ldc/squareup/okio/Segment;->limit:I

    goto :goto_b

    .line 21
    :cond_2a
    iget-wide p1, p0, Ldc/squareup/okio/Buffer;->size:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Ldc/squareup/okio/Buffer;->size:J

    return-object p0

    .line 22
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Ldc/squareup/okio/Source;J)Ldc/squareup/okio/BufferedSink;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_18

    .line 37
    invoke-interface {p1, p0, p2, p3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    sub-long/2addr p2, v0

    goto :goto_0

    .line 38
    :cond_12
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_18
    return-object p0
.end method

.method public bridge synthetic write([B)Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->write([B)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Ldc/squareup/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->write([BII)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Ldc/squareup/okio/Buffer;J)V
    .registers 11

    if-eqz p1, :cond_8d

    if-eq p1, p0, :cond_85

    .line 39
    iget-wide v0, p1, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_84

    .line 43
    iget-object v0, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_56

    .line 44
    iget-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-eqz v1, :cond_25

    iget-object v1, v1, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    if-eqz v1, :cond_4f

    .line 45
    iget-boolean v2, v1, Ldc/squareup/okio/Segment;->owner:Z

    if-eqz v2, :cond_4f

    iget v2, v1, Ldc/squareup/okio/Segment;->limit:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v1, Ldc/squareup/okio/Segment;->shared:Z

    if-eqz v4, :cond_36

    const/4 v4, 0x0

    goto :goto_38

    :cond_36
    iget v4, v1, Ldc/squareup/okio/Segment;->pos:I

    :goto_38
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4f

    long-to-int v2, p2

    .line 48
    invoke-virtual {v0, v1, v2}, Ldc/squareup/okio/Segment;->writeTo(Ldc/squareup/okio/Segment;I)V

    .line 49
    iget-wide v0, p1, Ldc/squareup/okio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Ldc/squareup/okio/Buffer;->size:J

    .line 50
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    return-void

    :cond_4f
    long-to-int v1, p2

    .line 55
    invoke-virtual {v0, v1}, Ldc/squareup/okio/Segment;->split(I)Ldc/squareup/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 60
    :cond_56
    iget-object v0, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 61
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 62
    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v3

    iput-object v3, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 63
    iget-object v3, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-nez v3, :cond_6f

    .line 64
    iput-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 65
    iput-object v0, v0, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    iput-object v0, v0, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    goto :goto_78

    .line 67
    :cond_6f
    iget-object v3, v3, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 68
    invoke-virtual {v3, v0}, Ldc/squareup/okio/Segment;->push(Ldc/squareup/okio/Segment;)Ldc/squareup/okio/Segment;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->compact()V

    .line 71
    :goto_78
    iget-wide v3, p1, Ldc/squareup/okio/Buffer;->size:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Ldc/squareup/okio/Buffer;->size:J

    .line 72
    iget-wide v3, p0, Ldc/squareup/okio/Buffer;->size:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ldc/squareup/okio/Buffer;->size:J

    sub-long/2addr p2, v1

    goto :goto_c

    :cond_84
    return-void

    .line 73
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Ldc/squareup/okio/Source;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_13

    const-wide/16 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x2000

    .line 1
    invoke-interface {p1, p0, v2, v3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_12

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0

    .line 2
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Ldc/squareup/okio/Buffer;
    .registers 6

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v0

    .line 3
    iget-object v1, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Ldc/squareup/okio/Segment;->limit:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 4
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Ldc/squareup/okio/Buffer;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 2
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1e

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    const-string p1, "-9223372036854775808"

    .line 9
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 v3, 0x1

    :cond_1e
    const-wide/32 v5, 0x5f5e100

    const-wide/16 v7, 0xa

    cmp-long v2, p1, v5

    if-gez v2, :cond_6a

    const-wide/16 v5, 0x2710

    cmp-long v2, p1, v5

    if-gez v2, :cond_48

    const-wide/16 v5, 0x64

    cmp-long v2, p1, v5

    if-gez v2, :cond_3c

    cmp-long v2, p1, v7

    if-gez v2, :cond_39

    goto/16 :goto_e2

    :cond_39
    const/4 v4, 0x2

    goto/16 :goto_e2

    :cond_3c
    const-wide/16 v4, 0x3e8

    cmp-long v2, p1, v4

    if-gez v2, :cond_45

    const/4 v4, 0x3

    goto/16 :goto_e2

    :cond_45
    const/4 v4, 0x4

    goto/16 :goto_e2

    :cond_48
    const-wide/32 v4, 0xf4240

    cmp-long v2, p1, v4

    if-gez v2, :cond_5c

    const-wide/32 v4, 0x186a0

    cmp-long v2, p1, v4

    if-gez v2, :cond_59

    const/4 v4, 0x5

    goto/16 :goto_e2

    :cond_59
    const/4 v4, 0x6

    goto/16 :goto_e2

    :cond_5c
    const-wide/32 v4, 0x989680

    cmp-long v2, p1, v4

    if-gez v2, :cond_66

    const/4 v4, 0x7

    goto/16 :goto_e2

    :cond_66
    const/16 v4, 0x8

    goto/16 :goto_e2

    :cond_6a
    const-wide v4, 0xe8d4a51000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_98

    const-wide v4, 0x2540be400L

    cmp-long v2, p1, v4

    if-gez v2, :cond_89

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, p1, v4

    if-gez v2, :cond_86

    const/16 v4, 0x9

    goto :goto_e2

    :cond_86
    const/16 v4, 0xa

    goto :goto_e2

    :cond_89
    const-wide v4, 0x174876e800L

    cmp-long v2, p1, v4

    if-gez v2, :cond_95

    const/16 v4, 0xb

    goto :goto_e2

    :cond_95
    const/16 v4, 0xc

    goto :goto_e2

    :cond_98
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_bc

    const-wide v4, 0x9184e72a000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_ad

    const/16 v4, 0xd

    goto :goto_e2

    :cond_ad
    const-wide v4, 0x5af3107a4000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_b9

    const/16 v4, 0xe

    goto :goto_e2

    :cond_b9
    const/16 v4, 0xf

    goto :goto_e2

    :cond_bc
    const-wide v4, 0x16345785d8a0000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_d4

    const-wide v4, 0x2386f26fc10000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_d1

    const/16 v4, 0x10

    goto :goto_e2

    :cond_d1
    const/16 v4, 0x11

    goto :goto_e2

    :cond_d4
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_e0

    const/16 v4, 0x12

    goto :goto_e2

    :cond_e0
    const/16 v4, 0x13

    :goto_e2
    if-eqz v3, :cond_e6

    add-int/lit8 v4, v4, 0x1

    .line 38
    :cond_e6
    invoke-virtual {p0, v4}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v2

    .line 39
    iget-object v5, v2, Ldc/squareup/okio/Segment;->data:[B

    .line 40
    iget v6, v2, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr v6, v4

    :goto_ef
    cmp-long v9, p1, v0

    if-eqz v9, :cond_100

    .line 42
    rem-long v9, p1, v7

    long-to-int v10, v9

    add-int/lit8 v6, v6, -0x1

    .line 43
    sget-object v9, Ldc/squareup/okio/Buffer;->DIGITS:[B

    aget-byte v9, v9, v10

    aput-byte v9, v5, v6

    .line 44
    div-long/2addr p1, v7

    goto :goto_ef

    :cond_100
    if-eqz v3, :cond_108

    add-int/lit8 v6, v6, -0x1

    const/16 p1, 0x2d

    .line 47
    aput-byte p1, v5, v6

    .line 50
    :cond_108
    iget p1, v2, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr p1, v4

    iput p1, v2, Ldc/squareup/okio/Segment;->limit:I

    .line 51
    iget-wide p1, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Ldc/squareup/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/Buffer;->writeDecimalLong(J)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Ldc/squareup/okio/Buffer;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 2
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v2

    .line 8
    iget-object v3, v2, Ldc/squareup/okio/Segment;->data:[B

    .line 9
    iget v4, v2, Ldc/squareup/okio/Segment;->limit:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_25
    if-lt v5, v4, :cond_35

    .line 10
    sget-object v6, Ldc/squareup/okio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_25

    .line 13
    :cond_35
    iget p1, v2, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v2, Ldc/squareup/okio/Segment;->limit:I

    .line 14
    iget-wide p1, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Ldc/squareup/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/Buffer;->writeHexadecimalUnsignedLong(J)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Ldc/squareup/okio/Buffer;
    .registers 7

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v0

    .line 3
    iget-object v1, v0, Ldc/squareup/okio/Segment;->data:[B

    .line 4
    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 7
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v1, v3

    .line 9
    iput v2, v0, Ldc/squareup/okio/Segment;->limit:I

    .line 10
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeIntLe(I)Ldc/squareup/okio/Buffer;
    .registers 2

    .line 2
    invoke-static {p1}, Ldc/squareup/okio/Util;->reverseBytesInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeIntLe(I)Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeIntLe(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Ldc/squareup/okio/Buffer;
    .registers 12

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v1

    .line 3
    iget-object v2, v1, Ldc/squareup/okio/Segment;->data:[B

    .line 4
    iget v3, v1, Ldc/squareup/okio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 5
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 6
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 7
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 8
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 9
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 10
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 11
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 12
    aput-byte p1, v2, v4

    .line 13
    iput v0, v1, Ldc/squareup/okio/Segment;->limit:I

    .line 14
    iget-wide p1, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Ldc/squareup/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/Buffer;->writeLong(J)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLongLe(J)Ldc/squareup/okio/Buffer;
    .registers 3

    .line 2
    invoke-static {p1, p2}, Ldc/squareup/okio/Util;->reverseBytesLong(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/Buffer;->writeLong(J)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeLongLe(J)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/Buffer;->writeLongLe(J)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Ldc/squareup/okio/Buffer;
    .registers 7

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v0

    .line 3
    iget-object v1, v0, Ldc/squareup/okio/Segment;->data:[B

    .line 4
    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 6
    aput-byte p1, v1, v3

    .line 7
    iput v2, v0, Ldc/squareup/okio/Segment;->limit:I

    .line 8
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeShort(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShortLe(I)Ldc/squareup/okio/Buffer;
    .registers 2

    int-to-short p1, p1

    .line 2
    invoke-static {p1}, Ldc/squareup/okio/Util;->reverseBytesShort(S)S

    move-result p1

    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeShort(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeShortLe(I)Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeShortLe(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Ldc/squareup/okio/Buffer;
    .registers 6

    if-eqz p1, :cond_8b

    if-ltz p2, :cond_74

    if-lt p3, p2, :cond_55

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    if-eqz p4, :cond_2a

    .line 9
    sget-object v0, Ldc/squareup/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 11
    array-length p2, p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Ldc/squareup/okio/Buffer;->write([BII)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_74
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beginIndex < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ldc/squareup/okio/Buffer;
    .registers 5

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Ldc/squareup/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Ldc/squareup/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ldc/squareup/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;)Ldc/squareup/okio/Buffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Ldc/squareup/okio/Buffer;->writeTo(Ljava/io/OutputStream;J)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Ldc/squareup/okio/Buffer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_40

    .line 2
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 4
    iget-object v0, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    :cond_c
    :goto_c
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_3f

    .line 6
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 7
    iget-object v1, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v3, v0, Ldc/squareup/okio/Segment;->pos:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    iget v1, v0, Ldc/squareup/okio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Ldc/squareup/okio/Segment;->pos:I

    .line 10
    iget-wide v3, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Ldc/squareup/okio/Buffer;->size:J

    sub-long/2addr p2, v5

    .line 13
    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    if-ne v1, v2, :cond_c

    .line 15
    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v1

    iput-object v1, p0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 16
    invoke-static {v0}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    move-object v0, v1

    goto :goto_c

    :cond_3f
    return-object p0

    .line 17
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/Buffer;
    .registers 4

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ldc/squareup/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Ldc/squareup/okio/Buffer;
    .registers 11

    if-eqz p1, :cond_124

    if-ltz p2, :cond_10d

    if-lt p3, p2, :cond_ee

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_cb

    :goto_c
    if-ge p2, p3, :cond_ca

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4b

    const/4 v2, 0x1

    .line 14
    invoke-virtual {p0, v2}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v2

    .line 15
    iget-object v3, v2, Ldc/squareup/okio/Segment;->data:[B

    .line 16
    iget v4, v2, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 17
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 20
    aput-byte v0, v3, p2

    :goto_2c
    move p2, v6

    if-ge p2, v5, :cond_3d

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v1, :cond_36

    goto :goto_3d

    :cond_36
    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 27
    aput-byte v0, v3, p2

    goto :goto_2c

    :cond_3d
    :goto_3d
    add-int/2addr v4, p2

    .line 30
    iget v0, v2, Ldc/squareup/okio/Segment;->limit:I

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    .line 31
    iput v0, v2, Ldc/squareup/okio/Segment;->limit:I

    .line 32
    iget-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldc/squareup/okio/Buffer;->size:J

    goto :goto_c

    :cond_4b
    const/16 v2, 0x800

    if-ge v0, v2, :cond_5f

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 36
    invoke-virtual {p0, v2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 37
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    :goto_5c
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_5f
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b5

    const v2, 0xdfff

    if-le v0, v2, :cond_6c

    goto :goto_b5

    :cond_6c
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_75

    .line 50
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_76

    :cond_75
    const/4 v5, 0x0

    :goto_76
    const v6, 0xdbff

    if-gt v0, v6, :cond_af

    const v6, 0xdc00

    if-lt v5, v6, :cond_af

    if-le v5, v2, :cond_83

    goto :goto_af

    :cond_83
    const v2, -0xd801

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0xa

    const v2, -0xdc01

    and-int/2addr v2, v5

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 63
    invoke-virtual {p0, v2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 64
    invoke-virtual {p0, v2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 65
    invoke-virtual {p0, v2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 66
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_c

    .line 67
    :cond_af
    :goto_af
    invoke-virtual {p0, v3}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    move p2, v4

    goto/16 :goto_c

    :cond_b5
    :goto_b5
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 68
    invoke-virtual {p0, v2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 69
    invoke-virtual {p0, v2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 70
    invoke-virtual {p0, v0}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    goto :goto_5c

    :cond_ca
    return-object p0

    .line 71
    :cond_cb
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 73
    :cond_ee
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_10d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Ldc/squareup/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Ldc/squareup/okio/Buffer;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 2
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    goto :goto_60

    :cond_8
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1b

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 6
    invoke-virtual {p0, v1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 7
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    goto :goto_60

    :cond_1b
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_41

    const v1, 0xd800

    if-lt p1, v1, :cond_2d

    const v1, 0xdfff

    if-gt p1, v1, :cond_2d

    .line 12
    invoke-virtual {p0, v2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    goto :goto_60

    :cond_2d
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 15
    invoke-virtual {p0, v1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 16
    invoke-virtual {p0, v1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 17
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    goto :goto_60

    :cond_41
    const v1, 0x10ffff

    if-gt p1, v1, :cond_61

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 22
    invoke-virtual {p0, v1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 23
    invoke-virtual {p0, v1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 24
    invoke-virtual {p0, v1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 25
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    :goto_60
    return-object p0

    .line 28
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Ldc/squareup/okio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Buffer;->writeUtf8CodePoint(I)Ldc/squareup/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

###### Class dc.squareup.okio.Buffer.AnonymousClass1 (dc.squareup.okio.Buffer$1)
.class Ldc/squareup/okio/Buffer$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okio/Buffer;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okio/Buffer;


# direct methods
.method constructor <init>(Ldc/squareup/okio/Buffer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okio/Buffer$1;->this$0:Ldc/squareup/okio/Buffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldc/squareup/okio/Buffer$1;->this$0:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer$1;->this$0:Ldc/squareup/okio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/Buffer$1;->this$0:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->write([BII)Ldc/squareup/okio/Buffer;

    return-void
.end method

###### Class dc.squareup.okio.Buffer.AnonymousClass2 (dc.squareup.okio.Buffer$2)
.class Ldc/squareup/okio/Buffer$2;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okio/Buffer;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okio/Buffer;


# direct methods
.method constructor <init>(Ldc/squareup/okio/Buffer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okio/Buffer$2;->this$0:Ldc/squareup/okio/Buffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer$2;->this$0:Ldc/squareup/okio/Buffer;

    iget-wide v0, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public read()I
    .registers 7

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer$2;->this$0:Ldc/squareup/okio/Buffer;

    iget-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_11

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 5

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/Buffer$2;->this$0:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldc/squareup/okio/Buffer$2;->this$0:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class dc.squareup.okio.Buffer.UnsafeCursor (dc.squareup.okio.Buffer$UnsafeCursor)
.class public final Ldc/squareup/okio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Ldc/squareup/okio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Ldc/squareup/okio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 9
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    .line 6
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    const-wide/16 v1, -0x1

    .line 7
    iput-wide v1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 8
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 10
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    return-void

    .line 11
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final expandBuffer(I)J
    .registers 11

    if-lez p1, :cond_57

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_40

    .line 1
    iget-object v1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    if-eqz v1, :cond_38

    .line 4
    iget-boolean v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_30

    .line 8
    iget-wide v2, v1, Ldc/squareup/okio/Buffer;->size:J

    .line 9
    invoke-virtual {v1, p1}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object p1

    .line 10
    iget v1, p1, Ldc/squareup/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    .line 11
    iput v0, p1, Ldc/squareup/okio/Segment;->limit:I

    .line 12
    iget-object v4, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    int-to-long v5, v1

    add-long v7, v2, v5

    iput-wide v7, v4, Ldc/squareup/okio/Buffer;->size:J

    .line 15
    iput-object p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 16
    iput-wide v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 17
    iget-object p1, p1, Ldc/squareup/okio/Segment;->data:[B

    iput-object p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    rsub-int p1, v1, 0x2000

    .line 18
    iput p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 19
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    return-wide v5

    .line 20
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()I
    .registers 6

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v2, v2, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_23

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 3
    :cond_17
    iget v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 4
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final resizeBuffer(J)J
    .registers 16

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    if-eqz v0, :cond_9f

    .line 4
    iget-boolean v1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_97

    .line 8
    iget-wide v0, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_5f

    cmp-long v4, p1, v2

    if-ltz v4, :cond_48

    sub-long v4, v0, p1

    :goto_16
    cmp-long v6, v4, v2

    if-lez v6, :cond_3b

    .line 15
    iget-object v6, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v7, v6, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget-object v7, v7, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 16
    iget v8, v7, Ldc/squareup/okio/Segment;->limit:I

    iget v9, v7, Ldc/squareup/okio/Segment;->pos:I

    sub-int v9, v8, v9

    int-to-long v9, v9

    cmp-long v11, v9, v4

    if-gtz v11, :cond_36

    .line 18
    invoke-virtual {v7}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v8

    iput-object v8, v6, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 19
    invoke-static {v7}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    sub-long/2addr v4, v9

    goto :goto_16

    :cond_36
    int-to-long v2, v8

    sub-long/2addr v2, v4

    long-to-int v3, v2

    .line 22
    iput v3, v7, Ldc/squareup/okio/Segment;->limit:I

    :cond_3b
    const/4 v2, 0x0

    .line 27
    iput-object v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 28
    iput-wide p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 29
    iput-object v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    const/4 v2, -0x1

    .line 30
    iput v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 31
    iput v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    goto :goto_92

    .line 32
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    if-lez v4, :cond_92

    sub-long v4, p1, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :cond_65
    :goto_65
    cmp-long v8, v4, v2

    if-lez v8, :cond_92

    .line 57
    iget-object v8, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v8, v6}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v8

    .line 58
    iget v9, v8, Ldc/squareup/okio/Segment;->limit:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    .line 59
    iget v9, v8, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr v9, v10

    iput v9, v8, Ldc/squareup/okio/Segment;->limit:I

    int-to-long v11, v10

    sub-long/2addr v4, v11

    if-eqz v7, :cond_65

    .line 64
    iput-object v8, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 65
    iput-wide v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 66
    iget-object v7, v8, Ldc/squareup/okio/Segment;->data:[B

    iput-object v7, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    sub-int v7, v9, v10

    .line 67
    iput v7, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 68
    iput v9, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    const/4 v7, 0x0

    goto :goto_65

    .line 74
    :cond_92
    :goto_92
    iget-object v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iput-wide p1, v2, Ldc/squareup/okio/Buffer;->size:J

    return-wide v0

    .line 75
    :cond_97
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_9f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final seek(J)I
    .registers 15

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_97

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v3, v0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v1, p1, v3

    if-gtz v1, :cond_97

    if-eqz v2, :cond_8a

    if-nez v1, :cond_14

    goto/16 :goto_8a

    :cond_14
    const-wide/16 v1, 0x0

    .line 18
    iget-object v0, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 20
    iget-object v5, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    if-eqz v5, :cond_30

    .line 21
    iget-wide v6, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    iget v8, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    iget v9, v5, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, p1

    if-lez v8, :cond_2e

    move-wide v3, v6

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    goto :goto_31

    :cond_2e
    move-wide v1, v6

    goto :goto_31

    :cond_30
    move-object v5, v0

    :goto_31
    sub-long v6, v3, p1

    sub-long v8, p1, v1

    cmp-long v10, v6, v8

    if-lez v10, :cond_48

    .line 39
    :goto_39
    iget v0, v5, Ldc/squareup/okio/Segment;->limit:I

    iget v3, v5, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v3, v1

    cmp-long v0, p1, v3

    if-ltz v0, :cond_58

    .line 41
    iget-object v5, v5, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide v1, v3

    goto :goto_39

    :cond_48
    :goto_48
    cmp-long v1, v3, p1

    if-lez v1, :cond_56

    .line 48
    iget-object v0, v0, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 49
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v3, v1

    goto :goto_48

    :cond_56
    move-object v5, v0

    move-wide v1, v3

    .line 54
    :cond_58
    iget-boolean v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v0, :cond_75

    iget-boolean v0, v5, Ldc/squareup/okio/Segment;->shared:Z

    if-eqz v0, :cond_75

    .line 55
    invoke-virtual {v5}, Ldc/squareup/okio/Segment;->unsharedCopy()Ldc/squareup/okio/Segment;

    move-result-object v0

    .line 56
    iget-object v3, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v4, v3, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-ne v4, v5, :cond_6c

    .line 57
    iput-object v0, v3, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 59
    :cond_6c
    invoke-virtual {v5, v0}, Ldc/squareup/okio/Segment;->push(Ldc/squareup/okio/Segment;)Ldc/squareup/okio/Segment;

    move-result-object v5

    .line 60
    iget-object v0, v5, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    .line 64
    :cond_75
    iput-object v5, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 65
    iput-wide p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 66
    iget-object v0, v5, Ldc/squareup/okio/Segment;->data:[B

    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    .line 67
    iget v0, v5, Ldc/squareup/okio/Segment;->pos:I

    sub-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 68
    iget p1, v5, Ldc/squareup/okio/Segment;->limit:I

    iput p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    sub-int/2addr p1, v0

    return p1

    :cond_8a
    :goto_8a
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 70
    iput-wide p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 71
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 73
    iput p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    return p1

    .line 74
    :cond_97
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    iget-object p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide p1, p1, Ldc/squareup/okio/Buffer;->size:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "offset=%s > size=%s"

    invoke-static {p1, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
