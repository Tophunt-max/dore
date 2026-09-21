###### Class dc.squareup.okhttp3.internal.http1.Http1Codec (dc.squareup.okhttp3.internal.http1.Http1Codec)
.class public final Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;,
        Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;,
        Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;,
        Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;,
        Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;,
        Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final HEADER_LIMIT:I = 0x40000

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Ldc/squareup/okhttp3/OkHttpClient;

.field private headerLimit:J

.field final sink:Ldc/squareup/okio/BufferedSink;

.field final source:Ldc/squareup/okio/BufferedSource;

.field state:I

.field final streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;Ldc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    const-wide/32 v0, 0x40000

    .line 3
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    .line 7
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->client:Ldc/squareup/okhttp3/OkHttpClient;

    .line 8
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    .line 9
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->source:Ldc/squareup/okio/BufferedSource;

    .line 10
    iput-object p4, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    return-void
.end method

.method private readHeaderLine()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->source:Ldc/squareup/okio/BufferedSource;

    iget-wide v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    invoke-interface {v0, v1, v2}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->headerLimit:J

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->connection()Ldc/squareup/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->cancel()V

    :cond_b
    return-void
.end method

.method public createRequestBody(Ldc/squareup/okhttp3/Request;J)Ldc/squareup/okio/Sink;
    .registers 6

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->newChunkedSink()Ldc/squareup/okio/Sink;

    move-result-object p1

    return-object p1

    :cond_13
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1e

    .line 8
    invoke-virtual {p0, p2, p3}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->newFixedLengthSink(J)Ldc/squareup/okio/Sink;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method detachTimeout(Ldc/squareup/okio/ForwardingTimeout;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okio/ForwardingTimeout;->delegate()Ldc/squareup/okio/Timeout;

    move-result-object v0

    .line 2
    sget-object v1, Ldc/squareup/okio/Timeout;->NONE:Ldc/squareup/okio/Timeout;

    invoke-virtual {p1, v1}, Ldc/squareup/okio/ForwardingTimeout;->setDelegate(Ldc/squareup/okio/Timeout;)Ldc/squareup/okio/ForwardingTimeout;

    .line 3
    invoke-virtual {v0}, Ldc/squareup/okio/Timeout;->clearDeadline()Ldc/squareup/okio/Timeout;

    .line 4
    invoke-virtual {v0}, Ldc/squareup/okio/Timeout;->clearTimeout()Ldc/squareup/okio/Timeout;

    return-void
.end method

.method public finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V

    return-void
.end method

.method public flushRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V

    return-void
.end method

.method public isClosed()Z
    .registers 3

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public newChunkedSink()Ldc/squareup/okio/Sink;
    .registers 4

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    .line 3
    new-instance v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;)V

    return-object v0

    .line 4
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newChunkedSource(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okio/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    .line 3
    new-instance v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;Ldc/squareup/okhttp3/HttpUrl;)V

    return-object v0

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSink(J)Ldc/squareup/okio/Sink;
    .registers 5

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    .line 3
    new-instance v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newFixedLengthSource(J)Ldc/squareup/okio/Source;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    .line 3
    new-instance v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;J)V

    return-object v0

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newUnknownLengthSource()Ldc/squareup/okio/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_15

    const/4 v1, 0x5

    .line 3
    iput v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    .line 4
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 5
    new-instance v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;)V

    return-object v0

    .line 6
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openResponseBody(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/ResponseBody;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, v0, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->eventListener:Ldc/squareup/okhttp3/EventListener;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->call:Ldc/squareup/okhttp3/Call;

    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/EventListener;->responseBodyStart(Ldc/squareup/okhttp3/Call;)V

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->hasBody(Ldc/squareup/okhttp3/Response;)Z

    move-result v1

    if-nez v1, :cond_25

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v2}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Ldc/squareup/okio/Source;

    move-result-object p1

    .line 6
    new-instance v3, Ldc/squareup/okhttp3/internal/http/RealResponseBody;

    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Ldc/squareup/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLdc/squareup/okio/BufferedSource;)V

    return-object v3

    :cond_25
    const-string v1, "Transfer-Encoding"

    .line 9
    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_4b

    .line 10
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->newChunkedSource(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okio/Source;

    move-result-object p1

    .line 11
    new-instance v1, Ldc/squareup/okhttp3/internal/http/RealResponseBody;

    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Ldc/squareup/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLdc/squareup/okio/BufferedSource;)V

    return-object v1

    .line 14
    :cond_4b
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->contentLength(Ldc/squareup/okhttp3/Response;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_61

    .line 16
    invoke-virtual {p0, v4, v5}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Ldc/squareup/okio/Source;

    move-result-object p1

    .line 17
    new-instance v1, Ldc/squareup/okhttp3/internal/http/RealResponseBody;

    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Ldc/squareup/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLdc/squareup/okio/BufferedSource;)V

    return-object v1

    .line 20
    :cond_61
    new-instance p1, Ldc/squareup/okhttp3/internal/http/RealResponseBody;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->newUnknownLengthSource()Ldc/squareup/okio/Source;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Ldc/squareup/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLdc/squareup/okio/BufferedSource;)V

    return-object p1
