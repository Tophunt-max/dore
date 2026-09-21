###### Class io.dcloud.net.JsDownload (io.dcloud.net.JsDownload)
.class public Lio/dcloud/net/JsDownload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReqListener;
.implements Lio/dcloud/common/DHInterface/IResponseListener;


# static fields
.field public static final DOWNLOAD_NAME:Ljava/lang/String; = "_download_dcloud"

.field static final STATE_COMPLETED:I = 0x4

.field static final STATE_CONNECTED:I = 0x2

.field static final STATE_CONNECTING:I = 0x1

.field static final STATE_INIT:I = 0x0

.field static final STATE_PAUSE:I = 0x5

.field static final STATE_RECEIVING:I = 0x3

.field static final STATE_UNDEFINED:I = -0x3e8

.field static final STATE_UNKOWN:I = -0x1


# instance fields
.field append:Z

.field public mAbort:Z

.field mConfigFilePath:Ljava/lang/String;

.field mData:Ljava/lang/String;

.field private mDownloadComplete:Z

.field private mDownloadMgr:Lio/dcloud/net/DownloadJSMgr;

.field mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

.field private mFile:Ljava/io/File;

.field mFileName:Ljava/lang/String;

.field mFileOs:Ljava/io/RandomAccessFile;

.field mFileSize:J

.field mMethod:Ljava/lang/String;

.field mOptions:Lorg/json/JSONObject;

.field private mParentPath:Ljava/lang/String;

.field public mPause:Z

.field mPriority:I

.field mRealURL:Ljava/lang/String;

.field private mRelWebviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/IWebview;",
            ">;"
        }
    .end annotation
.end field

.field mRequestData:Lio/dcloud/common/util/net/RequestData;

.field mRetry:I

.field private mRetryIntervalTime:J

.field mState:I

.field mTotalSize:J

.field mUUID:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field public mWebview:Lio/dcloud/common/DHInterface/IWebview;

.field private preTime:J

.field private responseOffset:J

.field private sAppid:Ljava/lang/String;

.field private sharedPreferenceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/net/DownloadJSMgr;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x3e8

    .line 2
    iput v0, p0, Lio/dcloud/net/JsDownload;->mState:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mUrl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mRealURL:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lio/dcloud/net/JsDownload;->append:Z

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lio/dcloud/net/JsDownload;->responseOffset:J

    .line 15
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    .line 19
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    .line 23
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 27
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mRelWebviews:Ljava/util/ArrayList;

    .line 31
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mOptions:Lorg/json/JSONObject;

    const-string v3, ""

    .line 35
    iput-object v3, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mParentPath:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mFile:Ljava/io/File;

    .line 45
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mFileOs:Ljava/io/RandomAccessFile;

    .line 49
    iput-wide v1, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    .line 53
    iput-wide v1, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    const/4 v3, 0x3

    .line 65
    iput v3, p0, Lio/dcloud/net/JsDownload;->mRetry:I

    .line 77
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mConfigFilePath:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mDownloadMgr:Lio/dcloud/net/DownloadJSMgr;

    .line 253
    iput-wide v1, p0, Lio/dcloud/net/JsDownload;->preTime:J

    .line 254
    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadMgr:Lio/dcloud/net/DownloadJSMgr;

    .line 255
    iput-object p2, p0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 256
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mRelWebviews:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-direct {p0, p3}, Lio/dcloud/net/JsDownload;->parseJson(Lorg/json/JSONObject;)V

    .line 259
    new-instance p1, Lio/dcloud/common/util/net/RequestData;

    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mMethod:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lio/dcloud/common/util/net/RequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    .line 260
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v1, "untrustedca"

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/dcloud/common/util/net/RequestData;->unTrustedCAType:Ljava/lang/String;

    const-string p1, "timeout"

    .line 261
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 262
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lio/dcloud/common/util/net/RequestData;->mTimeout:I

    .line 264
    :cond_70
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    const-string p3, "User-Agent"

    invoke-interface {p2, p3}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lio/dcloud/common/util/net/RequestData;->addHeader(Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    new-instance p1, Lio/dcloud/net/DownloadNetWork;

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2, p0, p0}, Lio/dcloud/net/DownloadNetWork;-><init>(ILio/dcloud/common/util/net/RequestData;Lio/dcloud/common/DHInterface/IReqListener;Lio/dcloud/common/DHInterface/IResponseListener;)V

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    .line 270
    iget p2, p0, Lio/dcloud/net/JsDownload;->mRetry:I

    iput p2, p1, Lio/dcloud/common/util/net/NetWork;->MAX_TIMES:I

    .line 271
    iget p2, p0, Lio/dcloud/net/JsDownload;->mPriority:I

    iput p2, p1, Lio/dcloud/common/util/net/NetWork;->mPriority:I

    .line 272
    iget-wide p2, p0, Lio/dcloud/net/JsDownload;->mRetryIntervalTime:J

    invoke-virtual {p1, p2, p3}, Lio/dcloud/common/util/net/NetWork;->setRetryIntervalTime(J)V

    .line 273
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->sAppid:Ljava/lang/String;

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->sAppid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_download_dcloud"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->sharedPreferenceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/net/JsDownload;)Ljava/io/File;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/net/JsDownload;->mFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/net/JsDownload;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/net/JsDownload;->mRelWebviews:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkSpecialFile(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISAMU:Z

    if-eqz v0, :cond_8c

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ".apk"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x4

    if-eqz v1, :cond_31

    const-string v1, ".wgt"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x4

    if-eqz v1, :cond_31

    const-string v1, ".wgtu"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x5

    if-nez v0, :cond_8c

    .line 9
    :cond_31
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_8c

    .line 12
    :try_start_35
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "type"

    const-string v1, "download"

    .line 13
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_41} :catch_88

    const-string v0, "file"

    .line 14
    :try_start_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mParentPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_59} :catch_88

    const-string v0, "url"

    .line 15
    :try_start_5b
    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_60} :catch_88

    const-string v0, "appid"

    .line 16
    :try_start_62
    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainOriginalAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_62 .. :try_end_6f} :catch_88

    const-string v0, "version"

    .line 17
    :try_start_71
    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_7e} :catch_88

    const-string v0, ".stream_json"

    .line 18
    :try_start_80
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8c
    :goto_8c
    return-void
