###### Class com.taobao.weex.common.WXPerformance (com.taobao.weex.common.WXPerformance)
.class public Lcom/taobao/weex/common/WXPerformance;
.super Ljava/lang/Object;
.source "WXPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXPerformance$Measure;,
        Lcom/taobao/weex/common/WXPerformance$Dimension;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CACHE_TYPE:Ljava/lang/String; = "cacheType"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static TRACE_DATA:Z

.field public static final VIEW_LIMIT_HEIGHT:I

.field public static final VIEW_LIMIT_WIDTH:I


# instance fields
.field public JSLibInitTime:J

.field public JSLibSize:D

.field public JSLibVersion:Ljava/lang/String;

.field public JSTemplateSize:D

.field public WXSDKVersion:Ljava/lang/String;

.field public actualNetworkTime:J

.field public args:Ljava/lang/String;

.field public avgFPS:J

.field public backImproveMemory:J

.field public bizType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public cacheType:Ljava/lang/String;

.field public callBridgeTime:J

.field public callCreateFinishTime:J

.field public callCreateInstanceTime:J

.field public cellExceedNum:I

.field public communicateTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public componentCount:J

.field public componentCreateTime:J

.field public connectionType:Ljava/lang/String;

.field public cssLayoutTime:J

.field public errCode:Ljava/lang/String;

.field public errMsg:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public firstScreenJSFExecuteTime:J

.field public fluency:D

.field public fsCallEventTotalNum:I

.field public fsCallJsTotalNum:I

.field public fsCallJsTotalTime:J

.field public fsCallNativeTotalNum:I

.field public fsCallNativeTotalTime:J

.field public fsComponentCount:I

.field public fsComponentCreateTime:I

.field public fsRenderTime:J

.field public fsRequestNum:I

.field public interactionRealUnixTime:J

.field public interactionTime:J

.field public interactionViewAddCount:I

.field public interactionViewAddLimitCount:I

.field public localInteractionViewAddCount:I

.field public localReadTime:D

.field public mActionAddElementCount:I

.field public mActionAddElementSumTime:I

.field private mErrMsgBuilder:Ljava/lang/StringBuilder;

.field private mInstanceId:Ljava/lang/String;

.field public maxDeepVDomLayer:I

.field public maxDeepViewLayer:I

