###### Class io.dcloud.net.XMLHttpRequest (io.dcloud.net.XMLHttpRequest)
.class public Lio/dcloud/net/XMLHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReqListener;
.implements Lio/dcloud/common/DHInterface/IResponseListener;


# static fields
.field private static final ERROR_OTHER_CODE:I = 0x1

.field private static final ERROR_TIME_OUT_CODE:I = 0x0

.field private static final LOADED:I = 0x4

.field private static final RECEIVING:I = 0x3


# instance fields
.field private mCallbackId:Ljava/lang/String;

.field private mErrorCode:I

.field private mNetWork:Lio/dcloud/common/util/net/NetWork;

.field private mReadyState:I

.field private mRequestData:Lio/dcloud/common/util/net/RequestData;

.field private mState:I

.field private mStatusText:Ljava/lang/String;

.field public mUUID:Ljava/lang/String;

.field mWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/dcloud/net/XMLHttpRequest;->mErrorCode:I

    .line 13
    iput-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mUUID:Ljava/lang/String;

    .line 14
    new-instance p1, Lio/dcloud/common/util/net/RequestData;

    invoke-direct {p1, p2, p3}, Lio/dcloud/common/util/net/RequestData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    .line 15
    invoke-interface {p4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    const-string p3, "untrustedca"

    invoke-interface {p2, p3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lio/dcloud/common/util/net/RequestData;->unTrustedCAType:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    const-string p2, "User-Agent"

    invoke-interface {p4, p2}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/dcloud/common/util/net/RequestData;->addHeader(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    new-instance p1, Lio/dcloud/common/util/net/NetWork;

    iget-object p2, p0, Lio/dcloud/net/XMLHttpRequest;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    const/4 p3, 0x3

    invoke-direct {p1, p3, p2, p0, p0}, Lio/dcloud/common/util/net/NetWork;-><init>(ILio/dcloud/common/util/net/RequestData;Lio/dcloud/common/DHInterface/IReqListener;Lio/dcloud/common/DHInterface/IResponseListener;)V

    iput-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mNetWork:Lio/dcloud/common/util/net/NetWork;

    .line 22
    iput-object p4, p0, Lio/dcloud/net/XMLHttpRequest;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method private headersToJSON(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    :try_start_1f
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_d

    :catch_23
    move-exception v2

    .line 10
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    :cond_28
    return-object v0
.end method

.method private toJsResponseText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getNetWork()Lio/dcloud/common/util/net/NetWork;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/net/XMLHttpRequest;->mNetWork:Lio/dcloud/common/util/net/NetWork;

    return-object v0
.end method

.method public getRequestData()Lio/dcloud/common/util/net/RequestData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/net/XMLHttpRequest;->mRequestData:Lio/dcloud/common/util/net/RequestData;

    return-object v0
.end method

.method public onNetStateChanged(Lio/dcloud/common/DHInterface/IReqListener$NetState;Z)V
    .registers 6

    const/4 v0, 0x4

    if-eqz p2, :cond_6

    .line 1
    iput v0, p0, Lio/dcloud/net/XMLHttpRequest;->mReadyState:I

    return-void

    .line 4
    :cond_6
    sget-object p2, Lio/dcloud/net/XMLHttpRequest$1;->$SwitchMap$io$dcloud$common$DHInterface$IReqListener$NetState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4f

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_3f

    if-eq p1, v2, :cond_2d

    if-eq p1, v0, :cond_1a

    goto :goto_5e

    .line 19
    :cond_1a
    iput v0, p0, Lio/dcloud/net/XMLHttpRequest;->mReadyState:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lio/dcloud/net/XMLHttpRequest;->mErrorCode:I

    .line 21
    iget-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/net/XMLHttpRequest;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0}, Lio/dcloud/net/XMLHttpRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, v0, v1, v2, p2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_5e

    .line 22
    :cond_2d
    iput v0, p0, Lio/dcloud/net/XMLHttpRequest;->mReadyState:I

    .line 23
    iput p2, p0, Lio/dcloud/net/XMLHttpRequest;->mErrorCode:I

    .line 24
    iget-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/net/XMLHttpRequest;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0}, Lio/dcloud/net/XMLHttpRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, v0, v1, v2, p2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_5e

    .line 25
    :cond_3f
    iput v2, p0, Lio/dcloud/net/XMLHttpRequest;->mReadyState:I

    .line 26
    iget-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/net/XMLHttpRequest;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0}, Lio/dcloud/net/XMLHttpRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, v0, v1, v2, p2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_5e

    .line 27
    :cond_4f
    iput v0, p0, Lio/dcloud/net/XMLHttpRequest;->mReadyState:I

    .line 28
    iget-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/net/XMLHttpRequest;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p0}, Lio/dcloud/net/XMLHttpRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, v0, v1, v2, p2}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    :goto_5e
    return-void
