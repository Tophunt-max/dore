###### Class dc.squareup.okhttp3.internal.http2.Http2Codec (dc.squareup.okhttp3.internal.http2.Http2Codec)
.class public final Ldc/squareup/okhttp3/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Ljava/lang/String; = "connection"

.field private static final ENCODING:Ljava/lang/String; = "encoding"

.field private static final HOST:Ljava/lang/String; = "host"

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field private static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final TE:Ljava/lang/String; = "te"

.field private static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field private static final UPGRADE:Ljava/lang/String; = "upgrade"


# instance fields
.field private final chain:Ldc/squareup/okhttp3/Interceptor$Chain;

.field private final connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field private final protocol:Ldc/squareup/okhttp3/Protocol;

.field private stream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

.field final streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 14
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/Interceptor$Chain;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->chain:Ldc/squareup/okhttp3/Interceptor$Chain;

    .line 3
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    .line 4
    iput-object p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    .line 5
    invoke-virtual {p1}, Ldc/squareup/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object p1

    sget-object p2, Ldc/squareup/okhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Ldc/squareup/okhttp3/Protocol;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    sget-object p2, Ldc/squareup/okhttp3/Protocol;->HTTP_2:Ldc/squareup/okhttp3/Protocol;

    :goto_18
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->protocol:Ldc/squareup/okhttp3/Protocol;

    return-void
.end method

