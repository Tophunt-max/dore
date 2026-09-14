###### Class io.dcloud.common.util.NetTool (io.dcloud.common.util.NetTool)
.class public Lio/dcloud/common/util/NetTool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TIME_OUT_TIMES:I = 0x1388

.field private static TAG:Ljava/lang/String; = "NetTool"

.field static sCustomeHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConnection(Ljava/net/URL;Ljava/lang/String;IZZ)Ljava/net/HttpURLConnection;
    .registers 6

    .line 1
    :try_start_0
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->isUniStatistics:Z

    if-eqz v0, :cond_5

    const/4 p4, 0x0

    :cond_5
    if-eqz p4, :cond_16

    .line 4
    invoke-static {}, Lio/dcloud/common/adapter/io/DHFile;->hasFile()Z

    move-result p4

    if-nez p4, :cond_16

    .line 5
    sget-object p4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p0, p4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_1c

    .line 7
    :cond_16
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 9
    :goto_1c
    instance-of p4, p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_4e

    if-eqz p4, :cond_40

    if-eqz p3, :cond_40

    .line 12
    :try_start_22
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p3

    if-eqz p3, :cond_2e

    .line 14
    move-object p4, p0

    check-cast p4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p4, p3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 16
    :cond_2e
    move-object p3, p0

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lio/dcloud/common/util/NetTool;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_38} :catch_39

    goto :goto_40

    :catch_39
    move-exception p0

    .line 18
    :try_start_3a
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 21
    :cond_40
    :goto_40
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 22
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 23
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4d} :catch_4e

    return-object p0

    :catch_4e
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/NetTool;->sCustomeHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_5

    goto :goto_a

    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public static httpGet(Ljava/lang/String;)[B
    .registers 2

    const/4 v0, 0x1

    .line 5
    invoke-static {p0, v0}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Ljava/lang/String;I)[B
    .registers 3

    const/4 v0, 0x1

    .line 11
    invoke-static {p0, p1, v0}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Ljava/lang/String;IZ)[B
    .registers 5

    const/4 v0, 0x0

    .line 12
    :try_start_1
    invoke-static {p0, v0, p1, p2}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;IZ)[B

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p2

    .line 14
    instance-of v1, p2, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_f

    instance-of p2, p2, Ljava/net/UnknownHostException;

    if-eqz p2, :cond_1e

    :cond_f
    invoke-static {p0}, Lio/dcloud/common/constant/StringConst;->canChangeHost(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 15
    invoke-static {p0}, Lio/dcloud/common/constant/StringConst;->changeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0, p1}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0

    :cond_1e
    return-object v0
.end method

.method public static httpGet(Ljava/lang/String;Ljava/util/HashMap;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v3, "GET"

    const/16 v4, 0x1388

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Ljava/lang/String;Ljava/util/HashMap;I)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v3, "GET"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    .line 3
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Ljava/lang/String;Ljava/util/HashMap;IZ)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    .line 4
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v3, "GET"

    const/16 v4, 0x1388

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    .line 2
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Ljava/lang/String;Z)[B
    .registers 4

    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-static {p0, v0, p1}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p1

    .line 8
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_f

    instance-of p1, p1, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_1e

    :cond_f
    invoke-static {p0}, Lio/dcloud/common/constant/StringConst;->canChangeHost(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 9
    invoke-static {p0}, Lio/dcloud/common/constant/StringConst;->changeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1e
    return-object v0
.end method

.method public static httpGetThrows(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpGetThrows(Ljava/lang/String;Z)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string v3, "POST"

    const/16 v4, 0x1388

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    const-string v3, "POST"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;IZ)[B
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)[B"
        }
    .end annotation

    const-string v3, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 7
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)[B"
        }
    .end annotation

    const-string v3, "POST"

    const/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 2
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZZ)[B
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)[B"
        }
    .end annotation

    const-string v3, "POST"

    const/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    .line 3
    invoke-static/range {v0 .. v6}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZZ[Ljava/lang/String;)[B
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ[",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const-string v3, "POST"

    const/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 5
    invoke-static/range {v0 .. v7}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZZ[Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z[Ljava/lang/String;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const-string v3, "POST"

    const/16 v4, 0x1388

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v7, p4

    .line 4
    invoke-static/range {v0 .. v7}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZZ[Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 5
    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_30

    const/4 v1, 0x0

    .line 7
    :goto_13
    array-length v2, p0

    if-ge v1, v2, :cond_30

    .line 8
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_2e

    aget-object v2, p0, v1

    .line 9
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2b

    goto :goto_2e

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    return v0
.end method

.method private static read(Ljava/io/InputStream;)[B
    .registers 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    const/16 v2, 0x2800

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gtz v1, :cond_12

    goto :goto_13

    :cond_12
    move v2, v1

    .line 8
    :goto_13
    new-array v1, v2, [B

    .line 10
    :goto_15
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_20

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_15

    .line 13
    :cond_20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    :goto_28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZ)[B
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ)[B"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-static/range {v0 .. v7}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZZ[Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZZ)[B
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)[B"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-static/range {v0 .. v7}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZZ[Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZZ[Ljava/lang/String;)[B
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZZ[",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    move-object v1, p0

    move-object v3, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_e6

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_e6

    :cond_d
    const/4 v4, 0x0

    .line 8
    :try_start_e
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_96

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    :try_start_1b
    invoke-static {v0, v5, v6, v7, v8}, Lio/dcloud/common/util/NetTool;->createConnection(Ljava/net/URL;Ljava/lang/String;IZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v3, :cond_45

    .line 9
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_45

    .line 10
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 11
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_45

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 12
    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 15
    :cond_45
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_60

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "post"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 16
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_5b} :catch_93

    move-object v10, p1

    :try_start_5c
    invoke-static {v9, p1}, Lio/dcloud/common/util/NetTool;->write(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_61

    :cond_60
    move-object v10, p1

    .line 18
    :goto_61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v11, 0xc8

    if-eq v9, v11, :cond_88

    .line 20
    sget-object v0, Lio/dcloud/common/util/NetTool;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "httpGet fail, status code = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_87

    .line 22
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p7, v4

    :cond_87
    return-object v2

    .line 25
    :cond_88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/NetTool;->read(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_90} :catch_91

    return-object v0

    :catch_91
    move-exception v0

    goto :goto_a0

    :catch_93
    move-exception v0

    move-object v10, p1

    goto :goto_a0

    :catch_96
    move-exception v0

    move-object v10, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 27
    :goto_a0
    instance-of v9, v0, Ljava/net/SocketTimeoutException;

    if-nez v9, :cond_a8

    instance-of v9, v0, Ljava/net/UnknownHostException;

    if-eqz v9, :cond_c3

    :cond_a8
    invoke-static {p0}, Lio/dcloud/common/constant/StringConst;->canChangeHost(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 28
    invoke-static {p0}, Lio/dcloud/common/constant/StringConst;->changeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 29
    invoke-static/range {v1 .. v8}, Lio/dcloud/common/util/NetTool;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IZZ[Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 31
    :cond_c3
    sget-object v1, Lio/dcloud/common/util/NetTool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpPost exception, e = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_e5

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p7, v4

    :cond_e5
    return-object v2

    .line 34
    :cond_e6
    :goto_e6
    sget-object v0, Lio/dcloud/common/util/NetTool;->TAG:Ljava/lang/String;

    const-string v1, "httpPost, url is null"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static write(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-void
.end method
