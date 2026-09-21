###### Class com.taobao.weex.performance.WXStateRecord (com.taobao.weex.performance.WXStateRecord)
.class public Lcom/taobao/weex/performance/WXStateRecord;
.super Ljava/lang/Object;
.source "WXStateRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/performance/WXStateRecord$Info;,
        Lcom/taobao/weex/performance/WXStateRecord$RecordList;,
        Lcom/taobao/weex/performance/WXStateRecord$SingleTonHolder;
    }
.end annotation


# instance fields
.field private jsThreadTime:J

.field private jsThreadWatchTask:Ljava/lang/Runnable;

.field private mActionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/performance/WXStateRecord$RecordList<",
            "Lcom/taobao/weex/performance/WXStateRecord$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mExceptionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/performance/WXStateRecord$RecordList<",
            "Lcom/taobao/weex/performance/WXStateRecord$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mIPCExceptionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/performance/WXStateRecord$RecordList<",
            "Lcom/taobao/weex/performance/WXStateRecord$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mJsThradWatchHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/performance/WXStateRecord$RecordList<",
            "Lcom/taobao/weex/performance/WXStateRecord$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mJscCrashHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/performance/WXStateRecord$RecordList<",
            "Lcom/taobao/weex/performance/WXStateRecord$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mJscReloadHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/performance/WXStateRecord$RecordList<",
            "Lcom/taobao/weex/performance/WXStateRecord$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mJsfmInitHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/performance/WXStateRecord$RecordList<",
            "Lcom/taobao/weex/performance/WXStateRecord$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 195
    iput-wide v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->jsThreadTime:J

    .line 197
    new-instance v0, Lcom/taobao/weex/performance/WXStateRecord$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/performance/WXStateRecord$1;-><init>(Lcom/taobao/weex/performance/WXStateRecord;)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->jsThreadWatchTask:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mExceptionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    .line 59
    new-instance v0, Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mActionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    .line 60
    new-instance v0, Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-direct {v0, v1}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJsfmInitHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    .line 61
    new-instance v0, Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-direct {v0, v1}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJscCrashHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    .line 62
    new-instance v0, Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-direct {v0, v1}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJscReloadHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    .line 63
    new-instance v0, Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-direct {v0, v2}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJsThradWatchHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    .line 64
    new-instance v0, Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-direct {v0, v2}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mIPCExceptionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/performance/WXStateRecord$1;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/taobao/weex/performance/WXStateRecord;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/performance/WXStateRecord;)J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->jsThreadTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/taobao/weex/performance/WXStateRecord;J)J
    .registers 3

    .line 39
    iput-wide p1, p0, Lcom/taobao/weex/performance/WXStateRecord;->jsThreadTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/performance/WXStateRecord;)Ljava/lang/Runnable;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/taobao/weex/performance/WXStateRecord;->jsThreadWatchTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static getInstance()Lcom/taobao/weex/performance/WXStateRecord;
    .registers 1

    .line 54
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord$SingleTonHolder;->access$100()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v0

    return-object v0
.end method

.method private recordCommon(Lcom/taobao/weex/performance/WXStateRecord$RecordList;Lcom/taobao/weex/performance/WXStateRecord$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/performance/WXStateRecord$RecordList<",
            "Lcom/taobao/weex/performance/WXStateRecord$Info;",
            ">;",
            "Lcom/taobao/weex/performance/WXStateRecord$Info;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_20

    if-nez p2, :cond_5

    goto :goto_20

    .line 121
    :cond_5
    :try_start_5
    invoke-virtual {p1, p2}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p1}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_20

    invoke-virtual {p1}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->size()I

    move-result p2

    invoke-static {p1}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->access$200(Lcom/taobao/weex/performance/WXStateRecord$RecordList;)I

    move-result v0

    if-le p2, v0, :cond_20

    .line 123
    invoke-virtual {p1}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->poll()Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public getStateInfo()Ljava/util/Map;
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

    .line 131
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 132
    sget v1, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reInitCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord;->mExceptionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/performance/WXStateRecord;->mActionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-virtual {v2}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJsfmInitHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-virtual {v2}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJscCrashHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    .line 135
    invoke-virtual {v2}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJscReloadHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-virtual {v2}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJsThradWatchHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-virtual {v2}, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord;->mExceptionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord;->mActionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJsfmInitHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJscCrashHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJscReloadHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJsThradWatchHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord;->mIPCExceptionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 146
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stateInfoList"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v1

    if-eqz v1, :cond_95

    const-string v2, "wxapm"

    const-string v3, "dumpIpcPageInfo"

    const-string v4, "true"

    .line 149
    invoke-interface {v1, v2, v3, v4}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 150
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->dumpIpcPageInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageQueueInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95
    return-object v0