.end method

.method public onReceiving(Ljava/io/InputStream;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onResponseState(ILjava/lang/String;)V
    .registers 4

    .line 1
    iput p1, p0, Lio/dcloud/net/XMLHttpRequest;->mState:I

    .line 2
    iput-object p2, p0, Lio/dcloud/net/XMLHttpRequest;->mStatusText:Ljava/lang/String;

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResponseState pState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";mCallbackId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mCallbackId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "xhr"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponsing(Ljava/io/InputStream;)V
    .registers 2

    return-void
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/net/XMLHttpRequest;->mCallbackId:Ljava/lang/String;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/net/XMLHttpRequest;->mNetWork:Lio/dcloud/common/util/net/NetWork;

    invoke-virtual {v1}, Lio/dcloud/common/util/net/NetWork;->getResponseText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "readyState"

    .line 4
    :try_start_d
    iget v3, p0, Lio/dcloud/net/XMLHttpRequest;->mReadyState:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_12} :catch_3f

    const-string v2, "status"

    .line 5
    :try_start_14
    iget v3, p0, Lio/dcloud/net/XMLHttpRequest;->mState:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_3f

    const-string v2, "statusText"

    .line 6
    :try_start_1b
    iget-object v3, p0, Lio/dcloud/net/XMLHttpRequest;->mStatusText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "responseText"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lio/dcloud/net/XMLHttpRequest;->mNetWork:Lio/dcloud/common/util/net/NetWork;

    invoke-virtual {v1}, Lio/dcloud/common/util/net/NetWork;->getHeadersAndValues()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/dcloud/net/XMLHttpRequest;->headersToJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "header"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget v1, p0, Lio/dcloud/net/XMLHttpRequest;->mErrorCode:I
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_36} :catch_3f

    const/4 v2, -0x1

    if-le v1, v2, :cond_43

    const-string v2, "error"

    .line 12
    :try_start_3b
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v1

    .line 16
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_43
    :goto_43
    return-object v0
.end method

###### Class io.dcloud.net.XMLHttpRequest.AnonymousClass1 (io.dcloud.net.XMLHttpRequest$1)
.class synthetic Lio/dcloud/net/XMLHttpRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/net/XMLHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$common$DHInterface$IReqListener$NetState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/DHInterface/IReqListener$NetState;->values()[Lio/dcloud/common/DHInterface/IReqListener$NetState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/net/XMLHttpRequest$1;->$SwitchMap$io$dcloud$common$DHInterface$IReqListener$NetState:[I

    :try_start_9
    sget-object v1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_END:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/net/XMLHttpRequest$1;->$SwitchMap$io$dcloud$common$DHInterface$IReqListener$NetState:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_HANDLE_ING:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/net/XMLHttpRequest$1;->$SwitchMap$io$dcloud$common$DHInterface$IReqListener$NetState:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_ERROR:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/net/XMLHttpRequest$1;->$SwitchMap$io$dcloud$common$DHInterface$IReqListener$NetState:[I

    sget-object v1, Lio/dcloud/common/DHInterface/IReqListener$NetState;->NET_TIMEOUT:Lio/dcloud/common/DHInterface/IReqListener$NetState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
