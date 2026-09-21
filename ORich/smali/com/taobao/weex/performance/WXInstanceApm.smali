###### Class com.taobao.weex.performance.WXInstanceApm (com.taobao.weex.performance.WXInstanceApm)
.class public Lcom/taobao/weex/performance/WXInstanceApm;
.super Ljava/lang/Object;
.source "WXInstanceApm.java"


# static fields
.field public static final KEY_PAGE_ANIM_BACK_NUM:Ljava/lang/String; = "wxAnimationInBackCount"

.field public static final KEY_PAGE_PROPERTIES_BIZ_ID:Ljava/lang/String; = "wxBizID"

.field public static final KEY_PAGE_PROPERTIES_BUBDLE_URL:Ljava/lang/String; = "wxBundleUrl"

.field public static final KEY_PAGE_PROPERTIES_BUNDLE_TYPE:Ljava/lang/String; = "wxBundleType"

.field public static final KEY_PAGE_PROPERTIES_CACHE_INFO:Ljava/lang/String; = "wxZCacheInfo"

.field public static final KEY_PAGE_PROPERTIES_CACHE_TYPE:Ljava/lang/String; = "wxCacheType"

.field public static final KEY_PAGE_PROPERTIES_CONTAINER_NAME:Ljava/lang/String; = "wxContainerName"

.field public static final KEY_PAGE_PROPERTIES_INSTANCE_TYPE:Ljava/lang/String; = "wxInstanceType"

.field public static final KEY_PAGE_PROPERTIES_JSLIB_VERSION:Ljava/lang/String; = "wxJSLibVersion"

.field public static final KEY_PAGE_PROPERTIES_JS_FM_INI:Ljava/lang/String; = "wxJsFrameworkInit"

.field public static final KEY_PAGE_PROPERTIES_PARENT_PAGE:Ljava/lang/String; = "wxParentPage"

.field public static final KEY_PAGE_PROPERTIES_RENDER_TYPE:Ljava/lang/String; = "wxRenderType"

.field public static final KEY_PAGE_PROPERTIES_REQUEST_TYPE:Ljava/lang/String; = "wxRequestType"

.field public static final KEY_PAGE_PROPERTIES_UIKIT_TYPE:Ljava/lang/String; = "wxUIKitType"

.field public static final KEY_PAGE_PROPERTIES_WEEX_VERSION:Ljava/lang/String; = "wxSDKVersion"

.field public static final KEY_PAGE_STAGES_CONTAINER_READY:Ljava/lang/String; = "wxContainerReady"

.field public static final KEY_PAGE_STAGES_CREATE_FINISH:Ljava/lang/String; = "wxJSBundleCreateFinish"

.field public static final KEY_PAGE_STAGES_CUSTOM_PREPROCESS_END:Ljava/lang/String; = "wxCustomPreprocessEnd"

.field public static final KEY_PAGE_STAGES_CUSTOM_PREPROCESS_START:Ljava/lang/String; = "wxCustomPreprocessStart"

.field public static final KEY_PAGE_STAGES_DESTROY:Ljava/lang/String; = "wxDestroy"

.field public static final KEY_PAGE_STAGES_DOWN_BUNDLE_END:Ljava/lang/String; = "wxEndDownLoadBundle"

.field public static final KEY_PAGE_STAGES_DOWN_BUNDLE_START:Ljava/lang/String; = "wxStartDownLoadBundle"

.field public static final KEY_PAGE_STAGES_END_EXCUTE_BUNDLE:Ljava/lang/String; = "wxEndExecuteBundle"

.field public static final KEY_PAGE_STAGES_FIRST_INTERACTION_VIEW:Ljava/lang/String; = "wxFirstInteractionView"

.field public static final KEY_PAGE_STAGES_FSRENDER:Ljava/lang/String; = "wxFsRender"

.field public static final KEY_PAGE_STAGES_INTERACTION:Ljava/lang/String; = "wxInteraction"

.field public static final KEY_PAGE_STAGES_LOAD_BUNDLE_END:Ljava/lang/String; = "wxEndLoadBundle"

.field public static final KEY_PAGE_STAGES_LOAD_BUNDLE_START:Ljava/lang/String; = "wxStartLoadBundle"

.field public static final KEY_PAGE_STAGES_NEW_FSRENDER:Ljava/lang/String; = "wxNewFsRender"