.field public measureTimes:[J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public networkTime:J

.field public newFsRenderTime:J

.field public packageSpendTime:J

.field public pageName:Ljava/lang/String;

.field public parseJsonTime:J

.field public pureNetworkTime:J

.field public renderFailedDetail:Ljava/lang/String;

.field public renderTimeOrigin:J

.field public renderUnixTimeOrigin:J

.field public requestType:Ljava/lang/String;

.field public screenRenderTime:J

.field public syncTaskTime:J

.field public templateLoadTime:J

.field public templateUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timerInvokeCount:I

.field public totalTime:D

.field public useScroller:I

.field public wrongImgSizeCount:D

.field public wxDims:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public zCacheInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 148
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_HEIGHT:I

    .line 149
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_WIDTH:I

    .line 150
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    sput-boolean v0, Lcom/taobao/weex/common/WXPerformance;->TRACE_DATA:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "weex"

    .line 155
    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    const-string v0, "none"

    .line 164
    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->cacheType:Ljava/lang/String;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 217
    iput-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->fluency:D

    const-string v0, "default"

    .line 230
    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    .line 322
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    .line 327
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    const-string v1, ""

    .line 346
    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    const-string v1, "other"

    .line 349
    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    .line 360
    iput-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    new-array v1, v1, [J

    .line 367
    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    .line 375
    iput v0, p0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    .line 376
    iput v0, p0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->mErrMsgBuilder:Ljava/lang/StringBuilder;

    .line 382
    iput-object p1, p0, Lcom/taobao/weex/common/WXPerformance;->mInstanceId:Ljava/lang/String;

    return-void
.end method

.method public static getDimensions()[Ljava/lang/String;
    .registers 5

    .line 493
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 494
    invoke-static {}, Lcom/taobao/weex/common/WXPerformance$Dimension;->values()[Lcom/taobao/weex/common/WXPerformance$Dimension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 495
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 497
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMeasures()[Ljava/lang/String;
    .registers 5

    .line 501
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 502
    invoke-static {}, Lcom/taobao/weex/common/WXPerformance$Measure;->values()[Lcom/taobao/weex/common/WXPerformance$Measure;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 503
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 505
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public afterInstanceDestroy(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public appendErrMsg(Ljava/lang/CharSequence;)V
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->mErrMsgBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public beforeInstanceRender(Ljava/lang/String;)V
    .registers 4

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    .line 563
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->renderUnixTimeOrigin:J

    return-void
.end method

.method public getDimensionMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->zCacheInfo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->cacheType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    const-string v2, "unKnow"

    const-string v3, "wxContainerName"

    if-nez v1, :cond_7e

    move-object v4, v2

    goto :goto_88

    .line 472
    :cond_7e
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_88
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "wxInstanceType"

    if-nez v1, :cond_91

    move-object v4, v2

    goto :goto_9b

    .line 474
    :cond_91
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_9b
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "wxParentPage"

    if-nez v1, :cond_a3

    goto :goto_ae

    .line 476
    :cond_a3
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :goto_ae
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->templateUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .registers 2

    .line 554
    iget-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->mErrMsgBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeasureMap()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 387
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->fsRenderTime:J

    const-wide/16 v2, 0x0

    .line 423
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_13

    .line 388
    iget-wide v2, p0, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_1c

    .line 390
    :cond_13
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_1a

    goto :goto_1c

    :cond_1a
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 396
    :goto_1c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 397
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibSize:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v5, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitInvokeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v5, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v5, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->JSTemplateSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->pureNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->pureNetworkTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->networkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCreateInstanceTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->callCreateInstanceTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallNativeTotalTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallNativeTotalNum:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRequestNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepViewLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->maxDeepViewLayer:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepVDomLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->cellExceedNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->timerCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->avgFps:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->avgFPS:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fluency:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->fluency:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->MaxImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->BackImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->backImproveMemory:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->PushImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallEventTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->callCreateFinishTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->callCreateFinishTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->imgSizeCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->interactionTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddCount:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddLimitCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->newFsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->newFsRenderTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->callBridgeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->callBridgeTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->cssLayoutTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->cssLayoutTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->parseJsonTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->parseJsonTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->screenRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->communicateTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->localReadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->localReadTime:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->templateLoadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->templateLoadTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->firstScreenJSFExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->actualNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->syncTaskTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->syncTaskTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->packageSpendTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->packageSpendTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime1:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime2:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime3:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x2

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime4:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x3

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime5:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x4

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public getPerfData()Ljava/lang/String;
    .registers 4

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " actualNetworkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " connectionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " firstScreenRenderTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " firstScreenJSFExecuteTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " componentCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " JSTemplateSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " SDKInitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " JSLibVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WXSDKVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " useScroller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 510
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bizType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",templateLoadTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->templateLoadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",localReadTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->localReadTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",JSLibInitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",JSLibSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",templateUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",JSTemplateSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",communicateTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->communicateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",screenRenderTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",firstScreenJSFExecuteTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",componentCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",syncTaskTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->syncTaskTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",pureNetworkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->pureNetworkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",networkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",actualNetworkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",packageSpendTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->packageSpendTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",connectionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",requestType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",initInvokeTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",initExecuteTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",SDKInitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",totalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",JSLibVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",WXSDKVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",errCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",renderFailedDetail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->renderFailedDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",arg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",errMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXPerformance;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 532
    :cond_134
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.taobao.weex.common.WXPerformance.Dimension (com.taobao.weex.common.WXPerformance$Dimension)
.class public final enum Lcom/taobao/weex/common/WXPerformance$Dimension;
.super Ljava/lang/Enum;
.source "WXPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/common/WXPerformance$Dimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum scheme:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum spm:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxContainerName:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxInstanceType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxParentPage:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 40
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "JSLibVersion"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 41
    new-instance v1, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v3, "WXSDKVersion"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 42
    new-instance v3, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v5, "pageName"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/common/WXPerformance$Dimension;->pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 43
    new-instance v5, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v7, "spm"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/taobao/weex/common/WXPerformance$Dimension;->spm:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 44
    new-instance v7, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v9, "scheme"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/taobao/weex/common/WXPerformance$Dimension;->scheme:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 45
    new-instance v9, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v11, "cacheType"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 46
    new-instance v11, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v13, "requestType"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/taobao/weex/common/WXPerformance$Dimension;->requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 47
    new-instance v13, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v15, "networkType"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/taobao/weex/common/WXPerformance$Dimension;->networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 48
    new-instance v15, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v14, "connectionType"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/taobao/weex/common/WXPerformance$Dimension;->connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 49
    new-instance v14, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v12, "zcacheInfo"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/taobao/weex/common/WXPerformance$Dimension;->zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 50
    new-instance v12, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v10, "wxContainerName"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxContainerName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 51
    new-instance v10, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v8, "wxInstanceType"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxInstanceType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 52
    new-instance v8, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v6, "wxParentPage"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxParentPage:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 53
    new-instance v6, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v4, "wxdim1"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 54
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v2, "wxdim2"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 55
    new-instance v2, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v6, "wxdim3"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 56
    new-instance v6, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v4, "wxdim4"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 57
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v2, "wxdim5"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 58
    new-instance v2, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v6, "bizType"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 59
    new-instance v6, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v4, "templateUrl"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/taobao/weex/common/WXPerformance$Dimension;->templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 60
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v2, "useScroller"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Dimension;->useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    .line 38
    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Dimension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXPerformance$Dimension;
    .registers 2

    .line 38
    const-class v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/common/WXPerformance$Dimension;
    .registers 1

    .line 38
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXPerformance$Dimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXPerformance$Dimension;

    return-object v0
.end method

###### Class com.taobao.weex.common.WXPerformance.Measure (com.taobao.weex.common.WXPerformance$Measure)
.class public final enum Lcom/taobao/weex/common/WXPerformance$Measure;
.super Ljava/lang/Enum;
.source "WXPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Measure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/common/WXPerformance$Measure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum BackImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum JSLibInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum JSLibSize:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum JSTemplateSize:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum MaxImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum PushImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum SDKInitExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum SDKInitInvokeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum SDKInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum actualNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum avgFps:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum callBridgeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum callCreateFinishTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum cellExceedNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum communicateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum communicateTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum componentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum componentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum cssLayoutTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum firstScreenJSFExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fluency:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallEventTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallJsTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallJsTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallNativeTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallNativeTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsComponentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsComponentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCreateInstanceTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsRequestNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum imgSizeCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum interactionTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum interactionViewAddCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum interactionViewAddLimitCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum localReadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum maxDeepVDomLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum maxDeepViewLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime1:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime2:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime3:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime4:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime5:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum networkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum newFsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum packageSpendTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum parseJsonTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum pureNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum screenRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum syncTaskTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum templateLoadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum timerCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum totalTime:Lcom/taobao/weex/common/WXPerformance$Measure;


# instance fields
.field private mMaxRange:D

.field private mMinRange:D


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 67
    new-instance v7, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v1, "JSLibSize"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v7, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 69
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "JSLibInitTime"

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const-wide v13, 0x40f3880000000000L    # 80000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 70
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "SDKInitTime"

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const-wide v6, 0x40fd4c0000000000L    # 120000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 71
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "SDKInitInvokeTime"

    const/4 v10, 0x3

    const-wide v13, 0x40b3880000000000L    # 5000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitInvokeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 72
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "SDKInitExecuteTime"

    const/4 v3, 0x4

    const-wide v6, 0x40b3880000000000L    # 5000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 73
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "JSTemplateSize"

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->JSTemplateSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 74
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "pureNetworkTime"

    const/4 v3, 0x6

    const-wide v6, 0x40cd4c0000000000L    # 15000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->pureNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 75
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "networkTime"

    const/4 v10, 0x7

    const-wide v13, 0x40cd4c0000000000L    # 15000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->networkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 76
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "fsCreateInstanceTime"

    const/16 v3, 0x8

    const-wide v6, 0x40a7700000000000L    # 3000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCreateInstanceTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 77
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "fsCallJsTotalTime"

    const/16 v10, 0x9

    const-wide v13, 0x40b3880000000000L    # 5000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 78
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "fsCallJsTotalNum"

    const/16 v3, 0xa

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 79
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "fsCallNativeTotalTime"

    const/16 v10, 0xb

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 80
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "fsCallNativeTotalNum"

    const/16 v3, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 81
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "fsCallEventTotalNum"

    const/16 v10, 0xd

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallEventTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 82
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "fsComponentCount"

    const/16 v3, 0xe

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 83
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "fsComponentCreateTime"

    const/16 v10, 0xf

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 84
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "fsRenderTime"

    const/16 v3, 0x10

    const-wide v6, 0x40b3880000000000L    # 5000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 85
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "fsRequestNum"

    const/16 v10, 0x11

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRequestNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 86
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "callCreateFinishTime"

    const/16 v3, 0x12

    const-wide v6, 0x40c3880000000000L    # 10000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->callCreateFinishTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 87
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "cellExceedNum"

    const/16 v10, 0x13

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->cellExceedNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 88
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "communicateTotalTime"

    const/16 v3, 0x14

    const-wide v6, 0x40b3880000000000L    # 5000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 89
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "maxDeepViewLayer"

    const/16 v10, 0x15

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepViewLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 90
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "maxDeepVDomLayer"

    const/16 v3, 0x16

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepVDomLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 91
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "componentCount"

    const/16 v10, 0x17

    const-wide v13, 0x412e848000000000L    # 1000000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 92
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "componentCreateTime"

    const/16 v3, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 93
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "avgFps"

    const/16 v10, 0x19

    const-wide v13, 0x404e800000000000L    # 61.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->avgFps:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 94
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "timerCount"

    const/16 v3, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->timerCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 96
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "MaxImproveMemory"

    const/16 v10, 0x1b

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->MaxImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 97
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "BackImproveMemory"

    const/16 v3, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->BackImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 98
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "PushImproveMemory"

    const/16 v10, 0x1d

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->PushImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 99
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "measureTime1"

    const/16 v3, 0x1e

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime1:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 100
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "measureTime2"

    const/16 v10, 0x1f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime2:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 101
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "measureTime3"

    const/16 v3, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime3:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 102
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "measureTime4"

    const/16 v10, 0x21

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime4:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 103
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "measureTime5"

    const/16 v3, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime5:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 105
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "callBridgeTime"

    const/16 v10, 0x23

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->callBridgeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 106
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "cssLayoutTime"

    const/16 v3, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->cssLayoutTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 107
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "parseJsonTime"

    const/16 v10, 0x25

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->parseJsonTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 109
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "communicateTime"

    const/16 v3, 0x26

    const-wide v6, 0x40b3880000000000L    # 5000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 110
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "screenRenderTime"

    const/16 v10, 0x27

    const-wide v13, 0x40b3880000000000L    # 5000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->screenRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 111
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "totalTime"

    const/16 v3, 0x28

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->totalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 112
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "localReadTime"

    const/16 v10, 0x29

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->localReadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 113
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "templateLoadTime"

    const/16 v3, 0x2a

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->templateLoadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 114
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "packageSpendTime"

    const/16 v10, 0x2b

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->packageSpendTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 115
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "syncTaskTime"

    const/16 v3, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->syncTaskTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 116
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "actualNetworkTime"

    const/16 v10, 0x2d

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->actualNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 117
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "firstScreenJSFExecuteTime"

    const/16 v3, 0x2e

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->firstScreenJSFExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 120
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "fluency"

    const/16 v10, 0x2f

    const-wide v13, 0x4059400000000000L    # 101.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fluency:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 121
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "imgSizeCount"

    const/16 v3, 0x30

    const-wide v6, 0x409f400000000000L    # 2000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->imgSizeCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 122
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "interactionTime"

    const/16 v10, 0x31

    const-wide v13, 0x40c3880000000000L    # 10000.0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 123
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "interactionViewAddCount"

    const/16 v3, 0x32

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 124
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v9, "interactionViewAddLimitCount"

    const/16 v10, 0x33

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddLimitCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 125
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-string v2, "newFsRenderTime"

    const/16 v3, 0x34

    const-wide v6, 0x40c3880000000000L    # 10000.0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->newFsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v0, 0x35

    new-array v0, v0, [Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 63
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitInvokeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->JSTemplateSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->pureNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->networkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCreateInstanceTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallEventTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRequestNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->callCreateFinishTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->cellExceedNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepViewLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepVDomLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->avgFps:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->timerCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->MaxImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->BackImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->PushImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime1:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime2:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime3:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime4:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime5:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->callBridgeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->cssLayoutTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->parseJsonTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->screenRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->totalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->localReadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->templateLoadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->packageSpendTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->syncTaskTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->actualNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->firstScreenJSFExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fluency:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->imgSizeCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddLimitCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->newFsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Measure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDD)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput-wide p3, p0, Lcom/taobao/weex/common/WXPerformance$Measure;->mMinRange:D

    .line 131
    iput-wide p5, p0, Lcom/taobao/weex/common/WXPerformance$Measure;->mMaxRange:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXPerformance$Measure;
    .registers 2

    .line 63
    const-class v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/common/WXPerformance$Measure;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/common/WXPerformance$Measure;
    .registers 1

    .line 63
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXPerformance$Measure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXPerformance$Measure;

    return-object v0
.end method


# virtual methods
.method public getMaxRange()D
    .registers 3

    .line 139
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance$Measure;->mMaxRange:D

    return-wide v0
.end method

.method public getMinRange()D
    .registers 3

    .line 135
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance$Measure;->mMinRange:D

    return-wide v0
.end method
