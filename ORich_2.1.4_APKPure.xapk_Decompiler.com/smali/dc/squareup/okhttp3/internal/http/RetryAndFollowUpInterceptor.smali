###### Class dc.squareup.okhttp3.internal.http.RetryAndFollowUpInterceptor (dc.squareup.okhttp3.internal.http.RetryAndFollowUpInterceptor)
.class public final Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Ldc/squareup/okhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private volatile streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Ldc/squareup/okhttp3/OkHttpClient;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    .line 3
    iput-boolean p2, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return-void
.end method

.method private createAddress(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Address;
    .registers 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Ldc/squareup/okhttp3/HttpUrl;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 2
    iget-object v1, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 3
    iget-object v1, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 4
    iget-object v3, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Ldc/squareup/okhttp3/OkHttpClient;->certificatePinner()Ldc/squareup/okhttp3/CertificatePinner;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_22

    :cond_1f
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 7
    :goto_22
    new-instance v1, Ldc/squareup/okhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ldc/squareup/okhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v2, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/OkHttpClient;->dns()Ldc/squareup/okhttp3/Dns;

    move-result-object v7

    iget-object v2, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    .line 8
    invoke-virtual {v2}, Ldc/squareup/okhttp3/OkHttpClient;->proxyAuthenticator()Ldc/squareup/okhttp3/Authenticator;

    move-result-object v12

    iget-object v2, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    .line 9
    invoke-virtual {v2}, Ldc/squareup/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Ldc/squareup/okhttp3/Address;-><init>(Ljava/lang/String;ILdc/squareup/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ldc/squareup/okhttp3/CertificatePinner;Ldc/squareup/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private followUpRequest(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/Route;)Ldc/squareup/okhttp3/Request;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_148

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_ab

    const/16 v2, 0x134

    if-eq v0, v2, :cond_ab

    const/16 v2, 0x191

    if-eq v0, v2, :cond_a0

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_80

    const/16 v2, 0x197

    if-eq v0, v2, :cond_61

    const/16 p2, 0x198

    if-eq v0, p2, :cond_2d

    packed-switch v0, :pswitch_data_14e

    return-object v4

    .line 102
    :cond_2d
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_36

    return-object v4

    .line 107
    :cond_36
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request;->body()Ldc/squareup/okhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Ldc/squareup/okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_43

    return-object v4

    .line 111
    :cond_43
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->priorResponse()Ldc/squareup/okhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 112
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->priorResponse()Ldc/squareup/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v0

    if-ne v0, p2, :cond_54

    return-object v4

    :cond_54
    const/4 p2, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Ldc/squareup/okhttp3/Response;I)I

    move-result p2

    if-lez p2, :cond_5c

    return-object v4

    .line 121
    :cond_5c
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 122
    :cond_61
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_78

    .line 126
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/OkHttpClient;->proxyAuthenticator()Ldc/squareup/okhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ldc/squareup/okhttp3/Authenticator;->authenticate(Ldc/squareup/okhttp3/Route;Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 127
    :cond_78
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_80
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->priorResponse()Ldc/squareup/okhttp3/Response;

    move-result-object p2

    if-eqz p2, :cond_91

    .line 94
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->priorResponse()Ldc/squareup/okhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->code()I

    move-result p2

    if-ne p2, v2, :cond_91

    return-object v4

    :cond_91
    const p2, 0x7fffffff

    .line 99
    invoke-direct {p0, p1, p2}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Ldc/squareup/okhttp3/Response;I)I

    move-result p2

    if-nez p2, :cond_9f

    .line 101
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_9f
    return-object v4

    .line 132
    :cond_a0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/OkHttpClient;->authenticator()Ldc/squareup/okhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ldc/squareup/okhttp3/Authenticator;->authenticate(Ldc/squareup/okhttp3/Route;Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 138
    :cond_ab
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ba

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_ba

    return-object v4

    .line 147
    :cond_ba
    :pswitch_ba
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {p2}, Ldc/squareup/okhttp3/OkHttpClient;->followRedirects()Z

    move-result p2

    if-nez p2, :cond_c3

    return-object v4

    :cond_c3
    const-string p2, "Location"

    .line 149
    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_cc

    return-object v4

    .line 151
    :cond_cc
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0, p2}, Ldc/squareup/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p2

    if-nez p2, :cond_db

    return-object v4

    .line 157
    :cond_db
    invoke-virtual {p2}, Ldc/squareup/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Ldc/squareup/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa

    .line 158
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v0

    if-nez v0, :cond_fa

    return-object v4

    .line 161
    :cond_fa
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request;->newBuilder()Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    .line 162
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_134

    .line 163
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v2

    .line 164
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 165
    invoke-virtual {v0, v3, v4}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    goto :goto_123

    :cond_116
    if-eqz v2, :cond_120

    .line 167
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Ldc/squareup/okhttp3/Request;->body()Ldc/squareup/okhttp3/RequestBody;

    move-result-object v4

    .line 168
    :cond_120
    invoke-virtual {v0, v1, v4}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    :goto_123
    if-nez v2, :cond_134

    const-string v1, "Transfer-Encoding"

    .line 171
    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    const-string v1, "Content-Length"

    .line 172
    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    const-string v1, "Content-Type"

    .line 173
    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 180
    :cond_134
    invoke-direct {p0, p1, p2}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_13f

    const-string p1, "Authorization"

    .line 181
    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 184
    :cond_13f
    invoke-virtual {v0, p2}, Ldc/squareup/okhttp3/Request$Builder;->url(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 185
    :cond_148
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_14e
    .packed-switch 0x12c
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
    .end packed-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .registers 6

    .line 1
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 7
    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 8
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    .line 13
    :cond_13
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_20

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_20

    return v1

    .line 20
    :cond_20
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_25

    return v1

    :cond_25
    return v2
.end method

.method private recover(Ljava/io/IOException;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;ZLdc/squareup/okhttp3/Request;)Z
    .registers 7

    .line 1
    invoke-virtual {p2, p1}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    if-eqz p3, :cond_16

    .line 7
    invoke-direct {p0, p1, p4}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsUnrepeatable(Ljava/io/IOException;Ldc/squareup/okhttp3/Request;)Z

    move-result p4

    if-eqz p4, :cond_16

    return v1

    .line 10
    :cond_16
    invoke-direct {p0, p1, p3}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_1d

    return v1

    .line 13
    :cond_1d
    invoke-virtual {p2}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result p1

    if-nez p1, :cond_24

    return v1

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method private requestIsUnrepeatable(Ljava/io/IOException;Ldc/squareup/okhttp3/Request;)Z
    .registers 3

    .line 1
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Request;->body()Ldc/squareup/okhttp3/RequestBody;

    move-result-object p2

    instance-of p2, p2, Ldc/squareup/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez p2, :cond_f

    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private retryAfter(Ldc/squareup/okhttp3/Response;I)I
    .registers 4

    const-string v0, "Retry-After"

    .line 1
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    return p2

    :cond_9
    const-string p2, "\\d+"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1a
    const p1, 0x7fffffff

    return p1
.end method

.method private sameConnection(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/HttpUrl;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3
    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p2}, Ldc/squareup/okhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 4
    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ldc/squareup/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    return p1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->cancel()V

    :cond_a
    return-void
.end method

.method public intercept(Ldc/squareup/okhttp3/Interceptor$Chain;)Ldc/squareup/okhttp3/Response;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ldc/squareup/okhttp3/Interceptor$Chain;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    .line 2
    check-cast p1, Ldc/squareup/okhttp3/internal/http/RealInterceptorChain;

    .line 3
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http/RealInterceptorChain;->call()Ldc/squareup/okhttp3/Call;

    move-result-object v7

    .line 4
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http/RealInterceptorChain;->eventListener()Ldc/squareup/okhttp3/EventListener;

    move-result-object v8

    .line 6
    new-instance v9, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/OkHttpClient;->connectionPool()Ldc/squareup/okhttp3/ConnectionPool;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Address;

    move-result-object v3

    iget-object v6, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;-><init>(Ldc/squareup/okhttp3/ConnectionPool;Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;Ljava/lang/Object;)V

    .line 8
    iput-object v9, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v11

    const/4 v2, 0x0

    .line 13
    :goto_2c
    iget-boolean v3, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v3, :cond_116

    .line 21
    :try_start_30
    invoke-virtual {p1, v0, v9, v11, v11}, Ldc/squareup/okhttp3/internal/http/RealInterceptorChain;->proceed(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;Ldc/squareup/okhttp3/internal/http/HttpCodec;Ldc/squareup/okhttp3/internal/connection/RealConnection;)Ldc/squareup/okhttp3/Response;

    move-result-object v0
    :try_end_34
    .catch Ldc/squareup/okhttp3/internal/connection/RouteException; {:try_start_30 .. :try_end_34} :catch_fd
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_ef
    .catchall {:try_start_30 .. :try_end_34} :catchall_ed

    if-eqz v1, :cond_4e

    .line 46
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response;->newBuilder()Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Response;->newBuilder()Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v11}, Ldc/squareup/okhttp3/Response$Builder;->body(Ldc/squareup/okhttp3/ResponseBody;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Response$Builder;->priorResponse(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object v0

    .line 58
    :cond_4e
    :try_start_4e
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->route()Ldc/squareup/okhttp3/Route;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/Route;)Ldc/squareup/okhttp3/Request;

    move-result-object v12
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_e8

    if-nez v12, :cond_5c

    .line 65
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->release()V

    return-object v0

    .line 69
    :cond_5c
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_ce

    .line 76
    invoke-virtual {v12}, Ldc/squareup/okhttp3/Request;->body()Ldc/squareup/okhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Ldc/squareup/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_bf

    .line 81
    invoke-virtual {v12}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 82
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 83
    new-instance v9, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Ldc/squareup/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/OkHttpClient;->connectionPool()Ldc/squareup/okhttp3/ConnectionPool;

    move-result-object v2

    .line 84
    invoke-virtual {v12}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Address;

    move-result-object v3

    iget-object v6, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;-><init>(Ldc/squareup/okhttp3/ConnectionPool;Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;Ljava/lang/Object;)V

    .line 85
    iput-object v9, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    goto :goto_9f

    .line 86
    :cond_99
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->codec()Ldc/squareup/okhttp3/internal/http/HttpCodec;

    move-result-object v1

    if-nez v1, :cond_a3

    :goto_9f
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_2c

    .line 87
    :cond_a3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_bf
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 89
    new-instance p1, Ljava/net/HttpRetryException;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v0

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-direct {p1, v1, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 90
    :cond_ce
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 91
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_e8
    move-exception p1

    .line 92
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 93
    throw p1

    :catchall_ed
    move-exception p1

    goto :goto_10f

    :catch_ef
    move-exception v3

    .line 94
    :try_start_f0
    instance-of v4, v3, Ldc/squareup/okhttp3/internal/http2/ConnectionShutdownException;

    xor-int/lit8 v4, v4, 0x1

    .line 95
    invoke-direct {p0, v3, v9, v4, v0}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;ZLdc/squareup/okhttp3/Request;)Z

    move-result v4

    if-eqz v4, :cond_fc

    goto/16 :goto_2c

    :cond_fc
    throw v3

    :catch_fd
    move-exception v3

    .line 96
    invoke-virtual {v3}, Ldc/squareup/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v10, v0}, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;ZLdc/squareup/okhttp3/Request;)Z

    move-result v4

    if-eqz v4, :cond_10a

    goto/16 :goto_2c

    .line 97
    :cond_10a
    invoke-virtual {v3}, Ldc/squareup/okhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_10f
    .catchall {:try_start_f0 .. :try_end_10f} :catchall_ed

    .line 110
    :goto_10f
    invoke-virtual {v9, v11}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 111
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 113
    throw p1

    .line 114
    :cond_116
    invoke-virtual {v9}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 115
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCanceled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method public streamAllocation()Ldc/squareup/okhttp3/internal/connection/StreamAllocation;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
