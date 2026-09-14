###### Class com.taobao.weex.WXHttpListener (com.taobao.weex.WXHttpListener)
.class public Lcom/taobao/weex/WXHttpListener;
.super Ljava/lang/Object;
.source "WXHttpListener.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;


# instance fields
.field private flag:Lcom/taobao/weex/common/WXRenderStrategy;

.field private instance:Lcom/taobao/weex/WXSDKInstance;

.field private isInstanceReady:Z

.field public isPreDownLoadMode:Z

.field private isResponseHasWait:Z

.field private jsonInitData:Ljava/lang/String;

.field private mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

.field private mBundleUrl:Ljava/lang/String;

.field private mLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

.field private mResponse:Lcom/taobao/weex/common/WXResponse;

.field private mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field private mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pageName:Ljava/lang/String;

.field private startRequestTime:J

.field private traceId:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/taobao/weex/WXHttpListener;->isPreDownLoadMode:Z

    .line 55
    iput-boolean v0, p0, Lcom/taobao/weex/WXHttpListener;->isInstanceReady:Z

    .line 56
    iput-boolean v0, p0, Lcom/taobao/weex/WXHttpListener;->isResponseHasWait:Z

    const-string v0, "downloadBundleJS"

    if-eqz p1, :cond_16

    .line 64
    iget-object v1, p1, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/utils/tools/TimeCalculator;->createLogDetail(Ljava/lang/String;)Lcom/taobao/weex/utils/tools/LogDetail;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    .line 66
    :cond_16
    iput-object p1, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    .line 67
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/WXHttpListener;->traceId:I

    .line 68
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    .line 69
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    .line 70
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 71
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 72
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    const-string p1, "Network"

    .line 74
    iput-object p1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    const-string p1, "B"

    .line 75
    iput-object p1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 76
    iget p1, p0, Lcom/taobao/weex/WXHttpListener;->traceId:I

    iput p1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 77
    invoke-virtual {v0}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    :cond_58
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .registers 5

    .line 82
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXHttpListener;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/WXHttpListener;->startRequestTime:J

    .line 84
    iput-object p2, p0, Lcom/taobao/weex/WXHttpListener;->mBundleUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            "J)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXHttpListener;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 89
    iput-object p2, p0, Lcom/taobao/weex/WXHttpListener;->pageName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/taobao/weex/WXHttpListener;->options:Ljava/util/Map;

    .line 91
    iput-object p4, p0, Lcom/taobao/weex/WXHttpListener;->jsonInitData:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/taobao/weex/WXHttpListener;->flag:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 93
    iput-wide p6, p0, Lcom/taobao/weex/WXHttpListener;->startRequestTime:J

    .line 94
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/WXHttpListener;->mBundleUrl:Ljava/lang/String;

    return-void
.end method

