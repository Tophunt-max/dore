###### Class dc.squareup.okhttp3.internal.http2.Http2Connection (dc.squareup.okhttp3.internal.http2.Http2Connection)
.class public final Ldc/squareup/okhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;,
        Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;,
        Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;,
        Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final AWAIT_PING:I = 0x3

.field static final DEGRADED_PING:I = 0x2

.field static final DEGRADED_PONG_TIMEOUT_NS:J = 0x3b9aca00L

.field static final INTERVAL_PING:I = 0x1

.field static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final listenerExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private awaitPingsSent:J

.field private awaitPongsReceived:J

.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private degradedPingsSent:J

.field private degradedPongDeadlineNs:J

.field private degradedPongsReceived:J

.field final hostname:Ljava/lang/String;

.field private intervalPingsSent:J

.field private intervalPongsReceived:J

.field lastGoodStreamId:I

.field final listener:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

.field nextStreamId:I

.field okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

.field final peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

.field final readerRunnable:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldc/squareup/okhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

.field private final writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 26
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    const/4 v1, 0x1

    .line 28
    invoke-static {v0, v1}, Ldc/squareup/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    .line 19
    iput-wide v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    .line 20
    iput-wide v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    .line 21
    iput-wide v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    .line 22
    iput-wide v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    .line 23
    iput-wide v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    .line 26
    iput-wide v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    .line 33
    iput-wide v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 42
    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-direct {v2}, Ldc/squareup/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    .line 46
    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-direct {v2}, Ldc/squareup/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    .line 808
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 809
    iget-object v3, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    iput-object v3, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    .line 810
    iget-boolean v3, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v3, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->client:Z

    .line 811
    iget-object v4, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->listener:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v4, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->listener:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_47

    const/4 v6, 0x1

    goto :goto_48

    :cond_47
    const/4 v6, 0x2

    .line 813
    :goto_48
    iput v6, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    if-eqz v3, :cond_4f

    add-int/2addr v6, v4

    .line 815
    iput v6, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    :cond_4f
    const/4 v4, 0x7

    if-eqz v3, :cond_59

    .line 823
    iget-object v6, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    const/high16 v7, 0x1000000

    invoke-virtual {v6, v4, v7}, Ldc/squareup/okhttp3/internal/http2/Settings;->set(II)Ldc/squareup/okhttp3/internal/http2/Settings;

    .line 826
    :cond_59
    iget-object v6, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object v6, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    .line 828
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v8, v14

    const-string v9, "OkHttp %s Writer"

    .line 829
    invoke-static {v9, v8}, Ldc/squareup/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Ldc/squareup/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 830
    iget v8, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    if-eqz v8, :cond_85

    .line 831
    new-instance v8, Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;

    invoke-direct {v8, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V

    iget v9, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    int-to-long v11, v9

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v9, v11

    invoke-interface/range {v7 .. v13}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 836
    :cond_85
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v21, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v14

    const-string v6, "OkHttp %s Push Observer"

    .line 838
    invoke-static {v6, v8}, Ldc/squareup/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ldc/squareup/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v22

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-wide/16 v18, 0x3c

    move-object v15, v7

    invoke-direct/range {v15 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    const v5, 0xffff

    .line 839
    invoke-virtual {v2, v4, v5}, Ldc/squareup/okhttp3/internal/http2/Settings;->set(II)Ldc/squareup/okhttp3/internal/http2/Settings;

    const/4 v4, 0x5

    const/16 v5, 0x4000

    .line 840
    invoke-virtual {v2, v4, v5}, Ldc/squareup/okhttp3/internal/http2/Settings;->set(II)Ldc/squareup/okhttp3/internal/http2/Settings;

    .line 841
    invoke-virtual {v2}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 842
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 843
    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    iget-object v4, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-direct {v2, v4, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;-><init>(Ldc/squareup/okio/BufferedSink;Z)V

    iput-object v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    .line 845
    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v4, Ldc/squareup/okhttp3/internal/http2/Http2Reader;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->source:Ldc/squareup/okio/BufferedSource;

    invoke-direct {v4, v1, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;-><init>(Ldc/squareup/okio/BufferedSource;Z)V

    invoke-direct {v2, v0, v4}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ldc/squareup/okhttp3/internal/http2/Http2Reader;)V

    iput-object v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->readerRunnable:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    return-void
.end method

.method static synthetic access$000(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->failConnection()V

    return-void
.end method

.method static synthetic access$100(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    return-wide v0
.end method

.method static synthetic access$108(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    return-wide v0
.end method

.method static synthetic access$200(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    return-wide v0
.end method

.method static synthetic access$208(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    return-wide v0
.end method

.method static synthetic access$300(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    return p0
.end method

.method static synthetic access$302(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    return p1
.end method

.method static synthetic access$400()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$608(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    return-wide v0
.end method

.method static synthetic access$708(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    return-wide v0
.end method

.method private failConnection()V
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method private newStream(ILjava/util/List;Z)Ldc/squareup/okhttp3/internal/http2/Http2Stream;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Ldc/squareup/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    .line 2
    iget-object v7, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    monitor-enter v7

    .line 3
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_76

    .line 4
    :try_start_6
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_12

    .line 5
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    .line 7
    :cond_12
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_6d

    .line 10
    iget v8, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v8, 0x2

    .line 11
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 12
    new-instance v9, Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;-><init>(ILdc/squareup/okhttp3/internal/http2/Http2Connection;ZZLdc/squareup/okhttp3/Headers;)V

    if-eqz p3, :cond_3a

    .line 13
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_3a

    iget-wide v0, v9, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p3, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 p3, 0x1

    .line 14
    :goto_3b
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 15
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_73

    if-nez p1, :cond_53

    .line 19
    :try_start_4d
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, v6, v8, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    goto :goto_5c

    .line 20
    :cond_53
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_65

    .line 23
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, v8, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V

    .line 25
    :goto_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_76

    if-eqz p3, :cond_64

    .line 28
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->flush()V

    :cond_64
    return-object v9

    .line 29
    :cond_65
    :try_start_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_76

    .line 30
    :cond_6d
    :try_start_6d
    new-instance p1, Ldc/squareup/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Ldc/squareup/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_73
    move-exception p1

    .line 39
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_73

    :try_start_75
    throw p1

    :catchall_76
    move-exception p1

    .line 47
    monitor-exit v7
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_76

    throw p1
.end method

.method private declared-synchronized pushExecutorExecute(Ldc/squareup/okhttp3/internal/NamedRunnable;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
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


# virtual methods
.method declared-synchronized awaitPong()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :goto_1
    :try_start_1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_d

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    goto :goto_1

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    move-object p1, v0

    goto :goto_7

    :catch_6
    move-exception p1

    .line 11
    :goto_7
    monitor-enter p0

    .line 12
    :try_start_8
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 13
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    .line 14
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 16
    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_5c

    if-eqz v0, :cond_3d

    .line 19
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_3d

    aget-object v3, v0, v2

    .line 21
    :try_start_32
    invoke-virtual {v3, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v3

    if-eqz p1, :cond_3a

    move-object p1, v3

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 30
    :cond_3d
    :try_start_3d
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p2

    if-nez p1, :cond_47

    move-object p1, p2

    .line 37
    :cond_47
    :goto_47
    :try_start_47
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception p1

    .line 43
    :goto_4e
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 44
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-nez p1, :cond_5b

    return-void

    .line 46
    :cond_5b
    throw p1

    :catchall_5c
    move-exception p1

    .line 47
    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->flush()V

    return-void
.end method

.method public getProtocol()Ldc/squareup/okhttp3/Protocol;
    .registers 2

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/Protocol;->HTTP_2:Ldc/squareup/okhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isHealthy(J)Z
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    .line 4
    :cond_8
    :try_start_8
    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_18

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1b

    cmp-long v0, p1, v2

    if-ltz v0, :cond_18

    monitor-exit p0

    return v1

    :cond_18
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Ldc/squareup/okhttp3/internal/http2/Http2Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Ldc/squareup/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized openStreamCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method pushDataLater(ILdc/squareup/okio/BufferedSource;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v5, Ldc/squareup/okio/Buffer;

    invoke-direct {v5}, Ldc/squareup/okio/Buffer;-><init>()V

    int-to-long v0, p3

    .line 2
    invoke-interface {p2, v0, v1}, Ldc/squareup/okio/BufferedSource;->require(J)V

    .line 3
    invoke-interface {p2, v5, v0, v1}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    .line 4
    invoke-virtual {v5}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_33

    .line 5
    new-instance p2, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, p2

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILdc/squareup/okio/Buffer;IZ)V

    invoke-direct {p0, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Ldc/squareup/okhttp3/internal/NamedRunnable;)V

    return-void

    .line 6
    :cond_33
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method pushHeadersLater(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v7, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_2} :catch_1e

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v0, 0x2

    :try_start_5
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-direct {p0, v7}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Ldc/squareup/okhttp3/internal/NamedRunnable;)V
    :try_end_1e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_5 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method pushRequestLater(ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    sget-object p2, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    .line 4
    monitor-exit p0

    return-void

    .line 6
    :cond_14
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3c

    .line 9
    :try_start_1e
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;
    :try_end_20
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1e .. :try_end_20} :catch_3b

    const-string v4, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    :try_start_23
    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Ldc/squareup/okhttp3/internal/NamedRunnable;)V
    :try_end_3b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_23 .. :try_end_3b} :catch_3b

    :catch_3b
    return-void

    :catchall_3c
    move-exception p1

    .line 10
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method pushResetLater(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 10

    .line 1
    new-instance v6, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    invoke-direct {p0, v6}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Ldc/squareup/okhttp3/internal/NamedRunnable;)V

    return-void
.end method

.method public pushStream(ILjava/util/List;Z)Ldc/squareup/okhttp3/internal/http2/Http2Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Ldc/squareup/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_9

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1

    .line 3
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Client cannot push requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method pushedStream(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    and-int/2addr p1, v0

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method declared-synchronized removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendDegradedPingLater()V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 3
    iput-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    .line 5
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_30

    .line 7
    :try_start_1b
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$3;
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1b .. :try_end_1f} :catch_2f

    const-string v2, "OkHttp %s ping"

    const/4 v3, 0x1

    :try_start_22
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$3;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_22 .. :try_end_2f} :catch_2f

    :catch_2f
    return-void

    :catchall_30
    move-exception v0

    .line 8
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public setSettings(Ldc/squareup/okhttp3/internal/http2/Settings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 2
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1e

    .line 3
    :try_start_4
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v1, :cond_15

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {v1, p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->merge(Ldc/squareup/okhttp3/internal/http2/Settings;)V

    .line 7
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1b

    .line 8
    :try_start_e
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->settings(Ldc/squareup/okhttp3/internal/http2/Settings;)V

    .line 9
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1e

    return-void

    .line 10
    :cond_15
    :try_start_15
    new-instance p1, Ldc/squareup/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Ldc/squareup/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1b
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p1

    :catchall_1e
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public shutdown(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 3
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    .line 4
    :try_start_4
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_b

    .line 5
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 7
    :try_start_c
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 8
    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 9
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 12
    :try_start_11
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    sget-object v3, Ldc/squareup/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v1, p1, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->goAway(ILdc/squareup/okhttp3/internal/http2/ErrorCode;[B)V

    .line 13
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    return-void

    :catchall_1a
    move-exception p1

    .line 14
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p1

    :catchall_1d
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->start(Z)V

    return-void
.end method

.method start(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 2
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 3
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->settings(Ldc/squareup/okhttp3/internal/http2/Settings;)V

    .line 4
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_21

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    sub-int/2addr p1, v0

    int-to-long v2, p1

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 9
    :cond_21
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->readerRunnable:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method declared-synchronized updateConnectionFlowControl(J)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 2
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1d

    .line 3
    iget-wide p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeData(IZLdc/squareup/okio/Buffer;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_d

    .line 1
    iget-object p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p4, p2, p1, p3, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->data(ZILdc/squareup/okio/Buffer;I)V

    return-void

    :cond_d
    :goto_d
    cmp-long v3, p4, v1

    if-lez v3, :cond_67

    .line 7
    monitor-enter p0

    .line 9
    :goto_12
    :try_start_12
    iget-wide v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_30

    .line 12
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    .line 16
    :cond_28
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_30} :catch_58
    .catchall {:try_start_12 .. :try_end_30} :catchall_56

    .line 25
    :cond_30
    :try_start_30
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 26
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 27
    iget-wide v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 28
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_56

    sub-long/2addr p4, v6

    .line 31
    iget-object v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_51

    cmp-long v5, p4, v1

    if-nez v5, :cond_51

    const/4 v5, 0x1

    goto :goto_52

    :cond_51
    const/4 v5, 0x0

    :goto_52
    invoke-virtual {v4, v5, p1, p3, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->data(ZILdc/squareup/okio/Buffer;I)V

    goto :goto_d

    :catchall_56
    move-exception p1

    goto :goto_65

    .line 32
    :catch_58
    :try_start_58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 33
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 39
    :goto_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_56

    throw p1

    :cond_67
    return-void
.end method

.method writePing()V
    .registers 5

    .line 4
    monitor-enter p0

    .line 5
    :try_start_1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    .line 6
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    const/4 v0, 0x0

    const/4 v1, 0x3

    const v2, 0x4f4b6f6b

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    return-void

    :catchall_12
    move-exception v0

    .line 8
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method writePing(ZII)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->ping(ZII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_9

    .line 3
    :catch_6
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->failConnection()V

    :goto_9
    return-void
.end method

.method writePingAndAwaitPong()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writePing()V

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->awaitPong()V

    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
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

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method writeSynReset(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->rstStream(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method writeSynResetLater(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 11

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_4} :catch_1f

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    :try_start_7
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_7 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .registers 13

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_4} :catch_1f

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    :try_start_7
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 3
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_7 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.AnonymousClass1 (dc.squareup.okhttp3.internal.http2.Http2Connection$1)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 6

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iput-object p5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;->val$errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;->val$errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynReset(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_f

    .line 3
    :catch_a
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$1;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$000(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V

    :goto_f
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.AnonymousClass2 (dc.squareup.okhttp3.internal.http2.Http2Connection$2)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$streamId:I

.field final synthetic val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 7

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;->val$streamId:I

    iput-wide p5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;->val$unacknowledgedBytesRead:J

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;->val$streamId:I

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;->val$unacknowledgedBytesRead:J

    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_11

    .line 3
    :catch_c
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$2;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$000(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V

    :goto_11
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.AnonymousClass3 (dc.squareup.okhttp3.internal.http2.Http2Connection$3)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$3;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;->sendDegradedPingLater()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$3;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$3;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.AnonymousClass4 (dc.squareup.okhttp3.internal.http2.Http2Connection$4)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    iput-object p5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4
    :try_start_e
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    sget-object v2, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->rstStream(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_2e

    .line 6
    :try_start_1c
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$4;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    goto :goto_2e

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    :goto_2e
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.AnonymousClass5 (dc.squareup.okhttp3.internal.http2.Http2Connection$5)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$inFinished:Z

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->val$streamId:I

    iput-object p5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->val$requestHeaders:Ljava/util/List;

    iput-boolean p6, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->val$streamId:I

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->val$requestHeaders:Ljava/util/List;

    iget-boolean v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    :try_start_10
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->val$streamId:I

    sget-object v3, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->rstStream(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    :cond_1b
    if-nez v0, :cond_21

    .line 4
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->val$inFinished:Z

    if-eqz v0, :cond_36

    .line 5
    :cond_21
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_24} :catch_36

    .line 6
    :try_start_24
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$5;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    :try_start_35
    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    :goto_36
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.AnonymousClass6 (dc.squareup.okhttp3.internal.http2.Http2Connection$6)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushDataLater(ILdc/squareup/okio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$buffer:Ldc/squareup/okio/Buffer;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILdc/squareup/okio/Buffer;IZ)V
    .registers 8

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    iput-object p5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$buffer:Ldc/squareup/okio/Buffer;

    iput p6, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$byteCount:I

    iput-boolean p7, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$buffer:Ldc/squareup/okio/Buffer;

    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$byteCount:I

    iget-boolean v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3, v4}, Ldc/squareup/okhttp3/internal/http2/PushObserver;->onData(ILdc/squareup/okio/BufferedSource;IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    sget-object v3, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->rstStream(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    :cond_1d
    if-nez v0, :cond_23

    .line 3
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    if-eqz v0, :cond_38

    .line 4
    :cond_23
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_38

    .line 5
    :try_start_26
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    goto :goto_38

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    :goto_38
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.AnonymousClass7 (dc.squareup.okhttp3.internal.http2.Http2Connection$7)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushResetLater(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 6

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    iput-object p5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;->val$errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;->val$errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/PushObserver;->onReset(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 3
    :try_start_e
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v1
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.Builder (dc.squareup.okhttp3.internal.http2.Http2Connection$Builder)
.class public Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field hostname:Ljava/lang/String;

.field listener:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

.field pingIntervalMillis:I

.field pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

.field sink:Ldc/squareup/okio/BufferedSink;

.field socket:Ljava/net/Socket;

.field source:Ldc/squareup/okio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->listener:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

    .line 3
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/PushObserver;->CANCEL:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    .line 12
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    return-void
.end method


# virtual methods
.method public build()Ldc/squareup/okhttp3/internal/http2/Http2Connection;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;)Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->listener:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

    return-object p0
.end method

.method public pingIntervalMillis(I)Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;
    .registers 2

    .line 1
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    return-object p0
.end method

.method public pushObserver(Ldc/squareup/okhttp3/internal/http2/PushObserver;)Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ldc/squareup/okio/Okio;->source(Ljava/net/Socket;)Ldc/squareup/okio/Source;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Ldc/squareup/okio/Okio;->sink(Ljava/net/Socket;)Ldc/squareup/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object v2

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Ldc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;)Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Ldc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;)Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;
    .registers 5

    .line 4
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    .line 5
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->source:Ldc/squareup/okio/BufferedSource;

    .line 7
    iput-object p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->sink:Ldc/squareup/okio/BufferedSink;

    return-object p0
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.IntervalPingRunnable (dc.squareup.okhttp3.internal.http2.Http2Connection$IntervalPingRunnable)
.class final Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntervalPingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping"

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 9

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$100(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J

    move-result-wide v1

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {v3}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$200(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gez v7, :cond_17

    const/4 v1, 0x1

    goto :goto_1d

    .line 5
    :cond_17
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$208(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J

    const/4 v1, 0x0

    .line 8
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2c

    if-eqz v1, :cond_26

    .line 10
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$000(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V

    goto :goto_2b

    .line 12
    :cond_26
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$IntervalPingRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v6, v5, v6}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    :goto_2b
    return-void

    :catchall_2c
    move-exception v1

    .line 13
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.Listener (dc.squareup.okhttp3.internal.http2.Http2Connection$Listener)
.class public abstract Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener$1;

    invoke-direct {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener$1;-><init>()V

    sput-object v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V
    .registers 2

    return-void
.end method

.method public abstract onStream(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.Listener.AnonymousClass1 (dc.squareup.okhttp3.internal.http2.Http2Connection$Listener$1)
.class final Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener$1;
.super Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStream(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.PingRunnable (dc.squareup.okhttp3.internal.http2.Http2Connection$PingRunnable)
.class final Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PingRunnable"
.end annotation


# instance fields
.field final payload1:I

.field final payload2:I

.field final reply:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;ZII)V
    .registers 7

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-boolean p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    .line 4
    iput p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    .line 5
    iput p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.ReaderRunnable (dc.squareup.okhttp3.internal.http2.Http2Connection$ReaderRunnable)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Ldc/squareup/okhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ldc/squareup/okhttp3/internal/http2/Http2Reader;)V
    .registers 5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Ldc/squareup/okhttp3/internal/http2/Http2Reader;

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .registers 1

    return-void
.end method

.method public alternateService(ILjava/lang/String;Ldc/squareup/okio/ByteString;Ljava/lang/String;IJ)V
    .registers 8

    return-void
.end method

.method applyAndAckSettings(ZLdc/squareup/okhttp3/internal/http2/Settings;)V
    .registers 8

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_96

    .line 3
    :try_start_8
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    if-eqz p1, :cond_19

    .line 4
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->clear()V

    .line 5
    :cond_19
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/internal/http2/Settings;->merge(Ldc/squareup/okhttp3/internal/http2/Settings;)V

    .line 6
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const/4 p2, -0x1

    const/4 v3, 0x0

    if-eq p1, p2, :cond_54

    if-eq p1, v2, :cond_54

    sub-int/2addr p1, v2

    int-to-long p1, p1

    .line 9
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 10
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    goto :goto_56

    :cond_54
    const-wide/16 p1, 0x0

    .line 13
    :cond_56
    :goto_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_93

    .line 15
    :try_start_57
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {v2, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Ldc/squareup/okhttp3/internal/http2/Settings;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_60} :catch_61
    .catchall {:try_start_57 .. :try_end_60} :catchall_96

    goto :goto_66

    .line 17
    :catch_61
    :try_start_61
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$000(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V

    .line 19
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_96

    const/4 v0, 0x0

    if-eqz v3, :cond_7b

    .line 21
    array-length v1, v3

    const/4 v2, 0x0

    :goto_6c
    if-ge v2, v1, :cond_7b

    aget-object v4, v3, v2

    .line 22
    monitor-enter v4

    .line 23
    :try_start_71
    invoke-virtual {v4, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 24
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :catchall_78
    move-exception p1

    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_78

    throw p1

    .line 27
    :cond_7b
    invoke-static {}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "OkHttp %s settings"

    invoke-direct {p2, p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_93
    move-exception p1

    .line 28
    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw p1

    :catchall_96
    move-exception p1

    .line 34
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_96

    throw p1
.end method

.method public data(ZILdc/squareup/okio/BufferedSource;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushDataLater(ILdc/squareup/okio/BufferedSource;IZ)V

    return-void

    .line 5
    :cond_e
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->getStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_27

    .line 7
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    .line 8
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    .line 9
    invoke-interface {p3, v0, v1}, Ldc/squareup/okio/BufferedSource;->skip(J)V

    return-void

    .line 12
    :cond_27
    invoke-virtual {v0, p3, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->receiveData(Ldc/squareup/okio/BufferedSource;I)V

    if-eqz p1, :cond_2f

    .line 14
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    :cond_2f
    return-void
.end method

.method protected execute()V
    .registers 5

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    .line 4
    :try_start_2
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Ldc/squareup/okhttp3/internal/http2/Http2Reader;

    invoke-virtual {v1, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readConnectionPreface(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;)V

    .line 5
    :goto_7
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Ldc/squareup/okhttp3/internal/http2/Http2Reader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->nextFrame(ZLdc/squareup/okhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    .line 7
    :cond_11
    sget-object v1, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Ldc/squareup/okhttp3/internal/http2/ErrorCode;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1f
    .catchall {:try_start_2 .. :try_end_13} :catchall_1b

    .line 8
    :try_start_13
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_15} :catch_20
    .catchall {:try_start_13 .. :try_end_15} :catchall_2d

    .line 14
    :try_start_15
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_27

    goto :goto_27

    :catchall_1b
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_2e

    :catch_1f
    move-object v1, v0

    .line 15
    :catch_20
    :try_start_20
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Ldc/squareup/okhttp3/internal/http2/ErrorCode;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_2d

    .line 19
    :try_start_22
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, v0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_27

    .line 22
    :catch_27
    :goto_27
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Ldc/squareup/okhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_2d
    move-exception v2

    .line 23
    :goto_2e
    :try_start_2e
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_33

    .line 26
    :catch_33
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Ldc/squareup/okhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 27
    throw v2
.end method

.method public goAway(ILdc/squareup/okhttp3/internal/http2/ErrorCode;Ldc/squareup/okio/ByteString;)V
    .registers 7

    .line 1
    invoke-virtual {p3}, Ldc/squareup/okio/ByteString;->size()I

    .line 6
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter p2

    .line 7
    :try_start_6
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object p3, p3, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    .line 8
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$302(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Z)Z

    .line 9
    monitor-exit p2
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_49

    .line 12
    array-length p2, p3

    const/4 v0, 0x0

    :goto_27
    if-ge v0, p2, :cond_48

    aget-object v1, p3, v0

    .line 13
    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v2

    if-le v2, p1, :cond_45

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 14
    sget-object v2, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    .line 15
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_48
    return-void

    :catchall_49
    move-exception p1

    .line 16
    :try_start_4a
    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public headers(ZIILjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 2
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2, p4, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void

    .line 6
    :cond_e
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter p3

    .line 7
    :try_start_11
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->getStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_71

    .line 11
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$300(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)Z

    move-result v0

    if-eqz v0, :cond_23

    monitor-exit p3

    return-void

    .line 14
    :cond_23
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v1, :cond_2b

    monitor-exit p3

    return-void

    .line 17
    :cond_2b
    rem-int/lit8 v1, p2, 0x2

    iget v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-ne v1, v0, :cond_35

    monitor-exit p3

    return-void

    .line 20
    :cond_35
    invoke-static {p4}, Ldc/squareup/okhttp3/internal/Util;->toHeaders(Ljava/util/List;)Ldc/squareup/okhttp3/Headers;

    move-result-object v8

    .line 21
    new-instance p4, Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    iget-object v5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    const/4 v6, 0x0

    move-object v3, p4

    move v4, p2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;-><init>(ILdc/squareup/okhttp3/internal/http2/Http2Connection;ZZLdc/squareup/okhttp3/Headers;)V

    .line 23
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iput p2, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 24
    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;
    :try_end_57
    .catchall {:try_start_11 .. :try_end_57} :catchall_7b

    const-string v1, "OkHttp %s stream %d"

    :try_start_59
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {v0, p0, v1, v2, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    monitor-exit p3

    return-void

    .line 40
    :cond_71
    monitor-exit p3
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_7b

    .line 43
    invoke-virtual {v0, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    if-eqz p1, :cond_7a

    .line 44
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    :cond_7a
    return-void

    :catchall_7b
    move-exception p1

    .line 45
    :try_start_7c
    monitor-exit p3
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p1
.end method

.method public ping(ZII)V
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    .line 1
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter p1

    if-ne p2, v0, :cond_10

    .line 3
    :try_start_8
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$108(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J

    goto :goto_26

    :catchall_e
    move-exception p2

    goto :goto_28

    :cond_10
    const/4 p3, 0x2

    if-ne p2, p3, :cond_19

    .line 5
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$608(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J

    goto :goto_26

    :cond_19
    const/4 p3, 0x3

    if-ne p2, p3, :cond_26

    .line 7
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$708(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)J

    .line 8
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 10
    :cond_26
    :goto_26
    monitor-exit p1

    goto :goto_3a

    :goto_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_e

    throw p2

    .line 14
    :cond_2a
    :try_start_2a
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$500(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v1, v2, v0, p2, p3}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;ZII)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2a .. :try_end_3a} :catch_3a

    :catch_3a
    :goto_3a
    return-void
.end method

.method public priority(IIIZ)V
    .registers 5

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, p2, p3}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method public rstStream(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushResetLater(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void

    .line 5
    :cond_e
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 7
    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    :cond_19
    return-void
.end method

.method public settings(ZLdc/squareup/okhttp3/internal/http2/Settings;)V
    .registers 11

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->access$500(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v7, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;
    :try_end_8
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_8} :catch_1e

    const-string v3, "OkHttp %s ACK Settings"

    const/4 v1, 0x1

    :try_start_b
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;ZLdc/squareup/okhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_b .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method public windowUpdate(IJ)V
    .registers 7

    if-nez p1, :cond_14

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-wide v1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    goto :goto_25

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p1

    .line 6
    :cond_14
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->getStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 8
    monitor-enter p1

    .line 9
    :try_start_1d
    invoke-virtual {p1, p2, p3}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 10
    monitor-exit p1

    goto :goto_25

    :catchall_22
    move-exception p2

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p2

    :cond_25
    :goto_25
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.ReaderRunnable.AnonymousClass1 (dc.squareup.okhttp3.internal.http2.Http2Connection$ReaderRunnable$1)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->headers(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$newStream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V
    .registers 5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->listener:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;->onStream(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_33

    :catch_c
    move-exception v0

    .line 3
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http2Connection.Listener failure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v3, v3, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Ldc/squareup/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :try_start_2c
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;->val$newStream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_33

    :catch_33
    :goto_33
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.ReaderRunnable.AnonymousClass2 (dc.squareup.okhttp3.internal.http2.Http2Connection$ReaderRunnable$2)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->settings(ZLdc/squareup/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$clearPrevious:Z

.field final synthetic val$settings:Ldc/squareup/okhttp3/internal/http2/Settings;


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;ZLdc/squareup/okhttp3/internal/http2/Settings;)V
    .registers 6

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-boolean p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->val$clearPrevious:Z

    iput-object p5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->val$settings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->val$clearPrevious:Z

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->val$settings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(ZLdc/squareup/okhttp3/internal/http2/Settings;)V

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Connection.ReaderRunnable.AnonymousClass3 (dc.squareup.okhttp3.internal.http2.Http2Connection$ReaderRunnable$3)
.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(ZLdc/squareup/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->listener:Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;->onSettings(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V

    return-void
.end method
