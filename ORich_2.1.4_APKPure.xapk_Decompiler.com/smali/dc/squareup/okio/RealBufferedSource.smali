###### Class dc.squareup.okio.RealBufferedSource (dc.squareup.okio.RealBufferedSource)
.class final Ldc/squareup/okio/RealBufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/BufferedSource;


# instance fields
.field public final buffer:Ldc/squareup/okio/Buffer;

.field closed:Z

.field public final source:Ldc/squareup/okio/Source;


# direct methods
.method constructor <init>(Ldc/squareup/okio/Source;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    const-string v0, "source == null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    return-void
.end method


# virtual methods
.method public buffer()Ldc/squareup/okio/Buffer;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    .line 3
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->close()V

    .line 4
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->clear()V

    return-void
.end method

.method public exhausted()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_20

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 3
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuffer()Ldc/squareup/okio/Buffer;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    return-object v0
.end method

.method public indexOf(B)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public indexOf(BJJ)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_5a

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3d

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3d

    :goto_e
    const-wide/16 v7, -0x1

    cmp-long v0, p2, p4

    if-gez v0, :cond_3c

    .line 10
    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Ldc/squareup/okio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_22

    return-wide v0

    .line 15
    :cond_22
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_3c

    .line 16
    iget-object v3, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_37

    goto :goto_3c

    .line 19
    :cond_37
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_e

    :cond_3c
    :goto_3c
    return-wide v7

    .line 20
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Ldc/squareup/okio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->indexOf(Ldc/squareup/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Ldc/squareup/okio/ByteString;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_30

    .line 27
    :goto_4
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->indexOf(Ldc/squareup/okio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    return-wide v0

    .line 30
    :cond_11
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v4, v0, Ldc/squareup/okio/Buffer;->size:J

    .line 31
    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v6, 0x2000

    invoke-interface {v1, v0, v6, v7}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_22

    return-wide v2

    .line 34
    :cond_22
    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_4

    .line 35
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOfElement(Ldc/squareup/okio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->indexOfElement(Ldc/squareup/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Ldc/squareup/okio/ByteString;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_27

    .line 5
    :goto_4
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->indexOfElement(Ldc/squareup/okio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    return-wide v0

    .line 8
    :cond_11
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v4, v0, Ldc/squareup/okio/Buffer;->size:J

    .line 9
    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v6, 0x2000

    invoke-interface {v1, v0, v6, v7}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_22

    return-wide v2

    .line 12
    :cond_22
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_4

    .line 13
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Ldc/squareup/okio/RealBufferedSource$1;-><init>(Ldc/squareup/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ldc/squareup/okio/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okio/RealBufferedSource;->rangeEquals(JLdc/squareup/okio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLdc/squareup/okio/ByteString;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3b

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_3a

    if-ltz p4, :cond_3a

    if-ltz p5, :cond_3a

    .line 7
    invoke-virtual {p3}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_17

    goto :goto_3a

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-ge v0, p5, :cond_38

    int-to-long v3, v0

    add-long/2addr v3, p1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    .line 12
    invoke-virtual {p0, v5, v6}, Ldc/squareup/okio/RealBufferedSource;->request(J)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    .line 13
    :cond_26
    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1, v3, v4}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v1

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v3

    if-eq v1, v3, :cond_35

    return v2

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_38
    const/4 p1, 0x1

    return p1

    :cond_3a
    :goto_3a
    return v2

    .line 14
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    .line 24
    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 p1, -0x1

    return p1

    .line 28
    :cond_1a
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ldc/squareup/okio/RealBufferedSource;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 16
    iget-object p3, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v0, p3, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_22

    .line 17
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v1, 0x2000

    invoke-interface {v0, p3, v1, v2}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_22

    const/4 p1, -0x1

    return p1

    .line 21
    :cond_22
    iget-object p3, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v0, p3, Ldc/squareup/okio/Buffer;->size:J

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 22
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_51

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3a

    .line 1
    iget-boolean v2, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v2, :cond_32

    .line 3
    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v3, v2, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_23

    .line 4
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    return-wide v2

    .line 8
    :cond_23
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v0, v0, Ldc/squareup/okio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1

    return-wide p1

    .line 10
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3a
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

    .line 12
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAll(Ldc/squareup/okio/Sink;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_41

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 1
    :cond_5
    :goto_5
    iget-object v4, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    iget-object v5, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_26

    .line 2
    iget-object v4, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v4}, Ldc/squareup/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    add-long/2addr v2, v4

    .line 5
    iget-object v6, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-interface {p1, v6, v4, v5}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    goto :goto_5

    .line 8
    :cond_26
    iget-object v4, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v4}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_40

    .line 9
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 10
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    :cond_40
    return-wide v2

    .line 11
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    invoke-virtual {v0, v1}, Ldc/squareup/okio/Buffer;->writeAll(Ldc/squareup/okio/Source;)J

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 4
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okio/Buffer;->readByteArray(J)[B

    move-result-object p1

    return-object p1
.end method

.method public readByteString()Ldc/squareup/okio/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    invoke-virtual {v0, v1}, Ldc/squareup/okio/Buffer;->writeAll(Ldc/squareup/okio/Source;)J

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Ldc/squareup/okio/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 4
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okio/Buffer;->readByteString(J)Ldc/squareup/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public readDecimalLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    .line 3
    invoke-virtual {p0, v3, v4}, Ldc/squareup/okio/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 4
    iget-object v3, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_26

    :cond_1f
    if-nez v1, :cond_28

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_26

    goto :goto_28

    :cond_26
    move v1, v2

    goto :goto_7

    :cond_28
    :goto_28
    if-eqz v1, :cond_2b

    goto :goto_40

    .line 8
    :cond_2b
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9] or \'-\' character but was %#x"

    .line 10
    invoke-static {v0, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_40
    :goto_40
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully(Ldc/squareup/okio/Buffer;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ldc/squareup/okio/RealBufferedSource;->require(J)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_9

    .line 25
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->readFully(Ldc/squareup/okio/Buffer;J)V

    return-void

    :catch_9
    move-exception p2

    .line 26
    iget-object p3, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1, p3}, Ldc/squareup/okio/Buffer;->writeAll(Ldc/squareup/okio/Source;)J

    .line 27
    throw p2
.end method

.method public readFully([B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_b

    .line 12
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->readFully([B)V

    return-void

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    .line 13
    :goto_d
    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v3, v2, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_27

    long-to-int v4, v3

    .line 14
    invoke-virtual {v2, p1, v1, v4}, Ldc/squareup/okio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    add-int/2addr v1, v2

    goto :goto_d

    .line 15
    :cond_21
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_27
    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    .line 3
    invoke-virtual {p0, v3, v4}, Ldc/squareup/okio/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 4
    iget-object v3, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_30

    :cond_1f
    const/16 v4, 0x61

    if-lt v3, v4, :cond_27

    const/16 v4, 0x66

    if-le v3, v4, :cond_30

    :cond_27
    const/16 v4, 0x41

    if-lt v3, v4, :cond_32

    const/16 v4, 0x46

    if-le v3, v4, :cond_30

    goto :goto_32

    :cond_30
    move v1, v2

    goto :goto_7

    :cond_32
    :goto_32
    if-eqz v1, :cond_35

    goto :goto_4a

    .line 8
    :cond_35
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    .line 10
    invoke-static {v0, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_4a
    :goto_4a
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    if-eqz p3, :cond_c

    .line 6
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    invoke-virtual {v0, v1}, Ldc/squareup/okio/Buffer;->writeAll(Ldc/squareup/okio/Source;)J

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    invoke-virtual {v0, v1}, Ldc/squareup/okio/Buffer;->writeAll(Ldc/squareup/okio/Source;)J

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 4
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 3
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_19

    const-wide/16 v0, 0x2

    .line 5
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    goto :goto_30

    :cond_19
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_25

    const-wide/16 v0, 0x3

    .line 7
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    goto :goto_30

    :cond_25
    and-int/lit16 v0, v0, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_30

    const-wide/16 v0, 0x4

    .line 9
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->require(J)V

    .line 12
    :cond_30
    :goto_30
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readUtf8CodePoint()I

    move-result v0

    return v0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Ldc/squareup/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1d

    .line 4
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v0, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1b

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return-object v0

    .line 7
    :cond_1d
    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Ldc/squareup/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_a7

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_13

    move-wide v4, v2

    goto :goto_15

    :cond_13
    add-long v4, p1, v0

    :goto_15
    const/16 v7, 0xa

    const-wide/16 v8, 0x0

    move-object v6, p0

    move-wide v10, v4

    .line 2
    invoke-virtual/range {v6 .. v11}, Ldc/squareup/okio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2c

    .line 3
    iget-object p1, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1, v6, v7}, Ldc/squareup/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2c
    cmp-long v6, v4, v2

    if-gez v6, :cond_5a

    .line 5
    invoke-virtual {p0, v4, v5}, Ldc/squareup/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    sub-long v6, v4, v0

    invoke-virtual {v2, v6, v7}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5a

    add-long/2addr v0, v4

    .line 6
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, v4, v5}, Ldc/squareup/okio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5a

    .line 7
    iget-object p1, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1, v4, v5}, Ldc/squareup/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5a
    new-instance v6, Ldc/squareup/okio/Buffer;

    invoke-direct {v6}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 10
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okio/Buffer;->copyTo(Ldc/squareup/okio/Buffer;JJ)Ldc/squareup/okio/Buffer;

    .line 11
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v2}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
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

    .line 13
    :cond_a7
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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_24

    .line 2
    :cond_a
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v3, v1, p1

    if-gez v3, :cond_22

    .line 3
    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_22
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public require(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okio/RealBufferedSource;->request(J)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public select(Ldc/squareup/okio/Options;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_32

    .line 4
    :cond_4
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ldc/squareup/okio/Buffer;->selectPrefix(Ldc/squareup/okio/Options;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return v1

    :cond_f
    const/4 v2, -0x2

    if-ne v0, v2, :cond_23

    .line 8
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    return v1

    .line 11
    :cond_23
    iget-object p1, p1, Ldc/squareup/okio/Options;->byteStrings:[Ldc/squareup/okio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result p1

    .line 12
    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ldc/squareup/okio/Buffer;->skip(J)V

    return v0

    .line 13
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_39

    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_38

    .line 3
    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v3, v2, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_27

    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    goto :goto_27

    .line 4
    :cond_21
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_27
    :goto_27
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Ldc/squareup/okio/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_4

    :cond_38
    return-void

    .line 8
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class dc.squareup.okio.RealBufferedSource.AnonymousClass1 (dc.squareup.okio.RealBufferedSource$1)
.class Ldc/squareup/okio/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okio/RealBufferedSource;


# direct methods
.method constructor <init>(Ldc/squareup/okio/RealBufferedSource;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okio/RealBufferedSource$1;->this$0:Ldc/squareup/okio/RealBufferedSource;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource$1;->this$0:Ldc/squareup/okio/RealBufferedSource;

    iget-boolean v1, v0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_13

    .line 2
    iget-object v0, v0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v0, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 3
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource$1;->this$0:Ldc/squareup/okio/RealBufferedSource;

    invoke-virtual {v0}, Ldc/squareup/okio/RealBufferedSource;->close()V

    return-void
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource$1;->this$0:Ldc/squareup/okio/RealBufferedSource;

    iget-boolean v1, v0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_2b

    .line 2
    iget-object v1, v0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v2, v1, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_20

    .line 3
    iget-object v0, v0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    const/4 v0, -0x1

    return v0

    .line 6
    :cond_20
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource$1;->this$0:Ldc/squareup/okio/RealBufferedSource;

    iget-object v0, v0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 7
    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource$1;->this$0:Ldc/squareup/okio/RealBufferedSource;

    iget-boolean v0, v0, Ldc/squareup/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_32

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 11
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource$1;->this$0:Ldc/squareup/okio/RealBufferedSource;

    iget-object v1, v0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v2, v1, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_29

    .line 12
    iget-object v0, v0, Ldc/squareup/okio/RealBufferedSource;->source:Ldc/squareup/okio/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_29

    const/4 p1, -0x1

    return p1

    .line 16
    :cond_29
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSource$1;->this$0:Ldc/squareup/okio/RealBufferedSource;

    iget-object v0, v0, Ldc/squareup/okio/RealBufferedSource;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->read([BII)I

    move-result p1

    return p1

    .line 17
    :cond_32
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSource$1;->this$0:Ldc/squareup/okio/RealBufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