.field public static final KEY_PAGE_STAGES_RENDER_ORGIGIN:Ljava/lang/String; = "wxRenderTimeOrigin"

.field public static final KEY_PAGE_STATS_ACTUAL_DOWNLOAD_TIME:Ljava/lang/String; = "wxActualNetworkTime"

.field public static final KEY_PAGE_STATS_BODY_RATIO:Ljava/lang/String; = "wxBodyRatio"

.field public static final KEY_PAGE_STATS_BUNDLE_SIZE:Ljava/lang/String; = "wxBundleSize"

.field public static final KEY_PAGE_STATS_CELL_DATA_UN_RECYCLE_NUM:Ljava/lang/String; = "wxCellDataUnRecycleCount"

.field public static final KEY_PAGE_STATS_CELL_EXCEED_NUM:Ljava/lang/String; = "wxCellExceedNum"

.field public static final KEY_PAGE_STATS_CELL_UN_RE_USE_NUM:Ljava/lang/String; = "wxCellUnReUseCount"

.field public static final KEY_PAGE_STATS_COMPONENT_CREATE_COST:Ljava/lang/String; = "wxComponentCost"

.field public static final KEY_PAGE_STATS_EMBED_COUNT:Ljava/lang/String; = "wxEmbedCount"

.field public static final KEY_PAGE_STATS_EXECUTE_JS_CALLBACK_COST:Ljava/lang/String; = "wxExecJsCallBack"

.field public static final KEY_PAGE_STATS_FS_CALL_EVENT_NUM:Ljava/lang/String; = "wxFSCallEventTotalNum"

.field public static final KEY_PAGE_STATS_FS_CALL_JS_NUM:Ljava/lang/String; = "wxFSCallJsTotalNum"

.field public static final KEY_PAGE_STATS_FS_CALL_JS_TIME:Ljava/lang/String; = "wxFSCallJsTotalTime"

.field public static final KEY_PAGE_STATS_FS_CALL_NATIVE_NUM:Ljava/lang/String; = "wxFSCallNativeTotalNum"

.field public static final KEY_PAGE_STATS_FS_CALL_NATIVE_TIME:Ljava/lang/String; = "wxFSCallNativeTotalTime"

.field public static final KEY_PAGE_STATS_FS_REQUEST_NUM:Ljava/lang/String; = "wxFSRequestNum"

.field public static final KEY_PAGE_STATS_FS_TIMER_NUM:Ljava/lang/String; = "wxFSTimerCount"

.field public static final KEY_PAGE_STATS_IMG_LOAD_FAIL_NUM:Ljava/lang/String; = "wxImgLoadFailCount"

.field public static final KEY_PAGE_STATS_IMG_LOAD_NUM:Ljava/lang/String; = "wxImgLoadCount"

.field public static final KEY_PAGE_STATS_IMG_LOAD_SUCCESS_NUM:Ljava/lang/String; = "wxImgLoadSuccessCount"

.field public static final KEY_PAGE_STATS_IMG_UN_RECYCLE_NUM:Ljava/lang/String; = "wxImgUnRecycleCount"

.field public static final KEY_PAGE_STATS_I_ALL_VIEW_COUNT:Ljava/lang/String; = "wxInteractionAllViewCount"

.field public static final KEY_PAGE_STATS_I_COMPONENT_CREATE_COUNT:Ljava/lang/String; = "wxInteractionComponentCreateCount"

.field public static final KEY_PAGE_STATS_I_SCREEN_VIEW_COUNT:Ljava/lang/String; = "wxInteractionScreenViewCount"

.field public static final KEY_PAGE_STATS_JSLIB_INIT_TIME:Ljava/lang/String; = "wxJSLibInitTime"

.field public static final KEY_PAGE_STATS_LARGE_IMG_COUNT:Ljava/lang/String; = "wxLargeImgMaxCount"

.field public static final KEY_PAGE_STATS_LAYOUT_TIME:Ljava/lang/String; = "wxLayoutTime"

.field public static final KEY_PAGE_STATS_MAX_COMPONENT_NUM:Ljava/lang/String; = "wxMaxComponentCount"

.field public static final KEY_PAGE_STATS_MAX_DEEP_DOM:Ljava/lang/String; = "wxMaxDeepVDomLayer"

.field public static final KEY_PAGE_STATS_MAX_DEEP_VIEW:Ljava/lang/String; = "wxMaxDeepViewLayer"

.field public static final KEY_PAGE_STATS_NET_FAIL_NUM:Ljava/lang/String; = "wxNetworkRequestFailCount"

