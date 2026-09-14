###### Class com.dcloud.android.downloader.core.thread.DownloadThread (com.dcloud.android.downloader.core.thread.DownloadThread)
.class public Lcom/dcloud/android/downloader/core/thread/DownloadThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/downloader/core/thread/DownloadThread$DownloadProgressListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DownloadThread"


# instance fields
.field private final config:Lcom/dcloud/android/downloader/config/Config;

.field private final downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

.field private final downloadProgressListener:Lcom/dcloud/android/downloader/core/thread/DownloadThread$DownloadProgressListener;

.field private final downloadResponse:Lcom/dcloud/android/downloader/core/DownloadResponse;

.field private final downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

.field private inputStream:Ljava/io/InputStream;

.field private lastProgress:J

.field private retryDownloadCount:I


# direct methods
.method public constructor <init>(Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;Lcom/dcloud/android/downloader/core/DownloadResponse;Lcom/dcloud/android/downloader/config/Config;Lcom/dcloud/android/downloader/domain/DownloadInfo;Lcom/dcloud/android/downloader/core/thread/DownloadThread$DownloadProgressListener;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->retryDownloadCount:I

    .line 7
    iput-object p1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    .line 8
    iput-object p2, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadResponse:Lcom/dcloud/android/downloader/core/DownloadResponse;

    .line 9
    iput-object p3, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->config:Lcom/dcloud/android/downloader/config/Config;

    .line 10
    iput-object p4, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    .line 11
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getProgress()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->lastProgress:J

    .line 12
    iput-object p5, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadProgressListener:Lcom/dcloud/android/downloader/core/thread/DownloadThread$DownloadProgressListener;

    return-void
.end method

.method private checkPause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-virtual {v0}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->isPause()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance v0, Lcom/dcloud/android/downloader/exception/DownloadPauseException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/dcloud/android/downloader/exception/DownloadPauseException;-><init>(I)V

    throw v0
.end method

.method private executeDownload()V
    .registers 14

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    :try_start_2
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    invoke-virtual {v3}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_13
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_13} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1ee
    .catch Lcom/dcloud/android/downloader/exception/DownloadPauseException; {:try_start_2 .. :try_end_13} :catch_1e6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_13} :catch_1da
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_13} :catch_1ce
    .catchall {:try_start_2 .. :try_end_13} :catchall_1cc

    .line 3
    :try_start_13
    instance-of v1, v2, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v3, 0x0

    if-eqz v1, :cond_2e

    .line 4
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 6
    move-object v4, v2

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 8
    :cond_24
    move-object v1, v2

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v3}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 10
    :cond_2e
    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->config:Lcom/dcloud/android/downloader/config/Config;

    invoke-virtual {v1}, Lcom/dcloud/android/downloader/config/Config;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 11
    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->config:Lcom/dcloud/android/downloader/config/Config;

    invoke-virtual {v1}, Lcom/dcloud/android/downloader/config/Config;->getReadTimeout()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 12
    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->config:Lcom/dcloud/android/downloader/config/Config;

    invoke-virtual {v1}, Lcom/dcloud/android/downloader/config/Config;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    invoke-virtual {v1}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getStart()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->lastProgress:J

    add-long/2addr v4, v6

    .line 14
    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-virtual {v1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->isSupportRanges()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_ac

    .line 15
    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    invoke-virtual {v1}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getEnd()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v4, v7

    if-lez v1, :cond_6a

    .line 17
    iput-wide v9, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->lastProgress:J

    move-wide v4, v9

    .line 19
    :cond_6a
    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->config:Lcom/dcloud/android/downloader/config/Config;

    invoke-virtual {v1}, Lcom/dcloud/android/downloader/config/Config;->getEachDownloadThread()I

    move-result v1
    :try_end_70
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_70} :catch_1c9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_70} :catch_1c7
    .catch Lcom/dcloud/android/downloader/exception/DownloadPauseException; {:try_start_13 .. :try_end_70} :catch_1c5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_70} :catch_1c3
    .catch Ljava/security/KeyManagementException; {:try_start_13 .. :try_end_70} :catch_1c1
    .catchall {:try_start_13 .. :try_end_70} :catchall_1fa

    const-string v7, "-"

    const-string v8, "bytes="

    const-string v9, "Range"

    if-ne v1, v6, :cond_8e

    .line 20
    :try_start_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 22
    :cond_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    invoke-virtual {v7}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getEnd()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_ac
    :goto_ac
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v7, "Content-Length"

    .line 26
    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v4

    .line 29
    iget-object v9, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->config:Lcom/dcloud/android/downloader/config/Config;

    invoke-virtual {v9}, Lcom/dcloud/android/downloader/config/Config;->getEachDownloadThread()I

    move-result v9

    if-ne v9, v6, :cond_ea

    iget-object v9, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    invoke-virtual {v9}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getEnd()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_ea

    .line 30
    iget-object v9, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    invoke-virtual {v9}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getEnd()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_e2

    sub-long/2addr v4, v9

    .line 32
    iget-wide v7, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->lastProgress:J

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->lastProgress:J

    goto :goto_ea

    .line 34
    :cond_e2
    new-instance v1, Lcom/dcloud/android/downloader/exception/DownloadException;

    const-string v3, "IO error Data source change"

    invoke-direct {v1, v0, v3}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_ea
    :goto_ea
    const/16 v7, 0xce

    if-eq v1, v7, :cond_10c

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_f3

    goto :goto_10c

    .line 73
    :cond_f3
    new-instance v3, Lcom/dcloud/android/downloader/exception/DownloadException;

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnSupported response code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 74
    :cond_10c
    :goto_10c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->inputStream:Ljava/io/InputStream;

    .line 75
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v7, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-virtual {v7}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "rwd"

    invoke-direct {v1, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v7, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->config:Lcom/dcloud/android/downloader/config/Config;

    invoke-virtual {v7}, Lcom/dcloud/android/downloader/config/Config;->getEachDownloadThread()I

    move-result v7

    if-ne v7, v6, :cond_13a

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->lastProgress:J

    cmp-long v10, v6, v8

    if-ltz v10, :cond_132

    goto :goto_13a

    .line 77
    :cond_132
    new-instance v1, Lcom/dcloud/android/downloader/exception/DownloadException;

    const-string v3, "IO error Have small download size"

    invoke-direct {v1, v0, v3}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 79
    :cond_13a
    :goto_13a
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v4, 0x1000

    new-array v4, v4, [B

    const/4 v5, 0x0

    .line 84
    :goto_142
    invoke-direct {p0}, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->checkPause()V

    .line 85
    iget-object v6, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_15a

    .line 106
    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadProgressListener:Lcom/dcloud/android/downloader/core/thread/DownloadThread$DownloadProgressListener;

    invoke-interface {v1}, Lcom/dcloud/android/downloader/core/thread/DownloadThread$DownloadProgressListener;->onDownloadSuccess()V

    .line 111
    invoke-direct {p0}, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->checkPause()V

    if-eqz v2, :cond_1ed

    goto/16 :goto_1ea

    .line 112
    :cond_15a
    invoke-virtual {v1, v4, v3, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v5, v6

    .line 116
    iget-object v6, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    iget-wide v7, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->lastProgress:J

    int-to-long v9, v5

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->setProgress(J)V

    .line 117
    iget-object v6, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadProgressListener:Lcom/dcloud/android/downloader/core/thread/DownloadThread$DownloadProgressListener;

    invoke-interface {v6}, Lcom/dcloud/android/downloader/core/thread/DownloadThread$DownloadProgressListener;->onProgress()V
    :try_end_16c
    .catch Ljava/net/ProtocolException; {:try_start_78 .. :try_end_16c} :catch_1c9
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_16c} :catch_1c7
    .catch Lcom/dcloud/android/downloader/exception/DownloadPauseException; {:try_start_78 .. :try_end_16c} :catch_1c5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_78 .. :try_end_16c} :catch_1c3
    .catch Ljava/security/KeyManagementException; {:try_start_78 .. :try_end_16c} :catch_1c1
    .catchall {:try_start_78 .. :try_end_16c} :catchall_1fa

    const-string v6, "DownloadThread"

    .line 120
    :try_start_16e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    .line 121
    invoke-virtual {v8}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " thread:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    invoke-virtual {v8}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getThreadId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " progress:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    .line 123
    invoke-virtual {v8}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getProgress()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",start:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    .line 124
    invoke-virtual {v8}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getStart()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadThreadInfo:Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;

    .line 125
    invoke-virtual {v8}, Lcom/dcloud/android/downloader/domain/DownloadThreadInfo;->getEnd()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 126
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c0
    .catch Ljava/net/ProtocolException; {:try_start_16e .. :try_end_1c0} :catch_1c9
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_1c0} :catch_1c7
    .catch Lcom/dcloud/android/downloader/exception/DownloadPauseException; {:try_start_16e .. :try_end_1c0} :catch_1c5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16e .. :try_end_1c0} :catch_1c3
    .catch Ljava/security/KeyManagementException; {:try_start_16e .. :try_end_1c0} :catch_1c1
    .catchall {:try_start_16e .. :try_end_1c0} :catchall_1fa

    goto :goto_142

    :catch_1c1
    move-exception v1

    goto :goto_1d2

    :catch_1c3
    move-exception v1

    goto :goto_1de

    :catch_1c5
    move-object v1, v2

    goto :goto_1e7

    :catch_1c7
    move-exception v1

    goto :goto_1f2

    :catch_1c9
    move-exception v0

    move-object v1, v2

    goto :goto_1fe

    :catchall_1cc
    move-exception v0

    goto :goto_207

    :catch_1ce
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 150
    :goto_1d2
    :try_start_1d2
    new-instance v3, Lcom/dcloud/android/downloader/exception/DownloadException;

    const-string v4, "Key management"

    invoke-direct {v3, v0, v4, v1}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1da
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 151
    :goto_1de
    new-instance v3, Lcom/dcloud/android/downloader/exception/DownloadException;

    const-string v4, "NO such"

    invoke-direct {v3, v0, v4, v1}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1e6
    .catchall {:try_start_1d2 .. :try_end_1e6} :catchall_1fa

    :catch_1e6
    nop

    :goto_1e7
    if-eqz v1, :cond_1ed

    move-object v2, v1

    .line 156
    :goto_1ea
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1ed
    return-void

    :catch_1ee
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 157
    :goto_1f2
    :try_start_1f2
    new-instance v3, Lcom/dcloud/android/downloader/exception/DownloadException;

    const-string v4, "IO error"

    invoke-direct {v3, v0, v4, v1}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1fa
    .catchall {:try_start_1f2 .. :try_end_1fa} :catchall_1fa

    :catchall_1fa
    move-exception v0

    move-object v1, v2

    goto :goto_207

    :catch_1fd
    move-exception v0

    .line 158
    :goto_1fe
    :try_start_1fe
    new-instance v2, Lcom/dcloud/android/downloader/exception/DownloadException;

    const/4 v3, 0x4

    const-string v4, "Protocol error"

    invoke-direct {v2, v3, v4, v0}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_207
    .catchall {:try_start_1fe .. :try_end_207} :catchall_1cc

    :goto_207
    if-eqz v1, :cond_20c

    .line 169
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 171
    :cond_20c
    throw v0