.end method

.method public readHeaders()Ldc/squareup/okhttp3/Headers;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Headers$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Headers$Builder;-><init>()V

    .line 3
    :goto_5
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 4
    sget-object v2, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Ldc/squareup/okhttp3/internal/Internal;->addLenient(Ldc/squareup/okhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_5

    .line 6
    :cond_15
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Headers$Builder;->build()Ldc/squareup/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public readResponseHeaders(Z)Ldc/squareup/okhttp3/Response$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_22

    if-ne v0, v1, :cond_9

    goto :goto_22

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_22
    :goto_22
    :try_start_22
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/internal/http/StatusLine;

    move-result-object v0

    .line 8
    new-instance v2, Ldc/squareup/okhttp3/Response$Builder;

    invoke-direct {v2}, Ldc/squareup/okhttp3/Response$Builder;-><init>()V

    iget-object v3, v0, Ldc/squareup/okhttp3/internal/http/StatusLine;->protocol:Ldc/squareup/okhttp3/Protocol;

    .line 9
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->protocol(Ldc/squareup/okhttp3/Protocol;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget v3, v0, Ldc/squareup/okhttp3/internal/http/StatusLine;->code:I

    .line 10
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->code(I)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, v0, Ldc/squareup/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->message(Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->readHeaders()Ldc/squareup/okhttp3/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->headers(Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz p1, :cond_53

    .line 14
    iget p1, v0, Ldc/squareup/okhttp3/internal/http/StatusLine;->code:I

    if-ne p1, v3, :cond_53

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_53
    iget p1, v0, Ldc/squareup/okhttp3/internal/http/StatusLine;->code:I

    if-ne p1, v3, :cond_5a

    .line 17
    iput v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    return-object v2

    :cond_5a
    const/4 p1, 0x4

    .line 21
    iput p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_5d
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_5d} :catch_5e

    return-object v2

    :catch_5e
    move-exception p1

    .line 25
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 27
    throw v0
.end method

.method public writeRequest(Ldc/squareup/okhttp3/Headers;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    if-nez v0, :cond_3d

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0, p2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v1

    :goto_14
    if-ge p2, v1, :cond_34

    .line 4
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    .line 5
    invoke-interface {v2, v3}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v2

    .line 6
    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v2

    .line 7
    invoke-interface {v2, v0}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 9
    :cond_34
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1, v0}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    return-void

    .line 11
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeRequestHeaders(Ldc/squareup/okhttp3/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    .line 2
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->connection()Ldc/squareup/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route()Ldc/squareup/okhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Ldc/squareup/okhttp3/internal/http/RequestLine;->get(Ldc/squareup/okhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->writeRequest(Ldc/squareup/okhttp3/Headers;Ljava/lang/String;)V

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http1.Http1Codec.AnonymousClass1 (dc.squareup.okhttp3.internal.http1.Http1Codec$1)
.class synthetic Ldc/squareup/okhttp3/internal/http1/Http1Codec$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class dc.squareup.okhttp3.internal.http1.Http1Codec.AbstractSource (dc.squareup.okhttp3.internal.http1.Http1Codec$AbstractSource)
.class abstract Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected bytesRead:J

.field protected closed:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

.field protected final timeout:Ldc/squareup/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/ForwardingTimeout;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {p1}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Ldc/squareup/okio/ForwardingTimeout;-><init>(Ldc/squareup/okio/Timeout;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    return-void
.end method

.method synthetic constructor <init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;Ldc/squareup/okhttp3/internal/http1/Http1Codec$1;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(ZLjava/io/IOException;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget v1, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    return-void

    :cond_8
    const/4 v3, 0x5

    if-ne v1, v3, :cond_21

    .line 4
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->detachTimeout(Ldc/squareup/okio/ForwardingTimeout;)V

    .line 6
    iget-object v5, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iput v2, v5, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    .line 7
    iget-object v3, v5, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    if-eqz v3, :cond_20

    xor-int/lit8 v4, p1, 0x1

    .line 8
    iget-wide v6, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLdc/squareup/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    :cond_20
    return-void

    .line 9
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    .line 3
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->bytesRead:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p2, p1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    .line 8
    throw p1
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    return-object v0
.end method

###### Class dc.squareup.okhttp3.internal.http1.Http1Codec.ChunkedSink (dc.squareup.okhttp3.internal.http1.Http1Codec$ChunkedSink)
.class final Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Ldc/squareup/okio/ForwardingTimeout;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/ForwardingTimeout;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Ldc/squareup/okio/ForwardingTimeout;-><init>(Ldc/squareup/okio/Timeout;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 2
    :try_start_8
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->detachTimeout(Ldc/squareup/okio/ForwardingTimeout;)V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 2
    :cond_7
    :try_start_7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Ldc/squareup/okio/Buffer;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->closed:Z

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-void

    .line 4
    :cond_b
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0, p2, p3}, Ldc/squareup/okio/BufferedSink;->writeHexadecimalUnsignedLong(J)Ldc/squareup/okio/BufferedSink;

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    .line 7
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    return-void

    .line 8
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class dc.squareup.okhttp3.internal.http1.Http1Codec.ChunkedSource (dc.squareup.okhttp3.internal.http1.Http1Codec$ChunkedSource)
.class Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;
.super Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final NO_CHUNK_YET:J = -0x1L


# instance fields
.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

.field private final url:Ldc/squareup/okhttp3/HttpUrl;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;Ldc/squareup/okhttp3/HttpUrl;)V
    .registers 5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;Ldc/squareup/okhttp3/internal/http1/Http1Codec$1;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 6
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Ldc/squareup/okhttp3/HttpUrl;

    return-void
.end method

.method private readChunkSize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 5
    :cond_f
    :try_start_f
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-wide v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_39} :catch_7e

    if-eqz v1, :cond_5d

    .line 14
    :cond_3b
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_5c

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    .line 16
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/OkHttpClient;->cookieJar()Ldc/squareup/okhttp3/CookieJar;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->url:Ldc/squareup/okhttp3/HttpUrl;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->readHeaders()Ldc/squareup/okhttp3/Headers;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->receiveHeaders(Ldc/squareup/okhttp3/CookieJar;Ldc/squareup/okhttp3/HttpUrl;Ldc/squareup/okhttp3/Headers;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_5c
    return-void

    .line 18
    :cond_5d
    :try_start_5d
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_7e} :catch_7e

    :catch_7e
    move-exception v0

    .line 22
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-eqz v0, :cond_18

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x64

    invoke-static {p0, v1, v0}, Ldc/squareup/okhttp3/internal/Util;->discard(Ldc/squareup/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_18
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    return-void
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4b

    .line 1
    iget-boolean v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-nez v2, :cond_43

    .line 2
    iget-boolean v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_11

    return-wide v3

    .line 4
    :cond_11
    iget-wide v5, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_1b

    cmp-long v0, v5, v3

    if-nez v0, :cond_23

    .line 5
    :cond_1b
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->readChunkSize()V

    .line 6
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->hasMoreChunks:Z

    if-nez v0, :cond_23

    return-wide v3

    .line 9
    :cond_23
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_37

    .line 15
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$ChunkedSource;->bytesRemainingInChunk:J

    return-wide p1

    .line 16
    :cond_37
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p2, p1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    .line 18
    throw p1

    .line 19
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4b
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

###### Class dc.squareup.okhttp3.internal.http1.Http1Codec.FixedLengthSink (dc.squareup.okhttp3.internal.http1.Http1Codec$FixedLengthSink)
.class final Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Ldc/squareup/okio/ForwardingTimeout;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/ForwardingTimeout;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Ldc/squareup/okio/ForwardingTimeout;-><init>(Ldc/squareup/okio/Timeout;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    .line 7
    iput-wide p2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    .line 3
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1d

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->detachTimeout(Ldc/squareup/okio/ForwardingTimeout;)V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    return-void

    .line 6
    :cond_1d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Ldc/squareup/okio/ForwardingTimeout;

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
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-nez v0, :cond_42

    .line 2
    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 3
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_21

    .line 7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    .line 8
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    return-void

    .line 9
    :cond_21
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class dc.squareup.okhttp3.internal.http1.Http1Codec.FixedLengthSource (dc.squareup.okhttp3.internal.http1.Http1Codec$FixedLengthSource)
.class Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;
.super Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;Ldc/squareup/okhttp3/internal/http1/Http1Codec$1;)V

    .line 2
    iput-wide p2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 3
    :cond_5
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x64

    invoke-static {p0, v1, v0}, Ldc/squareup/okhttp3/internal/Util;->discard(Ldc/squareup/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_1c
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    return-void
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_42

    .line 1
    iget-boolean v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-nez v2, :cond_3a

    .line 2
    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v0

    if-nez v6, :cond_13

    return-wide v4

    .line 4
    :cond_13
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v4

    if-eqz p3, :cond_2e

    .line 11
    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSource;->bytesRemaining:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_2d

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p3, v0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_2d
    return-wide p1

    .line 14
    :cond_2e
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p2, p1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    .line 16
    throw p1

    .line 17
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_42
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

###### Class dc.squareup.okhttp3.internal.http1.Http1Codec.UnknownLengthSource (dc.squareup.okhttp3.internal.http1.Http1Codec$UnknownLengthSource)
.class Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;
.super Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;Ldc/squareup/okhttp3/internal/http1/Http1Codec$1;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_e
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    return-void
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2a

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-nez v0, :cond_22

    .line 2
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_11

    return-wide v1

    .line 4
    :cond_11
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_21

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    return-wide v1

    :cond_21
    return-wide p1

    .line 8
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2a
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
