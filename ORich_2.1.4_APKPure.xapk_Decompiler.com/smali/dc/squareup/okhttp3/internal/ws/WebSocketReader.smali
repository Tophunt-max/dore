###### Class dc.squareup.okhttp3.internal.ws.WebSocketReader (dc.squareup.okhttp3.internal.ws.WebSocketReader)
.class final Ldc/squareup/okhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field closed:Z

.field private final controlFrameBuffer:Ldc/squareup/okio/Buffer;

.field final frameCallback:Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field private final maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field private final messageFrameBuffer:Ldc/squareup/okio/Buffer;

.field opcode:I

.field final source:Ldc/squareup/okio/BufferedSource;


# direct methods
.method constructor <init>(ZLdc/squareup/okio/BufferedSource;Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Ldc/squareup/okio/Buffer;

    .line 3
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Ldc/squareup/okio/Buffer;

    const-string v0, "source == null"

    .line 19
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "frameCallback == null"

    .line 18
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 12
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    .line 13
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameCallback:Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    const/4 p2, 0x0

    if-eqz p1, :cond_26

    move-object p3, p2

    goto :goto_29

    :cond_26
    const/4 p3, 0x4

    new-array p3, p3, [B

    .line 16
    :goto_29
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    if-eqz p1, :cond_2e

    goto :goto_33

    .line 17
    :cond_2e
    new-instance p2, Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-direct {p2}, Ldc/squareup/okio/Buffer$UnsafeCursor;-><init>()V

    :goto_33
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    return-void
.end method

.method private readControlFrame()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2b

    .line 2
    iget-object v4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    iget-object v5, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-interface {v4, v5, v0, v1}, Ldc/squareup/okio/BufferedSource;->readFully(Ldc/squareup/okio/Buffer;J)V

    .line 4
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v0, :cond_2b

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Ldc/squareup/okio/Buffer;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Ldc/squareup/okio/Buffer;->readAndWriteUnsafe(Ldc/squareup/okio/Buffer$UnsafeCursor;)Ldc/squareup/okio/Buffer$UnsafeCursor;

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v2, v3}, Ldc/squareup/okio/Buffer$UnsafeCursor;->seek(J)I

    .line 7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/internal/ws/WebSocketProtocol;->toggleMask(Ldc/squareup/okio/Buffer$UnsafeCursor;[B)V

    .line 8
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer$UnsafeCursor;->close()V

    .line 12
    :cond_2b
    iget v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_a4

    .line 35
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :pswitch_4d
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameCallback:Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Ldc/squareup/okio/ByteString;)V

    goto :goto_9a

    .line 37
    :pswitch_59
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameCallback:Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Ldc/squareup/okio/ByteString;)V

    goto :goto_9a

    :pswitch_65
    const/16 v0, 0x3ed

    .line 45
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_9b

    cmp-long v1, v4, v2

    if-eqz v1, :cond_90

    .line 49
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readShort()S

    move-result v0

    .line 50
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8a

    goto :goto_92

    .line 52
    :cond_8a
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    const-string v1, ""

    .line 54
    :goto_92
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameCallback:Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v2, v0, v1}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->closed:Z

    :goto_9a
    return-void

    .line 56
    :cond_9b
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed close payload length of 1."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_a4
    .packed-switch 0x8
        :pswitch_65
        :pswitch_59
        :pswitch_4d
    .end packed-switch
.end method