.end method


# virtual methods
.method public run()V
    .registers 6

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    invoke-direct {p0}, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->checkPause()V

    const/4 v0, 0x6

    .line 6
    :try_start_9
    invoke-direct {p0}, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->executeDownload()V
    :try_end_c
    .catch Lcom/dcloud/android/downloader/exception/DownloadException; {:try_start_9 .. :try_end_c} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_45

    :catch_d
    move-exception v1

    .line 18
    new-instance v2, Lcom/dcloud/android/downloader/exception/DownloadException;

    const/16 v3, 0x9

    const-string v4, "other error"

    invoke-direct {v2, v3, v4, v1}, Lcom/dcloud/android/downloader/exception/DownloadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-virtual {v1, v0}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setStatus(I)V

    .line 20
    iget-object v0, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-virtual {v0, v2}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setException(Lcom/dcloud/android/downloader/exception/DownloadException;)V

    .line 21
    iget-object v0, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadResponse:Lcom/dcloud/android/downloader/core/DownloadResponse;

    iget-object v1, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/dcloud/android/downloader/core/DownloadResponse;->onStatusChanged(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 22
    iget-object v0, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadResponse:Lcom/dcloud/android/downloader/core/DownloadResponse;

    invoke-interface {v0, v2}, Lcom/dcloud/android/downloader/core/DownloadResponse;->handleException(Lcom/dcloud/android/downloader/exception/DownloadException;)V

    goto :goto_45

    :catch_2e
    move-exception v1

    .line 23
    iget-object v2, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-virtual {v2, v0}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setStatus(I)V

    .line 24
    iget-object v0, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setException(Lcom/dcloud/android/downloader/exception/DownloadException;)V

    .line 25
    iget-object v0, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadResponse:Lcom/dcloud/android/downloader/core/DownloadResponse;

    iget-object v2, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadInfo:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-interface {v0, v2}, Lcom/dcloud/android/downloader/core/DownloadResponse;->onStatusChanged(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 26
    iget-object v0, p0, Lcom/dcloud/android/downloader/core/thread/DownloadThread;->downloadResponse:Lcom/dcloud/android/downloader/core/DownloadResponse;

    invoke-interface {v0, v1}, Lcom/dcloud/android/downloader/core/DownloadResponse;->handleException(Lcom/dcloud/android/downloader/exception/DownloadException;)V

    :goto_45
    return-void
.end method

###### Class com.dcloud.android.downloader.core.thread.DownloadThread.DownloadProgressListener (com.dcloud.android.downloader.core.thread.DownloadThread$DownloadProgressListener)
.class public interface abstract Lcom/dcloud/android/downloader/core/thread/DownloadThread$DownloadProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/downloader/core/thread/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadProgressListener"
.end annotation


# virtual methods
.method public abstract onDownloadSuccess()V
.end method

.method public abstract onProgress()V
.end method
