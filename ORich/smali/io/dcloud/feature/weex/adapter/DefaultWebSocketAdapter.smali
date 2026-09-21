###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter)
.class public Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;
.super Ljava/lang/Object;
.source "DefaultWebSocketAdapter.java"

# interfaces
.implements Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;


# static fields
.field private static mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;


# instance fields
.field private eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

.field private ws:Ldc/squareup/okhttp3/WebSocket;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Ldc/squareup/okhttp3/WebSocket;)Ldc/squareup/okhttp3/WebSocket;
    .registers 2

    .line 56
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    return-object p1
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;
    .registers 1

    .line 56
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    return-object p0
.end method

.method private reportError(Ljava/lang/String;)V
    .registers 3

    .line 362
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    if-eqz v0, :cond_7

    .line 363
    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onError(Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .registers 4

    .line 340
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v0, :cond_13

    .line 342
    :try_start_4
    invoke-interface {v0, p1, p2}, Ldc/squareup/okhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_13

    :catch_8
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
    .registers 9

    .line 64
    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    .line 66
    new-instance p3, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {p3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v0, 0x0

    .line 70
    :try_start_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2f

    const-string v1, "TLSv1.2"

    .line 71
    invoke-static {v1}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v2, 0x3

    new-array v2, v2, [Ldc/squareup/okhttp3/ConnectionSpec;

    .line 73
    sget-object v3, Ldc/squareup/okhttp3/ConnectionSpec;->MODERN_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    sget-object v4, Ldc/squareup/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ldc/squareup/okhttp3/ConnectionSpec;->CLEARTEXT:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_33

    .line 79
    :cond_2f
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    :cond_33
    :goto_33
    if-eqz v1, :cond_42

    .line 82
    invoke-virtual {p3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_38} :catch_3e
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_38} :catch_39

    goto :goto_42

    :catch_39
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_42

    :catch_3e
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 89
    :cond_42
    :goto_42
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {p3, v2, v3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 90
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2, v3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 91
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    invoke-virtual {p3, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 93
    new-instance v0, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    .line 94
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "Sec-WebSocket-Protocol"

    .line 95
    invoke-virtual {v0, v1, p2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    :cond_65
    const-string p2, "Origin"

    const-string v1, "http://localhost"

    .line 97
    invoke-virtual {v0, p2, v1}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 99
    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 102
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    .line 103
    invoke-virtual {p3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object p2

    .line 105
    new-instance p3, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V

    invoke-virtual {p2, p1, p3}, Ldc/squareup/okhttp3/OkHttpClient;->newWebSocket(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;)Ldc/squareup/okhttp3/WebSocket;

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
    .registers 10

    .line 167
    iput-object p4, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    .line 169
    new-instance p4, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {p4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v0, 0x0

    .line 173
    :try_start_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2f

    const-string v1, "TLSv1.2"

    .line 174
    invoke-static {v1}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_33

    const/4 v2, 0x3

    new-array v2, v2, [Ldc/squareup/okhttp3/ConnectionSpec;

    .line 176
    sget-object v3, Ldc/squareup/okhttp3/ConnectionSpec;->MODERN_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    sget-object v4, Ldc/squareup/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ldc/squareup/okhttp3/ConnectionSpec;->CLEARTEXT:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p4, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_33

    .line 182
    :cond_2f
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    :cond_33
    :goto_33
    if-eqz v1, :cond_42

    .line 185
    invoke-virtual {p4, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_38} :catch_3e
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_38} :catch_39

    goto :goto_42

    :catch_39
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_42

    :catch_3e
    move-exception v1

    .line 188
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 192
    :cond_42
    :goto_42
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {p4, v2, v3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 193
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v2, v3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 194
    sget-object v1, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    if-nez v1, :cond_59

    .line 195
    new-instance v1, Ldc/squareup/okhttp3/ConnectionPool;

    invoke-direct {v1}, Ldc/squareup/okhttp3/ConnectionPool;-><init>()V

    sput-object v1, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 197
    :cond_59
    sget-object v1, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    invoke-virtual {p4, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool(Ldc/squareup/okhttp3/ConnectionPool;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 198
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    invoke-virtual {p4, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 200
    new-instance v0, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "Sec-WebSocket-Protocol"

    .line 202
    invoke-virtual {v0, v1, p2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    :cond_75
    const-string p2, "Origin"

    const-string v1, "http://localhost"

    .line 204
    invoke-virtual {v0, p2, v1}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 208
    :try_start_7c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b8

    .line 209
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_b8

    .line 211
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_92
    :goto_92
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_92

    .line 216
    invoke-virtual {v0, v1, p3}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_b3} :catch_b4

    goto :goto_92

    :catch_b4
    move-exception p2

    .line 223
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    :cond_b8
    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 230
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    .line 231
    invoke-virtual {p4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object p2

    .line 234
    new-instance p3, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V

    invoke-virtual {p2, p1, p3}, Ldc/squareup/okhttp3/OkHttpClient;->newWebSocket(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;)Ldc/squareup/okhttp3/WebSocket;

    return-void
.end method

.method public destroy()V
    .registers 4

    .line 352
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v0, :cond_18

    .line 354
    :try_start_4
    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_18
    return-void
.end method

.method public send(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 6

    const-string v0, "base64"

    .line 316
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v1, :cond_44

    :try_start_6
    const-string v1, "@type"

    .line 318
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_3b

    const-string v2, "some error occur"

    if-eqz v1, :cond_37

    :try_start_10
    const-string v3, "binary"

    .line 319
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 320
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_33

    .line 322
    invoke-static {p1}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object p1

    .line 323
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    invoke-interface {v0, p1}, Ldc/squareup/okhttp3/WebSocket;->send(Ldc/squareup/okio/ByteString;)Z

    goto :goto_49

    .line 325
    :cond_33
    invoke-direct {p0, v2}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    goto :goto_49

    .line 328
    :cond_37
    invoke-direct {p0, v2}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_3b

    goto :goto_49

    :catch_3b
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    goto :goto_49

    :cond_44
    const-string p1, "WebSocket is not ready"

    .line 334
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .registers 5

    .line 295
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "@type"

    .line 296
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    const-string v2, "binary"

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 299
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->send(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    nop

    .line 303
    :cond_21
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v0, :cond_35

    .line 305
    :try_start_25
    invoke-interface {v0, p1}, Ldc/squareup/okhttp3/WebSocket;->send(Ljava/lang/String;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_3a

    :catch_29
    move-exception p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    goto :goto_3a

    :cond_35
    const-string p1, "WebSocket is not ready"

    .line 311
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter.AnonymousClass1 (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter$1)
.class Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;
.super Ldc/squareup/okhttp3/WebSocketListener;
.source "DefaultWebSocketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-direct {p0}, Ldc/squareup/okhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .registers 5

    .line 144
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 145
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    return-void
.end method

.method public onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .registers 5

    .line 138
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 139
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    return-void
.end method

.method public onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V
    .registers 5

    .line 150
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V

    .line 151
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    instance-of p1, p2, Ljava/io/EOFException;

    if-eqz p1, :cond_21

    .line 153
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    sget-object p2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {p2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result p2

    sget-object p3, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {p3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    goto :goto_2e

    .line 155
    :cond_21
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onError(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V
    .registers 5

    .line 127
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V

    .line 128
    invoke-virtual {p2}, Ldc/squareup/okio/ByteString;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x2

    .line 129
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "@type"

    const-string v1, "binary"

    .line 131
    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "base64"

    .line 132
    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V
    .registers 3

    .line 120
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V
    .registers 6

    .line 108
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V

    .line 109
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {v0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$002(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Ldc/squareup/okhttp3/WebSocket;)Ldc/squareup/okhttp3/WebSocket;

    .line 110
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onOpen()V

    .line 111
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object p1

    .line 112
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_3a
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter.AnonymousClass2 (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter$2)
.class Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;
.super Ldc/squareup/okhttp3/WebSocketListener;
.source "DefaultWebSocketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-direct {p0}, Ldc/squareup/okhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .registers 5

    .line 273
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 274
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    return-void
.end method

.method public onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V
    .registers 5

    .line 279
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V

    .line 280
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    instance-of p1, p2, Ljava/io/EOFException;

    if-eqz p1, :cond_21

    .line 282
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    sget-object p2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {p2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result p2

    sget-object p3, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {p3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    goto :goto_2e

    .line 284
    :cond_21
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onError(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V
    .registers 5

    .line 256
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V

    .line 257
    invoke-virtual {p2}, Ldc/squareup/okio/ByteString;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x2

    .line 258
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 259
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "@type"

    const-string v1, "binary"

    .line 260
    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "base64"

    .line 261
    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V
    .registers 3

    .line 249
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V
    .registers 6

    .line 237
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V

    .line 238
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {v0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$002(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Ldc/squareup/okhttp3/WebSocket;)Ldc/squareup/okhttp3/WebSocket;

    .line 239
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onOpen()V

    .line 240
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object p1

    .line 241
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 242
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 243
    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_3a
    return-void
.end method
