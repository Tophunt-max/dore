###### Class com.taobao.weex.WXSDKManager (com.taobao.weex.WXSDKManager)
.class public Lcom/taobao/weex/WXSDKManager;
.super Ljava/lang/Object;
.source "WXSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_VIEWPORT_WIDTH:I = 0x2ee

.field private static sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile sManager:Lcom/taobao/weex/WXSDKManager;


# instance fields
.field private mActivityNavBarSetter:Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

.field private mAllInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mApmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

.field private mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

.field private mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

.field private mConfigAdapter:Lcom/taobao/weex/adapter/IWXConfigAdapter;

.field private mCrashInfo:Lcom/taobao/weex/adapter/ICrashInfoReporter;

.field private mDrawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

.field private mFontAdapter:Lcom/taobao/weex/font/FontAdapter;

.field private mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

.field private mIWXImgLoaderAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

.field private mIWXJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

.field private mIWXSoLoaderAdapter:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field private mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

.field private mIWXUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field private mIWebSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

.field private mLifeCycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigator:Lcom/taobao/weex/appfram/navigator/INavigator;

.field private mNeedInitV8:Z

.field private mRoleAdapter:Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

.field private mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

.field private mTracingAdapter:Lcom/taobao/weex/adapter/ITracingAdapter;

.field private mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

.field private mWXAnalyzerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/performance/IWXAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field private mWXJsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

.field private mWXJscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

.field mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

.field private mWXValidateProcessor:Lcom/taobao/weex/bridge/WXValidateProcessor;

.field private final mWXWorkThreadManager:Lcom/taobao/weex/common/WXWorkThreadManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/WXSDKManager;->sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 116
    new-instance v0, Lcom/taobao/weex/ui/WXRenderManager;

    invoke-direct {v0}, Lcom/taobao/weex/ui/WXRenderManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/taobao/weex/WXSDKManager;-><init>(Lcom/taobao/weex/ui/WXRenderManager;)V

    return-void
.end method

.method private constructor <init>(Lcom/taobao/weex/ui/WXRenderManager;)V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKManager;->mNeedInitV8:Z

    .line 120
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    .line 121
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 122
    new-instance p1, Lcom/taobao/weex/common/WXWorkThreadManager;

    invoke-direct {p1}, Lcom/taobao/weex/common/WXWorkThreadManager;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mWXWorkThreadManager:Lcom/taobao/weex/common/WXWorkThreadManager;

    .line 123
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    .line 124
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mAllInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/taobao/weex/WXSDKManager;
    .registers 2

    .line 177
    sget-object v0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    if-nez v0, :cond_17

    .line 178
    const-class v0, Lcom/taobao/weex/WXSDKManager;

    monitor-enter v0

    .line 179
    :try_start_7
    sget-object v1, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    if-nez v1, :cond_12

    .line 180
    new-instance v1, Lcom/taobao/weex/WXSDKManager;

    invoke-direct {v1}, Lcom/taobao/weex/WXSDKManager;-><init>()V

    sput-object v1, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    .line 182
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 184
    :cond_17
    :goto_17
    sget-object v0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    return-object v0
.end method

.method public static getInstanceViewPortWidth(Ljava/lang/String;)F
    .registers 2

    .line 188
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p0

    if-nez p0, :cond_e

    const p0, 0x443b8000    # 750.0f

    return p0

    .line 192
    :cond_e
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p0

    return p0
.end method

.method static initInstance(Lcom/taobao/weex/ui/WXRenderManager;)V
    .registers 2

    .line 131
    new-instance v0, Lcom/taobao/weex/WXSDKManager;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKManager;-><init>(Lcom/taobao/weex/ui/WXRenderManager;)V

    sput-object v0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    return-void
.end method

.method static setInstance(Lcom/taobao/weex/WXSDKManager;)V
    .registers 1

    .line 196
    sput-object p0, Lcom/taobao/weex/WXSDKManager;->sManager:Lcom/taobao/weex/WXSDKManager;

    return-void
.end method


