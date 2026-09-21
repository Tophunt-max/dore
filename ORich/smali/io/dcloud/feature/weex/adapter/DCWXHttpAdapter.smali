###### Class io.dcloud.feature.weex.adapter.DCWXHttpAdapter (io.dcloud.feature.weex.adapter.DCWXHttpAdapter)
.class public Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;
.super Ljava/lang/Object;
.source "DCWXHttpAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter;


# static fields
.field private static mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

.field private static sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->readInputStreamAsBytes(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->readInputStream(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_c

    const/16 v0, 0xa

    .line 59
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readInputStream(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 256
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x800

    new-array p1, p1, [C

    .line 260
    :cond_17
    :goto_17
    invoke-virtual {v1, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x0

    .line 261
    invoke-virtual {v0, p1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_17

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpResponseProgress(I)V

    goto :goto_17

    .line 266
    :cond_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readInputStreamAsBytes(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 233
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 239
    :cond_f
    :goto_f
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_20

    .line 240
    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v4, v5

    if-eqz p2, :cond_f

    .line 243
    invoke-interface {p2, v4}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpResponseProgress(I)V

    goto :goto_f

    .line 247
    :cond_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 249
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .registers 2

    if-nez p1, :cond_5

    .line 272
    sget-object p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object p1

    .line 274
    :cond_5
    sget-object p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object p1
.end method

.method public getOKRequest(Ldc/squareup/okhttp3/OkHttpClient$Builder;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ldc/squareup/okhttp3/Request;
    .registers 9

    .line 129
    iget v0, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 130
    invoke-virtual {p1, v0, v1, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 131
    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    .line 134
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 136
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRequest;->isFirstIpv4:Z

    if-eqz v0, :cond_39

    .line 137
    new-instance v0, Lio/dcloud/common/adapter/util/DCOKDns;

    invoke-direct {v0}, Lio/dcloud/common/adapter/util/DCOKDns;-><init>()V

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dns(Ldc/squareup/okhttp3/Dns;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 140
    :cond_39
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_97

    .line 145
    new-instance v0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;

    invoke-direct {v0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;-><init>()V

    .line 146
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "keystore"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->setKeystore(Ljava/lang/String;)V

    .line 147
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "storePass"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->setStorePass(Ljava/lang/String;)V

    .line 148
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "ca"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_77

    new-array v3, v2, [Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    .line 153
    :cond_77
    invoke-virtual {v0, v3}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->setCa([Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p2, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    .line 159
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->getSSLSocketFactory(Lio/dcloud/feature/weex/config/AndroidTlsConfig;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 160
    sget-object v0, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_f0

    .line 162
    :cond_97
    sget-object v1, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    if-eqz v1, :cond_c8

    sget-object v1, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 164
    sget-object v1, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/http/CertDTO;

    .line 166
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p2, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    .line 169
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->getSSLSocketFactory(Lcom/taobao/weex/http/CertDTO;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 170
    sget-object v0, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_f0

    .line 174
    :cond_c8
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRequest;->sslVerify:Z

    if-eqz v0, :cond_f0

    .line 176
    :try_start_cc
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_d6

    .line 177
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 179
    :cond_d6
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_e7

    .line 180
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    :try_end_dd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cc .. :try_end_dd} :catch_e3
    .catch Ljava/security/KeyManagementException; {:try_start_cc .. :try_end_dd} :catch_de

    goto :goto_e7

    :catch_de
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_e7

    :catch_e3
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 187
    :cond_e7
    :goto_e7
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRequest;->sslVerify:Z

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 193
    :cond_f0
    :goto_f0
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    if-nez v0, :cond_fb

    .line 194
    new-instance v0, Ldc/squareup/okhttp3/ConnectionPool;

    invoke-direct {v0}, Ldc/squareup/okhttp3/ConnectionPool;-><init>()V

    sput-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 196
    :cond_fb
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool(Ldc/squareup/okhttp3/ConnectionPool;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 199
    invoke-virtual {p1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    .line 202
    new-instance p1, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {p1}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    .line 203
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    const-string v0, "application/x-www-form-urlencoded"

    .line 205
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-eqz v1, :cond_145

    .line 206
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_145

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Content-Type"

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_139

    .line 209
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    :cond_139
    iget-object v4, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    goto :goto_11d

    .line 214
    :cond_145
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16d

    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "PUT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16d

    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "PATCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16d

    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "DELETE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 215
    :cond_16d
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    if-eqz v1, :cond_176

    if-eqz p3, :cond_176

    .line 217
    invoke-interface {p3, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    .line 220
    :cond_176
    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;Ljava/lang/String;)Ldc/squareup/okhttp3/RequestBody;

    move-result-object v0

    .line 221
    iget-object p2, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    if-eqz p3, :cond_18c

    const/16 p2, 0x64

    .line 223
    invoke-interface {p3, p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    .line 226
    :cond_18c
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 68
    invoke-interface {p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpStart()V

    .line 70
    :cond_5
    new-instance v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;-><init>(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DCWXHttpAdapter.AnonymousClass1 (io.dcloud.feature.weex.adapter.DCWXHttpAdapter$1)
.class Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;
.super Ljava/lang/Object;
.source "DCWXHttpAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

.field final synthetic val$request:Lcom/taobao/weex/common/WXRequest;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .registers 4

    .line 70
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 73
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v1, v1, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_21

    .line 74
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_21

    .line 75
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->actionNetRequest()V

    :cond_21
    const/4 v1, 0x1

    .line 80
    new-instance v2, Lcom/taobao/weex/common/WXResponse;

    invoke-direct {v2}, Lcom/taobao/weex/common/WXResponse;-><init>()V

    const/4 v3, 0x0

    .line 83
    :try_start_28
    new-instance v4, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 86
    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    iget-object v6, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v7, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-virtual {v5, v4, v6, v7}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->getOKRequest(Ldc/squareup/okhttp3/OkHttpClient$Builder;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ldc/squareup/okhttp3/Request;

    move-result-object v5

    .line 87
    invoke-virtual {v4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v5}, Ldc/squareup/okhttp3/OkHttpClient;->newCall(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Call;

    move-result-object v4

    .line 91
    invoke-interface {v4}, Ldc/squareup/okhttp3/Call;->execute()Ldc/squareup/okhttp3/Response;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Ldc/squareup/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v5

    .line 94
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v6

    .line 95
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 96
    iget-object v7, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v7, :cond_5c

    .line 97
    invoke-interface {v7, v6, v5}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHeadersReceived(ILjava/util/Map;)V

    .line 99
    :cond_5c
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 100
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Ldc/squareup/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 101
    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    iget-object v6, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v5, v4, v6}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->access$000(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object v4

    iput-object v4, v2, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    goto :goto_88

    .line 103
    :cond_75
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Ldc/squareup/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v1, v4, v5}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 106
    :goto_88
    iget-object v4, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v4, :cond_8f

    .line 107
    invoke-interface {v4, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_8f} :catch_91

    :cond_8f
    move v3, v1

    goto :goto_a8

    :catch_91
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "-1"

    .line 112
    iput-object v4, v2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 113
    iput-object v4, v2, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v1, :cond_a8

    .line 116
    invoke-interface {v1, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    :cond_a8
    :goto_a8
    if-eqz v0, :cond_b8

    .line 119
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 120
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->actionNetResult(ZLjava/lang/String;)V

    :cond_b8
    return-void
.end method
