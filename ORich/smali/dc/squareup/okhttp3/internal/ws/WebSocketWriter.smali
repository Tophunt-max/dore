###### Class dc.squareup.okhttp3.internal.ws.WebSocketWriter (dc.squareup.okhttp3.internal.ws.WebSocketWriter)
.class final Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field activeWriter:Z

.field final buffer:Ldc/squareup/okio/Buffer;

.field final frameSink:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field private final maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Ldc/squareup/okio/BufferedSink;

.field final sinkBuffer:Ldc/squareup/okio/Buffer;

.field writerClosed:Z


# direct methods
.method constructor <init>(ZLdc/squareup/okio/BufferedSink;Ljava/util/Random;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->buffer:Ldc/squareup/okio/Buffer;

    .line 3
    new-instance v0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->frameSink:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    const-string v0, "sink == null"

    .line 22
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "random == null"

    .line 21
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 14
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sink:Ldc/squareup/okio/BufferedSink;

    .line 15
    invoke-interface {p2}, Ldc/squareup/okio/BufferedSink;->buffer()Ldc/squareup/okio/Buffer;

    move-result-object p2

    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    .line 16
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    const/4 p2, 0x0

    if-eqz p1, :cond_2e

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_2f

    :cond_2e
    move-object p3, p2

    .line 19
    :goto_2f
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_38

    .line 20
    new-instance p2, Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-direct {p2}, Ldc/squareup/okio/Buffer$UnsafeCursor;-><init>()V

    :cond_38
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    return-void
.end method

.method private writeControlFrame(ILdc/squareup/okio/ByteString;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_6d

    .line 3
    invoke-virtual {p2}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v5, v1, v3

    if-gtz v5, :cond_65

    or-int/lit16 p1, p1, 0x80

    .line 10
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 13
    iget-boolean p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_55

    or-int/lit16 p1, v0, 0x80

    .line 15
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 17
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 18
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v1}, Ldc/squareup/okio/Buffer;->write([B)Ldc/squareup/okio/Buffer;

    if-lez v0, :cond_5f

    .line 21
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    .line 22
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1, p2}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    .line 24
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1, p2}, Ldc/squareup/okio/Buffer;->readAndWriteUnsafe(Ldc/squareup/okio/Buffer$UnsafeCursor;)Ldc/squareup/okio/Buffer$UnsafeCursor;

    .line 25
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1, v0, v1}, Ldc/squareup/okio/Buffer$UnsafeCursor;->seek(J)I

    .line 26
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {p1, p2}, Ldc/squareup/okhttp3/internal/ws/WebSocketProtocol;->toggleMask(Ldc/squareup/okio/Buffer$UnsafeCursor;[B)V

    .line 27
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1}, Ldc/squareup/okio/Buffer$UnsafeCursor;->close()V

    goto :goto_5f

    .line 30
    :cond_55
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1, v0}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 31
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1, p2}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    .line 34
    :cond_5f
    :goto_5f
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->flush()V

    return-void

    .line 35
    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload size must be less than or equal to 125"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_6d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method newMessageSink(IJ)Ldc/squareup/okio/Sink;
    .registers 6

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 7
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->frameSink:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v1, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 8
    iput-wide p2, v1, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 9
    iput-boolean v0, v1, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, v1, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    return-object v1

    .line 11
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Another message writer is active. Did you call close()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writeClose(ILdc/squareup/okio/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ldc/squareup/okio/ByteString;->EMPTY:Ldc/squareup/okio/ByteString;

    if-nez p1, :cond_6

    if-eqz p2, :cond_1c

    :cond_6
    if-eqz p1, :cond_b

    .line 4
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 6
    :cond_b
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->writeShort(I)Ldc/squareup/okio/Buffer;

    if-eqz p2, :cond_18

    .line 9
    invoke-virtual {v0, p2}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    .line 11
    :cond_18
    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    :cond_1c
    const/16 p1, 0x8

    const/4 p2, 0x1

    .line 15
    :try_start_1f
    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILdc/squareup/okio/ByteString;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_25

    .line 17
    iput-boolean p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    return-void

    :catchall_25
    move-exception p1

    iput-boolean p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 18
    throw p1
.end method

.method writeMessageFrame(IJZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_92

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-eqz p5, :cond_d

    or-int/lit16 p1, p1, 0x80

    .line 7
    :cond_d
    iget-object p4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p4, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 10
    iget-boolean p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_18

    const/16 v0, 0x80

    :cond_18
    const-wide/16 p4, 0x7d

    cmp-long p1, p2, p4

    if-gtz p1, :cond_26

    long-to-int p1, p2

    or-int/2addr p1, v0

    .line 15
    iget-object p4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p4, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    goto :goto_47

    :cond_26
    const-wide/32 p4, 0xffff

    cmp-long p1, p2, p4

    if-gtz p1, :cond_3b

    or-int/lit8 p1, v0, 0x7e

    .line 18
    iget-object p4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p4, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 19
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    long-to-int p4, p2

    invoke-virtual {p1, p4}, Ldc/squareup/okio/Buffer;->writeShort(I)Ldc/squareup/okio/Buffer;

    goto :goto_47

    :cond_3b
    or-int/lit8 p1, v0, 0x7f

    .line 22
    iget-object p4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p4, p1}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 23
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1, p2, p3}, Ldc/squareup/okio/Buffer;->writeLong(J)Ldc/squareup/okio/Buffer;

    .line 26
    :goto_47
    iget-boolean p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_85

    .line 27
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object p4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    .line 28
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    iget-object p4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p4}, Ldc/squareup/okio/Buffer;->write([B)Ldc/squareup/okio/Buffer;

    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-lez p1, :cond_8c

    .line 31
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide p4

    .line 32
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1, v0, p2, p3}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 34
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1, p2}, Ldc/squareup/okio/Buffer;->readAndWriteUnsafe(Ldc/squareup/okio/Buffer$UnsafeCursor;)Ldc/squareup/okio/Buffer$UnsafeCursor;

    .line 35
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1, p4, p5}, Ldc/squareup/okio/Buffer$UnsafeCursor;->seek(J)I

    .line 36
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {p1, p2}, Ldc/squareup/okhttp3/internal/ws/WebSocketProtocol;->toggleMask(Ldc/squareup/okio/Buffer$UnsafeCursor;[B)V

    .line 37
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->maskCursor:Ldc/squareup/okio/Buffer$UnsafeCursor;

    invoke-virtual {p1}, Ldc/squareup/okio/Buffer$UnsafeCursor;->close()V

    goto :goto_8c

    .line 40
    :cond_85
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Ldc/squareup/okio/Buffer;

    iget-object p4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1, p4, p2, p3}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 43
    :cond_8c
    :goto_8c
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->emit()Ldc/squareup/okio/BufferedSink;

    return-void

    .line 44
    :cond_92
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writePing(Ldc/squareup/okio/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0, p1}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILdc/squareup/okio/ByteString;)V

    return-void
.end method

.method writePong(Ldc/squareup/okio/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0, p1}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILdc/squareup/okio/ByteString;)V

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.ws.WebSocketWriter.FrameSink (dc.squareup.okhttp3.internal.ws.WebSocketWriter$FrameSink)
.class final Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field closed:Z

.field contentLength:J

.field formatOpcode:I

.field isFirstFrame:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_1d

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    iget v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v0, v1, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    return-void

    .line 6
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_18

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    iget v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v0, v1, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return-void

    .line 5
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Ldc/squareup/okio/Buffer;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_49

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 6
    iget-boolean p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2b

    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2b

    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->buffer:Ldc/squareup/okio/Buffer;

    .line 8
    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    .line 10
    :goto_2c
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    iget-object p3, p3, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p3}, Ldc/squareup/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-lez p3, :cond_48

    if-nez p1, :cond_48

    .line 12
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    iget v1, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-boolean v4, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    .line 13
    iput-boolean p2, p0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    :cond_48
    return-void

    .line 14
    :cond_49
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