.method private didHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    .registers 8

    const-string v0, "0"

    if-eqz p1, :cond_1f

    .line 249
    iget-object v1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v1, :cond_1f

    iget-object v1, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    const-string v2, "200"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 250
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string v2, "wxEndDownLoadBundle"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXHttpListener;->onSuccess(Lcom/taobao/weex/common/WXResponse;)V

    move-object v1, v0

    goto/16 :goto_be

    .line 254
    :cond_1f
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "|response.errorMsg=="

    if-eqz v1, :cond_70

    const-string v1, "user intercept: WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR"

    .line 256
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 257
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v3, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|instance bundleUrl = \n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    .line 260
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|instance requestUrl = \n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    .line 261
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v3, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXHttpListener;->onFail(Lcom/taobao/weex/common/WXResponse;)V

    goto :goto_be

    :cond_70
    if-eqz p1, :cond_ae

    .line 266
    iget-object v1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v1, :cond_ae

    iget-object v1, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    const-string v3, "-206"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ae

    const-string v1, "user intercept: WX_DEGRAD_ERR_NETWORK_CHECK_CONTENT_LENGTH_FAILED"

    .line 267
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 268
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_CHECK_CONTENT_LENGTH_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 269
    iget-object v3, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_CHECK_CONTENT_LENGTH_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 270
    invoke-virtual {v5}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {v3, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXHttpListener;->onFail(Lcom/taobao/weex/common/WXResponse;)V

    goto :goto_be

    .line 276
    :cond_ae
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_BUNDLE_DOWNLOAD_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXHttpListener;->onFail(Lcom/taobao/weex/common/WXResponse;)V

    .line 281
    :goto_be
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cb

    .line 282
    iget-object p1, p0, Lcom/taobao/weex/WXHttpListener;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string v0, "wxErrorCode"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_cb
    return-void
.end method

.method private isNet(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "network"

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "2g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "3g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "4g"

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "unknown"

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p1, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 p1, 0x1

    :goto_3c
    return p1
.end method


# virtual methods
.method protected getInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public onFail(Lcom/taobao/weex/common/WXResponse;)V
    .registers 2

    return-void
.end method

.method public onHeadersReceived(ILjava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 118
    iget-object p1, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_18

    .line 119
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 120
    iget-object p1, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/IWXStatisticsListener;->onHeadersReceived()V

    .line 121
    iget-object p1, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->onHttpStart()V

    .line 123
    :cond_18
    iget-object p1, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_29

    iget-object p1, p1, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    .line 126
    iget-object p1, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    iget-object p1, p1, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_29
    return-void
.end method

.method public onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    .registers 10

    .line 142
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->mLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_7

    .line 143
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 145
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_1a

    .line 146
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 147
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onHttpFinish()V

    .line 150
    :cond_1a
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 151
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "downloadBundleJS"

    invoke-static {v2, v0, v1}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v0

    .line 152
    iget v1, p0, Lcom/taobao/weex/WXHttpListener;->traceId:I

    iput v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    const-string v1, "Network"

    .line 153
    iput-object v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    const-string v1, "E"

    .line 154
    iput-object v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 155
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->extParams:Ljava/util/Map;

    if-eqz p1, :cond_54

    .line 156
    iget-object v1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v1, :cond_54

    .line 157
    iget-object v1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->extParams:Ljava/util/Map;

    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BundleSize"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_54
    invoke-virtual {v0}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    .line 162
    :cond_57
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/taobao/weex/WXHttpListener;->startRequestTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    if-eqz p1, :cond_1bc

    .line 163
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    if-eqz v0, :cond_1bc

    .line 164
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    iget-object v1, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateRecordInfo(Ljava/util/Map;)V

    .line 165
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string v1, "actualNetworkTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    instance-of v2, v0, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_86

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_87

    :cond_86
    move-wide v5, v3

    :goto_87
    iput-wide v5, v1, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    .line 168
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string v1, "pureNetworkTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_9e

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_9f

    :cond_9e
    move-wide v5, v3

    :goto_9f
    iput-wide v5, v1, Lcom/taobao/weex/common/WXPerformance;->pureNetworkTime:J

    .line 171
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string v1, "connectionType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    instance-of v2, v0, Ljava/lang/String;

    const-string v5, ""

    if-eqz v2, :cond_b4

    check-cast v0, Ljava/lang/String;

    goto :goto_b5

    :cond_b4
    move-object v0, v5

    :goto_b5
    iput-object v0, v1, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string v1, "packageSpendTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_cc

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_cd

    :cond_cc
    move-wide v6, v3

    :goto_cd
    iput-wide v6, v1, Lcom/taobao/weex/common/WXPerformance;->packageSpendTime:J

    .line 177
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string v1, "syncTaskTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_e3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_e3
    iput-wide v3, v1, Lcom/taobao/weex/common/WXPerformance;->syncTaskTime:J

    .line 180
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string v1, "requestType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_f6

    check-cast v0, Ljava/lang/String;

    goto :goto_f8

    :cond_f6
    const-string v0, "none"

    :goto_f8
    iput-object v0, v1, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_110

    .line 185
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/weex/common/WXPerformance;->cacheType:Ljava/lang/String;

    .line 188
    :cond_110
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->extendParams:Ljava/util/Map;

    const-string v1, "zCacheInfo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_121

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    :cond_121
    iput-object v5, v1, Lcom/taobao/weex/common/WXPerformance;->zCacheInfo:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v0, v0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/weex/WXHttpListener;->isNet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    if-eqz v0, :cond_1bc

    .line 192
    new-instance v5, Lcom/taobao/weex/common/WXPerformance;

    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->mBundleUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15d

    .line 195
    :try_start_144
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->mBundleUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_158} :catch_159

    goto :goto_15d

    .line 197
    :catch_159
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->pageName:Ljava/lang/String;

    iput-object v0, v5, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    .line 200
    :cond_15d
    :goto_15d
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17f

    .line 201
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_DOWNLOAD:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    const-string v0, "|"

    .line 203
    invoke-virtual {v5, v0}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    goto :goto_1ab

    .line 206
    :cond_17f
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v0, :cond_190

    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    array-length v0, v0

    if-gtz v0, :cond_1a3

    .line 207
    :cond_190
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_DOWNLOAD:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    const-string v0, "|template is null!"

    .line 209
    invoke-virtual {v5, v0}, Lcom/taobao/weex/common/WXPerformance;->appendErrMsg(Ljava/lang/CharSequence;)V

    goto :goto_1ab

    .line 211
    :cond_1a3
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    .line 214
    :goto_1ab
    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    if-eqz v1, :cond_1bc

    .line 215
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v4, "jsDownload"

    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 220
    :cond_1bc
    iget-boolean v0, p0, Lcom/taobao/weex/WXHttpListener;->isPreDownLoadMode:Z

    if-eqz v0, :cond_1da

    .line 221
    iget-boolean v0, p0, Lcom/taobao/weex/WXHttpListener;->isInstanceReady:Z

    const-string v1, "test->"

    if-eqz v0, :cond_1cf

    const-string v0, "DownLoad didHttpFinish on http"

    .line 222
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXHttpListener;->didHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    goto :goto_1dd

    :cond_1cf
    const-string v0, "DownLoad end before activity created"

    .line 225
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/taobao/weex/WXHttpListener;->mResponse:Lcom/taobao/weex/common/WXResponse;

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/taobao/weex/WXHttpListener;->isResponseHasWait:Z

    goto :goto_1dd

    .line 230
    :cond_1da
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXHttpListener;->didHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    :goto_1dd
    return-void
.end method

.method public onHttpResponseProgress(I)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/performance/WXInstanceApm;->extInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "wxLoadedLength"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onHttpStart()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_1a

    .line 108
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 109
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onHttpStart()V

    .line 110
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->mLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_1a

    .line 111
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    :cond_1a
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .registers 2

    return-void
.end method

.method public onInstanceReady()V
    .registers 3

    .line 236
    iget-boolean v0, p0, Lcom/taobao/weex/WXHttpListener;->isPreDownLoadMode:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/taobao/weex/WXHttpListener;->isInstanceReady:Z

    .line 240
    iget-boolean v0, p0, Lcom/taobao/weex/WXHttpListener;->isResponseHasWait:Z

    if-eqz v0, :cond_18

    const-string v0, "test->"

    const-string v1, "preDownLoad didHttpFinish on ready"

    .line 241
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->mResponse:Lcom/taobao/weex/common/WXResponse;

    invoke-direct {p0, v0}, Lcom/taobao/weex/WXHttpListener;->didHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    :cond_18
    return-void
.end method

.method public onSuccess(Lcom/taobao/weex/common/WXResponse;)V
    .registers 12

    .line 294
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->flag:Lcom/taobao/weex/common/WXRenderStrategy;

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_14

    .line 295
    iget-object v0, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, p0, Lcom/taobao/weex/WXHttpListener;->pageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    iget-object v2, p0, Lcom/taobao/weex/WXHttpListener;->options:Ljava/util/Map;

    iget-object v3, p0, Lcom/taobao/weex/WXHttpListener;->jsonInitData:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)V

    goto :goto_28

    .line 297
    :cond_14
    new-instance v6, Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    .line 298
    iget-object v4, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v5, p0, Lcom/taobao/weex/WXHttpListener;->pageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/taobao/weex/WXHttpListener;->options:Ljava/util/Map;

    iget-object v8, p0, Lcom/taobao/weex/WXHttpListener;->jsonInitData:Ljava/lang/String;

    iget-object v9, p0, Lcom/taobao/weex/WXHttpListener;->flag:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    :goto_28
    return-void
.end method

.method public setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/taobao/weex/WXHttpListener;->instance:Lcom/taobao/weex/WXSDKInstance;

    return-void
.end method