.end method

.method public onJSCCrash(Ljava/lang/String;)V
    .registers 7

    .line 113
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJscCrashHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    new-instance v1, Lcom/taobao/weex/performance/WXStateRecord$Info;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v2

    const-string v4, "onJSCCrash"

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/taobao/weex/performance/WXStateRecord$Info;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/performance/WXStateRecord;->recordCommon(Lcom/taobao/weex/performance/WXStateRecord$RecordList;Lcom/taobao/weex/performance/WXStateRecord$Info;)V

    return-void
.end method

.method public onJSEngineReload(Ljava/lang/String;)V
    .registers 7

    .line 106
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJscReloadHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    new-instance v1, Lcom/taobao/weex/performance/WXStateRecord$Info;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v2

    const-string v4, "onJSEngineReload"

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/taobao/weex/performance/WXStateRecord$Info;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/performance/WXStateRecord;->recordCommon(Lcom/taobao/weex/performance/WXStateRecord$RecordList;Lcom/taobao/weex/performance/WXStateRecord$Info;)V

    return-void
.end method

.method public onJSFMInit()V
    .registers 2

    const-string v0, "setJsfmVersion"

    .line 91
    invoke-virtual {p0, v0}, Lcom/taobao/weex/performance/WXStateRecord;->recoreJsfmInitHistory(Ljava/lang/String;)V

    return-void
.end method

.method public recordAction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mActionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    new-instance v1, Lcom/taobao/weex/performance/WXStateRecord$Info;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/taobao/weex/performance/WXStateRecord$Info;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/performance/WXStateRecord;->recordCommon(Lcom/taobao/weex/performance/WXStateRecord$RecordList;Lcom/taobao/weex/performance/WXStateRecord$Info;)V

    return-void
.end method

.method public recordException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 72
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mExceptionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    new-instance v1, Lcom/taobao/weex/performance/WXStateRecord$Info;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/taobao/weex/performance/WXStateRecord$Info;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/performance/WXStateRecord;->recordCommon(Lcom/taobao/weex/performance/WXStateRecord$RecordList;Lcom/taobao/weex/performance/WXStateRecord$Info;)V

    return-void
.end method

.method public recordIPCException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 84
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mIPCExceptionHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    new-instance v1, Lcom/taobao/weex/performance/WXStateRecord$Info;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/taobao/weex/performance/WXStateRecord$Info;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/performance/WXStateRecord;->recordCommon(Lcom/taobao/weex/performance/WXStateRecord$RecordList;Lcom/taobao/weex/performance/WXStateRecord$Info;)V

    return-void
.end method

.method public recordJsThreadWatch(Ljava/lang/String;)V
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJsThradWatchHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    new-instance v1, Lcom/taobao/weex/performance/WXStateRecord$Info;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v2

    const-string v4, "jsWatch"

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/taobao/weex/performance/WXStateRecord$Info;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/performance/WXStateRecord;->recordCommon(Lcom/taobao/weex/performance/WXStateRecord$RecordList;Lcom/taobao/weex/performance/WXStateRecord$Info;)V

    return-void
.end method

.method public recoreJsfmInitHistory(Ljava/lang/String;)V
    .registers 7

    .line 95
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord;->mJsfmInitHistory:Lcom/taobao/weex/performance/WXStateRecord$RecordList;

    new-instance v1, Lcom/taobao/weex/performance/WXStateRecord$Info;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v2

    const-string v4, "JSFM"

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/taobao/weex/performance/WXStateRecord$Info;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/performance/WXStateRecord;->recordCommon(Lcom/taobao/weex/performance/WXStateRecord$RecordList;Lcom/taobao/weex/performance/WXStateRecord$Info;)V

    return-void