.end method

.method private createDownloadFile(Z)Ljava/io/File;
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/net/JsDownload;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_16

    return-object v1

    .line 5
    :cond_16
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    const-string v0, "."

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_22

    move-object v2, p1

    goto :goto_27

    :cond_22
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_77

    :goto_27
    if-gez v0, :cond_2c

    const-string v0, ""

    goto :goto_30

    .line 8
    :cond_2c
    :try_start_2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_30
    const/4 v3, 0x1

    .line 11
    :goto_31
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lio/dcloud/net/JsDownload;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move-object v1, v4

    goto :goto_31

    .line 18
    :cond_60
    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_73

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_73
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_76} :catch_77

    return-object v1

    :catch_77
    move-exception p1

    .line 26
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 27
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    .line 28
    iget-boolean p1, p0, Lio/dcloud/net/JsDownload;->append:Z

    invoke-direct {p0, p1}, Lio/dcloud/net/JsDownload;->createDownloadFile(Z)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 31
    :cond_98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9b
    const/4 p1, 0x0

    return-object p1
.end method

.method private initPath(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_34

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mParentPath:Ljava/lang/String;

    const-string p1, "_downloads/"

    .line 4
    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    goto/16 :goto_c4

    .line 6
    :cond_34
    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    const-string v1, "_doc"

    const/4 v3, 0x1

    .line 7
    invoke-static {p1, v1, v3}, Lio/dcloud/net/JsDownload;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppDocPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mParentPath:Ljava/lang/String;

    goto :goto_c4

    :cond_5e
    const-string v0, "_documents"

    .line 24
    invoke-static {p1, v0, v3}, Lio/dcloud/net/JsDownload;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDocumentFullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mParentPath:Ljava/lang/String;

    goto :goto_c4

    :cond_83
    const-string v0, "_downloads"

    .line 26
    invoke-static {p1, v0, v3}, Lio/dcloud/net/JsDownload;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mParentPath:Ljava/lang/String;

    goto :goto_c4

    .line 34
    :cond_a8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mParentPath:Ljava/lang/String;

    :goto_c4
    return-void
.end method

.method private justDirPath()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private onStateChanged(I)V
    .registers 9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_8

    .line 1
    :cond_6
    iput p1, p0, Lio/dcloud/net/JsDownload;->mState:I

    :cond_8
    const/4 v1, 0x0

    if-ne p1, v0, :cond_1a

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lio/dcloud/net/JsDownload;->preTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    if-nez v2, :cond_2e

    if-ne p1, v0, :cond_2e

    .line 4
    iget-wide v3, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    iget-wide v5, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1400

    cmp-long p1, v3, v5

    if-lez p1, :cond_2e

    iget-boolean p1, p0, Lio/dcloud/net/JsDownload;->mAbort:Z

    if-eqz p1, :cond_52

    :cond_2e
    if-eqz v2, :cond_36

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/dcloud/net/JsDownload;->preTime:J

    .line 7
    :cond_36
    invoke-virtual {p0}, Lio/dcloud/net/JsDownload;->toJSON()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mRelWebviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_40
    if-ge v1, v0, :cond_52

    .line 10
    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mRelWebviews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    .line 11
    iget-object v3, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lio/dcloud/common/util/JSUtil;->excDownloadCallBack(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 14
    :cond_52
    iget-boolean p1, p0, Lio/dcloud/net/JsDownload;->mAbort:Z

    if-eqz p1, :cond_57

    return-void

    .line 17
    :cond_57
    invoke-direct {p0}, Lio/dcloud/net/JsDownload;->saveDownloadState()V

    return-void
.end method

.method private parseJson(Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, ""

    const-string v1, "\n"

    const-string v2, "options"

    .line 1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/net/JsDownload;->mOptions:Lorg/json/JSONObject;

    const-string v2, "url"

    .line 2
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/net/JsDownload;->mUrl:Ljava/lang/String;

    const-string v2, "RealURL"

    .line 3
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    const-string v3, "null"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    iget-object v3, p0, Lio/dcloud/net/JsDownload;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 5
    iput-object v2, p0, Lio/dcloud/net/JsDownload;->mUrl:Ljava/lang/String;

    :cond_2e
    const-string v2, "id"

    .line 7
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "uuid"

    .line 9
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    :cond_44
    const-string v2, "method"

    .line 12
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/net/JsDownload;->mMethod:Ljava/lang/String;

    const-string v2, "priority"

    .line 13
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/dcloud/net/JsDownload;->mPriority:I

    const-string v2, "retry"

    .line 14
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/dcloud/net/JsDownload;->mRetry:I

    const-string v2, "downloadedSize"

    .line 15
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    const-string v2, "totalSize"

    .line 16
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    const-string v2, "state"

    .line 17
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 20
    :try_start_7a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/dcloud/net/JsDownload;->mState:I
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 25
    :cond_85
    :goto_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sDownloadFullPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/net/JsDownload;->mConfigFilePath:Ljava/lang/String;

    .line 26
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lio/dcloud/net/JsDownload;->mConfigFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    :try_start_a6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 30
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    invoke-static {v3}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v3, "-"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 34
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    const/4 v3, 0x2

    .line 35
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lio/dcloud/net/JsDownload;->mState:I

    const/4 v3, 0x3

    .line 36
    aget-object v2, v2, v3

    .line 37
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/dcloud/net/JsDownload;->mFile:Ljava/io/File;

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 40
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    goto :goto_f6

    :cond_ed
    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lio/dcloud/net/JsDownload;->mFileSize:J
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_f1} :catch_f2

    goto :goto_f6

    :catch_f2
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f6
    :goto_f6
    const-string v0, "filename"

    .line 50
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 52
    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mOptions:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_108
    invoke-direct {p0, v1}, Lio/dcloud/net/JsDownload;->initPath(Ljava/lang/String;)V

    const-string v0, "data"

    .line 55
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/net/JsDownload;->mData:Ljava/lang/String;

    const-string v0, "retryInterval"

    .line 56
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lio/dcloud/net/JsDownload;->mRetryIntervalTime:J

    return-void
.end method

.method private saveDownloadState()V
    .registers 7

    const-string v0, "-"

    .line 1
    iget-wide v1, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    iget-wide v3, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_56

    .line 3
    :try_start_a
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mConfigFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 5
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/dcloud/net/JsDownload;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_56
    :goto_56
    return-void
.end method

.method private static startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    if-eqz p2, :cond_2a

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_29

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2f

    if-ne p0, p1, :cond_29

    :cond_28
    const/4 v0, 0x1

    :cond_29
    return v0

    :cond_2a
    return v1

    :cond_2b
    return v0
.end method


# virtual methods
.method public abort()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    :try_start_1
    iput-boolean v0, p0, Lio/dcloud/net/JsDownload;->mAbort:Z

    .line 3
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/net/JsDownload$1;

    invoke-direct {v1, p0}, Lio/dcloud/net/JsDownload$1;-><init>(Lio/dcloud/net/JsDownload;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public addRelWebview(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mRelWebviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mRelWebviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public deleteDownloadData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mDownloadMgr:Lio/dcloud/net/DownloadJSMgr;

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->sAppid:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/net/DownloadJSMgr;->deleteDownloadTaskInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mConfigFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "/sdcard"

    const-string v1, "/"

    const-string v2, "/www/"

    if-eqz p1, :cond_45

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_79

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_79

    :cond_45
    if-eqz p1, :cond_52

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_79

    .line 12
    :cond_52
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_79

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->REAL_PUBLIC_DOWNLOADS_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_79
    :goto_79
    return-object p1
.end method

.method public onNetStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;Z)V
    .registers 12

    const-string p2, "?"

    .line 1
    iget-boolean v0, p0, Lio/dcloud/net/JsDownload;->mPause:Z

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_INIT:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_12

    .line 3
    iput v1, p0, Lio/dcloud/net/JsDownload;->mState:I

    .line 4
    iput-boolean v1, p0, Lio/dcloud/net/JsDownload;->mDownloadComplete:Z

    goto/16 :goto_244

    .line 5
    :cond_12
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_CONNECTED:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    if-ne p1, v0, :cond_1b

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lio/dcloud/net/JsDownload;->mState:I

    goto/16 :goto_244

    .line 7
    :cond_1b
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_END:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p1, v0, :cond_3d

    .line 8
    iput v2, p0, Lio/dcloud/net/JsDownload;->mState:I

    const-string p1, "----NetState.NET_HANDLE_END-----"

    .line 9
    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lio/dcloud/common/util/net/DownloadMgr;->getDownloadMgr()Lio/dcloud/common/util/net/DownloadMgr;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/net/DownloadMgr;->removeTask(Lio/dcloud/common/util/net/NetWork;)V

    .line 11
    invoke-virtual {p0}, Lio/dcloud/net/JsDownload;->deleteDownloadData()V

    .line 12
    iput-boolean v3, p0, Lio/dcloud/net/JsDownload;->mDownloadComplete:Z

    .line 13
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/net/JsDownload;->checkSpecialFile(Ljava/lang/String;)V

    goto/16 :goto_244

    .line 14
    :cond_3d
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_ERROR:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    if-ne p1, v0, :cond_5c

    .line 15
    iput v2, p0, Lio/dcloud/net/JsDownload;->mState:I

    .line 16
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    const/16 p2, 0x190

    iput p2, p1, Lio/dcloud/net/DownloadNetWork;->mStatus:I

    const-string p1, "----NetState.NET_ERROR-----"

    .line 17
    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lio/dcloud/common/util/net/DownloadMgr;->getDownloadMgr()Lio/dcloud/common/util/net/DownloadMgr;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/net/DownloadMgr;->removeTask(Lio/dcloud/common/util/net/NetWork;)V

    .line 19
    iget-boolean p1, p0, Lio/dcloud/net/JsDownload;->mDownloadComplete:Z

    if-eqz p1, :cond_244

    return-void

    .line 23
    :cond_5c
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_TIMEOUT:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    if-ne p1, v0, :cond_79

    .line 24
    iput v2, p0, Lio/dcloud/net/JsDownload;->mState:I

    .line 25
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iput v1, p1, Lio/dcloud/net/DownloadNetWork;->mStatus:I

    const-string p1, "----NetState.NET_TIMEOUT-----"

    .line 26
    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lio/dcloud/common/util/net/DownloadMgr;->getDownloadMgr()Lio/dcloud/common/util/net/DownloadMgr;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/net/DownloadMgr;->removeTask(Lio/dcloud/common/util/net/NetWork;)V

    .line 28
    iget-boolean p1, p0, Lio/dcloud/net/JsDownload;->mDownloadComplete:Z

    if-eqz p1, :cond_244

    return-void

    .line 32
    :cond_79
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_REQUEST_BEGIN:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const-wide/16 v4, 0x0

    if-ne p1, v0, :cond_112

    .line 36
    :try_start_7f
    iget-wide p1, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_aa

    .line 37
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_89} :catch_10c

    const-string p2, "Range"

    :try_start_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_aa
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->mMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mMethod:Ljava/lang/String;

    const-string p2, "POST"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f4

    .line 41
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 42
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->mData:Ljava/lang/String;

    const-string v0, "utf8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 44
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 45
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 47
    :cond_f4
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    iget p2, p2, Lio/dcloud/common/util/net/RequestData;->mTimeout:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 48
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    iget p2, p2, Lio/dcloud/common/util/net/RequestData;->mTimeout:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_10a} :catch_10c

    goto/16 :goto_244

    :catch_10c
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_244

    .line 53
    :cond_112
    sget-object v0, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_BEGIN:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    if-ne p1, v0, :cond_244

    .line 54
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object v0, v0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Range"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object v2, v2, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Type"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v6, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object v6, v6, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    const-string v7, "Set-Cookie"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_151

    .line 59
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    iget-object v8, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    invoke-virtual {v8}, Lio/dcloud/common/util/net/RequestData;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_151
    if-nez v0, :cond_177

    .line 62
    invoke-static {p1, v4, v5}, Lio/dcloud/common/util/PdrUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    .line 64
    iput-wide v4, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    .line 65
    iput-wide v4, p0, Lio/dcloud/net/JsDownload;->responseOffset:J

    .line 66
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mFile:Ljava/io/File;

    if-eqz p1, :cond_19c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_19c

    .line 67
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 68
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mConfigFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_19c

    .line 71
    :cond_177
    iput-boolean v3, p0, Lio/dcloud/net/JsDownload;->append:Z

    .line 73
    :try_start_179
    new-instance p1, Ljava/text/MessageFormat;

    const-string v6, "bytes {0,number}-{1,number}"

    invoke-direct {p1, v6}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 74
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 75
    invoke-virtual {p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    .line 76
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lio/dcloud/net/JsDownload;->responseOffset:J

    cmp-long p1, v6, v4

    if-gez p1, :cond_19c

    .line 78
    iput-wide v4, p0, Lio/dcloud/net/JsDownload;->responseOffset:J
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_199} :catch_19a

    goto :goto_19c

    .line 82
    :catch_19a
    iput-wide v4, p0, Lio/dcloud/net/JsDownload;->responseOffset:J

    .line 85
    :cond_19c
    :goto_19c
    invoke-direct {p0}, Lio/dcloud/net/JsDownload;->justDirPath()Z

    move-result p1

    if-eqz p1, :cond_21c

    .line 87
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object p1, p1, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    const-string v0, "content-disposition"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :try_start_1ac
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    .line 90
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object v0, v0, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_1fd

    add-int/2addr v4, v3

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1fd

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e5

    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_1e5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1f8} :catch_1f9

    goto :goto_1fd

    :catch_1f9
    move-exception p2

    .line 103
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    :cond_1fd
    :goto_1fd
    invoke-direct {p0}, Lio/dcloud/net/JsDownload;->justDirPath()Z

    move-result p2

    if-eqz p2, :cond_21c

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mUrl:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lio/dcloud/common/util/PdrUtil;->getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    .line 112
    :cond_21c
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-boolean p1, p1, Lio/dcloud/net/DownloadNetWork;->isStop:Z

    if-eqz p1, :cond_223

    return-void

    .line 117
    :cond_223
    :try_start_223
    iget-boolean p1, p0, Lio/dcloud/net/JsDownload;->append:Z

    invoke-direct {p0, p1}, Lio/dcloud/net/JsDownload;->createDownloadFile(Z)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mFile:Ljava/io/File;

    .line 118
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lio/dcloud/net/JsDownload;->mFile:Ljava/io/File;

    const-string v0, "rw"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/net/JsDownload;->mFileOs:Ljava/io/RandomAccessFile;

    .line 119
    iget-wide v0, p0, Lio/dcloud/net/JsDownload;->responseOffset:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_23b
    .catch Ljava/io/IOException; {:try_start_223 .. :try_end_23b} :catch_23c

    goto :goto_243

    :catch_23c
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    invoke-virtual {p0}, Lio/dcloud/net/JsDownload;->saveInDatabase()V

    :goto_243
    return-void

    .line 128
    :cond_244
    :goto_244
    iget p1, p0, Lio/dcloud/net/JsDownload;->mState:I

    invoke-direct {p0, p1}, Lio/dcloud/net/JsDownload;->onStateChanged(I)V

    return-void
