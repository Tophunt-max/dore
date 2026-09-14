###### Class io.dcloud.net.JsUpload (io.dcloud.net.JsUpload)
.class public Lio/dcloud/net/JsUpload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReqListener;
.implements Lio/dcloud/common/DHInterface/IResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/net/JsUpload$UploadItem;,
        Lio/dcloud/net/JsUpload$UploadString;,
        Lio/dcloud/net/JsUpload$UploadFile;
    }
.end annotation


# static fields
.field private static final STATE_COMPLETED:I = 0x4

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PAUSE:I = 0x5

.field private static final STATE_RECEIVING:I = 0x3

.field private static final STATE_UNKOWN:I = -0x1


# instance fields
.field isStart:Z

.field mRequestData:Lio/dcloud/common/util/net/RequestData;

.field mState:I

.field public mUUID:Ljava/lang/String;

.field mUploadNetWork:Lio/dcloud/net/UploadNetWork;

.field mUrl:Ljava/lang/String;

.field mWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/net/JsUpload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/net/JsUpload;->isStart:Z

    .line 17
    iput-object p1, p0, Lio/dcloud/net/JsUpload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    const-string v1, "url"

    .line 18
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/net/JsUpload;->mUrl:Ljava/lang/String;

    const-string v1, "__UUID__"

    .line 19
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/net/JsUpload;->mUUID:Ljava/lang/String;

    const-string v1, "method"

    const-string v2, "POST"

    .line 21
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    new-instance v2, Lio/dcloud/common/util/net/RequestData;

    iget-object v3, p0, Lio/dcloud/net/JsUpload;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lio/dcloud/common/util/net/RequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lio/dcloud/net/JsUpload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    const-string v1, "chunkSize"

    .line 23
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lio/dcloud/common/util/net/RequestData;->mChunkSize:I

    .line 24
    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const-string v2, "untrustedca"

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/common/util/net/RequestData;->unTrustedCAType:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    const-string v1, "User-Agent"

    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/common/util/net/RequestData;->addHeader(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    new-instance p1, Lio/dcloud/net/UploadNetWork;

    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0, p0, p0}, Lio/dcloud/net/UploadNetWork;-><init>(ILio/dcloud/common/util/net/RequestData;Lio/dcloud/common/DHInterface/IReqListener;Lio/dcloud/common/DHInterface/IResponseListener;)V

    iput-object p1, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    const-string v0, "priority"

    .line 31
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lio/dcloud/common/util/net/NetWork;->mPriority:I

    const-string p1, "timeout"

    .line 32
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 33
    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lio/dcloud/common/util/net/RequestData;->mTimeout:I

    .line 35
    :cond_71
    iget-object p1, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    const-string v0, "retry"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lio/dcloud/common/util/net/NetWork;->MAX_TIMES:I

    .line 36
    iget-object p1, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    const-string v0, "retryInterval"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lio/dcloud/common/util/net/NetWork;->setRetryIntervalTime(J)V

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/net/UploadNetWork;->addParemeter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addFile(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 16

    .line 1
    new-instance v0, Lio/dcloud/net/JsUpload$UploadFile;

    invoke-direct {v0, p0}, Lio/dcloud/net/JsUpload$UploadFile;-><init>(Lio/dcloud/net/JsUpload;)V

    const/4 v1, 0x0

    :try_start_6
    const-string v2, "content://"

    .line 4
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_c} :catch_c6

    const-string v3, "mime"

    const-string v4, "name"

    const-string v5, "key"

    if-eqz v2, :cond_77

    .line 5
    :try_start_14
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 6
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_ca

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p2, "_size"

    .line 10
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const-string v6, "_display_name"

    .line 11
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mime_type"

    .line 12
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    iput-object p1, v0, Lio/dcloud/net/JsUpload$UploadFile;->mFileInputS:Ljava/io/InputStream;

    int-to-long p1, p2

    .line 14
    iput-wide p1, v0, Lio/dcloud/net/JsUpload$UploadFile;->mFileSize:J

    .line 15
    invoke-virtual {p3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lio/dcloud/net/JsUpload$UploadFile;->mFilename:Ljava/lang/String;

    .line 17
    invoke-virtual {p3, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lio/dcloud/net/JsUpload$UploadFile;->mMimetype:Ljava/lang/String;

    .line 18
    iget-object p2, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    invoke-virtual {p2, p1, v0}, Lio/dcloud/net/UploadNetWork;->addFile(Ljava/lang/String;Lio/dcloud/net/JsUpload$UploadFile;)Z

    move-result v1

    .line 20
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_ca

    .line 23
    :cond_77
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 26
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/net/JsUpload$UploadFile;->mFileInputS:Ljava/io/InputStream;

    goto :goto_98

    .line 28
    :cond_91
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object p1, v0, Lio/dcloud/net/JsUpload$UploadFile;->mFileInputS:Ljava/io/InputStream;

    .line 30
    :goto_98
    iget-object p1, v0, Lio/dcloud/net/JsUpload$UploadFile;->mFileInputS:Ljava/io/InputStream;

    if-nez p1, :cond_9d

    return v1

    .line 34
    :cond_9d
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v0, Lio/dcloud/net/JsUpload$UploadFile;->mFileSize:J

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/dcloud/net/JsUpload$UploadFile;->mFilename:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lio/dcloud/net/JsUpload$UploadFile;->mMimetype:Ljava/lang/String;

    .line 38
    iget-object p2, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    invoke-virtual {p2, p1, v0}, Lio/dcloud/net/UploadNetWork;->addFile(Ljava/lang/String;Lio/dcloud/net/JsUpload$UploadFile;)Z

    move-result v1
    :try_end_c5
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_ca
    :goto_ca
    return v1
.end method

.method public onNetStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;Z)V
    .registers 10

    .line 1
    sget-object p2, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_INIT:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_14

    .line 2
    iput v0, p0, Lio/dcloud/net/JsUpload;->mState:I

    .line 3
    invoke-virtual {p0}, Lio/dcloud/net/JsUpload;->toJsonUpload()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lio/dcloud/net/JsUpload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mUUID:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lio/dcloud/common/util/JSUtil;->excUploadCallBack(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a0

    .line 5
    :cond_14
    sget-object p2, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_REQUEST_BEGIN:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const/4 v1, 0x1

    if-ne p1, p2, :cond_28

    .line 6
    iput v1, p0, Lio/dcloud/net/JsUpload;->mState:I

    .line 7
    invoke-virtual {p0}, Lio/dcloud/net/JsUpload;->toJsonUpload()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lio/dcloud/net/JsUpload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mUUID:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lio/dcloud/common/util/JSUtil;->excUploadCallBack(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a0

    .line 9
    :cond_28
    sget-object p2, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_CONNECTED:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const/4 v2, 0x2

    if-ne p1, p2, :cond_3b

    .line 10
    iput v2, p0, Lio/dcloud/net/JsUpload;->mState:I

    .line 11
    invoke-virtual {p0}, Lio/dcloud/net/JsUpload;->toJsonUpload()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lio/dcloud/net/JsUpload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mUUID:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lio/dcloud/common/util/JSUtil;->excUploadCallBack(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    .line 13
    :cond_3b
    sget-object p2, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_ING:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    const/4 v3, 0x3

    if-ne p1, p2, :cond_4e

    .line 14
    iput v3, p0, Lio/dcloud/net/JsUpload;->mState:I

    .line 15
    invoke-virtual {p0}, Lio/dcloud/net/JsUpload;->toJsonUpload()Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lio/dcloud/net/JsUpload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mUUID:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lio/dcloud/common/util/JSUtil;->excUploadCallBack(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    .line 17
    :cond_4e
    sget-object p2, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_END:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    if-eq p1, p2, :cond_56

    sget-object p2, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_ERROR:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    if-ne p1, p2, :cond_a0

    :cond_56
    const/4 p1, 0x4

    .line 18
    iput p1, p0, Lio/dcloud/net/JsUpload;->mState:I

    .line 19
    invoke-static {}, Lio/dcloud/common/util/net/UploadMgr;->getUploadMgr()Lio/dcloud/common/util/net/UploadMgr;

    move-result-object p2

    iget-object v4, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    invoke-virtual {p2, v4}, Lio/dcloud/common/util/net/UploadMgr;->removeNetWork(Lio/dcloud/common/util/net/NetWork;)V

    .line 21
    iget-object p2, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    invoke-virtual {p2}, Lio/dcloud/common/util/net/NetWork;->getResponseText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 22
    iget-object v4, p0, Lio/dcloud/net/JsUpload;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lio/dcloud/net/JsUpload;->mState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    iget v0, v0, Lio/dcloud/net/UploadNetWork;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    iget-object v0, v0, Lio/dcloud/net/UploadNetWork;->mUploadingFile:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    aput-object p2, v5, v3

    iget-object p2, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    iget-object p2, p2, Lio/dcloud/net/UploadNetWork;->responseHeaders:Ljava/lang/String;

    aput-object p2, v5, p1

    const-string p1, "{state:%d,status:%d,filename:\'%s\',responseText:%s,headers:%s}"

    invoke-static {p1, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/net/JsUpload;->mUUID:Ljava/lang/String;

    invoke-static {v4, p1, p2}, Lio/dcloud/common/util/JSUtil;->excUploadCallBack(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    return-void
.end method

.method public onReceiving(Ljava/io/InputStream;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onResponseState(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onResponsing(Ljava/io/InputStream;)V
    .registers 2

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/net/JsUpload;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/common/util/net/RequestData;->addHeader(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public toJsonUpload()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lio/dcloud/net/JsUpload;->mState:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    iget v1, v1, Lio/dcloud/net/UploadNetWork;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    iget-wide v1, v1, Lio/dcloud/net/UploadNetWork;->mUploadedSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    iget-wide v1, v1, Lio/dcloud/net/UploadNetWork;->mTotalSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/net/JsUpload;->mUploadNetWork:Lio/dcloud/net/UploadNetWork;

    iget-object v1, v1, Lio/dcloud/net/UploadNetWork;->responseHeaders:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "{state:%d,status:%d,uploadedSize:%d,totalSize:%d,headers:%s}"

    .line 3
    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.net.JsUpload.UploadFile (io.dcloud.net.JsUpload$UploadFile)
.class Lio/dcloud/net/JsUpload$UploadFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/net/JsUpload$UploadItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/net/JsUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadFile"
.end annotation


# instance fields
.field mFileInputS:Ljava/io/InputStream;

.field mFileSize:J

.field mFilename:Ljava/lang/String;

.field mMimetype:Ljava/lang/String;

.field mRange:Ljava/lang/String;

.field final synthetic this$0:Lio/dcloud/net/JsUpload;


# direct methods
.method constructor <init>(Lio/dcloud/net/JsUpload;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/net/JsUpload$UploadFile;->this$0:Lio/dcloud/net/JsUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.dcloud.net.JsUpload.UploadItem (io.dcloud.net.JsUpload$UploadItem)
.class interface abstract Lio/dcloud/net/JsUpload$UploadItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/net/JsUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "UploadItem"
.end annotation

###### Class io.dcloud.net.JsUpload.UploadString (io.dcloud.net.JsUpload$UploadString)
.class public Lio/dcloud/net/JsUpload$UploadString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/net/JsUpload$UploadItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/net/JsUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadString"
.end annotation


# instance fields
.field mData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/net/JsUpload$UploadString;->mData:Ljava/lang/String;

    return-void
.end method