.end method

.method public startJSThreadWatchDog()V
    .registers 3

    .line 192
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord;->jsThreadWatchTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.taobao.weex.performance.WXStateRecord.AnonymousClass1 (com.taobao.weex.performance.WXStateRecord$1)
.class Lcom/taobao/weex/performance/WXStateRecord$1;
.super Ljava/lang/Object;
.source "WXStateRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/performance/WXStateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/performance/WXStateRecord;


# direct methods
.method constructor <init>(Lcom/taobao/weex/performance/WXStateRecord;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 200
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {v0}, Lcom/taobao/weex/performance/WXStateRecord;->access$300(Lcom/taobao/weex/performance/WXStateRecord;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    .line 201
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/performance/WXStateRecord;->access$302(Lcom/taobao/weex/performance/WXStateRecord;J)J

    .line 203
    :cond_15
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {v2}, Lcom/taobao/weex/performance/WXStateRecord;->access$300(Lcom/taobao/weex/performance/WXStateRecord;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 204
    iget-object v2, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "diff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/taobao/weex/performance/WXStateRecord;->recordJsThreadWatch(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/performance/WXStateRecord;->access$302(Lcom/taobao/weex/performance/WXStateRecord;J)J

    .line 206
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {v1}, Lcom/taobao/weex/performance/WXStateRecord;->access$400(Lcom/taobao/weex/performance/WXStateRecord;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->postDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

###### Class com.taobao.weex.performance.WXStateRecord.Info (com.taobao.weex.performance.WXStateRecord$Info)
.class Lcom/taobao/weex/performance/WXStateRecord$Info;
.super Ljava/lang/Object;
.source "WXStateRecord.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/performance/WXStateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/taobao/weex/performance/WXStateRecord$Info;",
        ">;"
    }
.end annotation


# instance fields
.field private instanceId:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-wide p1, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->time:J

    .line 171
    iput-object p3, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->instanceId:Ljava/lang/String;

    .line 172
    iput-object p4, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/taobao/weex/performance/WXStateRecord$Info;)I
    .registers 6

    .line 184
    iget-wide v0, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->time:J

    iget-wide v2, p1, Lcom/taobao/weex/performance/WXStateRecord$Info;->time:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    cmp-long p1, v0, v2

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, -0x1

    :goto_11
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 164
    check-cast p1, Lcom/taobao/weex/performance/WXStateRecord$Info;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/performance/WXStateRecord$Info;->compareTo(Lcom/taobao/weex/performance/WXStateRecord$Info;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.taobao.weex.performance.WXStateRecord.RecordList (com.taobao.weex.performance.WXStateRecord$RecordList)
.class Lcom/taobao/weex/performance/WXStateRecord$RecordList;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "WXStateRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/performance/WXStateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentLinkedQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 159
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 160
    iput p1, p0, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->maxSize:I

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/performance/WXStateRecord$RecordList;)I
    .registers 1

    .line 155
    iget p0, p0, Lcom/taobao/weex/performance/WXStateRecord$RecordList;->maxSize:I

    return p0
.end method

###### Class com.taobao.weex.performance.WXStateRecord.SingleTonHolder (com.taobao.weex.performance.WXStateRecord$SingleTonHolder)
.class Lcom/taobao/weex/performance/WXStateRecord$SingleTonHolder;
.super Ljava/lang/Object;
.source "WXStateRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/performance/WXStateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTonHolder"
.end annotation


# static fields
.field private static final S_INSTANCE:Lcom/taobao/weex/performance/WXStateRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/taobao/weex/performance/WXStateRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/performance/WXStateRecord;-><init>(Lcom/taobao/weex/performance/WXStateRecord$1;)V

    sput-object v0, Lcom/taobao/weex/performance/WXStateRecord$SingleTonHolder;->S_INSTANCE:Lcom/taobao/weex/performance/WXStateRecord;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/taobao/weex/performance/WXStateRecord;
    .registers 1

    .line 49
    sget-object v0, Lcom/taobao/weex/performance/WXStateRecord$SingleTonHolder;->S_INSTANCE:Lcom/taobao/weex/performance/WXStateRecord;

    return-object v0
.end method
