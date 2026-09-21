###### Class dc.squareup.okhttp3.Response (dc.squareup.okhttp3.Response)
.class public final Ldc/squareup/okhttp3/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field final body:Ldc/squareup/okhttp3/ResponseBody;

.field private volatile cacheControl:Ldc/squareup/okhttp3/CacheControl;

.field final cacheResponse:Ldc/squareup/okhttp3/Response;

.field final code:I

.field final handshake:Ldc/squareup/okhttp3/Handshake;

.field final headers:Ldc/squareup/okhttp3/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Ldc/squareup/okhttp3/Response;

.field final priorResponse:Ldc/squareup/okhttp3/Response;

.field final protocol:Ldc/squareup/okhttp3/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Ldc/squareup/okhttp3/Request;

.field final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/Response$Builder;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ldc/squareup/okhttp3/Response$Builder;->request:Ldc/squareup/okhttp3/Request;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->request:Ldc/squareup/okhttp3/Request;

    .line 3
    iget-object v0, p1, Ldc/squareup/okhttp3/Response$Builder;->protocol:Ldc/squareup/okhttp3/Protocol;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->protocol:Ldc/squareup/okhttp3/Protocol;

    .line 4
    iget v0, p1, Ldc/squareup/okhttp3/Response$Builder;->code:I

    iput v0, p0, Ldc/squareup/okhttp3/Response;->code:I

    .line 5
    iget-object v0, p1, Ldc/squareup/okhttp3/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->message:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Ldc/squareup/okhttp3/Response$Builder;->handshake:Ldc/squareup/okhttp3/Handshake;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->handshake:Ldc/squareup/okhttp3/Handshake;

    .line 7
    iget-object v0, p1, Ldc/squareup/okhttp3/Response$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Headers$Builder;->build()Ldc/squareup/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->headers:Ldc/squareup/okhttp3/Headers;

    .line 8
    iget-object v0, p1, Ldc/squareup/okhttp3/Response$Builder;->body:Ldc/squareup/okhttp3/ResponseBody;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->body:Ldc/squareup/okhttp3/ResponseBody;

    .line 9
    iget-object v0, p1, Ldc/squareup/okhttp3/Response$Builder;->networkResponse:Ldc/squareup/okhttp3/Response;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->networkResponse:Ldc/squareup/okhttp3/Response;

    .line 10
    iget-object v0, p1, Ldc/squareup/okhttp3/Response$Builder;->cacheResponse:Ldc/squareup/okhttp3/Response;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->cacheResponse:Ldc/squareup/okhttp3/Response;

    .line 11
    iget-object v0, p1, Ldc/squareup/okhttp3/Response$Builder;->priorResponse:Ldc/squareup/okhttp3/Response;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->priorResponse:Ldc/squareup/okhttp3/Response;

    .line 12
    iget-wide v0, p1, Ldc/squareup/okhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v0, p0, Ldc/squareup/okhttp3/Response;->sentRequestAtMillis:J

    .line 13
    iget-wide v0, p1, Ldc/squareup/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v0, p0, Ldc/squareup/okhttp3/Response;->receivedResponseAtMillis:J

    return-void
.end method