.field public static final KEY_PAGE_STATS_NET_NUM:Ljava/lang/String; = "wxNetworkRequestCount"

.field public static final KEY_PAGE_STATS_NET_SUCCESS_NUM:Ljava/lang/String; = "wxNetworkRequestSuccessCount"

.field public static final KEY_PAGE_STATS_SCROLLER_NUM:Ljava/lang/String; = "wxScrollerCount"

.field public static final KEY_PAGE_STATS_VIEW_CREATE_COST:Ljava/lang/String; = "wxViewCost"

.field public static final KEY_PAGE_STATS_WRONG_IMG_SIZE_COUNT:Ljava/lang/String; = "wxWrongImgSizeCount"

.field public static final KEY_PAGE_TIMER_BACK_NUM:Ljava/lang/String; = "wxTimerInBackCount"

.field public static final KEY_PROPERTIES_ERROR_CODE:Ljava/lang/String; = "wxErrorCode"

.field public static final VALUE_BUNDLE_LOAD_LENGTH:Ljava/lang/String; = "wxLoadedLength"

.field public static final VALUE_ERROR_CODE_DEFAULT:Ljava/lang/String; = "0"

.field public static final WEEX_PAGE_TOPIC:Ljava/lang/String; = "weex_page"


# instance fields
.field private apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

.field public componentCreateTime:J

.field private delayCollectDataTask:Ljava/lang/Runnable;

.field public exceptionRecord:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final extInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public forceStopRecordInteraction:Z

.field public hasAddView:Z

.field private hasRecordFistInteractionView:Z

.field public hasReportLayerOverDraw:Z

.field private hasSendInteractionToJS:Z

.field public instanceRect:Landroid/graphics/Rect;

.field private interactionComponentCreateTime:J

.field private interactionJsCallBackTime:J

.field private interactionLayoutTime:D

.field private interactionViewCreateTime:J

.field private isFSEnd:Z

.field public volatile isReady:Z

.field private jsPerformanceCallBack:Ljava/lang/Runnable;

.field private mEnd:Z

.field private mHasInit:Z

.field private mHasRecordDetailData:Z

.field private mInstanceId:Ljava/lang/String;

.field private mPropertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;

.field private preUpdateTime:J

.field private recordStatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public reportPageName:Ljava/lang/String;

.field public final stageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public viewCreateTime:J

.field private wxExecJsCallBackTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mHasInit:Z

    .line 139
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mEnd:Z

    .line 140
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->hasRecordFistInteractionView:Z

    .line 142
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->forceStopRecordInteraction:Z

    .line 145
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->hasReportLayerOverDraw:Z

    .line 149
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->exceptionRecord:Ljava/util/Set;

    .line 161
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mHasRecordDetailData:Z

    .line 166
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->hasSendInteractionToJS:Z

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    .line 251
    new-instance v0, Lcom/taobao/weex/performance/WXInstanceApm$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/performance/WXInstanceApm$1;-><init>(Lcom/taobao/weex/performance/WXInstanceApm;)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->jsPerformanceCallBack:Ljava/lang/Runnable;

    .line 407
    new-instance v0, Lcom/taobao/weex/performance/WXInstanceApm$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/performance/WXInstanceApm$2;-><init>(Lcom/taobao/weex/performance/WXInstanceApm;)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->delayCollectDataTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 509
    iput-wide v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->preUpdateTime:J

    .line 170
    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    .line 171
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->extInfo:Ljava/util/Map;

    .line 172
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    .line 173
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mUIHandler:Landroid/os/Handler;

    .line 174
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->recordStatsMap:Ljava/util/Map;

    .line 175
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mPropertiesMap:Ljava/util/Map;

    .line 176
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getApmGenerater()Lcom/taobao/weex/performance/IApmGenerator;

    move-result-object p1

    if-eqz p1, :cond_69

    const-string v0, "weex_page"

    .line 178
    invoke-interface {p1, v0}, Lcom/taobao/weex/performance/IApmGenerator;->generateApmInstance(Ljava/lang/String;)Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    :cond_69
    return-void
.end method

