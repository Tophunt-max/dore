###### Class dc.squareup.okhttp3.internal.http2.Http2Writer (dc.squareup.okhttp3.internal.http2.Http2Writer)
.class final Ldc/squareup/okhttp3/internal/http2/Http2Writer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Ldc/squareup/okio/Buffer;

.field final hpackWriter:Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Ldc/squareup/okio/BufferedSink;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ldc/squareup/okhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okio/BufferedSink;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    .line 3
    iput-boolean p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->client:Z

    .line 4
    new-instance p1, Ldc/squareup/okio/Buffer;

    invoke-direct {p1}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Ldc/squareup/okio/Buffer;

    .line 5
    new-instance p2, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;

    invoke-direct {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;-><init>(Ldc/squareup/okio/Buffer;)V

    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackWriter:Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;

    const/16 p1, 0x4000

    .line 6
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_24

    .line 1
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr p2, v4

    const/16 v2, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 3
    :goto_19
    invoke-virtual {p0, p1, v3, v2, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Ldc/squareup/okio/Buffer;

    invoke-interface {v0, v1, v4, v5}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    goto :goto_0

    :cond_24
    return-void
.end method

.method private static writeMedium(Ldc/squareup/okio/BufferedSink;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 1
    invoke-interface {p0, v0}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-interface {p0, v0}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    and-int/lit16 p1, p1, 0xff

    .line 3
    invoke-interface {p0, p1}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    return-void
.end method


# virtual methods
.method public declared-synchronized applyAndAckSettings(Ldc/squareup/okhttp3/internal/http2/Settings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_2a

    .line 2
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/http2/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    .line 3
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackWriter:Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result p1

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->setHeaderTableSizeSetting(I)V

    :cond_1d
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 11
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_32

    monitor-exit p0

    return-void

    .line 12
    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_3c

    .line 2
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->client:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_44

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 3
    :cond_b
    :try_start_b
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    sget-object v2, Ldc/squareup/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Ldc/squareup/okio/ByteString;

    invoke-virtual {v2}, Ldc/squareup/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ">> CONNECTION %s"

    invoke-static {v2, v1}, Ldc/squareup/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    :cond_2a
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    sget-object v1, Ldc/squareup/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Ldc/squareup/okio/ByteString;

    invoke-virtual {v1}, Ldc/squareup/okio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    .line 7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_44

    monitor-exit p0

    return-void

    .line 8
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILdc/squareup/okio/Buffer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    int-to-byte v0, p1

    .line 4
    :cond_a
    invoke-virtual {p0, p2, v0, p3, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->dataFrame(IBLdc/squareup/okio/Buffer;I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    monitor-exit p0

    return-void

    .line 5
    :cond_f
    :try_start_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_17

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dataFrame(IBLdc/squareup/okio/Buffer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p4, v0, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    if-lez p4, :cond_c

    .line 3
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    :cond_c
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    monitor-exit p0

    return-void

    .line 3
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public frameHeader(IIBB)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-static {v2, p1, p2, p3, p4}, Ldc/squareup/okhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    :cond_12
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_48

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_39

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-static {v0, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->writeMedium(Ldc/squareup/okio/BufferedSink;I)V

    .line 7
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 8
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 9
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Ldc/squareup/okio/BufferedSink;->writeInt(I)Ldc/squareup/okio/BufferedSink;

    return-void

    :cond_39
    new-array p2, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_48
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized goAway(ILdc/squareup/okhttp3/internal/http2/ErrorCode;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_36

    .line 2
    iget v0, p2, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2d

    .line 3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 7
    invoke-virtual {p0, v2, v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 8
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0, p1}, Ldc/squareup/okio/BufferedSink;->writeInt(I)Ldc/squareup/okio/BufferedSink;

    .line 9
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    iget p2, p2, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {p1, p2}, Ldc/squareup/okio/BufferedSink;->writeInt(I)Ldc/squareup/okio/BufferedSink;

    .line 10
    array-length p1, p3

    if-lez p1, :cond_26

    .line 11
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1, p3}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    .line 13
    :cond_26
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_3e

    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "errorCode.httpCode == -1"

    .line 14
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 15
    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    monitor-exit p0

    return-void

    .line 3
    :cond_b
    :try_start_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method headers(ZILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_36

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackWriter:Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 7
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p3}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    .line 8
    iget p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v5, 0x4

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    if-eqz p1, :cond_24

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    :cond_24
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p2, p3, p1, v5}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 13
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Ldc/squareup/okio/Buffer;

    invoke-interface {p1, p3, v2, v3}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    if-lez v4, :cond_35

    sub-long/2addr v0, v2

    .line 15
    invoke-direct {p0, p2, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V

    :cond_35
    return-void

    .line 16
    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxDataLength()I
    .registers 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_1d

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v2, v0, v1, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 7
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1, p2}, Ldc/squareup/okio/BufferedSink;->writeInt(I)Ldc/squareup/okio/BufferedSink;

    .line 8
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1, p3}, Ldc/squareup/okio/BufferedSink;->writeInt(I)Ldc/squareup/okio/BufferedSink;

    .line 9
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    monitor-exit p0

    return-void

    .line 10
    :cond_1d
    :try_start_1d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_3f

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackWriter:Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Ldc/squareup/okhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 4
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p3}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    .line 5
    iget p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    const/4 v2, 0x4

    sub-int/2addr p3, v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    const/4 v3, 0x5

    int-to-long v4, p3

    cmp-long v6, v0, v4

    if-nez v6, :cond_22

    const/4 v7, 0x4

    goto :goto_23

    :cond_22
    const/4 v7, 0x0

    :goto_23
    add-int/2addr p3, v2

    .line 8
    invoke-virtual {p0, p1, p3, v3, v7}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 9
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Ldc/squareup/okio/BufferedSink;->writeInt(I)Ldc/squareup/okio/BufferedSink;

    .line 10
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Ldc/squareup/okio/Buffer;

    invoke-interface {p2, p3, v4, v5}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    if-lez v6, :cond_3d

    sub-long/2addr v0, v4

    .line 12
    invoke-direct {p0, p1, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_47

    :cond_3d
    monitor-exit p0

    return-void

    .line 13
    :cond_3f
    :try_start_3f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rstStream(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_24

    .line 2
    iget v0, p2, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 8
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    iget p2, p2, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {p1, p2}, Ldc/squareup/okio/BufferedSink;->writeInt(I)Ldc/squareup/okio/BufferedSink;

    .line 9
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2c

    monitor-exit p0

    return-void

    .line 10
    :cond_1e
    :try_start_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 11
    :cond_24
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized settings(Ldc/squareup/okhttp3/internal/http2/Settings;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_3d

    .line 2
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v2, v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    :goto_10
    const/16 v0, 0xa

    if-ge v2, v0, :cond_36

    .line 8
    invoke-virtual {p1, v2}, Ldc/squareup/okhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_33

    :cond_1b
    if-ne v2, v1, :cond_1f

    const/4 v0, 0x3

    goto :goto_25

    :cond_1f
    const/4 v0, 0x7

    if-ne v2, v0, :cond_24

    const/4 v0, 0x4

    goto :goto_25

    :cond_24
    move v0, v2

    .line 15
    :goto_25
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v3, v0}, Ldc/squareup/okio/BufferedSink;->writeShort(I)Ldc/squareup/okio/BufferedSink;

    .line 16
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-virtual {p1, v2}, Ldc/squareup/okhttp3/internal/http2/Settings;->get(I)I

    move-result v3

    invoke-interface {v0, v3}, Ldc/squareup/okio/BufferedSink;->writeInt(I)Ldc/squareup/okio/BufferedSink;

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 18
    :cond_36
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_45

    monitor-exit p0

    return-void

    .line 19
    :cond_3d
    :try_start_3d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    monitor-exit p0

    return-void

    .line 3
    :cond_a
    :try_start_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZIILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez p3, :cond_a

    .line 2
    invoke-virtual {p0, p1, p2, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    monitor-exit p0

    return-void

    .line 3
    :cond_a
    :try_start_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_36

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_26

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_26

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 10
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Ldc/squareup/okio/BufferedSink;->writeInt(I)Ldc/squareup/okio/BufferedSink;

    .line 11
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_3e

    monitor-exit p0

    return-void

    :cond_26
    const/4 p1, 0x1

    :try_start_27
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    .line 14
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 15
    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