# virtual methods
.method public body()Ldc/squareup/okhttp3/ResponseBody;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->body:Ldc/squareup/okhttp3/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Ldc/squareup/okhttp3/CacheControl;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->cacheControl:Ldc/squareup/okhttp3/CacheControl;

    if-eqz v0, :cond_5

    goto :goto_d

    .line 2
    :cond_5
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->headers:Ldc/squareup/okhttp3/Headers;

    invoke-static {v0}, Ldc/squareup/okhttp3/CacheControl;->parse(Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Response;->cacheControl:Ldc/squareup/okhttp3/CacheControl;

    :goto_d
    return-object v0
.end method

.method public cacheResponse()Ldc/squareup/okhttp3/Response;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->cacheResponse:Ldc/squareup/okhttp3/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_9

    const-string v0, "WWW-Authenticate"

    goto :goto_f

    :cond_9
    const/16 v1, 0x197

    if-ne v0, v1, :cond_18

    const-string v0, "Proxy-Authenticate"

    .line 8
    :goto_f
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->parseChallenges(Ldc/squareup/okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9
    :cond_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->body:Ldc/squareup/okhttp3/ResponseBody;

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {v0}, Ldc/squareup/okhttp3/ResponseBody;->close()V

    return-void

    .line 5
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public code()I
    .registers 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/Response;->code:I

    return v0
.end method

.method public handshake()Ldc/squareup/okhttp3/Handshake;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->handshake:Ldc/squareup/okhttp3/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->headers:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    move-object p2, p1

    :cond_9
    return-object p2
.end method

.method public headers()Ldc/squareup/okhttp3/Headers;
    .registers 2

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->headers:Ldc/squareup/okhttp3/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->headers:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isRedirect()Z
    .registers 3

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/Response;->code:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_f

    const/16 v1, 0x134

    if-eq v0, v1, :cond_f

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    return v0

    :cond_f
    :pswitch_f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x12c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public isSuccessful()Z
    .registers 3

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Ldc/squareup/okhttp3/Response;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->networkResponse:Ldc/squareup/okhttp3/Response;

    return-object v0
.end method

.method public newBuilder()Ldc/squareup/okhttp3/Response$Builder;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Response$Builder;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/Response$Builder;-><init>(Ldc/squareup/okhttp3/Response;)V

    return-object v0
.end method

.method public peekBody(J)Ldc/squareup/okhttp3/ResponseBody;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->body:Ldc/squareup/okhttp3/ResponseBody;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/ResponseBody;->source()Ldc/squareup/okio/BufferedSource;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Ldc/squareup/okio/BufferedSource;->request(J)Z

    .line 3
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->buffer()Ldc/squareup/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->clone()Ldc/squareup/okio/Buffer;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_25

    .line 8
    new-instance v1, Ldc/squareup/okio/Buffer;

    invoke-direct {v1}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 9
    invoke-virtual {v1, v0, p1, p2}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 10
    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->clear()V

    move-object v0, v1

    .line 15
    :cond_25
    iget-object p1, p0, Ldc/squareup/okhttp3/Response;->body:Ldc/squareup/okhttp3/ResponseBody;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/ResponseBody;->contentType()Ldc/squareup/okhttp3/MediaType;

    move-result-object p1

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    invoke-static {p1, v1, v2, v0}, Ldc/squareup/okhttp3/ResponseBody;->create(Ldc/squareup/okhttp3/MediaType;JLdc/squareup/okio/BufferedSource;)Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public priorResponse()Ldc/squareup/okhttp3/Response;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->priorResponse:Ldc/squareup/okhttp3/Response;

    return-object v0
.end method

.method public protocol()Ldc/squareup/okhttp3/Protocol;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->protocol:Ldc/squareup/okhttp3/Protocol;

    return-object v0
.end method

.method public receivedResponseAtMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public request()Ldc/squareup/okhttp3/Request;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response;->request:Ldc/squareup/okhttp3/Request;

    return-object v0
.end method

.method public sentRequestAtMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/Response;->protocol:Ldc/squareup/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldc/squareup/okhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/Response;->request:Ldc/squareup/okhttp3/Request;

    .line 8
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class dc.squareup.okhttp3.Response.Builder (dc.squareup.okhttp3.Response$Builder)
.class public Ldc/squareup/okhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Ldc/squareup/okhttp3/ResponseBody;

.field cacheResponse:Ldc/squareup/okhttp3/Response;

.field code:I

.field handshake:Ldc/squareup/okhttp3/Handshake;

.field headers:Ldc/squareup/okhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Ldc/squareup/okhttp3/Response;

.field priorResponse:Ldc/squareup/okhttp3/Response;

.field protocol:Ldc/squareup/okhttp3/Protocol;

.field receivedResponseAtMillis:J

.field request:Ldc/squareup/okhttp3/Request;

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ldc/squareup/okhttp3/Response$Builder;->code:I

    .line 14
    new-instance v0, Ldc/squareup/okhttp3/Headers$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/Response;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Ldc/squareup/okhttp3/Response$Builder;->code:I

    .line 32
    iget-object v0, p1, Ldc/squareup/okhttp3/Response;->request:Ldc/squareup/okhttp3/Request;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->request:Ldc/squareup/okhttp3/Request;

    .line 33
    iget-object v0, p1, Ldc/squareup/okhttp3/Response;->protocol:Ldc/squareup/okhttp3/Protocol;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->protocol:Ldc/squareup/okhttp3/Protocol;

    .line 34
    iget v0, p1, Ldc/squareup/okhttp3/Response;->code:I

    iput v0, p0, Ldc/squareup/okhttp3/Response$Builder;->code:I

    .line 35
    iget-object v0, p1, Ldc/squareup/okhttp3/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Ldc/squareup/okhttp3/Response;->handshake:Ldc/squareup/okhttp3/Handshake;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->handshake:Ldc/squareup/okhttp3/Handshake;

    .line 37
    iget-object v0, p1, Ldc/squareup/okhttp3/Response;->headers:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Headers;->newBuilder()Ldc/squareup/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    .line 38
    iget-object v0, p1, Ldc/squareup/okhttp3/Response;->body:Ldc/squareup/okhttp3/ResponseBody;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->body:Ldc/squareup/okhttp3/ResponseBody;

    .line 39
    iget-object v0, p1, Ldc/squareup/okhttp3/Response;->networkResponse:Ldc/squareup/okhttp3/Response;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->networkResponse:Ldc/squareup/okhttp3/Response;

    .line 40
    iget-object v0, p1, Ldc/squareup/okhttp3/Response;->cacheResponse:Ldc/squareup/okhttp3/Response;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->cacheResponse:Ldc/squareup/okhttp3/Response;

    .line 41
    iget-object v0, p1, Ldc/squareup/okhttp3/Response;->priorResponse:Ldc/squareup/okhttp3/Response;

    iput-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->priorResponse:Ldc/squareup/okhttp3/Response;

    .line 42
    iget-wide v0, p1, Ldc/squareup/okhttp3/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Ldc/squareup/okhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 43
    iget-wide v0, p1, Ldc/squareup/okhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Ldc/squareup/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method private checkPriorResponse(Ldc/squareup/okhttp3/Response;)V
    .registers 3

    .line 1
    iget-object p1, p1, Ldc/squareup/okhttp3/Response;->body:Ldc/squareup/okhttp3/ResponseBody;

    if-nez p1, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkSupportResponse(Ljava/lang/String;Ldc/squareup/okhttp3/Response;)V
    .registers 4

    .line 1
    iget-object v0, p2, Ldc/squareup/okhttp3/Response;->body:Ldc/squareup/okhttp3/ResponseBody;

    if-nez v0, :cond_56

    .line 3
    iget-object v0, p2, Ldc/squareup/okhttp3/Response;->networkResponse:Ldc/squareup/okhttp3/Response;

    if-nez v0, :cond_3f

    .line 5
    iget-object v0, p2, Ldc/squareup/okhttp3/Response;->cacheResponse:Ldc/squareup/okhttp3/Response;

    if-nez v0, :cond_28

    .line 7
    iget-object p2, p2, Ldc/squareup/okhttp3/Response;->priorResponse:Ldc/squareup/okhttp3/Response;

    if-nez p2, :cond_11

    return-void

    .line 8
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_28
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_56
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public body(Ldc/squareup/okhttp3/ResponseBody;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Response$Builder;->body:Ldc/squareup/okhttp3/ResponseBody;

    return-object p0
.end method

.method public build()Ldc/squareup/okhttp3/Response;
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->request:Ldc/squareup/okhttp3/Request;

    if-eqz v0, :cond_3f

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->protocol:Ldc/squareup/okhttp3/Protocol;

    if-eqz v0, :cond_37

    .line 3
    iget v0, p0, Ldc/squareup/okhttp3/Response$Builder;->code:I

    if-ltz v0, :cond_1e

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 5
    new-instance v0, Ldc/squareup/okhttp3/Response;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/Response;-><init>(Ldc/squareup/okhttp3/Response$Builder;)V

    return-object v0

    .line 6
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldc/squareup/okhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheResponse(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Ldc/squareup/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Ldc/squareup/okhttp3/Response;)V

    .line 2
    :cond_7
    iput-object p1, p0, Ldc/squareup/okhttp3/Response$Builder;->cacheResponse:Ldc/squareup/okhttp3/Response;

    return-object p0
.end method

.method public code(I)Ldc/squareup/okhttp3/Response$Builder;
    .registers 2

    .line 1
    iput p1, p0, Ldc/squareup/okhttp3/Response$Builder;->code:I

    return-object p0
.end method

.method public handshake(Ldc/squareup/okhttp3/Handshake;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Response$Builder;->handshake:Ldc/squareup/okhttp3/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->newBuilder()Ldc/squareup/okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/Response$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Ldc/squareup/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Ldc/squareup/okhttp3/Response;)V

    .line 2
    :cond_7
    iput-object p1, p0, Ldc/squareup/okhttp3/Response$Builder;->networkResponse:Ldc/squareup/okhttp3/Response;

    return-object p0
.end method

.method public priorResponse(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 2

    if-eqz p1, :cond_5

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/Response$Builder;->checkPriorResponse(Ldc/squareup/okhttp3/Response;)V

    .line 2
    :cond_5
    iput-object p1, p0, Ldc/squareup/okhttp3/Response$Builder;->priorResponse:Ldc/squareup/okhttp3/Response;

    return-object p0
.end method

.method public protocol(Ldc/squareup/okhttp3/Protocol;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Response$Builder;->protocol:Ldc/squareup/okhttp3/Protocol;

    return-object p0
.end method

.method public receivedResponseAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Ldc/squareup/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Response$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public request(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Response$Builder;->request:Ldc/squareup/okhttp3/Request;

    return-object p0
.end method

.method public sentRequestAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Ldc/squareup/okhttp3/Response$Builder;->sentRequestAtMillis:J

    return-object p0
.end method
