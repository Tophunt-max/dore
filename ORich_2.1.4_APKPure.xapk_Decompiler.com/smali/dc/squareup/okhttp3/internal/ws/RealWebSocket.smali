###### Class dc.squareup.okhttp3.internal.ws.RealWebSocket (dc.squareup.okhttp3.internal.ws.RealWebSocket)
.class public final Ldc/squareup/okhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/WebSocket;
.implements Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/ws/RealWebSocket$CancelRunnable;,
        Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;,
        Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;,
        Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;,
        Ldc/squareup/okhttp3/internal/ws/RealWebSocket$PingRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CANCEL_AFTER_CLOSE_MILLIS:J = 0xea60L

.field private static final MAX_QUEUE_SIZE:J = 0x1000000L

.field private static final ONLY_HTTP1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private awaitingPong:Z

.field private call:Ldc/squareup/okhttp3/Call;

.field private cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private enqueuedClose:Z

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field final listener:Ldc/squareup/okhttp3/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Ldc/squareup/okhttp3/Request;

.field private final pingIntervalMillis:J

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ldc/squareup/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Ldc/squareup/okhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private receivedPingCount:I

.field private receivedPongCount:I

.field private sentPingCount:I

.field private streams:Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;

.field private writer:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2
    sget-object v0, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;Ljava/util/Random;J)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 42
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 45
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->originalRequest:Ldc/squareup/okhttp3/Request;

    .line 46
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->listener:Ldc/squareup/okhttp3/WebSocketListener;

    .line 47
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    .line 48
    iput-wide p4, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 51
    invoke-virtual {p3, p1}, Ljava/util/Random;->nextBytes([B)V

    .line 52
    invoke-static {p1}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 54
    new-instance p1, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$1;

    invoke-direct {p1, p0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$1;-><init>(Ldc/squareup/okhttp3/internal/ws/RealWebSocket;)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    return-void

    .line 55
    :cond_41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Request must be GET: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private runWriter()V
    .registers 3

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_9

    .line 4
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private declared-synchronized send(Ldc/squareup/okio/ByteString;I)Z
    .registers 9

    monitor-enter p0

    .line 5
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_b

    goto :goto_3c

    .line 8
    :cond_b
    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_22

    const/16 p1, 0x3e9

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_3e

    monitor-exit p0

    return v1

    .line 14
    :cond_22
    :try_start_22
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 15
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v1, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;

    invoke-direct {v1, p2, p1}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;-><init>(ILdc/squareup/okio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_3e

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_3c
    :goto_3c
    monitor-exit p0

    return v1

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method awaitTermination(ILjava/util/concurrent/TimeUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->call:Ldc/squareup/okhttp3/Call;

    invoke-interface {v0}, Ldc/squareup/okhttp3/Call;->cancel()V

    return-void
.end method

.method checkResponse(Ldc/squareup/okhttp3/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v0

    const-string v1, "\'"

    const/16 v2, 0x65

    if-ne v0, v2, :cond_a6

    const-string v0, "Connection"

    .line 6
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Upgrade"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 12
    invoke-virtual {p1, v2}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "websocket"

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string v0, "Sec-WebSocket-Accept"

    .line 18
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ldc/squareup/okio/ByteString;->sha1()Ldc/squareup/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    return-void

    .line 22
    :cond_50
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' but was \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_72
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_8c
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_a6
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected HTTP 101 response but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(ILjava/lang/String;)Z
    .registers 5

    const-wide/32 v0, 0xea60

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method declared-synchronized close(ILjava/lang/String;J)Z
    .registers 11

    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2e

    .line 6
    invoke-static {p2}, Ldc/squareup/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldc/squareup/okio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v5, v1, v3

    if-gtz v5, :cond_17

    goto :goto_2e

    .line 8
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reason.size() > 123: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2e
    :goto_2e
    iget-boolean p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez p2, :cond_49

    iget-boolean p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz p2, :cond_37

    goto :goto_49

    :cond_37
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    .line 18
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v2, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;

    invoke-direct {v2, p1, v0, p3, p4}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;-><init>(ILdc/squareup/okio/ByteString;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_4c

    monitor-exit p0

    return p2

    :cond_49
    :goto_49
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connect(Ldc/squareup/okhttp3/OkHttpClient;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/OkHttpClient;->newBuilder()Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ldc/squareup/okhttp3/EventListener;->NONE:Ldc/squareup/okhttp3/EventListener;

    .line 2
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->eventListener(Ldc/squareup/okhttp3/EventListener;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    .line 3
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object p1

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->originalRequest:Ldc/squareup/okhttp3/Request;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request;->newBuilder()Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Upgrade"

    const-string v2, "websocket"

    .line 6
    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "Connection"

    .line 7
    invoke-virtual {v0, v2, v1}, Ldc/squareup/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    const-string v2, "Sec-WebSocket-Key"

    .line 8
    invoke-virtual {v0, v2, v1}, Ldc/squareup/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    .line 9
    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    .line 11
    sget-object v1, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    invoke-virtual {v1, p1, v0}, Ldc/squareup/okhttp3/internal/Internal;->newWebSocketCall(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->call:Ldc/squareup/okhttp3/Call;

    .line 12
    invoke-interface {p1}, Ldc/squareup/okhttp3/Call;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okio/Timeout;->clearTimeout()Ldc/squareup/okio/Timeout;

    .line 13
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->call:Ldc/squareup/okhttp3/Call;

    new-instance v1, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;

    invoke-direct {v1, p0, v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;-><init>(Ldc/squareup/okhttp3/internal/ws/RealWebSocket;Ldc/squareup/okhttp3/Request;)V

    invoke-interface {p1, v1}, Ldc/squareup/okhttp3/Call;->enqueue(Ldc/squareup/okhttp3/Callback;)V

    return-void
.end method

.method public failWebSocket(Ljava/lang/Exception;Ldc/squareup/okhttp3/Response;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failed:Z

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->streams:Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->streams:Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_17

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 7
    :cond_17
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 8
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2d

    .line 11
    :try_start_1f
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->listener:Ldc/squareup/okhttp3/WebSocketListener;

    invoke-virtual {v1, p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_28

    .line 13
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_28
    move-exception p1

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    throw p1

    :catchall_2d
    move-exception p1

    .line 15
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public initReaderAndWriter(Ljava/lang/String;Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->streams:Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 3
    new-instance v0, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    iget-boolean v1, p2, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p2, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Ldc/squareup/okio/BufferedSink;

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;-><init>(ZLdc/squareup/okio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->writer:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    .line 4
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ldc/squareup/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-direct {v4, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v4, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_32

    .line 6
    new-instance v5, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$PingRunnable;

    invoke-direct {v5, p0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Ldc/squareup/okhttp3/internal/ws/RealWebSocket;)V

    iget-wide v8, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 9
    :cond_32
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3d

    .line 10
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 12
    :cond_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_4a

    .line 14
    new-instance p1, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;

    iget-boolean v0, p2, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object p2, p2, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->source:Ldc/squareup/okio/BufferedSource;

    invoke-direct {p1, v0, p2, p0}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;-><init>(ZLdc/squareup/okio/BufferedSource;Ldc/squareup/okhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->reader:Ldc/squareup/okhttp3/internal/ws/WebSocketReader;

    return-void

    :catchall_4a
    move-exception p1

    .line 15
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public loopReader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->reader:Ldc/squareup/okhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    :cond_b
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4c

    .line 1
    monitor-enter p0

    .line 2
    :try_start_4
    iget v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    if-ne v1, v0, :cond_41

    .line 3
    iput p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 4
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    .line 5
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->streams:Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 7
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->streams:Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 8
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_25

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 9
    :cond_25
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v1, v0

    .line 11
    :cond_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_49

    .line 14
    :try_start_2c
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->listener:Ldc/squareup/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    if-eqz v1, :cond_38

    .line 17
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->listener:Ldc/squareup/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_3c

    .line 20
    :cond_38
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_3c
    move-exception p1

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 21
    throw p1

    .line 22
    :cond_41
    :try_start_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_49
    move-exception p1

    .line 31
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw p1

    .line 32
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onReadMessage(Ldc/squareup/okio/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->listener:Ldc/squareup/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V

    return-void
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->listener:Ldc/squareup/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onReadPing(Ldc/squareup/okio/ByteString;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_22

    .line 3
    :cond_12
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 5
    iget p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedPingCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_24

    monitor-exit p0

    return-void

    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadPong(Ldc/squareup/okio/ByteString;)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedPongCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedPongCount:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->awaitingPong:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pong(Ldc/squareup/okio/ByteString;)Z
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1d

    .line 3
    :cond_12
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    const/4 p1, 0x1

    :goto_1b
    monitor-exit p0

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    goto :goto_1b

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method processNextFrame()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->reader:Ldc/squareup/okhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    .line 2
    iget v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_d

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Ldc/squareup/okhttp3/Response;)V

    return v0
.end method

.method public declared-synchronized queueSize()J
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->queueSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receivedPingCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receivedPongCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedPongCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Ldc/squareup/okhttp3/Request;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->originalRequest:Ldc/squareup/okhttp3/Request;

    return-object v0
.end method

.method public send(Ldc/squareup/okio/ByteString;)Z
    .registers 3

    const-string v0, "bytes == null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->send(Ldc/squareup/okio/ByteString;I)Z

    move-result p1

    return p1
.end method

.method public send(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "text == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ldc/squareup/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->send(Ldc/squareup/okio/ByteString;I)Z

    move-result p1

    return p1
.end method

.method declared-synchronized sentPingCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->sentPingCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tearDown()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 4
    :cond_8
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method writeOneFrame()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3
    monitor-exit p0

    return v1

    .line 6
    :cond_8
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->writer:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    .line 7
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okio/ByteString;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_53

    .line 9
    iget-object v5, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 10
    instance-of v6, v5, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v6, :cond_4b

    .line 11
    iget v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 12
    iget-object v6, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    if-eq v1, v3, :cond_34

    .line 14
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->streams:Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 15
    iput-object v4, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->streams:Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 16
    iget-object v4, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v4, v5

    move-object v11, v3

    move v3, v1

    move-object v1, v11

    goto :goto_55

    .line 19
    :cond_34
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$CancelRunnable;

    invoke-direct {v7, p0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Ldc/squareup/okhttp3/internal/ws/RealWebSocket;)V

    move-object v8, v5

    check-cast v8, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;

    iget-wide v8, v8, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    move v3, v1

    move-object v1, v4

    goto :goto_51

    :cond_4b
    if-nez v5, :cond_4f

    .line 23
    monitor-exit p0

    return v1

    :cond_4f
    move-object v1, v4

    move-object v6, v1

    :goto_51
    move-object v4, v5

    goto :goto_55

    :cond_53
    move-object v1, v4

    move-object v6, v1

    .line 26
    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_b0

    if-eqz v2, :cond_5c

    .line 30
    :try_start_58
    invoke-virtual {v0, v2}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writePong(Ldc/squareup/okio/ByteString;)V

    goto :goto_a0

    .line 32
    :cond_5c
    instance-of v2, v4, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;

    if-eqz v2, :cond_8c

    .line 33
    move-object v2, v4

    check-cast v2, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;->data:Ldc/squareup/okio/ByteString;

    .line 34
    check-cast v4, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;

    iget v3, v4, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 35
    invoke-virtual {v2}, Ldc/squareup/okio/ByteString;->size()I

    move-result v4

    int-to-long v4, v4

    .line 36
    invoke-virtual {v0, v3, v4, v5}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Ldc/squareup/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    .line 38
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/BufferedSink;

    .line 39
    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

    .line 40
    monitor-enter p0
    :try_end_7d
    .catchall {:try_start_58 .. :try_end_7d} :catchall_ab

    .line 41
    :try_start_7d
    iget-wide v3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {v2}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 42
    monitor-exit p0

    goto :goto_a0

    :catchall_89
    move-exception v0

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_7d .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v0

    .line 44
    :cond_8c
    instance-of v2, v4, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v2, :cond_a5

    .line 45
    check-cast v4, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;

    .line 46
    iget v2, v4, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    iget-object v4, v4, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;->reason:Ldc/squareup/okio/ByteString;

    invoke-virtual {v0, v2, v4}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writeClose(ILdc/squareup/okio/ByteString;)V

    if-eqz v1, :cond_a0

    .line 50
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->listener:Ldc/squareup/okhttp3/WebSocketListener;

    invoke-virtual {v0, p0, v3, v6}, Ldc/squareup/okhttp3/WebSocketListener;->onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_8b .. :try_end_a0} :catchall_ab

    .line 59
    :cond_a0
    :goto_a0
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    return v0

    .line 60
    :cond_a5
    :try_start_a5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception v0

    .line 65
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    throw v0

    :catchall_b0
    move-exception v0

    .line 67
    :try_start_b1
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v0
.end method

.method writePingFrame()V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 3
    :cond_7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->writer:Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;

    .line 4
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->awaitingPong:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_11

    iget v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    .line 5
    :goto_12
    iget v3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    .line 6
    iput-boolean v4, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->awaitingPong:Z

    .line 7
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_53

    const/4 v3, 0x0

    if-eq v1, v2, :cond_48

    .line 10
    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent ping but didn\'t receive pong within "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms (after "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " successful ping/pongs)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Ldc/squareup/okhttp3/Response;)V

    return-void

    .line 17
    :cond_48
    :try_start_48
    sget-object v1, Ldc/squareup/okio/ByteString;->EMPTY:Ldc/squareup/okio/ByteString;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/ws/WebSocketWriter;->writePing(Ldc/squareup/okio/ByteString;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v0

    .line 19
    invoke-virtual {p0, v0, v3}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Ldc/squareup/okhttp3/Response;)V

    :goto_52
    return-void

    :catchall_53
    move-exception v0

    .line 20
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

###### Class dc.squareup.okhttp3.internal.ws.RealWebSocket.AnonymousClass1 (dc.squareup.okhttp3.internal.ws.RealWebSocket$1)
.class Ldc/squareup/okhttp3/internal/ws/RealWebSocket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/ws/RealWebSocket;-><init>(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;Ljava/util/Random;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/ws/RealWebSocket;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$1;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$1;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->writeOneFrame()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_9

    if-eqz v0, :cond_10

    goto :goto_0

    :catch_9
    move-exception v0

    .line 4
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$1;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Ldc/squareup/okhttp3/Response;)V

    :cond_10
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.ws.RealWebSocket.AnonymousClass2 (dc.squareup.okhttp3.internal.ws.RealWebSocket$2)
.class Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->connect(Ldc/squareup/okhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

.field final synthetic val$request:Ldc/squareup/okhttp3/Request;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/ws/RealWebSocket;Ldc/squareup/okhttp3/Request;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->val$request:Ldc/squareup/okhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ldc/squareup/okhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    .line 1
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Ldc/squareup/okhttp3/Response;)V

    return-void
.end method

.method public onResponse(Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/Response;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p2}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->checkResponse(Ldc/squareup/okhttp3/Response;)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_5} :catch_57

    .line 9
    sget-object v0, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/Internal;->streamAllocation(Ldc/squareup/okhttp3/Call;)Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 11
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->connection()Ldc/squareup/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Ldc/squareup/okhttp3/internal/connection/StreamAllocation;)Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;

    move-result-object v0

    .line 15
    :try_start_16
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    iget-object v2, v1, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->listener:Ldc/squareup/okhttp3/WebSocketListener;

    invoke-virtual {v2, v1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttp WebSocket "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->val$request:Ldc/squareup/okhttp3/Request;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1, p2, v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 18
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->connection()Ldc/squareup/okhttp3/internal/connection/RealConnection;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 19
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4e} :catch_4f

    goto :goto_56

    :catch_4f
    move-exception p1

    .line 21
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Ldc/squareup/okhttp3/Response;)V

    :goto_56
    return-void

    :catch_57
    move-exception p1

    .line 22
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$2;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Ldc/squareup/okhttp3/Response;)V

    .line 23
    invoke-static {p2}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.ws.RealWebSocket.CancelRunnable (dc.squareup.okhttp3.internal.ws.RealWebSocket$CancelRunnable)
.class final Ldc/squareup/okhttp3/internal/ws/RealWebSocket$CancelRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CancelRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/ws/RealWebSocket;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->cancel()V

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.ws.RealWebSocket.Close (dc.squareup.okhttp3.internal.ws.RealWebSocket$Close)
.class final Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final cancelAfterCloseMillis:J

.field final code:I

.field final reason:Ldc/squareup/okio/ByteString;


# direct methods
.method constructor <init>(ILdc/squareup/okio/ByteString;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;->reason:Ldc/squareup/okio/ByteString;

    .line 4
    iput-wide p3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.ws.RealWebSocket.Message (dc.squareup.okhttp3.internal.ws.RealWebSocket$Message)
.class final Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Ldc/squareup/okio/ByteString;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILdc/squareup/okio/ByteString;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Message;->data:Ldc/squareup/okio/ByteString;

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.ws.RealWebSocket.PingRunnable (dc.squareup.okhttp3.internal.ws.RealWebSocket$PingRunnable)
.class final Ldc/squareup/okhttp3/internal/ws/RealWebSocket$PingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/ws/RealWebSocket;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->writePingFrame()V

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.ws.RealWebSocket.Streams (dc.squareup.okhttp3.internal.ws.RealWebSocket$Streams)
.class public abstract Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Ldc/squareup/okio/BufferedSink;

.field public final source:Ldc/squareup/okio/BufferedSource;


# direct methods
.method public constructor <init>(ZLdc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->source:Ldc/squareup/okio/BufferedSource;

    .line 4
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Ldc/squareup/okio/BufferedSink;

    return-void
.end method
