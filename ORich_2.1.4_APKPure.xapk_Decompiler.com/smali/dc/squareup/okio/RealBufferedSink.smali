###### Class dc.squareup.okio.RealBufferedSink (dc.squareup.okio.RealBufferedSink)
.class final Ldc/squareup/okio/RealBufferedSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/BufferedSink;


# instance fields
.field public final buffer:Ldc/squareup/okio/Buffer;

.field closed:Z

.field public final sink:Ldc/squareup/okio/Sink;


# direct methods
.method constructor <init>(Ldc/squareup/okio/Sink;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    const-string v0, "sink == null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Ldc/squareup/okio/RealBufferedSink;->sink:Ldc/squareup/okio/Sink;

    return-void
.end method


# virtual methods
.method public buffer()Ldc/squareup/okio/Buffer;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 7
    :try_start_6
    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v2, v1, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_17

    .line 8
    iget-object v4, p0, Ldc/squareup/okio/RealBufferedSink;->sink:Ldc/squareup/okio/Sink;

    invoke-interface {v4, v1, v2, v3}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    goto :goto_17

    :catchall_16
    move-exception v0

    .line 15
    :cond_17
    :goto_17
    :try_start_17
    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSink;->sink:Ldc/squareup/okio/Sink;

    invoke-interface {v1}, Ldc/squareup/okio/Sink;->close()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v1

    if-nez v0, :cond_21

    move-object v0, v1

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_29

    .line 21
    invoke-static {v0}, Ldc/squareup/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_29
    return-void
.end method

.method public emit()Ldc/squareup/okio/BufferedSink;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_18

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    .line 3
    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSink;->sink:Ldc/squareup/okio/Sink;

    iget-object v3, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    :cond_17
    return-object p0

    .line 4
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitCompleteSegments()Ldc/squareup/okio/BufferedSink;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_18

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    .line 3
    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSink;->sink:Ldc/squareup/okio/Sink;

    iget-object v3, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    :cond_17
    return-object p0

    .line 4
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_19

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v1, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_13

    .line 3
    iget-object v3, p0, Ldc/squareup/okio/RealBufferedSink;->sink:Ldc/squareup/okio/Sink;

    invoke-interface {v3, v0, v1, v2}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    .line 5
    :cond_13
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->sink:Ldc/squareup/okio/Sink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->flush()V

    return-void

    .line 6
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Ldc/squareup/okio/RealBufferedSink$1;-><init>(Ldc/squareup/okio/RealBufferedSink;)V

    return-object v0
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->sink:Ldc/squareup/okio/Sink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

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

    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSink;->sink:Ldc/squareup/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 18
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 19
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    return p1

    .line 20
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 6
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    .line 7
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 8
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-lez v2, :cond_1d

    .line 21
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    sub-long/2addr p2, v0

    .line 24
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    goto :goto_0

    .line 25
    :cond_17
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1d
    return-object p0
.end method

.method public write([B)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 10
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->write([B)Ldc/squareup/okio/Buffer;

    .line 11
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 12
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Ldc/squareup/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 14
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->write([BII)Ldc/squareup/okio/Buffer;

    .line 15
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 16
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ldc/squareup/okio/Buffer;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    return-void

    .line 4
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Ldc/squareup/okio/Source;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_18

    const-wide/16 v0, 0x0

    .line 1
    :goto_4
    iget-object v2, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_17

    add-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    goto :goto_4

    :cond_17
    return-wide v0

    .line 4
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okio/Buffer;->writeDecimalLong(J)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeHexadecimalUnsignedLong(J)Ldc/squareup/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okio/Buffer;->writeHexadecimalUnsignedLong(J)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeIntLe(I)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeIntLe(I)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLong(J)Ldc/squareup/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okio/Buffer;->writeLong(J)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLongLe(J)Ldc/squareup/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okio/Buffer;->writeLongLe(J)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeShort(I)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShortLe(I)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeShortLe(I)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Ldc/squareup/okio/BufferedSink;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 6
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Ldc/squareup/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Ldc/squareup/okio/Buffer;

    .line 7
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 8
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ldc/squareup/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Ldc/squareup/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 6
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Ldc/squareup/okio/Buffer;

    .line 7
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 8
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8CodePoint(I)Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeUtf8CodePoint(I)Ldc/squareup/okio/Buffer;

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class dc.squareup.okio.RealBufferedSink.AnonymousClass1 (dc.squareup.okio.RealBufferedSink$1)
.class Ldc/squareup/okio/RealBufferedSink$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okio/RealBufferedSink;


# direct methods
.method constructor <init>(Ldc/squareup/okio/RealBufferedSink;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okio/RealBufferedSink$1;->this$0:Ldc/squareup/okio/RealBufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink$1;->this$0:Ldc/squareup/okio/RealBufferedSink;

    invoke-virtual {v0}, Ldc/squareup/okio/RealBufferedSink;->close()V

    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink$1;->this$0:Ldc/squareup/okio/RealBufferedSink;

    iget-boolean v1, v0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v1, :cond_9

    .line 2
    invoke-virtual {v0}, Ldc/squareup/okio/RealBufferedSink;->flush()V

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldc/squareup/okio/RealBufferedSink$1;->this$0:Ldc/squareup/okio/RealBufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink$1;->this$0:Ldc/squareup/okio/RealBufferedSink;

    iget-boolean v1, v0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v1, :cond_12

    .line 2
    iget-object v0, v0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 3
    iget-object p1, p0, Ldc/squareup/okio/RealBufferedSink$1;->this$0:Ldc/squareup/okio/RealBufferedSink;

    invoke-virtual {p1}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    return-void

    .line 4
    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Ldc/squareup/okio/RealBufferedSink$1;->this$0:Ldc/squareup/okio/RealBufferedSink;

    iget-boolean v1, v0, Ldc/squareup/okio/RealBufferedSink;->closed:Z

    if-nez v1, :cond_11

    .line 6
    iget-object v0, v0, Ldc/squareup/okio/RealBufferedSink;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->write([BII)Ldc/squareup/okio/Buffer;

    .line 7
    iget-object p1, p0, Ldc/squareup/okio/RealBufferedSink$1;->this$0:Ldc/squareup/okio/RealBufferedSink;

    invoke-virtual {p1}, Ldc/squareup/okio/RealBufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    return-void

    .line 8
    :cond_11
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
