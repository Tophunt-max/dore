###### Class io.dcloud.net.DownloadNetWork (io.dcloud.net.DownloadNetWork)
.class public Lio/dcloud/net/DownloadNetWork;
.super Lio/dcloud/common/util/net/NetWork;
.source "SourceFile"


# instance fields
.field protected isStop:Z

.field public mContentLength:J

.field private mExecSyncTask:Ljava/lang/Thread;

.field public mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRetry:I

.field public mStatus:I

.field private mUrl:Ljava/lang/String;

.field public mUrlConn:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(ILio/dcloud/common/util/net/RequestData;Lio/dcloud/common/DHInterface/IReqListener;Lio/dcloud/common/DHInterface/IResponseListener;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/common/util/net/NetWork;-><init>(ILio/dcloud/common/util/net/RequestData;Lio/dcloud/common/DHInterface/IReqListener;Lio/dcloud/common/DHInterface/IResponseListener;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/net/DownloadNetWork;->mStatus:I

    .line 3
    iput p1, p0, Lio/dcloud/net/DownloadNetWork;->mRetry:I

    const/4 p3, 0x0

    .line 9
    iput-object p3, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    .line 10
    iput-boolean p1, p0, Lio/dcloud/net/DownloadNetWork;->isStop:Z

    .line 29
    invoke-virtual {p2}, Lio/dcloud/common/util/net/RequestData;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/DownloadNetWork;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public static getHttpResponseHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_6
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    return-object v0

    .line 6
    :cond_d
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private initUploadData()V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lio/dcloud/net/DownloadNetWork;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_28

    const-string v1, "httpreq"

    .line 2
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request mUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/net/DownloadNetWork;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_INIT:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {p0, v1}, Lio/dcloud/net/DownloadNetWork;->onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V

    .line 4
    invoke-virtual {p0, v0}, Lio/dcloud/net/DownloadNetWork;->connect(Ljava/net/URL;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_28

    goto :goto_31

    :catch_28
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_ERROR:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {p0, v0}, Lio/dcloud/net/DownloadNetWork;->onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V

    :goto_31
    return-void
.end method

.method private response(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_BEGIN:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {p0, v0}, Lio/dcloud/net/DownloadNetWork;->onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/net/DownloadNetWork;->onReceiveing(Ljava/io/InputStream;)I

    .line 4
    iget-boolean p1, p0, Lio/dcloud/net/DownloadNetWork;->isStop:Z

    if-nez p1, :cond_16

    .line 5
    sget-object p1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_ING:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {p0, p1}, Lio/dcloud/net/DownloadNetWork;->onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V

    .line 7
    sget-object p1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_END:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {p0, p1}, Lio/dcloud/net/DownloadNetWork;->onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V

    :cond_16
    return-void
.end method

.method private setHeaders()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWork;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    iget-object v1, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/net/RequestData;->addHeader(Ljava/net/HttpURLConnection;)V

    return-void
.end method


# virtual methods
.method public cancelWork()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_f

    .line 3
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    :cond_f
    return-void
.end method

.method public connect(Ljava/net/URL;)V
    .registers 11

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    .line 2
    invoke-direct {p0}, Lio/dcloud/net/DownloadNetWork;->setHeaders()V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWork;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    iget-object v0, v0, Lio/dcloud/common/util/net/RequestData;->unTrustedCAType:Ljava/lang/String;

    const-string v1, "refuse"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lio/dcloud/common/util/net/NetWork;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    iget-object v0, v0, Lio/dcloud/common/util/net/RequestData;->unTrustedCAType:Ljava/lang/String;

    const-string v1, "warning"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_4b

    .line 4
    :cond_24
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_a0

    if-eqz v0, :cond_4b

    .line 6
    :try_start_2a
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 8
    iget-object v1, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 10
    :cond_37
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    invoke-static {v1}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_43} :catch_44
    .catchall {:try_start_2a .. :try_end_43} :catchall_a0

    goto :goto_4b

    :catch_44
    move-exception v0

    .line 12
    :try_start_45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 30
    :cond_4b
    :goto_4b
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_REQUEST_BEGIN:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {p0, v0}, Lio/dcloud/net/DownloadNetWork;->onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V

    .line 31
    iget-boolean v0, p0, Lio/dcloud/net/DownloadNetWork;->isStop:Z

    if-nez v0, :cond_f6

    .line 33
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lio/dcloud/net/DownloadNetWork;->mStatus:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_64

    const/16 v0, 0xc8

    .line 36
    iput v0, p0, Lio/dcloud/net/DownloadNetWork;->mStatus:I

    .line 39
    :cond_64
    iget v0, p0, Lio/dcloud/net/DownloadNetWork;->mStatus:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_6e

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_89

    .line 40
    :cond_6e
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    .line 42
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v1}, Lio/dcloud/net/DownloadNetWork;->connect(Ljava/net/URL;)V

    return-void

    .line 48
    :cond_89
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_CONNECTED:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {p0, v0}, Lio/dcloud/net/DownloadNetWork;->onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V

    .line 49
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lio/dcloud/net/DownloadNetWork;->getHttpResponseHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/net/DownloadNetWork;->mResponseHeaders:Ljava/util/Map;

    .line 51
    invoke-direct {p0, v0}, Lio/dcloud/net/DownloadNetWork;->response(Ljava/io/InputStream;)V
    :try_end_9f
    .catchall {:try_start_45 .. :try_end_9f} :catchall_a0

    goto :goto_f6

    :catchall_a0
    move-exception v0

    .line 54
    iget-boolean v1, p0, Lio/dcloud/net/DownloadNetWork;->isStop:Z

    if-eqz v1, :cond_a6

    return-void

    .line 57
    :cond_a6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lio/dcloud/common/util/net/NetWork;->mRetryIntervalTime:J

    iget v5, p0, Lio/dcloud/common/util/net/NetWork;->mTimes:I

    const/4 v6, 0x1

    shl-int v7, v6, v5

    int-to-long v7, v7

    mul-long v3, v3, v7

    const-wide/16 v7, 0x2

    div-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 58
    iget v3, p0, Lio/dcloud/common/util/net/NetWork;->MAX_TIMES:I

    if-gt v5, v3, :cond_d7

    .line 60
    :cond_bc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_bc

    .line 61
    iget v0, p0, Lio/dcloud/common/util/net/NetWork;->mTimes:I

    add-int/2addr v0, v6

    iput v0, p0, Lio/dcloud/common/util/net/NetWork;->mTimes:I

    .line 63
    :try_start_c9
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ce} :catch_cf

    goto :goto_d3

    :catch_cf
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    :goto_d3
    invoke-virtual {p0, p1}, Lio/dcloud/net/DownloadNetWork;->connect(Ljava/net/URL;)V

    goto :goto_f6

    .line 72
    :cond_d7
    instance-of p1, v0, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_e1

    .line 73
    sget-object p1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_TIMEOUT:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {p0, p1}, Lio/dcloud/net/DownloadNetWork;->onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V

    goto :goto_f6

    .line 74
    :cond_e1
    iget-boolean p1, p0, Lio/dcloud/net/DownloadNetWork;->isStop:Z

    if-eqz p1, :cond_f1

    .line 76
    iget-object p1, p0, Lio/dcloud/common/util/net/NetWork;->mReqListener:Lio/dcloud/common/DHInterface/IReqListener;

    instance-of v0, p1, Lio/dcloud/net/JsDownload;

    if-eqz v0, :cond_f6

    .line 77
    check-cast p1, Lio/dcloud/net/JsDownload;

    invoke-virtual {p1}, Lio/dcloud/net/JsDownload;->saveInDatabase()V

    goto :goto_f6

    .line 80
    :cond_f1
    sget-object p1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_ERROR:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {p0, p1}, Lio/dcloud/net/DownloadNetWork;->onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V

    :cond_f6
    :goto_f6
    return-void
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lio/dcloud/common/util/net/NetWork;->mTimes:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/net/DownloadNetWork;->isStop:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/common/util/net/NetWork;->mReqListener:Lio/dcloud/common/DHInterface/IReqListener;

    .line 5
    :try_start_9
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_15

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_15
    return-void
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mResponseHeaders:Ljava/util/Map;

    const-string v1, "\'\'"

    if-nez v0, :cond_7

    return-object v1

    .line 5
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_32
    return-object v1
.end method

.method public getResponseHeaders()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/net/DownloadNetWork;->mResponseHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 3
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/net/DownloadNetWork;->mResponseHeaders:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    const-string v0, "{}"

    return-object v0
.end method

.method public onReceiveing(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWork;->mReqListener:Lio/dcloud/common/DHInterface/IReqListener;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IReqListener;->onReceiving(Ljava/io/InputStream;)I

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onResponsing(Ljava/io/OutputStream;)V
    .registers 2

    return-void
.end method

.method public onStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWork;->mReqListener:Lio/dcloud/common/DHInterface/IReqListener;

    if-eqz v0, :cond_9

    .line 2
    iget-boolean v1, p0, Lio/dcloud/common/util/net/NetWork;->isAbort:Z

    invoke-interface {v0, p1, v1}, Lio/dcloud/common/DHInterface/IReqListener;->onNetStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;Z)V

    :cond_9
    return-void
.end method

.method public run()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/net/DownloadNetWork;->initUploadData()V

    return-void
.end method