.method private addPropeyFromExtParms(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 591
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 592
    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_b

    .line 593
    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private printLog()V
    .registers 11

    .line 416
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    const-string v1, "wxStartDownLoadBundle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 417
    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    const-string v2, "wxEndDownLoadBundle"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 418
    iget-object v2, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    const-string v3, "wxInteraction"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 419
    iget-object v3, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    const-string v4, "wxContainerReady"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const-string v4, "test->"

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_4b

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downLoadTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    if-eqz v1, :cond_6c

    if-eqz v2, :cond_6c

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renderTime: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    if-eqz v3, :cond_8d

    if-eqz v2, :cond_8d

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    return-void
.end method

.method private sendProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 275
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-eqz v0, :cond_b

    .line 276
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    const-string v1, "properties"

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_10

    return-void

    .line 282
    :cond_10
    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/performance/IWXApmMonitorAdapter;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private sendStageInfo(Ljava/lang/String;J)V
    .registers 8

    .line 236
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-eqz v0, :cond_f

    .line 237
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "stage"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    const-string v0, "wxRenderTimeOrigin"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 241
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->jsPerformanceCallBack:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :cond_20
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_25

    return-void

    .line 248
    :cond_25
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/performance/IWXApmMonitorAdapter;->onStage(Ljava/lang/String;J)V

    return-void
.end method

.method private sendStats(Ljava/lang/String;D)V
    .registers 7

    .line 302
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-eqz v0, :cond_f

    .line 303
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "stats"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    :cond_f
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_14

    return-void

    .line 309
    :cond_14
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/performance/IWXApmMonitorAdapter;->addStats(Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public actionLoadImg()V
    .registers 4

    const-string v0, "wxImgLoadCount"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 617
    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    return-void
.end method

.method public actionLoadImgResult(ZLjava/lang/String;)V
    .registers 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_a

    const-string p1, "wxImgLoadSuccessCount"

    .line 622
    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    goto :goto_f

    :cond_a
    const-string p1, "wxImgLoadFailCount"

    .line 624
    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    :goto_f
    return-void
.end method

.method public actionNetRequest()V
    .registers 4

    .line 600
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->isFSEnd:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_b

    const-string v0, "wxFSRequestNum"

    .line 601
    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    :cond_b
    const-string v0, "wxNetworkRequestCount"

    .line 603
    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    return-void
.end method

.method public actionNetResult(ZLjava/lang/String;)V
    .registers 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_a

    const-string p1, "wxNetworkRequestSuccessCount"

    .line 608
    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    goto :goto_f

    :cond_a
    const-string p1, "wxNetworkRequestFailCount"

    .line 610
    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    :goto_f
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 262
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mEnd:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_16

    if-nez p2, :cond_a

    goto :goto_16

    .line 268
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    if-eqz v0, :cond_16

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/performance/WXInstanceApm;->sendProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public addStats(Ljava/lang/String;D)V
    .registers 6

    .line 289
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mEnd:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    .line 295
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->recordStatsMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    if-eqz v0, :cond_18

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->sendStats(Ljava/lang/String;D)V

    :cond_18
    return-void
.end method

.method public arriveFSRenderTime()V
    .registers 2

    .line 440
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->isFSEnd:Z

    const-string v0, "wxFsRender"

    .line 444
    invoke-virtual {p0, v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    return-void
.end method

.method public arriveInteraction(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 11

    .line 448
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-eqz v0, :cond_f6

    if-eqz p1, :cond_f6

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_f6

    .line 452
    :cond_e
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-eqz v0, :cond_15

    .line 453
    invoke-static {p1}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferInteractionInfo(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 457
    :cond_15
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_1a

    return-void

    .line 461
    :cond_1a
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    if-nez v0, :cond_25

    return-void

    .line 466
    :cond_25
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v1

    .line 468
    invoke-static {}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isInteractionLogOpen()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[client][wxinteraction]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "wxInteractionAnalyzer"

    .line 469
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_77
    iget-boolean p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->hasRecordFistInteractionView:Z

    if-nez p1, :cond_83

    const-string p1, "wxFirstInteractionView"

    .line 479
    invoke-virtual {p0, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 480
    iput-boolean p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->hasRecordFistInteractionView:Z

    .line 482
    :cond_83
    iget-boolean p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->forceStopRecordInteraction:Z

    if-eqz p1, :cond_88

    return-void

    .line 485
    :cond_88
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v3

    .line 486
    iget-wide v5, p0, Lcom/taobao/weex/performance/WXInstanceApm;->preUpdateTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x32

    cmp-long p1, v5, v7

    if-lez p1, :cond_a1

    .line 488
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object v5, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->onInteractionTimeUpdate(Ljava/lang/String;)V

    .line 489
    iput-wide v3, p0, Lcom/taobao/weex/performance/WXInstanceApm;->preUpdateTime:J

    .line 492
    :cond_a1
    iget-wide v3, p0, Lcom/taobao/weex/performance/WXInstanceApm;->componentCreateTime:J

    iput-wide v3, p0, Lcom/taobao/weex/performance/WXInstanceApm;->interactionComponentCreateTime:J

    .line 493
    iget-wide v3, p0, Lcom/taobao/weex/performance/WXInstanceApm;->viewCreateTime:J

    iput-wide v3, p0, Lcom/taobao/weex/performance/WXInstanceApm;->interactionViewCreateTime:J

    .line 494
    iget-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->recordStatsMap:Ljava/util/Map;

    const-string v3, "wxLayoutTime"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-nez p1, :cond_b8

    const-wide/16 v3, 0x0

    goto :goto_bc

    .line 495
    :cond_b8
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_bc
    iput-wide v3, p0, Lcom/taobao/weex/performance/WXInstanceApm;->interactionLayoutTime:D

    .line 497
    iget-wide v3, v0, Lcom/taobao/weex/common/WXPerformance;->renderUnixTimeOrigin:J

    sub-long v3, v1, v3

    iput-wide v3, v0, Lcom/taobao/weex/common/WXPerformance;->interactionTime:J

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/taobao/weex/common/WXPerformance;->interactionRealUnixTime:J

    const-string p1, "wxInteraction"

    .line 499
    invoke-virtual {p0, p1, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStageWithTime(Ljava/lang/String;J)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string p1, "wxInteractionScreenViewCount"

    .line 501
    invoke-virtual {p0, p1, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 502
    iget p1, v0, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    int-to-double v0, p1

    const-string p1, "wxInteractionAllViewCount"

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    .line 503
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_f6

    .line 505
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object p1

    iget-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    long-to-double v0, v0

    const-string p1, "wxInteractionComponentCreateCount"

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    :cond_f6
    :goto_f6
    return-void
.end method

.method public arriveNewFsRenderTime()V
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "wxNewFsRender"

    .line 436
    invoke-virtual {p0, v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    return-void
.end method

.method public doDelayCollectData()V
    .registers 5

    .line 404
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->delayCollectDataTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public doInit()V
    .registers 5

    .line 321
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    if-nez v0, :cond_5

    return-void

    .line 324
    :cond_5
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mHasInit:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mHasInit:Z

    .line 328
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_12

    return-void

    .line 331
    :cond_12
    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/taobao/weex/performance/IWXApmMonitorAdapter;->onStart(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-nez v0, :cond_2c

    const-string v1, "unKnowUrl"

    goto :goto_30

    .line 333
    :cond_2c
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    :goto_30
    const-string v2, "wxBundleUrl"

    .line 334
    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "wxErrorCode"

    const-string v2, "0"

    .line 335
    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    const-string v2, "wxJSLibVersion"

    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    const-string v2, "wxSDKVersion"

    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    sget v1, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    int-to-double v1, v1

    const-string v3, "wxReInitCount"

    invoke-virtual {p0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    if-eqz v0, :cond_62

    .line 341
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wxUIKitType"

    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :cond_62
    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "wxUseRuntimeApi"

    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_86

    .line 345
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v1, v2, :cond_7f

    .line 346
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v1, v2, :cond_86

    :cond_7f
    const-string v1, "wxRenderType"

    const-string v2, "eagle"

    .line 347
    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_86
    if-eqz v0, :cond_ae

    .line 350
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_94

    :cond_ae
    return-void
.end method

.method public hasInit()Z
    .registers 2

    .line 314
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mHasInit:Z

    return v0
.end method

.method public onAppear()V
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_5

    return-void

    .line 372
    :cond_5
    invoke-interface {v0}, Lcom/taobao/weex/performance/IWXApmMonitorAdapter;->onAppear()V

    return-void
.end method

.method public onDisAppear()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_5

    return-void

    .line 379
    :cond_5
    invoke-interface {v0}, Lcom/taobao/weex/performance/IWXApmMonitorAdapter;->onDisappear()V

    return-void
.end method

.method public onEnd()V
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mEnd:Z

    if-eqz v0, :cond_9

    goto :goto_40

    .line 389
    :cond_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->delayCollectDataTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    invoke-virtual {p0}, Lcom/taobao/weex/performance/WXInstanceApm;->recordPerformanceDetailData()V

    .line 391
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->exceptionRecord:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 392
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->jsPerformanceCallBack:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "wxDestroy"

    .line 393
    invoke-virtual {p0, v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 394
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mHasInit:Z

    if-nez v0, :cond_34

    .line 395
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    invoke-interface {v0}, Lcom/taobao/weex/performance/IWXApmMonitorAdapter;->onEnd()V

    :cond_34
    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mEnd:Z

    .line 398
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 399
    invoke-direct {p0}, Lcom/taobao/weex/performance/WXInstanceApm;->printLog()V

    :cond_40
    :goto_40
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_5

    return-void

    .line 206
    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/performance/IWXApmMonitorAdapter;->onEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onInstanceReady(Z)V
    .registers 6

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    if-eqz p1, :cond_a

    const-string p1, "wxStartDownLoadBundle"

    .line 185
    invoke-virtual {p0, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 187
    :cond_a
    invoke-virtual {p0}, Lcom/taobao/weex/performance/WXInstanceApm;->doInit()V

    .line 188
    iget-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/taobao/weex/performance/WXInstanceApm;->sendStageInfo(Ljava/lang/String;J)V

    goto :goto_17

    .line 191
    :cond_37
    iget-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->recordStatsMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/taobao/weex/performance/WXInstanceApm;->sendStats(Ljava/lang/String;D)V

    goto :goto_41

    .line 194
    :cond_61
    iget-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/performance/WXInstanceApm;->sendProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6b

    :cond_85
    return-void
.end method

.method public onStage(Ljava/lang/String;)V
    .registers 4

    .line 213
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v0

    .line 214
    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onStageWithTime(Ljava/lang/String;J)V

    return-void
.end method

.method public onStageWithTime(Ljava/lang/String;J)V
    .registers 6

    .line 223
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mEnd:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    .line 229
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    if-eqz v0, :cond_18

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->sendStageInfo(Ljava/lang/String;J)V

    :cond_18
    return-void
.end method

.method public recordPerformanceDetailData()V
    .registers 4

    .line 519
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mHasRecordDetailData:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mHasRecordDetailData:Z

    .line 523
    iget-wide v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->interactionViewCreateTime:J

    long-to-double v0, v0

    const-string v2, "wxViewCost"

    invoke-virtual {p0, v2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 524
    iget-wide v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->interactionComponentCreateTime:J

    long-to-double v0, v0

    const-string v2, "wxComponentCost"

    invoke-virtual {p0, v2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 525
    iget-wide v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->interactionJsCallBackTime:J

    long-to-double v0, v0

    const-string v2, "wxExecJsCallBack"

    invoke-virtual {p0, v2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 526
    iget-wide v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->interactionLayoutTime:D

    const-string v2, "wxLayoutTime"

    invoke-virtual {p0, v2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    return-void
.end method

.method public sendPerformanceToJS()V
    .registers 8

    .line 629
    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->hasSendInteractionToJS:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 632
    iput-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->hasSendInteractionToJS:Z

    .line 633
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    if-nez v1, :cond_1b

    return-void

    .line 638
    :cond_1b
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 639
    iget-object v4, p0, Lcom/taobao/weex/performance/WXInstanceApm;->reportPageName:Ljava/lang/String;

    const-string v5, "wxBizID"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wxBundleUrl"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 643
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget-wide v5, v0, Lcom/taobao/weex/common/WXPerformance;->interactionRealUnixTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v5, "wxInteraction"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "stage"

    .line 646
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "properties"

    .line 647
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wx_apm"

    .line 649
    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/WXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .registers 4

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 358
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->mInstanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_24

    .line 360
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object p1

    const-string v0, "wxContainerName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 363
    :cond_24
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_29

    goto :goto_2d

    :cond_29
    invoke-interface {v0, p1}, Lcom/taobao/weex/performance/IWXApmMonitorAdapter;->parseReportUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2d
    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->reportPageName:Ljava/lang/String;

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    const-string p1, "emptyPageName"

    goto :goto_3a

    :cond_38
    iget-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->reportPageName:Ljava/lang/String;

    :goto_3a
    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->reportPageName:Ljava/lang/String;

    const-string v0, "wxBizID"

    .line 365
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toPerfString()Ljava/lang/String;
    .registers 9

    .line 654
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    const-string v1, "wxRenderTimeOrigin"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 655
    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    const-string v2, "wxInteraction"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 656
    iget-object v2, p0, Lcom/taobao/weex/performance/WXInstanceApm;->stageMap:Ljava/util/Map;

    const-string v3, "wxNewFsRender"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ms"

    if-eqz v0, :cond_49

    if-eqz v1, :cond_49

    .line 659
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interactiveTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    if-eqz v2, :cond_62

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " wxNewFsRender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiffStats(Ljava/lang/String;D)V
    .registers 6

    .line 530
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_5

    return-void

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->recordStatsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->recordStatsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_1c

    :cond_16
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_3a

    .line 536
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_HASH_MAP_TMP:Lcom/taobao/weex/common/WXErrorCode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, ""

    const-string v1, "updateDiffStats"

    invoke-static {v0, p2, v1, p1, p3}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 546
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, p2

    .line 547
    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    return-void
.end method

.method public updateFSDiffStats(Ljava/lang/String;D)V
    .registers 5

    .line 512
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->isFSEnd:Z

    if-eqz v0, :cond_9

    goto :goto_c

    .line 515
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    :cond_c
    :goto_c
    return-void
.end method

.method public updateMaxStats(Ljava/lang/String;D)V
    .registers 7

    .line 551
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-nez v0, :cond_5

    return-void

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->recordStatsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->recordStatsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_1c

    :cond_16
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_3a

    .line 557
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_HASH_MAP_TMP:Lcom/taobao/weex/common/WXErrorCode;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, ""

    const-string v1, "updateMaxStats"

    invoke-static {v0, p2, v1, p1, p3}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 566
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v2, v0, p2

    if-gez v2, :cond_4d

    .line 567
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 568
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    :cond_4d
    return-void
.end method

.method public updateNativePerformanceData(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 671
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 674
    :try_start_19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_28

    goto :goto_2d

    :catch_28
    move-exception v3

    .line 676
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v3, v1

    :goto_2d
    cmpl-double v5, v3, v1

    if-eqz v5, :cond_b

    .line 679
    iget-object v1, p0, Lcom/taobao/weex/performance/WXInstanceApm;->recordStatsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_3f
    return-void
.end method

.method public updateRecordInfo(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm;->apmInstance:Lcom/taobao/weex/performance/IWXApmMonitorAdapter;

    if-eqz v0, :cond_42

    if-nez p1, :cond_7

    goto :goto_42

    :cond_7
    const-string v0, "wxRequestType"

    .line 577
    invoke-direct {p0, v0, v0, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->addPropeyFromExtParms(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "cacheType"

    const-string v1, "wxCacheType"

    .line 578
    invoke-direct {p0, v0, v1, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->addPropeyFromExtParms(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "zCacheInfo"

    const-string v1, "wxZCacheInfo"

    .line 579
    invoke-direct {p0, v0, v1, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->addPropeyFromExtParms(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 581
    sget-wide v0, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    long-to-double v0, v0

    const-string v2, "wxJSLibInitTime"

    invoke-virtual {p0, v2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 582
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "wxJsFrameworkInit"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "actualNetworkTime"

    .line 584
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 585
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_42

    .line 586
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    const-string p1, "wxActualNetworkTime"

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    :cond_42
    :goto_42
    return-void
.end method

###### Class com.taobao.weex.performance.WXInstanceApm.AnonymousClass1 (com.taobao.weex.performance.WXInstanceApm$1)
.class Lcom/taobao/weex/performance/WXInstanceApm$1;
.super Ljava/lang/Object;
.source "WXInstanceApm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/performance/WXInstanceApm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/performance/WXInstanceApm;


# direct methods
.method constructor <init>(Lcom/taobao/weex/performance/WXInstanceApm;)V
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm$1;->this$0:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm$1;->this$0:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->sendPerformanceToJS()V

    return-void
.end method

###### Class com.taobao.weex.performance.WXInstanceApm.AnonymousClass2 (com.taobao.weex.performance.WXInstanceApm$2)
.class Lcom/taobao/weex/performance/WXInstanceApm$2;
.super Ljava/lang/Object;
.source "WXInstanceApm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/performance/WXInstanceApm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/performance/WXInstanceApm;


# direct methods
.method constructor <init>(Lcom/taobao/weex/performance/WXInstanceApm;)V
    .registers 2

    .line 407
    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm$2;->this$0:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm$2;->this$0:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->recordPerformanceDetailData()V

    return-void
.end method