.end method

.method public onReceiving(Ljava/io/InputStream;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x2800

    new-array v0, v0, [B

    const/4 v1, -0x1

    if-eqz p1, :cond_46

    .line 3
    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    const/4 v3, 0x1

    iput v3, v2, Lio/dcloud/common/util/net/NetWork;->mTimes:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 6
    :cond_e
    :goto_e
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v1, :cond_41

    .line 7
    iget-boolean v6, p0, Lio/dcloud/net/JsDownload;->mPause:Z

    if-eqz v6, :cond_1d

    const/4 p1, 0x5

    .line 8
    invoke-direct {p0, p1}, Lio/dcloud/net/JsDownload;->onStateChanged(I)V

    return v1

    .line 11
    :cond_1d
    iget-object v6, p0, Lio/dcloud/net/JsDownload;->mFileOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v0, v2, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 12
    iget-wide v6, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    const/4 v5, 0x3

    .line 13
    invoke-direct {p0, v5}, Lio/dcloud/net/JsDownload;->onStateChanged(I)V

    if-nez v4, :cond_e

    .line 16
    iget-object v4, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget-object v4, v4, Lio/dcloud/net/DownloadNetWork;->mUrlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/dcloud/net/JsDownload;->mRealURL:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lio/dcloud/net/JsDownload;->saveInDatabase()V

    const/4 v4, 0x1

    goto :goto_e

    .line 20
    :cond_41
    iget-object p1, p0, Lio/dcloud/net/JsDownload;->mFileOs:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 22
    :cond_46
    iget-wide v2, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    iget-wide v4, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_59

    .line 25
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mConfigFilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v1

    .line 26
    :cond_59
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public onResponseState(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onResponsing(Ljava/io/InputStream;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/net/JsDownload;->toJSON()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/dcloud/net/JsDownload;->mState:I

    .line 3
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mRelWebviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_20

    .line 5
    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mRelWebviews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    .line 6
    iget-object v3, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lio/dcloud/common/util/JSUtil;->excDownloadCallBack(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return-void
.end method

.method public saveInDatabase()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mDownloadMgr:Lio/dcloud/net/DownloadJSMgr;

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->sAppid:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    invoke-virtual {p0}, Lio/dcloud/net/JsDownload;->toSaveJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/net/DownloadJSMgr;->saveDownloadTaskInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/common/util/net/RequestData;->addHeader(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public start()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    const/4 v1, 0x1

    iput v1, v0, Lio/dcloud/common/util/net/NetWork;->mTimes:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/net/JsDownload;->mPause:Z

    .line 3
    invoke-static {}, Lio/dcloud/common/util/net/DownloadMgr;->getDownloadMgr()Lio/dcloud/common/util/net/DownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/net/DownloadMgr;->addQuestTask(Lio/dcloud/common/util/net/NetWork;)V

    .line 4
    invoke-virtual {p0}, Lio/dcloud/net/JsDownload;->saveInDatabase()V

    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .registers 10

    .line 1
    iget v0, p0, Lio/dcloud/net/JsDownload;->mState:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, -0x3e8

    if-ne v0, v8, :cond_40

    new-array v0, v1, [Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget v1, v1, Lio/dcloud/net/DownloadNetWork;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    aput-object v1, v0, v6

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-wide v5, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    iget-wide v4, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {v1}, Lio/dcloud/net/DownloadNetWork;->getResponseHeaders()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "{status: %d,filename: \'%s\',uuid: \'%s\',downloadedSize:%d,totalSize:%d,headers:%s}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7b

    :cond_40
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    iget-object v8, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    iget v8, v8, Lio/dcloud/net/DownloadNetWork;->mStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    iget v7, p0, Lio/dcloud/net/JsDownload;->mState:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    iget-object v6, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    aput-object v6, v0, v5

    iget-object v5, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    aput-object v5, v0, v4

    iget-wide v4, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    iget-wide v3, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {v2}, Lio/dcloud/net/DownloadNetWork;->getResponseHeaders()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "{status: %d,state: %d,filename: \'%s\',uuid: \'%s\',downloadedSize:%d,totalSize:%d,headers:%s}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_7b
    return-object v0
.end method

.method toSaveJSON()Ljava/lang/String;
    .registers 4

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mUUID:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mMethod:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lio/dcloud/net/JsDownload;->mPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    iget v1, v1, Lio/dcloud/common/util/net/RequestData;->mTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lio/dcloud/net/JsDownload;->mRetry:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mFileName:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/dcloud/net/JsDownload;->mFileSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/dcloud/net/JsDownload;->mTotalSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lio/dcloud/net/JsDownload;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mOptions:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsDownload;->mRealURL:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "{url: \'%s\',uuid: \'%s\',method: \'%s\',priority: %d,timeout:%d,retry:%d,filename:\'%s\',downloadedSize:%d,totalSize:%d,state: %d,options:%s,RealURL:\'%s\'}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.net.JsDownload.AnonymousClass1 (io.dcloud.net.JsDownload$1)
.class Lio/dcloud/net/JsDownload$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/net/JsDownload;->abort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/net/JsDownload;


# direct methods
.method constructor <init>(Lio/dcloud/net/JsDownload;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/net/JsDownload$1;->this$0:Lio/dcloud/net/JsDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsDownload$1;->this$0:Lio/dcloud/net/JsDownload;

    iget-object v0, v0, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {v0}, Lio/dcloud/net/DownloadNetWork;->cancelWork()V

    .line 2
    invoke-static {}, Lio/dcloud/common/util/net/DownloadMgr;->getDownloadMgr()Lio/dcloud/common/util/net/DownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/net/JsDownload$1;->this$0:Lio/dcloud/net/JsDownload;

    iget-object v1, v1, Lio/dcloud/net/JsDownload;->mDownloadNetWork:Lio/dcloud/net/DownloadNetWork;

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/net/DownloadMgr;->removeTask(Lio/dcloud/common/util/net/NetWork;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/net/JsDownload$1;->this$0:Lio/dcloud/net/JsDownload;

    invoke-virtual {v0}, Lio/dcloud/net/JsDownload;->deleteDownloadData()V

    .line 4
    iget-object v0, p0, Lio/dcloud/net/JsDownload$1;->this$0:Lio/dcloud/net/JsDownload;

    iget-object v0, v0, Lio/dcloud/net/JsDownload;->mFileOs:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 6
    :try_start_21
    iget-object v0, p0, Lio/dcloud/net/JsDownload$1;->this$0:Lio/dcloud/net/JsDownload;

    iget-object v0, v0, Lio/dcloud/net/JsDownload;->mFileOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lio/dcloud/net/JsDownload$1;->this$0:Lio/dcloud/net/JsDownload;

    invoke-static {v0}, Lio/dcloud/net/JsDownload;->access$000(Lio/dcloud/net/JsDownload;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 11
    iget-object v0, p0, Lio/dcloud/net/JsDownload$1;->this$0:Lio/dcloud/net/JsDownload;

    invoke-static {v0}, Lio/dcloud/net/JsDownload;->access$000(Lio/dcloud/net/JsDownload;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    :cond_3e
    iget-object v0, p0, Lio/dcloud/net/JsDownload$1;->this$0:Lio/dcloud/net/JsDownload;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/net/JsDownload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 14
    invoke-static {v0}, Lio/dcloud/net/JsDownload;->access$100(Lio/dcloud/net/JsDownload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
