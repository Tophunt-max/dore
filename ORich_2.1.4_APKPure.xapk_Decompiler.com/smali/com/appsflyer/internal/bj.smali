###### Class com.appsflyer.internal.bj (com.appsflyer.internal.bj)
.class public final Lcom/appsflyer/internal/bj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final valueOf:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/appsflyer/internal/bj;->valueOf:I

    return-void
.end method

.method private static values(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Could not read connection response from: "

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 105
    :try_start_5
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_e

    .line 108
    :cond_a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_e
    if-nez p1, :cond_13

    const-string p0, ""

    return-object p0

    .line 112
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1d} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_5a
    .catchall {:try_start_5 .. :try_end_1d} :catchall_57

    .line 115
    :try_start_1d
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_53
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_4f
    .catchall {:try_start_1d .. :try_end_22} :catchall_4b

    const/4 v1, 0x1

    .line 118
    :goto_23
    :try_start_23
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    if-nez v1, :cond_30

    const/16 v1, 0xa

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :cond_30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_23

    .line 124
    :cond_35
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_39} :catch_47
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_43
    .catchall {:try_start_23 .. :try_end_39} :catchall_40

    .line 134
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 135
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return-object p0

    :catchall_40
    move-exception p0

    move-object v2, p1

    goto :goto_4d

    :catch_43
    move-exception v1

    move-object v2, p1

    move-object p1, v1

    goto :goto_51

    :catch_47
    move-exception v1

    move-object v2, p1

    move-object p1, v1

    goto :goto_55

    :catchall_4b
    move-exception p0

    move-object v2, v1

    :goto_4d
    move-object v1, v3

    goto :goto_a6

    :catch_4f
    move-exception p1

    move-object v2, v1

    :goto_51
    move-object v1, v3

    goto :goto_5c

    :catch_53
    move-exception p1

    move-object v2, v1

    :goto_55
    move-object v1, v3

    goto :goto_8d

    :catchall_57
    move-exception p0

    move-object v2, v1

    goto :goto_a6

    :catch_5a
    move-exception p1

    move-object v2, v1

    .line 131
    :goto_5c
    :try_start_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    new-instance p0, Lcom/appsflyer/internal/bq;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Could not read connection response: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/bq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catch_8b
    move-exception p1

    move-object v2, v1

    .line 127
    :goto_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    throw p1
    :try_end_a5
    .catchall {:try_start_5c .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p0

    :goto_a6
    if-eqz v1, :cond_ab

    .line 134
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    :cond_ab
    if-eqz v2, :cond_b0

    .line 135
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 136
    :cond_b0
    throw p0
.end method


# virtual methods
.method public final valueOf(Lcom/appsflyer/internal/v;)Lcom/appsflyer/internal/bi;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/v;",
            ")",
            "Lcom/appsflyer/internal/bi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/appsflyer/internal/v;->valueOf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 39
    iget-object v1, p1, Lcom/appsflyer/internal/v;->AFInAppEventType:[B

    if-eqz v1, :cond_30

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP: data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/v;->AFInAppEventType:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 42
    :cond_30
    new-instance v1, Ljava/net/URL;

    iget-object v2, p1, Lcom/appsflyer/internal/v;->valueOf:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_fa

    .line 44
    :try_start_3d
    iget-object v2, p1, Lcom/appsflyer/internal/v;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 45
    iget v2, p0, Lcom/appsflyer/internal/bj;->valueOf:I

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 46
    iget v2, p0, Lcom/appsflyer/internal/bj;->valueOf:I

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v2, "application/json"

    const-string v3, "Content-Type"

    .line 50
    invoke-virtual {v1, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p1, Lcom/appsflyer/internal/v;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 59
    :cond_79
    iget-object v2, p1, Lcom/appsflyer/internal/v;->AFInAppEventType:[B

    const/4 v3, 0x1

    if-eqz v2, :cond_af

    .line 60
    iget-object p1, p1, Lcom/appsflyer/internal/v;->AFInAppEventType:[B

    .line 61
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v2, "Content-Length"

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_3d .. :try_end_95} :catchall_f7

    .line 70
    :try_start_95
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_a8

    .line 71
    :try_start_9e
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a5

    .line 73
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_af

    :catchall_a5
    move-exception p1

    move-object v0, v2

    goto :goto_a9

    :catchall_a8
    move-exception p1

    :goto_a9
    if-eqz v0, :cond_ae

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 74
    :cond_ae
    throw p1

    .line 78
    :cond_af
    :goto_af
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 80
    div-int/lit8 v0, p1, 0x64

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b9

    goto :goto_ba

    :cond_b9
    const/4 v3, 0x0

    .line 82
    :goto_ba
    invoke-static {v1, v3}, Lcom/appsflyer/internal/bj;->values(Ljava/net/HttpURLConnection;Z)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "HTTP: response code: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    const-string p1, "HTTP: response body: "

    .line 85
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 87
    new-instance p1, Lcom/appsflyer/internal/bi;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-direct {p1, v0, v2, v3}, Lcom/appsflyer/internal/bi;-><init>(Ljava/lang/Object;IZ)V
    :try_end_f1
    .catchall {:try_start_a1 .. :try_end_f1} :catchall_f7

    if-eqz v1, :cond_f6

    .line 89
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f6
    return-object p1

    :catchall_f7
    move-exception p1

    move-object v0, v1

    goto :goto_fb

    :catchall_fa
    move-exception p1

    :goto_fb
    if-eqz v0, :cond_100

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_100
    throw p1
.end method