.method public static http2HeadersList(Ldc/squareup/okhttp3/Request;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Request;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Header;

    sget-object v3, Ldc/squareup/okhttp3/internal/http2/Header;->TARGET_METHOD:Ldc/squareup/okio/ByteString;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Header;

    sget-object v3, Ldc/squareup/okhttp3/internal/http2/Header;->TARGET_PATH:Ldc/squareup/okio/ByteString;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Ldc/squareup/okhttp3/internal/http/RequestLine;->requestPath(Ldc/squareup/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 5
    invoke-virtual {p0, v2}, Ldc/squareup/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 7
    new-instance v3, Ldc/squareup/okhttp3/internal/http2/Header;

    sget-object v4, Ldc/squareup/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Ldc/squareup/okio/ByteString;

    invoke-direct {v3, v4, v2}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_41
    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Header;

    sget-object v3, Ldc/squareup/okhttp3/internal/http2/Header;->TARGET_SCHEME:Ldc/squareup/okio/ByteString;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Ldc/squareup/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 11
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v2

    :goto_58
    if-ge p0, v2, :cond_83

    .line 13
    invoke-virtual {v0, p0}, Ldc/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldc/squareup/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v3

    .line 14
    sget-object v4, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-virtual {v3}, Ldc/squareup/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 15
    new-instance v4, Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-virtual {v0, p0}, Ldc/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    add-int/lit8 p0, p0, 0x1

    goto :goto_58

    :cond_83
    return-object v1
.end method

.method public static readHttp2HeadersList(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/Protocol;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Headers$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Headers$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_43

    .line 3
    invoke-virtual {p0, v3}, Ldc/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v3}, Ldc/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    .line 5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldc/squareup/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/internal/http/StatusLine;

    move-result-object v2

    goto :goto_40

    .line 7
    :cond_33
    sget-object v6, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 8
    sget-object v6, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    invoke-virtual {v6, v0, v4, v5}, Ldc/squareup/okhttp3/internal/Internal;->addLenient(Ldc/squareup/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_43
    if-eqz v2, :cond_63

    .line 13
    new-instance p0, Ldc/squareup/okhttp3/Response$Builder;

    invoke-direct {p0}, Ldc/squareup/okhttp3/Response$Builder;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Response$Builder;->protocol(Ldc/squareup/okhttp3/Protocol;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p0

    iget p1, v2, Ldc/squareup/okhttp3/internal/http/StatusLine;->code:I

    .line 15
    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Response$Builder;->code(I)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p0

    iget-object p1, v2, Ldc/squareup/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Response$Builder;->message(Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p0

    .line 17
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Headers$Builder;->build()Ldc/squareup/okhttp3/Headers;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Response$Builder;->headers(Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p0

    return-object p0

    .line 18
    :cond_63
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->stream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_9

    sget-object v1, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->closeLater(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    :cond_9
    return-void
.end method

.method public createRequestBody(Ldc/squareup/okhttp3/Request;J)Ldc/squareup/okio/Sink;
    .registers 4

    .line 1
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->stream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->getSink()Ldc/squareup/okio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->stream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->getSink()Ldc/squareup/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

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
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->flush()V

    return-void
.end method

.method public openResponseBody(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/ResponseBody;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, v0, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->eventListener:Ldc/squareup/okhttp3/EventListener;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->call:Ldc/squareup/okhttp3/Call;

    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/EventListener;->responseBodyStart(Ldc/squareup/okhttp3/Call;)V

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->contentLength(Ldc/squareup/okhttp3/Response;)J

    move-result-wide v1

    .line 4
    new-instance p1, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->stream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->getSource()Ldc/squareup/okio/Source;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Codec;Ldc/squareup/okio/Source;)V

    .line 5
    new-instance v3, Ldc/squareup/okhttp3/internal/http/RealResponseBody;

    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Ldc/squareup/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLdc/squareup/okio/BufferedSource;)V

    return-object v3
.end method

.method public readResponseHeaders(Z)Ldc/squareup/okhttp3/Response$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->stream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->takeHeaders()Ldc/squareup/okhttp3/Headers;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->protocol:Ldc/squareup/okhttp3/Protocol;

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->readHttp2HeadersList(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/Protocol;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    if-eqz p1, :cond_1a

    .line 3
    sget-object p1, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/Internal;->code(Ldc/squareup/okhttp3/Response$Builder;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    return-object v0
.end method

.method public writeRequestHeaders(Ldc/squareup/okhttp3/Request;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->stream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_5

    return-void

    .line 3
    :cond_5
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->body()Ldc/squareup/okhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 4
    :goto_e
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->http2HeadersList(Ldc/squareup/okhttp3/Request;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->stream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    .line 6
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout()Ldc/squareup/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->chain:Ldc/squareup/okhttp3/Interceptor$Chain;

    invoke-interface {v0}, Ldc/squareup/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ldc/squareup/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okio/Timeout;

    .line 7
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->stream:Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout()Ldc/squareup/okio/Timeout;

    move-result-object p1

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->chain:Ldc/squareup/okhttp3/Interceptor$Chain;

    invoke-interface {v0}, Ldc/squareup/okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Ldc/squareup/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okio/Timeout;

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Codec.StreamFinishingSource (dc.squareup.okhttp3.internal.http2.Http2Codec$StreamFinishingSource)
.class Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;
.super Ldc/squareup/okio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field bytesRead:J

.field completed:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Codec;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Codec;Ldc/squareup/okio/Source;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Codec;

    .line 2
    invoke-direct {p0, p2}, Ldc/squareup/okio/ForwardingSource;-><init>(Ldc/squareup/okio/Source;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    return-void
.end method

.method private endOfInput(Ljava/io/IOException;)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->completed:Z

    .line 3
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Codec;

    iget-object v1, v3, Ldc/squareup/okhttp3/internal/http2/Http2Codec;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    iget-wide v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    const/4 v2, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLdc/squareup/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

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
    invoke-super {p0}, Ldc/squareup/okio/ForwardingSource;->close()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    return-void
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
    invoke-virtual {p0}, Ldc/squareup/okio/ForwardingSource;->delegate()Ldc/squareup/okio/Source;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    .line 3
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->bytesRead:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    .line 7
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Codec$StreamFinishingSource;->endOfInput(Ljava/io/IOException;)V

    .line 8
    throw p1
.end method