# virtual methods
.method public addWXAnalyzer(Lcom/taobao/weex/performance/IWXAnalyzer;)V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 396
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/WXRenderManager;->registerInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 303
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    .line 304
    iget-object p2, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    if-eqz p2, :cond_2a

    .line 305
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;

    .line 306
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;->onInstanceCreated(Ljava/lang/String;)V

    goto :goto_16

    :cond_2a
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXWorkThreadManager:Lcom/taobao/weex/common/WXWorkThreadManager;

    if-eqz v0, :cond_7

    .line 246
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXWorkThreadManager;->destroy()V

    .line 248
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mAllInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method destroyInstance(Ljava/lang/String;)V
    .registers 4

    const-string v0, "wx_current_url"

    const-string v1, ""

    .line 316
    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/WXSDKManager;->setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 320
    :cond_e
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 323
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 324
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;

    .line 325
    invoke-interface {v1, p1}, Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;->onInstanceDestroyed(Ljava/lang/String;)V

    goto :goto_1c

    .line 328
    :cond_2c
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/WXRenderManager;->removeRenderStatement(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->destroyInstance(Ljava/lang/String;)V

    .line 330
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->destroyInstanceModules(Ljava/lang/String;)V

    return-void

    .line 321
    :cond_3a
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v0, "[WXSDKManager] destroyInstance error"

    invoke-direct {p1, v0}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 287
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    goto :goto_27

    .line 296
    :cond_1f
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string p2, "[WXSDKManager]  fireEvent error"

    invoke-direct {p1, p2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method generateInstanceId()Ljava/lang/String;
    .registers 2

    .line 334
    sget-object v0, Lcom/taobao/weex/WXSDKManager;->sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityRoleAdapter()Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mRoleAdapter:Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

    return-object v0
.end method

.method public getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mActivityNavBarSetter:Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    return-object v0
.end method

.method public getAllInstanceMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mAllInstanceMap:Ljava/util/Map;

    return-object v0
.end method

.method public getApmGenerater()Lcom/taobao/weex/performance/IApmGenerator;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mApmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

    return-object v0
.end method

.method public getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    if-nez v0, :cond_b

    .line 381
    new-instance v0, Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    invoke-direct {v0}, Lcom/taobao/weex/adapter/ClassLoaderAdapter;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    .line 383
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    return-object v0
.end method

.method public getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mDrawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    return-object v0
.end method

.method public getFontAdapter()Lcom/taobao/weex/font/FontAdapter;
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mFontAdapter:Lcom/taobao/weex/font/FontAdapter;

    if-nez v0, :cond_15

    .line 532
    monitor-enter p0

    .line 533
    :try_start_5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mFontAdapter:Lcom/taobao/weex/font/FontAdapter;

    if-nez v0, :cond_10

    .line 534
    new-instance v0, Lcom/taobao/weex/font/FontAdapter;

    invoke-direct {v0}, Lcom/taobao/weex/font/FontAdapter;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mFontAdapter:Lcom/taobao/weex/font/FontAdapter;

    .line 536
    :cond_10
    monitor-exit p0

    goto :goto_15

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0

    .line 538
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mFontAdapter:Lcom/taobao/weex/font/FontAdapter;

    return-object v0
.end method

.method public getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    if-nez v0, :cond_b

    .line 363
    new-instance v0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    invoke-direct {v0}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 365
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    return-object v0
.end method

.method public getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXImgLoaderAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    return-object v0
.end method

.method public getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    return-object v0
.end method

.method public getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXJsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    return-object v0
.end method

.method public getIWXSoLoaderAdapter()Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXSoLoaderAdapter:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    return-object v0
.end method

.method public getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    if-nez v0, :cond_19

    .line 422
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_12

    .line 423
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    goto :goto_19

    :cond_12
    const-string v0, "WXStorageModule"

    const-string v1, "No Application context found,you should call WXSDKEngine#initialize() method in your application"

    .line 425
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    return-object v0
.end method

.method public getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    return-object v0
.end method

.method public getIWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWebSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    if-eqz v0, :cond_9

    .line 465
    invoke-interface {v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;->createWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigator()Lcom/taobao/weex/appfram/navigator/INavigator;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mNavigator:Lcom/taobao/weex/appfram/navigator/INavigator;

    return-object v0
.end method

.method public getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public getTracingAdapter()Lcom/taobao/weex/adapter/ITracingAdapter;
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mTracingAdapter:Lcom/taobao/weex/adapter/ITracingAdapter;

    return-object v0
.end method

.method public getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    if-nez v0, :cond_b

    .line 374
    new-instance v0, Lcom/taobao/weex/adapter/DefaultUriAdapter;

    invoke-direct {v0}, Lcom/taobao/weex/adapter/DefaultUriAdapter;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    .line 376
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    return-object v0
.end method

.method public getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXValidateProcessor:Lcom/taobao/weex/bridge/WXValidateProcessor;

    return-object v0
.end method

.method public getWXAnalyzerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/performance/IWXAnalyzer;",
            ">;"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    return-object v0
.end method

.method public getWXBridgeManager()Lcom/taobao/weex/bridge/WXBridgeManager;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    return-object v0
.end method

.method public getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXJscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    return-object v0
.end method

.method public getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    return-object v0
.end method

.method public getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object v0
.end method

.method public getWXWorkThreadManager()Lcom/taobao/weex/common/WXWorkThreadManager;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXWorkThreadManager:Lcom/taobao/weex/common/WXWorkThreadManager;

    return-object v0
.end method

.method public getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mConfigAdapter:Lcom/taobao/weex/adapter/IWXConfigAdapter;

    return-object v0
.end method

.method public initScriptsFramework(Ljava/lang/String;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    return-void
.end method

.method public needInitV8()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKManager;->mNeedInitV8:Z

    return v0
.end method

.method public notifySerializeCodeCache()V
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifySerializeCodeCache()V

    return-void
.end method

.method public notifyTrimMemory()V
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifyTrimMemory()V

    return-void
.end method

.method public onSDKEngineInitialize()V
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    if-eqz v0, :cond_7

    .line 144
    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onSDKEngineInitialize()V

    :cond_7
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXRenderManager:Lcom/taobao/weex/ui/WXRenderManager;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

.method public registerComponents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerComponents(Ljava/util/List;)V

    return-void
.end method

.method public registerInstanceLifeCycleCallbacks(Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;)V
    .registers 3

    .line 498
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    if-nez v0, :cond_b

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    .line 501
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerModules(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerModules(Ljava/util/Map;)V

    return-void
.end method

.method public registerStatisticsListener(Lcom/taobao/weex/IWXStatisticsListener;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-void
.end method

.method public registerValidateProcessor(Lcom/taobao/weex/bridge/WXValidateProcessor;)V
    .registers 2

    .line 471
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mWXValidateProcessor:Lcom/taobao/weex/bridge/WXValidateProcessor;

    return-void
.end method

.method public restartBridge()V
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->restart()V

    return-void
.end method

.method public rmWXAnalyzer(Lcom/taobao/weex/performance/IWXAnalyzer;)V
    .registers 3

    .line 401
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXAnalyzerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAccessibilityRoleAdapter(Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;)V
    .registers 2

    .line 505
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mRoleAdapter:Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

    return-void
.end method

.method public setActivityNavBarSetter(Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mActivityNavBarSetter:Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    return-void
.end method

.method public setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 484
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mCrashInfo:Lcom/taobao/weex/adapter/ICrashInfoReporter;

    if-eqz v0, :cond_7

    .line 485
    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/adapter/ICrashInfoReporter;->addCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setCrashInfoReporter(Lcom/taobao/weex/adapter/ICrashInfoReporter;)V
    .registers 2

    .line 480
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mCrashInfo:Lcom/taobao/weex/adapter/ICrashInfoReporter;

    return-void
.end method

.method public setIWXJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mIWXJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    return-void
.end method

.method setInitConfig(Lcom/taobao/weex/InitConfig;)V
    .registers 3

    .line 405
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXHttpAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    .line 406
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getImgAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXImgLoaderAdapter:Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    .line 407
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mDrawableLoader:Lcom/taobao/weex/adapter/IDrawableLoader;

    .line 408
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .line 409
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getUtAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 410
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mURIAdapter:Lcom/taobao/weex/adapter/URIAdapter;

    .line 411
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getWebSocketAdapterFactory()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWebSocketAdapterFactory:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;

    .line 412
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXJSExceptionAdapter:Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    .line 413
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getIWXSoLoaderAdapter()Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mIWXSoLoaderAdapter:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 414
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mClassLoaderAdapter:Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    .line 415
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getApmGenerater()Lcom/taobao/weex/performance/IApmGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mApmGenerater:Lcom/taobao/weex/performance/IApmGenerator;

    .line 416
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mWXJsFileLoaderAdapter:Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    .line 417
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig;->getJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mWXJscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    return-void
.end method

.method public setNavigator(Lcom/taobao/weex/appfram/navigator/INavigator;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mNavigator:Lcom/taobao/weex/appfram/navigator/INavigator;

    return-void
.end method

.method public setNeedInitV8(Z)V
    .registers 2

    .line 149
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKManager;->mNeedInitV8:Z

    return-void
.end method

.method public setTracingAdapter(Lcom/taobao/weex/adapter/ITracingAdapter;)V
    .registers 2

    .line 490
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mTracingAdapter:Lcom/taobao/weex/adapter/ITracingAdapter;

    return-void
.end method

.method public setWxConfigAdapter(Lcom/taobao/weex/adapter/IWXConfigAdapter;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/taobao/weex/WXSDKManager;->mConfigAdapter:Lcom/taobao/weex/adapter/IWXConfigAdapter;

    return-void
.end method

.method public takeJSHeapSnapshot(Ljava/lang/String;)V
    .registers 4

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 164
    :cond_12
    sget-object v0, Lcom/taobao/weex/WXSDKManager;->sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".heapsnapshot"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/taobao/weex/WXSDKManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->takeJSHeapSnapshot(Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKManager.InstanceLifeCycleCallbacks (com.taobao.weex.WXSDKManager$InstanceLifeCycleCallbacks)
.class public interface abstract Lcom/taobao/weex/WXSDKManager$InstanceLifeCycleCallbacks;
.super Ljava/lang/Object;
.source "WXSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstanceLifeCycleCallbacks"
.end annotation


# virtual methods
.method public abstract onInstanceCreated(Ljava/lang/String;)V
.end method

.method public abstract onInstanceDestroyed(Ljava/lang/String;)V
.end method