.method private readHeader()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_10f

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v2}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Ldc/squareup/okio/Timeout;->clearTimeout()Ldc/squareup/okio/Timeout;

    .line 8
    :try_start_17
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v2}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v2
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_102

    and-int/lit16 v2, v2, 0xff

    .line 10
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v3}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Ldc/squareup/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okio/Timeout;

    and-int/lit8 v0, v2, 0xf

    .line 13
    iput v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->opcode:I

    and-int/lit16 v0, v2, 0x80

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 14
    :goto_37
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    .line 15
    :goto_40
    iput-boolean v4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v4, :cond_4f

    if-eqz v0, :cond_47

    goto :goto_4f

    .line 19
    :cond_47
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frames must be final."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    :goto_4f
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_5c

    const/4 v4, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v4, 0x0

    :goto_5d
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    if-nez v0, :cond_fa

    if-nez v4, :cond_fa

    if-nez v2, :cond_fa

    .line 30
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_77

    goto :goto_78

    :cond_77
    const/4 v1, 0x0

    .line 33
    :goto_78
    iget-boolean v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v1, v2, :cond_8b

    .line 35
    new-instance v0, Ljava/net/ProtocolException;

    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v1, :cond_85

    const-string v1, "Server-sent frames must not be masked."

    goto :goto_87

    :cond_85
    const-string v1, "Client-sent frames must be masked."

    :goto_87
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    and-int/lit8 v0, v0, 0x7f

    int-to-long v2, v0

    .line 41
    iput-wide v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v4, 0x7e

    cmp-long v0, v2, v4

    if-nez v0, :cond_a4

    .line 43
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readShort()S

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    iput-wide v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    goto :goto_db

    :cond_a4
    const-wide/16 v4, 0x7f

    cmp-long v0, v2, v4

    if-nez v0, :cond_db

    .line 45
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_b9

    goto :goto_db

    .line 47
    :cond_b9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame length 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_db
    :goto_db
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_f0

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v4, 0x7d

    cmp-long v0, v2, v4

    if-gtz v0, :cond_e8

    goto :goto_f0

    .line 53
    :cond_e8
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Control frame must be less than 125B."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f0
    :goto_f0
    if-eqz v1, :cond_f9

    .line 58
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSource;->readFully([B)V

    :cond_f9
    return-void

    .line 59
    :cond_fa
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Reserved flags are unsupported."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_102
    move-exception v2

    .line 60
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v3}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Ldc/squareup/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okio/Timeout;

    .line 61
    throw v2

    .line 62
    :cond_10f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readMessage()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_62

    .line 3
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_38

    .line 4
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->source:Ldc/squareup/okio/BufferedSource;

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Ldc/squareup/okio/BufferedSource;->readFully(Ldc/squareup/okio/Buffer;J)V

    .line 6
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v0, :cond_38

    .line 7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Ldc/squareup/okio/Buffer;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Ldc/squareup/okio/Buffer;->readAndWriteUnsafe(Ldc/squareup/okio/Buffer$UnsafeCursor;)Ldc/squareup/okio/Buffer$UnsafeCursor;

    .line 8
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    iget-wide v3, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okio/Buffer$UnsafeCursor;->seek(J)I

    .line 9
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/internal/ws/WebSocketProtocol;->toggleMask(Ldc/squareup/okio/Buffer$UnsafeCursor;[B)V

    .line 10
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer$UnsafeCursor;->close()V

    .line 14
    :cond_38
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v0, :cond_3d

    return-void

    .line 16
    :cond_3d
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    .line 17
    iget v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->opcode:I

    if-nez v0, :cond_45

    goto :goto_0

    .line 18
    :cond_45
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readMessageFrame()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->opcode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_24

    .line 3
    :cond_9
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_24
    :goto_24
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->readMessage()V

    if-ne v0, v1, :cond_35

    .line 9
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameCallback:Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    goto :goto_40

    .line 11
    :cond_35
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->frameCallback:Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ldc/squareup/okio/ByteString;)V

    :goto_40
    return-void
.end method

.method private readUntilNonControlFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_10

    .line 2
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 3
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_c

    goto :goto_10

    .line 6
    :cond_c
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0

    :cond_10
    :goto_10
    return-void
.end method


# virtual methods
.method processNextFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 2
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_b

    .line 3
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_e

    .line 5
    :cond_b
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    :goto_e
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.ws.WebSocketReader.FrameCallback (dc.squareup.okhttp3.internal.ws.WebSocketReader$FrameCallback)
.class public interface abstract Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/ws/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract onReadClose(ILjava/lang/String;)V
.end method

.method public abstract onReadMessage(Ldc/squareup/okio/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onReadMessage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onReadPing(Ldc/squareup/okio/ByteString;)V
.end method

.method public abstract onReadPong(Ldc/squareup/okio/ByteString;)V
.end method
