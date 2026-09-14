###### Class dc.squareup.okhttp3.internal.http2.Http2Stream (dc.squareup.okhttp3.internal.http2.Http2Stream)
.class public final Ldc/squareup/okhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;,
        Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;,
        Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

.field private hasResponseHeaders:Z

.field private headersListener:Ldc/squareup/okhttp3/internal/http2/Header$Listener;

.field private final headersQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ldc/squareup/okhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field final readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

.field final sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

.field private final source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(ILdc/squareup/okhttp3/internal/http2/Http2Connection;ZZLdc/squareup/okhttp3/Headers;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    .line 27
    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 28
    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    const-string v1, "connection == null"

    .line 57
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    .line 42
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    .line 43
    iget-object p1, p2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    .line 44
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 45
    new-instance p1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-object p2, p2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {p2}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;J)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    .line 46
    new-instance p2, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-direct {p2, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V

    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    .line 47
    iput-boolean p4, p1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 48
    iput-boolean p3, p2, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz p5, :cond_4f

    .line 50
    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_4f
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p1

    if-eqz p1, :cond_60

    if-nez p5, :cond_58

    goto :goto_60

    .line 54
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_60
    :goto_60
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p1

    if-nez p1, :cond_71

    if-eqz p5, :cond_69

    goto :goto_71

    .line 56
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    :goto_71
    return-void
.end method

.method static synthetic access$000(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;
    .registers 1

    .line 1
    iget-object p0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic access$100(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ldc/squareup/okhttp3/internal/http2/Header$Listener;
    .registers 1

    .line 1
    iget-object p0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersListener:Ldc/squareup/okhttp3/internal/http2/Header$Listener;

    return-object p0
.end method

.method private closeInternal(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)Z
    .registers 4

    .line 2
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4
    monitor-exit p0

    return v1

    .line 6
    :cond_8
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v0, :cond_16

    .line 7
    monitor-exit p0

    return v1

    .line 9
    :cond_16
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    .line 12
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    const/4 p1, 0x1

    return p1

    :catchall_25
    move-exception p1

    .line 13
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method cancelStreamIfNecessary()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v1, :cond_17

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v1, :cond_15

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 6
    :goto_18
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    .line 7
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    if-eqz v0, :cond_25

    .line 13
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    goto :goto_2e

    :cond_25
    if-nez v1, :cond_2e

    .line 15
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v0

    .line 16
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method checkOutNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v1, :cond_1f

    .line 3
    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_17

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_f

    return-void

    .line 6
    :cond_f
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Ldc/squareup/okhttp3/internal/http2/StreamResetException;-><init>(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 7
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->closeInternal(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynReset(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public closeLater(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->closeInternal(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public getConnection()Ldc/squareup/okhttp3/internal/http2/Http2Connection;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Ldc/squareup/okhttp3/internal/http2/ErrorCode;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    return v0
.end method

.method public getSink()Ldc/squareup/okio/Sink;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 3
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    return-object v0

    :catchall_18
    move-exception v0

    .line 7
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getSource()Ldc/squareup/okio/Source;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .registers 5

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2
    :goto_a
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->client:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    .line 4
    :cond_8
    :try_start_8
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v2, :cond_12

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_22

    :cond_12
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v2, :cond_1c

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_22

    :cond_1c
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_22

    monitor-exit p0

    return v1

    :cond_22
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Ldc/squareup/okio/BufferedSource;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->receive(Ldc/squareup/okio/BufferedSource;J)V

    return-void
.end method

.method receiveFin()V
    .registers 3

    .line 3
    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 5
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    if-nez v0, :cond_17

    .line 9
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    .line 10
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method receiveHeaders(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 3
    monitor-enter p0

    const/4 v0, 0x1

    .line 4
    :try_start_2
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->toHeaders(Ljava/util/List;)Ldc/squareup/okhttp3/Headers;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1f

    if-nez p1, :cond_1e

    .line 10
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    :cond_1e
    return-void

    :catchall_1f
    move-exception p1

    .line 11
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method declared-synchronized receiveRstStream(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_a

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHeadersListener(Ldc/squareup/okhttp3/internal/http2/Header$Listener;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersListener:Ldc/squareup/okhttp3/internal/http2/Header$Listener;

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_10

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized takeHeaders()Ldc/squareup/okhttp3/Headers;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/AsyncTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3c

    .line 3
    :goto_6
    :try_start_6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_16

    .line 4
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_35

    goto :goto_6

    .line 7
    :cond_16
    :try_start_16
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 9
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 10
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/squareup/okhttp3/Headers;
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_3c

    monitor-exit p0

    return-object v0

    .line 12
    :cond_2d
    :try_start_2d
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Ldc/squareup/okhttp3/internal/http2/StreamResetException;-><init>(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    throw v0

    :catchall_35
    move-exception v0

    .line 13
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 14
    throw v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method waitForIo()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 3
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public writeHeaders(Ljava/util/List;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "headers == null"

    .line 30
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    monitor-enter p0

    const/4 v0, 0x1

    .line 8
    :try_start_7
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    const/4 v1, 0x0

    if-nez p2, :cond_13

    .line 10
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean v0, p2, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    const/4 p2, 0x1

    const/4 v2, 0x1

    goto :goto_15

    :cond_13
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 14
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_3c

    if-nez p2, :cond_2d

    .line 19
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v3

    .line 20
    :try_start_1b
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-wide v4, p2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 21
    :goto_27
    monitor-exit v3

    move p2, v0

    goto :goto_2d

    :catchall_2a
    move-exception p1

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2a

    throw p1

    .line 25
    :cond_2d
    :goto_2d
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, v2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynReply(IZLjava/util/List;)V

    if-eqz p2, :cond_3b

    .line 28
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->flush()V

    :cond_3b
    return-void

    :catchall_3c
    move-exception p1

    .line 29
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public writeTimeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Stream.FramingSink (dc.squareup.okhttp3.internal.http2.Http2Stream$FramingSink)
.class final Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramingSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field closed:Z

.field finished:Z

.field private final sendBuffer:Ldc/squareup/okio/Buffer;

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Ldc/squareup/okio/Buffer;

    invoke-direct {p1}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Ldc/squareup/okio/Buffer;

    return-void
.end method

.method private emitFrame(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Ldc/squareup/okio/AsyncTimeout;->enter()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_7f

    .line 4
    :goto_a
    :try_start_a
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-wide v2, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_24

    iget-boolean v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v2, :cond_24

    iget-boolean v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v2, :cond_24

    iget-object v2, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    if-nez v2, :cond_24

    .line 5
    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_76

    goto :goto_a

    .line 8
    :cond_24
    :try_start_24
    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 11
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V

    .line 12
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-wide v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v3}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 13
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-wide v2, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 14
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_7f

    .line 16
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/AsyncTimeout;->enter()V

    .line 18
    :try_start_49
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v5, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v6, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    if-eqz p1, :cond_5e

    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_5e

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_60

    :cond_5e
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_60
    iget-object v8, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual/range {v5 .. v10}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeData(IZLdc/squareup/okio/Buffer;J)V
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_6d

    .line 20
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    return-void

    :catchall_6d
    move-exception p1

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 21
    throw p1

    :catchall_76
    move-exception p1

    .line 22
    :try_start_77
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 23
    throw p1

    :catchall_7f
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_7f

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 4
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_50

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    .line 7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2d

    .line 8
    :goto_1f
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_3a

    .line 9
    invoke-direct {p0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    goto :goto_1f

    .line 13
    :cond_2d
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v3, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeData(IZLdc/squareup/okio/Buffer;J)V

    .line 16
    :cond_3a
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 17
    :try_start_3d
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    .line 18
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4d

    .line 19
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->flush()V

    .line 20
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    return-void

    :catchall_4d
    move-exception v0

    .line 21
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    :catchall_50
    move-exception v1

    .line 22
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V

    .line 4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 5
    :goto_9
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    .line 7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->flush()V

    goto :goto_9

    :cond_21
    return-void

    :catchall_22
    move-exception v1

    .line 8
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method public write(Ldc/squareup/okio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 3
    :goto_5
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_16

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    goto :goto_5

    :cond_16
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Stream.FramingSource (dc.squareup.okhttp3.internal.http2.Http2Stream$FramingSource)
.class final Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramingSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Ldc/squareup/okio/Buffer;

.field private final receiveBuffer:Ldc/squareup/okio/Buffer;

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ldc/squareup/okio/Buffer;

    invoke-direct {p1}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Ldc/squareup/okio/Buffer;

    .line 5
    new-instance p1, Ldc/squareup/okio/Buffer;

    invoke-direct {p1}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Ldc/squareup/okio/Buffer;

    .line 20
    iput-wide p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    return-void
.end method

.method private updateConnectionFlowControl(J)V
    .registers 4

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_4
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v3}, Ldc/squareup/okio/Buffer;->clear()V

    .line 5
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-static {v3}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->access$000(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_44

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-static {v3}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->access$100(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ldc/squareup/okhttp3/internal/http2/Header$Listener;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-static {v3}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->access$000(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-static {v3}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->access$000(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 8
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-static {v3}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->access$100(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ldc/squareup/okhttp3/internal/http2/Header$Listener;

    move-result-object v3

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_45

    :cond_44
    move-object v3, v4

    .line 10
    :goto_45
    iget-object v5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_70

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_54

    .line 13
    invoke-direct {p0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 15
    :cond_54
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    if-eqz v4, :cond_6f

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldc/squareup/okhttp3/Headers;

    .line 18
    invoke-interface {v4, v1}, Ldc/squareup/okhttp3/internal/http2/Header$Listener;->onHeaders(Ldc/squareup/okhttp3/Headers;)V

    goto :goto_5f

    :cond_6f
    return-void

    :catchall_70
    move-exception v1

    .line 19
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_e0

    .line 1
    :goto_a
    iget-object v6, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    monitor-enter v6

    .line 2
    :try_start_d
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/AsyncTimeout;->enter()V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_dd

    .line 4
    :try_start_14
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v7, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    if-eqz v7, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v7, 0x0

    .line 9
    :goto_1c
    iget-boolean v9, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v9, :cond_cc

    .line 12
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->access$000(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->access$100(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ldc/squareup/okhttp3/internal/http2/Header$Listener;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 14
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->access$000(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ldc/squareup/okhttp3/Headers;

    .line 15
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->access$100(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ldc/squareup/okhttp3/internal/http2/Header$Listener;

    move-result-object v0

    move-object/from16 v13, p1

    move-object v10, v0

    goto :goto_a6

    .line 17
    :cond_49
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v11

    cmp-long v0, v11, v4

    if-lez v0, :cond_8d

    .line 19
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p1

    invoke-virtual {v0, v13, v11, v12}, Ldc/squareup/okio/Buffer;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v11

    .line 20
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-wide v14, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long/2addr v14, v11

    iput-wide v14, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    if-nez v7, :cond_8a

    .line 22
    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    .line 24
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v8, v0

    cmp-long v0, v14, v8

    if-ltz v0, :cond_8a

    .line 27
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v8, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v9, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    iget-wide v14, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v8, v9, v14, v15}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 28
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iput-wide v4, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    :cond_8a
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_a8

    :cond_8d
    move-object/from16 v13, p1

    .line 30
    iget-boolean v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_a4

    if-nez v7, :cond_a4

    .line 32
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_9a
    .catchall {:try_start_14 .. :try_end_9a} :catchall_d4

    .line 36
    :try_start_9a
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v6

    goto/16 :goto_a

    :cond_a4
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_a6
    const-wide/16 v11, -0x1

    :goto_a8
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 38
    monitor-exit v6
    :try_end_b0
    .catchall {:try_start_9a .. :try_end_b0} :catchall_dd

    if-eqz v8, :cond_b9

    if-eqz v10, :cond_b9

    .line 43
    invoke-interface {v10, v8}, Ldc/squareup/okhttp3/internal/http2/Header$Listener;->onHeaders(Ldc/squareup/okhttp3/Headers;)V

    goto/16 :goto_a

    :cond_b9
    const-wide/16 v2, -0x1

    cmp-long v0, v11, v2

    if-eqz v0, :cond_c3

    .line 49
    invoke-direct {v1, v11, v12}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    return-wide v11

    :cond_c3
    if-nez v7, :cond_c6

    return-wide v2

    .line 58
    :cond_c6
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/StreamResetException;

    invoke-direct {v0, v7}, Ldc/squareup/okhttp3/internal/http2/StreamResetException;-><init>(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 59
    :cond_cc
    :try_start_cc
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_d4

    :catchall_d4
    move-exception v0

    .line 85
    :try_start_d5
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 86
    throw v0

    :catchall_dd
    move-exception v0

    .line 87
    monitor-exit v6
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_dd

    throw v0

    .line 88
    :cond_e0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method receive(Ldc/squareup/okio/BufferedSource;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_81

    .line 6
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 7
    :try_start_9
    iget-boolean v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 8
    iget-object v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v4}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    .line 9
    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_7e

    if-eqz v4, :cond_2b

    .line 13
    invoke-interface {p1, p2, p3}, Ldc/squareup/okio/BufferedSource;->skip(J)V

    .line 14
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    sget-object p2, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->closeLater(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_2b
    if-eqz v3, :cond_31

    .line 20
    invoke-interface {p1, p2, p3}, Ldc/squareup/okio/BufferedSource;->skip(J)V

    return-void

    .line 25
    :cond_31
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Ldc/squareup/okio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_78

    sub-long/2addr p2, v2

    .line 33
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 34
    :try_start_41
    iget-boolean v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v3, :cond_51

    .line 35
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v3}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v3

    .line 36
    iget-object v5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v5}, Ldc/squareup/okio/Buffer;->clear()V

    goto :goto_6c

    .line 38
    :cond_51
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v3}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v8, 0x0

    .line 39
    :goto_5d
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Ldc/squareup/okio/Buffer;

    iget-object v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v3, v4}, Ldc/squareup/okio/Buffer;->writeAll(Ldc/squareup/okio/Source;)J

    if-eqz v8, :cond_6b

    .line 41
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_6b
    move-wide v3, v0

    .line 44
    :goto_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_41 .. :try_end_6d} :catchall_75

    cmp-long v2, v3, v0

    if-lez v2, :cond_0

    .line 46
    invoke-direct {p0, v3, v4}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    goto :goto_0

    :catchall_75
    move-exception p1

    .line 47
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p1

    .line 48
    :cond_78
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_7e
    move-exception p1

    .line 49
    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p1

    :cond_81
    return-void
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Stream.StreamTimeout (dc.squareup.okhttp3.internal.http2.Http2Stream$StreamTimeout)
.class Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;
.super Ldc/squareup/okio/AsyncTimeout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ldc/squareup/okio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 3
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected timedOut()V
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->closeLater(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->sendDegradedPingLater()V

    return-void
.end method
