###### Class com.taobao.weex.bridge.WXBridgeManager (com.taobao.weex.bridge.WXBridgeManager)
.class public Lcom/taobao/weex/bridge/WXBridgeManager;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/taobao/weex/utils/batch/BactchExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;,
        Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    }
.end annotation


# static fields
.field public static final ARGS:Ljava/lang/String; = "args"

.field private static final BRIDGE_LOG_SWITCH:Z = false

.field private static final BUNDLE_TYPE:Ljava/lang/String; = "bundleType"

.field public static final COMPONENT:Ljava/lang/String; = "component"

.field private static final CRASHREINIT:I = 0x32

.field private static GLOBAL_CONFIG_KEY:Ljava/lang/String; = "global_switch_config"

.field public static final INITLOGFILE:Ljava/lang/String; = "/jsserver_start.log"

.field private static final INIT_FRAMEWORK_OK:I = 0x1

.field public static final KEY_ARGS:Ljava/lang/String; = "args"

.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static LOW_MEM_VALUE:J = 0x78L

.field public static final METHD_COMPONENT_HOOK_SYNC:Ljava/lang/String; = "componentHook"

.field public static final METHD_FIRE_EVENT_SYNC:Ljava/lang/String; = "fireEventSync"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_CALLBACK:Ljava/lang/String; = "callback"

.field public static final METHOD_CALL_JS:Ljava/lang/String; = "callJS"

.field public static final METHOD_CHECK_APPKEY:Ljava/lang/String; = "dc_checkappkey"

.field public static final METHOD_CREATE_INSTANCE:Ljava/lang/String; = "createInstance"

.field public static final METHOD_CREATE_INSTANCE_CONTEXT:Ljava/lang/String; = "createInstanceContext"

.field public static final METHOD_CREATE_PAGE_WITH_CONTENT:Ljava/lang/String; = "CreatePageWithContent"

.field public static final METHOD_DESTROY_INSTANCE:Ljava/lang/String; = "destroyInstance"

.field public static final METHOD_FIRE_EVENT:Ljava/lang/String; = "fireEvent"

.field public static final METHOD_FIRE_EVENT_ON_DATA_RENDER_NODE:Ljava/lang/String; = "fireEventOnDataRenderNode"

.field private static final METHOD_JSFM_NOT_INIT_IN_EAGLE_MODE:Ljava/lang/String; = "JsfmNotInitInEagleMode"

.field public static final METHOD_NOTIFY_SERIALIZE_CODE_CACHE:Ljava/lang/String; = "notifySerializeCodeCache"

.field public static final METHOD_NOTIFY_TRIM_MEMORY:Ljava/lang/String; = "notifyTrimMemory"

.field private static final METHOD_POST_TASK_TO_MSG_LOOP:Ljava/lang/String; = "PostTaskToMsgLoop"

.field public static final METHOD_REFRESH_INSTANCE:Ljava/lang/String; = "refreshInstance"

.field public static final METHOD_REGISTER_COMPONENTS:Ljava/lang/String; = "registerComponents"

.field public static final METHOD_REGISTER_MODULES:Ljava/lang/String; = "registerModules"

.field public static final METHOD_SET_TIMEOUT:Ljava/lang/String; = "setTimeoutCallback"

.field public static final METHOD_UPDATE_COMPONENT_WITH_DATA:Ljava/lang/String; = "UpdateComponentData"

.field public static final MODULE:Ljava/lang/String; = "module"

.field private static final NON_CALLBACK:Ljava/lang/String; = "-1"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final REF:Ljava/lang/String; = "ref"

.field private static final RENDER_STRATEGY:Ljava/lang/String; = "renderStrategy"

.field private static final UNDEFINED:Ljava/lang/String; = "undefined"

.field private static clazz_debugProxy:Ljava/lang/Class; = null

.field private static crashUrl:Ljava/lang/String; = null

.field private static globalConfig:Ljava/lang/String; = "none"

.field private static volatile isJsEngineMultiThreadEnable:Z = false

.field private static volatile isSandBoxContext:Z = true

.field private static isUseSingleProcess:Z = false

.field private static lastCrashTime:J = 0x0L

.field static volatile mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager; = null

.field private static volatile mInit:Z = false

.field private static mRaxApi:Ljava/lang/String; = null

.field private static mWeexCoreEnvOptions:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile reInitCount:I = 0x1

.field public static sInitFrameWorkMsg:Ljava/lang/StringBuilder;

.field public static sInitFrameWorkTimeOrigin:J


# instance fields
.field private mDestroyedInstanceId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitParams:Lcom/taobao/weex/bridge/WXParams;

.field private mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

.field mJSHandler:Landroid/os/Handler;

.field private mJSThread:Lcom/taobao/weex/common/WXThread;

.field private mLodBuilder:Ljava/lang/StringBuilder;

.field private mMock:Z

.field private mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/bridge/WXHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/weex/bridge/WXHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRegisterComponentFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterModuleFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterServiceFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWXBridge:Lcom/taobao/weex/common/IWXBridge;

.field private mWxDebugProxy:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mMock:Z

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    .line 254
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    .line 260
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V

    .line 261
    new-instance v0, Lcom/taobao/weex/common/WXThread;

    const-string v1, "WeexJSBridgeThread"

    invoke-direct {v0, v1, p0}, Lcom/taobao/weex/common/WXThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    .line 262
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/bridge/WXBridgeManager;Z)V
    .registers 2

    .line 152
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 2

    .line 152
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeDestroyInstance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;Ljava/util/List;)V
    .registers 3

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .registers 1

    .line 152
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .registers 5

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 152
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 2

    .line 152
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V
    .registers 7

    .line 152
    invoke-direct/range {p0 .. p6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSWithCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .registers 3

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRefreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/bridge/WXBridgeManager;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCreateInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 2

    .line 152
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->removeTaskByInstance(Ljava/lang/String;)V

    return-void
.end method

.method private varargs addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1207
    new-instance v6, Lcom/taobao/weex/bridge/WXBridgeManager$13;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$13;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 1241
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    return-void
.end method

.method public static argsToJSON([Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;
    .registers 5

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2061
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    .line 2063
    invoke-static {v3}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->fromObjectToJSONString(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 2064
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    const-string p0, "]"

    .line 2066
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private assembleDefaultOptions()Lcom/taobao/weex/bridge/WXParams;
    .registers 6

    .line 2257
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->checkJsEngineMultiThread()V

    .line 2259
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v0

    .line 2260
    new-instance v1, Lcom/taobao/weex/bridge/WXParams;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXParams;-><init>()V

    const-string v2, "os"

    .line 2261
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setPlatform(Ljava/lang/String;)V

    const-string v2, "cacheDir"

    .line 2262
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setCacheDir(Ljava/lang/String;)V

    const-string v2, "sysVersion"

    .line 2263
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setOsVersion(Ljava/lang/String;)V

    const-string v2, "appVersion"

    .line 2264
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setAppVersion(Ljava/lang/String;)V

    const-string v2, "weexVersion"

    .line 2265
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setWeexVersion(Ljava/lang/String;)V

    const-string v2, "sysModel"

    .line 2266
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setDeviceModel(Ljava/lang/String;)V

    const-string v2, "infoCollect"

    .line 2267
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setShouldInfoCollect(Ljava/lang/String;)V

    const-string v2, "logLevel"

    .line 2268
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLogLevel(Ljava/lang/String;)V

    const-string v2, "layoutDirection"

    .line 2269
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLayoutDirection(Ljava/lang/String;)V

    .line 2270
    sget-boolean v2, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    const-string v3, "true"

    if-eqz v2, :cond_77

    move-object v2, v3

    goto :goto_79

    :cond_77
    const-string v2, "false"

    :goto_79
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setUseSingleProcess(Ljava/lang/String;)V

    .line 2271
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/WXEnvironment;->getCrashFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setCrashFilePath(Ljava/lang/String;)V

    .line 2272
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->CORE_JSB_SO_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibJsbPath(Ljava/lang/String;)V

    .line 2273
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJssRealPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibJssPath(Ljava/lang/String;)V

    .line 2274
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJssIcuPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibIcuPath(Ljava/lang/String;)V

    .line 2275
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibLdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibLdPath(Ljava/lang/String;)V

    .line 2276
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJScRealPath()Ljava/lang/String;

    move-result-object v2

    .line 2277
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b2

    const-string v2, ""

    goto :goto_bb

    :cond_b2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    :goto_bb
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibJscPath(Ljava/lang/String;)V

    const-string v2, "appName"

    .line 2278
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_cf

    .line 2280
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setAppName(Ljava/lang/String;)V

    :cond_cf
    const-string v2, "deviceWidth"

    .line 2282
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e8

    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_ee

    :cond_e8
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_ee
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setDeviceWidth(Ljava/lang/String;)V

    const-string v2, "deviceHeight"

    .line 2283
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10a

    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_110

    :cond_10a
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_110
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXParams;->setDeviceHeight(Ljava/lang/String;)V

    .line 2284
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v0

    .line 2285
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->jsEngineMultiThreadEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "enableBackupThread"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object v2

    if-eqz v2, :cond_13b

    .line 2288
    invoke-interface {v2}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->enableBackUpThreadCache()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "enableBackupThreadCache"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    :cond_13b
    sget-boolean v2, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    if-nez v2, :cond_144

    const-string v2, "__enable_native_promise__"

    .line 2292
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    :cond_144
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXParams;->setOptions(Ljava/util/Map;)V

    .line 2297
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->needInitV8()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXParams;->setNeedInitV8(Z)V

    .line 2298
    iput-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    return-object v1
.end method

.method private varargs asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/bridge/EventResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1158
    new-instance v7, Lcom/taobao/weex/bridge/WXBridgeManager$12;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager$12;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/EventResult;)V

    invoke-virtual {p0, v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkMainThread()Z
    .registers 3

    .line 1357
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private doReportJSException(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V
    .registers 14

    const-string v0, "\n"

    .line 2589
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    .line 2590
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object v2

    if-eqz v2, :cond_10f

    .line 2594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string p1, "instanceIdisNull"

    :cond_22
    const/4 v2, 0x0

    if-nez v1, :cond_f9

    const-string v1, "initFramework"

    .line 2599
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 2602
    :try_start_2d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_bb

    .line 2603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/jsserver_start.log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_54
    .catchall {:try_start_2d .. :try_end_54} :catchall_c9

    .line 2605
    :try_start_54
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 2607
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_b2

    .line 2608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_bd

    .line 2610
    :try_start_6e
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2611
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2613
    :goto_7f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_98

    .line 2614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 2616
    :cond_98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_9c} :catch_a5
    .catchall {:try_start_6e .. :try_end_9c} :catchall_bd

    .line 2617
    :try_start_9c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_a0
    .catchall {:try_start_9c .. :try_end_9f} :catchall_b7

    goto :goto_b3

    :catch_a0
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_a7

    :catch_a5
    move-exception v1

    move-object v4, v2

    .line 2619
    :goto_a7
    :try_start_a7
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_b0

    move-object v1, v4

    goto :goto_b3

    :catchall_b0
    move-exception v1

    goto :goto_bf

    :cond_b2
    move-object v1, v2

    .line 2622
    :goto_b3
    :try_start_b3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b7

    goto :goto_d3

    :catchall_b7
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_bf

    :cond_bb
    move-object v1, v2

    goto :goto_d3

    :catchall_bd
    move-exception v1

    move-object v4, v2

    .line 2625
    :goto_bf
    :try_start_bf
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_bf .. :try_end_c6} :catchall_c7

    goto :goto_d2

    :catchall_c7
    move-exception v1

    goto :goto_cb

    :catchall_c9
    move-exception v1

    move-object v4, v2

    .line 2629
    :goto_cb
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_d2
    move-object v1, v4

    .line 2631
    :goto_d3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportJSException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2638
    :cond_f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2640
    invoke-virtual {p3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2638
    invoke-static {p1, p3, p2, p4, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_10f
    return-void
.end method

.method private execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 2022
    new-instance v6, Lcom/taobao/weex/bridge/WXBridgeManager$21;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$21;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;ILcom/taobao/weex/bridge/EventResult;)V

    invoke-virtual {p0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private execRegisterFailTask()V
    .registers 5

    .line 2308
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 2309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2310
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_14
    if-ge v1, v2, :cond_24

    .line 2311
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2313
    :cond_24
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2314
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    .line 2315
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2319
    :cond_34
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_56

    .line 2320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2321
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    .line 2322
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2323
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_56

    .line 2324
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2328
    :cond_56
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_89

    .line 2329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2330
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2331
    invoke-direct {p0, v2, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_69

    .line 2333
    :cond_79
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_89

    .line 2335
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_89
    return-void
.end method

.method private extractCallbackArgs(Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1976
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1977
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v2, "args"

    .line 1978
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1979
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    return-object v0

    :cond_18
    const-string v3, "method"

    .line 1982
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "callback"

    .line 1983
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    return-object v0

    .line 1987
    :cond_27
    new-instance p1, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getBooleanValue(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    return-object v0
.end method

.method private fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 15
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

    .line 1329
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v8, Lcom/taobao/weex/bridge/WXBridgeManager$14;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager$14;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v8}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;
    .registers 2

    .line 266
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-nez v0, :cond_17

    .line 267
    const-class v0, Lcom/taobao/weex/bridge/WXBridgeManager;

    monitor-enter v0

    .line 268
    :try_start_7
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-nez v1, :cond_12

    .line 269
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;-><init>()V

    sput-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 271
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 273
    :cond_17
    :goto_17
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    return-object v0
.end method

.method private getNextTick(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "{}"

    aput-object v2, v0, v1

    const-string v1, "callback"

    .line 1056
    invoke-direct {p0, v1, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 1057
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private getNextTick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    const-string v1, "{}"

    aput-object v1, v0, p2

    const-string p2, "callback"

    .line 1051
    invoke-direct {p0, p2, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 1052
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private initFramework(Ljava/lang/String;)V
    .registers 12

    .line 2085
    new-instance v0, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v0}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    const-string v1, "initFramework"

    .line 2086
    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 2088
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->isSoInitialized()Z

    move-result v2

    if-eqz v2, :cond_1f9

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v2

    if-nez v2, :cond_1f9

    .line 2089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkTimeOrigin:J

    .line 2090
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string v2, "weex JS framework from assets"

    .line 2092
    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2094
    new-instance v2, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v2}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    const-string v3, "loadJSFramework"

    .line 2095
    invoke-virtual {v2, v3}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {v2}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 2098
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    move-result-object v3

    .line 2100
    sget-boolean v4, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-nez v4, :cond_56

    if-eqz v3, :cond_45

    .line 2102
    invoke-interface {v3}, Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;->loadJsFramework()Ljava/lang/String;

    move-result-object p1

    .line 2105
    :cond_45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2106
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v3, "main.js"

    invoke-static {v3, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_56
    if-eqz v3, :cond_5c

    .line 2110
    invoke-interface {v3}, Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;->loadJsFrameworkForSandBox()Ljava/lang/String;

    move-result-object p1

    .line 2113
    :cond_5c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2114
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v3, "weex-main-jsfm.js"

    invoke-static {v3, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2117
    :cond_6c
    :goto_6c
    sget-object v3, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v4, "| weex JS framework from assets, isSandBoxContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2118
    invoke-virtual {v2}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 2119
    iget-object v3, v2, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object v3, v3, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v2, v2, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v4, v2, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8a
    const-string v2, "jsEngine"

    const-string v3, "v8"

    .line 2121
    invoke-static {v2, v3}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_ab

    .line 2123
    invoke-direct {p0, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 2124
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v0, "| framework isEmpty "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v0, 0x0

    const-string v2, "framework is empty!! "

    invoke-static {v0, p1, v1, v2, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_ab
    const/4 v1, 0x1

    .line 2130
    :try_start_ac
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v2

    if-eqz v2, :cond_fb

    .line 2131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2132
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/weex/IWXStatisticsListener;->onJsFrameworkStart()V

    .line 2133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sput-wide v6, Lcom/taobao/weex/WXEnvironment;->sJSFMStartListenerTime:J
    :try_end_cc
    .catchall {:try_start_ac .. :try_end_cc} :catchall_1dd

    .line 2135
    :try_start_cc
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v4

    if-eqz v4, :cond_fb

    .line 2137
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "time"

    .line 2138
    sget-wide v5, Lcom/taobao/weex/WXEnvironment;->sJSFMStartListenerTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "sJSFMStartListener"

    const-string v7, "counter"

    const/4 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_f2} :catch_f3
    .catchall {:try_start_cc .. :try_end_f2} :catchall_1dd

    goto :goto_fb

    :catch_f3
    move-exception v2

    .line 2142
    :try_start_f4
    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2146
    :cond_fb
    :goto_fb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, ""
    :try_end_101
    .catchall {:try_start_f4 .. :try_end_101} :catchall_1dd

    .line 2149
    :try_start_101
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_111} :catch_112
    .catchall {:try_start_101 .. :try_end_111} :catchall_1dd

    goto :goto_11a

    :catch_112
    move-exception v6

    .line 2151
    :try_start_113
    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_11a
    .catchall {:try_start_113 .. :try_end_11a} :catchall_1dd

    .line 2155
    :goto_11a
    :try_start_11a
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11c} :catch_121
    .catchall {:try_start_11a .. :try_end_11c} :catchall_1dd

    const/16 v7, 0x10

    if-ge v6, v7, :cond_129

    goto :goto_12a

    :catch_121
    move-exception v3

    .line 2159
    :try_start_122
    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_129
    const/4 v3, 0x1

    .line 2161
    :goto_12a
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v7, " | pieSupport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WXBridgeManager] initFrameworkEnv crashFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pieSupport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2164
    new-instance v6, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v6}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    const-string v7, "native initFrameworkEnv"

    .line 2165
    invoke-virtual {v6, v7}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {v6}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 2167
    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->assembleDefaultOptions()Lcom/taobao/weex/bridge/WXParams;

    move-result-object v8

    invoke-interface {v7, p1, v8, v2, v3}, Lcom/taobao/weex/common/IWXBridge;->initFrameworkEnv(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;Ljava/lang/String;Z)I

    move-result p1

    if-ne p1, v1, :cond_1c1

    .line 2168
    invoke-virtual {v6}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 2169
    iget-object p1, v6, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object p1, p1, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v2, v6, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v2, v2, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    .line 2171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    .line 2172
    invoke-direct {p0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 2173
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 2174
    iget-object p1, v0, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object p1, p1, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v0, v0, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v2, v0, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2175
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object p1

    if-eqz p1, :cond_1b5

    .line 2176
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/IWXStatisticsListener;->onJsFrameworkReady()V

    .line 2179
    :cond_1b5
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->execRegisterFailTask()V

    .line 2180
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 2181
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerDomModule()V

    .line 2182
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->trackComponentAndModulesTime()V

    goto :goto_1f9

    .line 2184
    :cond_1c1
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v0, " | ExecuteJavaScript fail, reInitCount"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2185
    sget p1, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    if-le p1, v1, :cond_1d7

    const-string p1, "[WXBridgeManager] invokeReInitFramework  ExecuteJavaScript fail"

    .line 2186
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_1f9

    :cond_1d7
    const-string p1, "[WXBridgeManager] invokeInitFramework  ExecuteJavaScript fail"

    .line 2188
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_1dc
    .catchall {:try_start_122 .. :try_end_1dc} :catchall_1dd

    goto :goto_1f9

    :catchall_1dd
    move-exception p1

    .line 2192
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v2, " | invokeInitFramework exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const-string v2, "[WXBridgeManager] invokeInitFramework "

    if-le v0, v1, :cond_1f6

    .line 2194
    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f9

    .line 2196
    :cond_1f6
    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f9
    :goto_1f9
    return-void
.end method

.method private initWXBridge(Z)V
    .registers 9

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 391
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 392
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    .line 395
    :cond_b
    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    const-string v2, "com.taobao.weex.devtools.debug.DebugServerProxy"

    const/4 v3, 0x0

    if-eqz v1, :cond_96

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 396
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 398
    :try_start_1b
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-nez v1, :cond_25

    .line 399
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    .line 401
    :cond_25
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-eqz v1, :cond_8b

    .line 403
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz v4, :cond_4b

    const-string v4, "isActive"

    new-array v5, v3, [Ljava/lang/Class;

    .line 405
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 407
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    :goto_47
    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x1

    :goto_4c
    if-eqz v1, :cond_8b

    .line 414
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    const-class v6, Lcom/taobao/weex/common/IWXDebugConfig;

    aput-object v6, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_8b

    new-array v4, v4, [Ljava/lang/Object;

    .line 416
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v5, Lcom/taobao/weex/bridge/WXBridgeManager$4;

    invoke-direct {v5, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$4;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    aput-object v5, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz v0, :cond_8b

    .line 429
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    const-string v1, "start"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 431
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catchall {:try_start_1b .. :try_end_8b} :catchall_8b

    .line 440
    :catchall_8b
    :cond_8b
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->execAllCacheJsService()V

    goto :goto_96

    :cond_8f
    const-string v0, "WXBridgeManager"

    const-string v1, "WXEnvironment.sApplication is null, skip init Inspector"

    .line 442
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    :goto_96
    if-eqz p1, :cond_c1

    .line 445
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz p1, :cond_c1

    .line 447
    :try_start_9c
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-nez p1, :cond_a6

    .line 448
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    .line 450
    :cond_a6
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-eqz p1, :cond_c8

    const-string v0, "getWXBridge"

    new-array v1, v3, [Ljava/lang/Class;

    .line 451
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_c8

    .line 453
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/common/IWXBridge;

    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;
    :try_end_c0
    .catchall {:try_start_9c .. :try_end_c0} :catchall_c8

    goto :goto_c8

    .line 460
    :cond_c1
    new-instance p1, Lcom/taobao/weex/bridge/WXBridge;

    invoke-direct {p1}, Lcom/taobao/weex/bridge/WXBridge;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    :catchall_c8
    :cond_c8
    :goto_c8
    return-void
.end method

.method private invokeCallJSBatch(Landroid/os/Message;)V
    .registers 9

    .line 2214
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8f

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_8f

    :cond_10
    const/4 v0, 0x0

    .line 2222
    :try_start_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2225
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v1}, Lcom/taobao/weex/bridge/WXHashMap;->getInstanceStack()Ljava/util/Stack;

    move-result-object v1

    .line 2226
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move-object v4, v0

    :goto_20
    if-ltz v2, :cond_3b

    .line 2228
    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2229
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v4, p1}, Lcom/taobao/weex/bridge/WXHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 2230
    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_3b

    :cond_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    :cond_3b
    :goto_3b
    if-eqz v4, :cond_80

    .line 2235
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v5, 0x0

    .line 2237
    new-instance v6, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-direct {v6, v2, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v6, v4, v5

    .line 2239
    invoke-static {v1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v1

    aput-object v1, v4, v3

    .line 2241
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "callJS"

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    :try_end_5d
    .catchall {:try_start_11 .. :try_end_5d} :catchall_5e

    goto :goto_80

    :catchall_5e
    move-exception p1

    const-string v1, "WXBridgeManager"

    .line 2244
    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeCallJSBatch#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2246
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    const-string v2, "invokeCallJSBatch"

    invoke-static {v0, v1, v2, p1, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2251
    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8e

    .line 2252
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8e
    return-void

    .line 2215
    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXBridgeManager] invokeCallJSBatch: framework.js uninitialized!!  message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_ad
    return-void
.end method

.method private invokeCreateInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .registers 20
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

    move-object v7, p0

    move-object/from16 v8, p1

    const-string v1, "env"

    const-string v9, "wxEndLoadBundle"

    const-string v2, "extraOption"

    const-string v3, "bundleType"

    .line 1591
    invoke-direct/range {p0 .. p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    const-string v4, ""

    if-nez v0, :cond_16

    .line 1592
    invoke-direct {p0, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    .line 1595
    :cond_16
    iget-boolean v0, v7, Lcom/taobao/weex/bridge/WXBridgeManager;->mMock:Z

    if-eqz v0, :cond_23

    .line 1596
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->mock(Ljava/lang/String;)V

    goto/16 :goto_300

    .line 1598
    :cond_23
    invoke-direct/range {p0 .. p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1600
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1601
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1602
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 1600
    invoke-virtual {v8, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[WXBridgeManager] invokeCreateInstance: framework.js uninitialized."

    .line 1604
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 1608
    :cond_44
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->registerWhenCreateInstance()V

    .line 1611
    :try_start_47
    sget-object v5, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_2c2

    .line 1613
    :try_start_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1614
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-result-object v5

    .line 1616
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end getBundleType type:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " time:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v12, v10

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_49 .. :try_end_84} :catchall_85

    goto :goto_8d

    :catchall_85
    move-exception v0

    .line 1621
    :try_start_86
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_2c2

    :cond_8d
    :goto_8d
    if-nez p3, :cond_9a

    .line 1626
    :try_start_8f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_96

    move-object v6, v0

    goto :goto_9c

    :catchall_96
    move-exception v0

    move-object/from16 v6, p3

    goto :goto_ea

    :cond_9a
    move-object/from16 v6, p3

    .line 1629
    :goto_9c
    :try_start_9c
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d9

    .line 1631
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_e9

    const-string v10, "Others"

    if-ne v5, v0, :cond_ae

    :try_start_a8
    const-string v0, "Vue"

    .line 1632
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    .line 1633
    :cond_ae
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-ne v5, v0, :cond_b8

    const-string v0, "Rax"

    .line 1634
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    .line 1636
    :cond_b8
    invoke-interface {v6, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    :goto_bb
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1639
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_ce

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ce

    const-string v0, "other"

    :cond_ce
    if-eqz v0, :cond_d9

    .line 1644
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v3

    const-string v10, "wxBundleType"

    invoke-virtual {v3, v10, v0}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1647
    :cond_d9
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f1

    .line 1648
    iget-object v0, v7, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXParams;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e8
    .catchall {:try_start_a8 .. :try_end_e8} :catchall_e9

    goto :goto_f1

    :catchall_e9
    move-exception v0

    .line 1651
    :goto_ea
    :try_start_ea
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1653
    :cond_f1
    :goto_f1
    iput-object v5, v8, Lcom/taobao/weex/WXSDKInstance;->bundleType:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 1654
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 1660
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    .line 1661
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1662
    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    .line 1663
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v3, v10}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    const/4 v10, 0x0

    if-eqz v6, :cond_11a

    .line 1666
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 1667
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1668
    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11b

    :cond_11a
    move-object v11, v10

    .line 1671
    :goto_11b
    new-instance v2, Lcom/taobao/weex/bridge/WXJSObject;
    :try_end_11d
    .catchall {:try_start_ea .. :try_end_11d} :catchall_2c2

    const-string v12, "{}"

    if-nez v11, :cond_123

    move-object v11, v12

    goto :goto_127

    .line 1673
    :cond_123
    :try_start_123
    invoke-static {v11}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_127
    const/4 v13, 0x3

    invoke-direct {v2, v13, v11}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1676
    new-instance v11, Lcom/taobao/weex/bridge/WXJSObject;

    if-nez v6, :cond_131

    move-object v6, v12

    goto :goto_135

    .line 1678
    :cond_131
    invoke-static {v6}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_135
    invoke-direct {v11, v13, v6}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1679
    sget-boolean v6, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    invoke-virtual {p0, v6, v5, v11}, Lcom/taobao/weex/bridge/WXBridgeManager;->optionObjConvert(ZLcom/taobao/weex/bridge/WXBridgeManager$BundType;Lcom/taobao/weex/bridge/WXJSObject;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v6

    .line 1680
    new-instance v11, Lcom/taobao/weex/bridge/WXJSObject;

    if-nez p4, :cond_143

    goto :goto_145

    :cond_143
    move-object/from16 v12, p4

    :goto_145
    invoke-direct {v11, v13, v12}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1684
    sget-object v12, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-eq v5, v12, :cond_15b

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v12

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v12, v14, :cond_155

    goto :goto_15b

    .line 1698
    :cond_155
    new-instance v12, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-direct {v12, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    goto :goto_186

    .line 1685
    :cond_15b
    :goto_15b
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    if-nez v4, :cond_17f

    .line 1686
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    move-result-object v4

    if-eqz v4, :cond_16b

    .line 1688
    invoke-interface {v4}, Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;->loadRaxApi()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    .line 1691
    :cond_16b
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17f

    const-string v4, "weex-rax-api.js"

    .line 1692
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    .line 1695
    :cond_17f
    new-instance v12, Lcom/taobao/weex/bridge/WXJSObject;

    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    invoke-direct {v12, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1704
    :goto_186
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v4

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v4, v14, :cond_19a

    .line 1705
    new-instance v10, Lcom/taobao/weex/bridge/WXJSObject;

    sget-object v4, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXRenderStrategy;->getFlag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    goto :goto_1c7

    .line 1706
    :cond_19a
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v4

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v4, v14, :cond_1b4

    .line 1707
    new-instance v10, Lcom/taobao/weex/bridge/WXJSObject;

    sget-object v4, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXRenderStrategy;->getFlag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1709
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getBinary()[B

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    goto :goto_1c7

    .line 1710
    :cond_1b4
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v4

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v4, v14, :cond_1c7

    .line 1711
    new-instance v10, Lcom/taobao/weex/bridge/WXJSObject;

    sget-object v4, Lcom/taobao/weex/common/WXRenderStrategy;->JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXRenderStrategy;->getFlag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    :cond_1c7
    :goto_1c7
    const/4 v4, 0x7

    new-array v14, v4, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x0

    aput-object v0, v14, v4

    const/4 v0, 0x1

    aput-object v1, v14, v0

    aput-object v6, v14, v3

    aput-object v11, v14, v13

    const/4 v0, 0x4

    aput-object v12, v14, v0

    const/4 v0, 0x5

    aput-object v10, v14, v0

    const/4 v0, 0x6

    aput-object v2, v14, v0

    .line 1717
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/taobao/weex/WXSDKInstance;->setTemplate(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1723
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z
    :try_end_1ed
    .catchall {:try_start_123 .. :try_end_1ed} :catchall_2c2

    const-string v10, "Instance "

    if-nez v0, :cond_223

    .line 1724
    :try_start_1f1
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    const-string v1, "!isSandBoxContext,and excute"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Did Not Render in SandBox Mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "createInstance"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    return-void

    .line 1729
    :cond_223
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-eq v5, v0, :cond_259

    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-eq v5, v0, :cond_259

    .line 1730
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v0, v1, :cond_259

    .line 1731
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v0, v1, :cond_259

    .line 1732
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_244

    goto :goto_259

    .line 1753
    :cond_244
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "createInstance"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    .line 1754
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    return-void

    .line 1733
    :cond_259
    :goto_259
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "createInstanceContext"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)I

    move-result v0

    .line 1734
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    if-nez v0, :cond_2c1

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXBridgeManager] invokeCreateInstance : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Render error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1738
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1739
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1740
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1738
    invoke-virtual {v8, v1, v0}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c1
    .catchall {:try_start_1f1 .. :try_end_2c1} :catchall_2c2

    :cond_2c1
    return-void

    :catchall_2c2
    move-exception v0

    .line 1758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WXBridgeManager] invokeCreateInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1761
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1762
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1763
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1761
    invoke-virtual {v8, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_300
    return-void
.end method

.method private invokeDestroyInstance(Ljava/lang/String;)V
    .registers 10

    .line 1876
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 1879
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    new-array v6, v1, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 1882
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_1b
    const/4 v4, 0x0

    const-string v5, "destroyInstance"

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    .line 1883
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    goto :goto_46

    :catchall_25
    move-exception v0

    .line 1887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WXBridgeManager] invokeDestroyInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1888
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v2, 0x0

    const-string v3, "invokeDestroyInstance"

    invoke-static {p1, v1, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1890
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-void
.end method

.method private invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1930
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    return-void
.end method

.method private invokeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 2033
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v1, "execJSOnInstance >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2035
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2037
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p1, 0x0

    return-object p1

    .line 2038
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->execJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2395
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "[WXBridgeManager] invoke execJSService: framework.js uninitialized."

    .line 2396
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2397
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2400
    :cond_f
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->execJSService(Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_60

    :catchall_15
    move-exception v0

    const-string v1, "[WXBridgeManager] invokeRegisterService:"

    .line 2402
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2404
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "||"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "inputParams"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_JSSERVICE_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_JSSERVICE_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2410
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "invokeExecJSService"

    .line 2407
    invoke-static {v0, p1, v0, p2, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_60
    return-void
.end method

.method private invokeExecJSWithCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V
    .registers 13

    .line 2045
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 2054
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_f

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p6

    if-eqz p6, :cond_19

    .line 2055
    :cond_f
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/common/IWXBridge;->execJSWithCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;)V

    :cond_19
    return-void
.end method

.method private invokeInitFramework(Landroid/os/Message;)V
    .registers 7

    .line 2072
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 2073
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_b

    :cond_9
    const-string p1, ""

    .line 2076
    :goto_b
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/weex/bridge/WXBridgeManager;->LOW_MEM_VALUE:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 2077
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private invokeRefreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .registers 9

    const/4 v0, 0x0

    .line 1461
    :try_start_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 1462
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v2

    if-nez v2, :cond_3d

    if-eqz v1, :cond_37

    .line 1464
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1465
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1466
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "invokeRefreshInstance FAILED for JSFrameworkInit FAILED, intance will invoke instance.onRenderError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1464
    invoke-virtual {v1, p2, v2}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const-string p2, "[WXBridgeManager] invokeRefreshInstance: framework.js uninitialized."

    .line 1471
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 1474
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1475
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshInstance >>>> instanceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isDirty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1480
    :cond_6e
    iget-boolean v1, p2, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    if-eqz v1, :cond_73

    return-void

    .line 1483
    :cond_73
    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1485
    new-instance v3, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x3

    iget-object v5, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    if-nez v5, :cond_83

    const-string p2, "{}"

    goto :goto_85

    :cond_83
    iget-object p2, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    :goto_85
    invoke-direct {v3, v4, p2}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    new-array p2, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const/4 v1, 0x1

    aput-object v3, p2, v1

    .line 1488
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string v2, "refreshInstance"

    invoke-interface {v1, p1, v0, v2, p2}, Lcom/taobao/weex/common/IWXBridge;->refreshInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    :try_end_97
    .catchall {:try_start_1 .. :try_end_97} :catchall_98

    goto :goto_b8

    :catchall_98
    move-exception p2

    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WXBridgeManager] invokeRefreshInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1491
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const-string v2, "invokeRefreshInstance"

    invoke-static {p1, v1, v2, p2, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1494
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_b8
    return-void
.end method

.method private invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "registerComponents"

    if-eq p1, p2, :cond_80

    .line 2474
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2477
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2478
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    return-void

    :cond_1f
    if-nez p1, :cond_22

    return-void

    .line 2488
    :cond_22
    :try_start_22
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, p2, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_38

    .line 2489
    check-cast p2, Lcom/taobao/weex/bridge/WXBridge;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/taobao/weex/bridge/WXBridge;->registerComponentOnDataRenderNode(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_32

    goto :goto_38

    :catchall_32
    move-exception p2

    const-string v1, "Weex [data_render register err]"

    .line 2492
    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    const/4 p2, 0x1

    new-array p2, p2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x0

    .line 2495
    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object p1

    aput-object p1, p2, v1

    const/4 p1, 0x0

    .line 2498
    :try_start_43
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string v2, ""

    invoke-interface {v1, v2, p1, v0, p2}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v1

    if-nez v1, :cond_50

    const-string p2, "execJS error"
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_52

    goto :goto_6f

    :cond_50
    move-object p2, p1

    goto :goto_6f

    :catchall_52
    move-exception v1

    .line 2502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_COMPONENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2503
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2504
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2507
    :goto_6f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    const-string v1, "[WXBridgeManager] invokeRegisterComponents "

    .line 2508
    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_COMPONENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-static {p1, v1, v0, p2, p1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7f
    return-void

    .line 2472
    :cond_80
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Fail receiver should not use source."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_99

    .line 2422
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_99

    :cond_a
    const/4 p2, 0x1

    new-array v0, p2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x0

    .line 2430
    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2434
    :try_start_14
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v2, v1, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v2, :cond_2a

    .line 2435
    check-cast v1, Lcom/taobao/weex/bridge/WXBridge;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridge;->registerModuleOnDataRenderNode(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_24

    goto :goto_2a

    :catchall_24
    move-exception v1

    const-string v2, "Weex [data_render register err]"

    .line 2438
    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    .line 2441
    :try_start_2b
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string v3, ""

    const-string v4, "registerModules"

    invoke-interface {v2, v3, v1, v4, v0}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "execJS error"
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_5c

    goto :goto_3b

    :cond_3a
    move-object v0, v1

    .line 2445
    :goto_3b
    :try_start_3b
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2446
    :cond_43
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 2447
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_43

    .line 2449
    invoke-static {v3, p2}, Lcom/taobao/weex/bridge/WXModuleManager;->resetModuleState(Ljava/lang/String;Z)V
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_55

    goto :goto_43

    :catchall_55
    move-exception p2

    :try_start_56
    const-string v2, "Weex [invokeRegisterModules]"

    .line 2454
    invoke-static {v2, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5c

    goto :goto_86

    :catchall_5c
    move-exception p2

    .line 2457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_MODULES:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2458
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2461
    :cond_86
    :goto_86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_98

    const-string p1, "[WXBridgeManager] invokeRegisterModules:"

    .line 2462
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_MODULES:Lcom/taobao/weex/common/WXErrorCode;

    const-string p2, "invokeRegisterModules"

    invoke-static {v1, p1, p2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_98
    return-void

    .line 2423
    :cond_99
    :goto_99
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_a4

    const-string v0, "[WXinvokeRegisterModulesBridgeManager] invokeRegisterModules: framework.js uninitialized."

    .line 2424
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2426
    :cond_a4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1531
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->skipFrameworkInit()Z

    move-result p1

    return p1
.end method

.method private isSkipFrameworkInit(Ljava/lang/String;)Z
    .registers 3

    .line 1523
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    .line 1524
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result p1

    return p1
.end method

.method private mock(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private onJsFrameWorkInitSuccees()V
    .registers 5

    .line 3635
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3636
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/taobao/weex/common/IWXBridge;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 3638
    :cond_28
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private registerDomModule()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 2648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2649
    sget-object v1, Lcom/taobao/weex/ui/module/WXDomModule;->METHODS:[Ljava/lang/String;

    const-string v2, "dom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2650
    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerModules(Ljava/util/Map;)V

    return-void
.end method

.method private removeTaskByInstance(Ljava/lang/String;)V
    .registers 3

    .line 1871
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXHashMap;->removeFromMapAndStack(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .registers 4

    .line 1245
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1246
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1247
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1248
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setExceedGPULimitComponentsInfo(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicSize;)V
    .registers 7

    .line 3080
    invoke-static {}, Lcom/taobao/weex/ui/WXRenderManager;->getOpenGLRenderLimitValue()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_102

    .line 3081
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1a

    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_102

    .line 3082
    :cond_1a
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3083
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    .line 3084
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPU limit"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3085
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "component.width"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.height"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3087
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_67

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_67

    .line 3088
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.type"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3090
    :cond_67
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    if-eqz p3, :cond_84

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_84

    .line 3091
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.style"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3093
    :cond_84
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    if-eqz p3, :cond_a1

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXAttr;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a1

    .line 3094
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXAttr;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.attr"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    :cond_a1
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p3

    if-eqz p3, :cond_be

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXEvent;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_be

    .line 3097
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXEvent;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.event"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3099
    :cond_be
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    if-eqz p3, :cond_d1

    .line 3100
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/CSSShorthand;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.margin"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    :cond_d1
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    if-eqz p3, :cond_e4

    .line 3103
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/CSSShorthand;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.padding"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    :cond_e4
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    if-eqz p3, :cond_f7

    .line 3106
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/CSSShorthand;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "component.border"

    invoke-virtual {v1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3108
    :cond_f7
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/WXSDKInstance;->setComponentsInfoExceedGPULimit(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_102
    return-void
.end method

.method private setJSFrameworkInit(Z)V
    .registers 3

    .line 384
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->mInit:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 386
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->onJsFrameWorkInitSuccees()V

    :cond_8
    return-void
.end method

.method private trackComponentAndModulesTime()V
    .registers 2

    .line 2204
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$22;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$22;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateGlobalConfig(Ljava/lang/String;)V
    .registers 2

    .line 2664
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "none"

    .line 2667
    :cond_8
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 2668
    sput-object p0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    .line 2669
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->GLOBAL_CONFIG_KEY:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    new-instance p0, Lcom/taobao/weex/bridge/WXBridgeManager$26;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager$26;-><init>()V

    .line 2688
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2689
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 2691
    :cond_2e
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public varargs asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1119
    new-instance v6, Lcom/taobao/weex/bridge/WXBridgeManager$11;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$11;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bindMeasurementToRenderObject(J)V
    .registers 4

    .line 3448
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3449
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->bindMeasurementToRenderObject(J)V

    :cond_b
    return-void
.end method

.method public callAddChildToRichtext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object v1, p1

    .line 3114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "callAddChildToRichtext"

    if-nez v0, :cond_61

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_61

    .line 3125
    :cond_11
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-object v4, p0

    .line 3134
    iget-object v0, v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, -0x1

    return v0

    .line 3138
    :cond_21
    :try_start_21
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    if-eqz v6, :cond_5f

    .line 3140
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionAddChildToRichtext;

    move-object v5, v0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/taobao/weex/ui/action/GraphicActionAddChildToRichtext;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 3142
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4b} :catch_4c

    goto :goto_5f

    :catch_4c
    move-exception v0

    .line 3145
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[WXBridgeManager] callAddChildToRichtext exception: "

    invoke-static {v6, v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3148
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3146
    invoke-static {p1, v5, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5f
    :goto_5f
    const/4 v0, 0x1

    return v0

    :cond_61
    :goto_61
    move-object v4, p0

    .line 3115
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "[WXBridgeManager] call callAddChildToRichtext arguments is null"

    .line 3116
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3119
    :cond_6d
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v5, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v3, v5, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method public callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[FZ)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;[F[F[FZ)I"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 2779
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "callAddElement"

    if-nez v0, :cond_74

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_74

    .line 2789
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-object/from16 v4, p0

    .line 2800
    iget-object v0, v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, -0x1

    return v0

    .line 2805
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 2807
    new-instance v15, Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-object v5, v15

    move-object v6, v0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object v2, v15

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-direct/range {v5 .. v16}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V

    if-eqz p12, :cond_56

    move-object/from16 v5, p3

    .line 2810
    invoke-virtual {v0, v5, v2}, Lcom/taobao/weex/WXSDKInstance;->addInActiveAddElementAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicActionAddElement;)V

    goto :goto_72

    .line 2812
    :cond_56
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_61} :catch_62

    goto :goto_72

    :catch_62
    move-exception v0

    const-string v2, "[WXBridgeManager] callAddElement exception: "

    .line 2816
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2817
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2819
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 2817
    invoke-static {v1, v2, v3, v0, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_72
    :goto_72
    const/4 v0, 0x1

    return v0

    :cond_74
    :goto_74
    move-object/from16 v4, p0

    .line 2780
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_81

    const-string v0, "[WXBridgeManager] call callAddElement arguments is null"

    .line 2781
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2783
    :cond_81
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v2, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    const/4 v5, 0x0

    invoke-static {v1, v0, v3, v2, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method public callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 2913
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callAddEvent"

    if-nez v0, :cond_4c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4c

    .line 2923
    :cond_16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2931
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, -0x1

    return p1

    .line 2936
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 2938
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;

    invoke-direct {v3, v0, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->executeActionOnRender()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_37} :catch_38

    goto :goto_47

    :catch_38
    move-exception p2

    const-string p3, "[WXBridgeManager] callAddEvent exception: "

    .line 2941
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2942
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2944
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 2942
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2948
    :cond_47
    :goto_47
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 2914
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_57

    const-string p2, "[WXBridgeManager] call callAddEvent arguments is null"

    .line 2915
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2917
    :cond_57
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callAppendTreeCreateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 3331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callAppendTreeCreateFinish"

    if-nez v0, :cond_49

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_49

    .line 3339
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3346
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 3351
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 3352
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;

    invoke-direct {v3, v0, p2}, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 3353
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_37} :catch_38

    goto :goto_47

    :catch_38
    move-exception p2

    const-string v0, "[WXBridgeManager] callAppendTreeCreateFinish exception: "

    .line 3355
    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3356
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3358
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3356
    invoke-static {p1, v0, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_47
    const/4 p1, 0x1

    return p1

    :cond_49
    :goto_49
    const-string p2, "[WXBridgeManager] call callAppendTreeCreateFinish arguments is null"

    .line 3332
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3333
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[F)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;[F[F[F)I"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 2737
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "callCreateBody"

    if-nez v0, :cond_69

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_69

    .line 2745
    :cond_18
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-object v4, p0

    .line 2755
    iget-object v0, v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_28

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, -0x1

    return v0

    .line 2760
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 2762
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;

    move-object v5, v0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V

    .line 2764
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_57} :catch_58

    goto :goto_67

    :catch_58
    move-exception v0

    const-string v5, "[WXBridgeManager] callCreateBody exception: "

    .line 2767
    invoke-static {v5, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2768
    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2770
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 2768
    invoke-static {v1, v5, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_67
    :goto_67
    const/4 v0, 0x1

    return v0

    :cond_69
    :goto_69
    move-object v4, p0

    const-string v0, "[WXBridgeManager] call callCreateBody arguments is null"

    .line 2738
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2739
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v5, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {v1, v0, v3, v5, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method public callCreateFinish(Ljava/lang/String;)I
    .registers 7

    .line 3366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callCreateFinish"

    if-eqz v0, :cond_17

    const-string v0, "[WXBridgeManager] call callCreateFinish arguments is null"

    .line 3367
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3368
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1

    .line 3374
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3380
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p1, -0x1

    return p1

    .line 3385
    :cond_26
    :try_start_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3386
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 3388
    invoke-virtual {v0, v3, v4}, Lcom/taobao/weex/WXSDKInstance;->firstScreenCreateInstanceTime(J)V

    .line 3389
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;

    invoke-direct {v3, v0}, Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 3390
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_47} :catch_48

    goto :goto_57

    :catch_48
    move-exception v0

    const-string v3, "[WXBridgeManager] callCreateFinish exception: "

    .line 3393
    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3394
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3396
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3394
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_57
    :goto_57
    const/4 p1, 0x1

    return p1
.end method

.method public callHasTransitionPros(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3614
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 3615
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p2

    if-eqz p2, :cond_41

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/transition/WXTransition;->getProperties()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1f

    goto :goto_41

    .line 3619
    :cond_1f
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/transition/WXTransition;->getProperties()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3620
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_3f
    const/4 p1, 0x0

    return p1

    :cond_41
    :goto_41
    const/4 p1, -0x1

    return p1
.end method

.method public callLayout(Ljava/lang/String;Ljava/lang/String;IIIIIIZI)I
    .registers 15

    .line 3271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callLayout"

    if-nez v0, :cond_92

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_92

    .line 3282
    :cond_11
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3293
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p1, -0x1

    return p1

    .line 3298
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 3300
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicSize;

    int-to-float p8, p8

    int-to-float p7, p7

    invoke-direct {v3, p8, p7}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    .line 3301
    new-instance p7, Lcom/taobao/weex/ui/action/GraphicPosition;

    int-to-float p5, p5

    int-to-float p3, p3

    int-to-float p6, p6

    int-to-float p4, p4

    invoke-direct {p7, p5, p3, p6, p4}, Lcom/taobao/weex/ui/action/GraphicPosition;-><init>(FFFF)V

    .line 3302
    invoke-direct {p0, p1, p2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setExceedGPULimitComponentsInfo(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 3303
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-result-object p3

    if-eqz p3, :cond_66

    .line 3305
    invoke-virtual {p3, p9}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setRTL(Z)V

    .line 3306
    invoke-virtual {p3, v3}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 3307
    invoke-virtual {p3, p7}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    const-string p4, "_root"

    .line 3308
    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_57

    .line 3309
    invoke-virtual {p3, p10}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setIndex(I)V

    .line 3311
    :cond_57
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p4

    invoke-virtual {p4, p1, p3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    .line 3312
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->removeInActiveAddElmentAction(Ljava/lang/String;)V

    goto :goto_90

    .line 3315
    :cond_66
    new-instance p10, Lcom/taobao/weex/ui/action/GraphicActionLayout;

    move-object p3, p10

    move-object p4, v0

    move-object p5, p2

    move-object p6, p7

    move-object p7, v3

    move p8, p9

    invoke-direct/range {p3 .. p8}, Lcom/taobao/weex/ui/action/GraphicActionLayout;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicPosition;Lcom/taobao/weex/ui/action/GraphicSize;Z)V

    .line 3316
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {p10}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p10}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_80} :catch_81

    goto :goto_90

    :catch_81
    move-exception p2

    const-string p3, "[WXBridgeManager] callLayout exception: "

    .line 3320
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3321
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3323
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3321
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_90
    :goto_90
    const/4 p1, 0x1

    return p1

    .line 3272
    :cond_92
    :goto_92
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_9d

    const-string p2, "[WXBridgeManager] call callLayout arguments is null"

    .line 3273
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3276
    :cond_9d
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 491
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .registers 13

    .line 495
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 496
    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_c

    return-object v0

    .line 500
    :cond_c
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->isNeedValidate()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 501
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 503
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 504
    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXValidateProcessor;->onModuleValidate(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;

    move-result-object p5

    if-nez p5, :cond_2f

    return-object v0

    .line 508
    :cond_2f
    iget-boolean v0, p5, Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;->isSuccess:Z

    if-eqz v0, :cond_38

    .line 509
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXModuleManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 512
    :cond_38
    iget-object p1, p5, Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;->validateInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_54

    .line 514
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[WXBridgeManager] module validate fail. >>> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_54
    return-object p1

    .line 520
    :cond_55
    :try_start_55
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXModuleManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_59} :catch_5a

    return-object p1

    .line 522
    :catch_5a
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string p5, "moduleName"

    .line 523
    invoke-virtual {p1, p5, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "methodName"

    .line 524
    invoke-virtual {p1, p2, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "args"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[WXBridgeManager] callNative : numberFormatException when parsing string to numbers in args"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .line 2872
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callMoveElement"

    if-nez v0, :cond_55

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_55

    .line 2882
    :cond_16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2891
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, -0x1

    return p1

    .line 2896
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 2898
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2899
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_44

    goto :goto_53

    :catch_44
    move-exception p2

    const-string p3, "[WXBridgeManager] callMoveElement exception: "

    .line 2902
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2903
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2905
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 2903
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_53
    :goto_53
    const/4 p1, 0x1

    return p1

    .line 2873
    :cond_55
    :goto_55
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_60

    const-string p2, "[WXBridgeManager] call callMoveElement arguments is null"

    .line 2874
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2876
    :cond_60
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)I
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    .line 759
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v11, "callNative"

    const/4 v12, 0x0

    if-nez v1, :cond_fa

    if-nez v0, :cond_15

    goto/16 :goto_fa

    .line 767
    :cond_15
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 774
    iget-object v1, v7, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v1, :cond_24

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, -0x1

    return v0

    .line 779
    :cond_24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 781
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v13, v3, v1

    const/4 v15, 0x1

    if-eqz v0, :cond_e4

    .line 783
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_e4

    .line 784
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_3c
    if-ge v5, v6, :cond_e4

    .line 788
    :try_start_3e
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_ca

    .line 789
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-eqz v2, :cond_ca

    const-string v2, "module"

    .line 790
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_56} :catch_d4

    const-string v3, "args"

    const-string v4, "method"

    if-eqz v2, :cond_9a

    :try_start_5c
    const-string v10, "dom"

    .line 792
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 793
    invoke-static/range {p1 .. p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v2

    new-array v3, v15, [J

    aput-wide v13, v3, v12

    .line 794
    invoke-virtual {v2, v1, v3}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Lcom/alibaba/fastjson/JSONObject;[J)V

    goto :goto_ca

    :cond_70
    const-string v10, "options"

    .line 796
    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 797
    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 798
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move/from16 v16, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object v6, v10

    .line 797
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    goto :goto_ce

    :cond_9a
    move/from16 v16, v5

    move/from16 v17, v6

    const-string v2, "component"

    .line 800
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c2

    .line 801
    invoke-static/range {p1 .. p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v2

    const-string v5, "ref"

    .line 802
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v5, v4, v1}, Lcom/taobao/weex/ui/module/WXDomModule;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_ce

    .line 804
    :cond_c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown callNative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_ca} :catch_d4

    :cond_ca
    :goto_ca
    move/from16 v16, v5

    move/from16 v17, v6

    :goto_ce
    add-int/lit8 v5, v16, 0x1

    move/from16 v6, v17

    goto/16 :goto_3c

    :catch_d4
    move-exception v0

    const-string v1, "[WXBridgeManager] callNative exception: "

    .line 809
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 810
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 812
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 810
    invoke-static {v8, v1, v11, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_e4
    const-string v0, "undefined"

    .line 816
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    const-string v0, "-1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    goto :goto_f9

    .line 820
    :cond_f5
    invoke-direct {v7, v8, v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    return v15

    :cond_f9
    :goto_f9
    return v12

    :cond_fa
    :goto_fa
    const-string v0, "[WXBridgeManager] call callNative arguments is null"

    .line 760
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 761
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v1, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    const/4 v2, 0x0

    invoke-static {v8, v0, v11, v1, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v12
.end method

.method public callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const-string v0, "callNativeComponent"

    const/4 v1, 0x0

    if-nez p5, :cond_5a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_16

    goto :goto_5a

    .line 723
    :cond_16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 731
    :try_start_19
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object p5

    if-eqz p5, :cond_23

    .line 733
    invoke-virtual {p5, p2, p3, p4}, Lcom/taobao/weex/ui/module/WXDomModule;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_59

    .line 735
    :cond_23
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    if-eqz p2, :cond_33

    .line 736
    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result p2

    if-nez p2, :cond_59

    :cond_33
    const-string p2, "WXBridgeManager"

    .line 737
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "callNativeComponent exception :null == dom ,method:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_49} :catch_4a

    goto :goto_59

    :catch_4a
    move-exception p2

    const-string p3, "[WXBridgeManager] callNativeComponent exception: "

    .line 742
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 743
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 745
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 743
    invoke-static {p1, p3, v0, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_59
    :goto_59
    return-object v1

    :cond_5a
    :goto_5a
    const-string p2, "[WXBridgeManager] call callNativeComponent arguments is null"

    .line 716
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 717
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v0, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 720
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .registers 11

    .line 676
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_78

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_78

    .line 684
    :cond_15
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callNativeModule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/taobao/weex/performance/WXStateRecord;->recordAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    :try_start_38
    const-string v0, "dom"

    .line 694
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 695
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object p2

    if-eqz p2, :cond_4d

    new-array p1, v1, [J

    .line 697
    invoke-virtual {p2, p3, p4, p1}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 699
    :cond_4d
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->createDomModule(Lcom/taobao/weex/WXSDKInstance;)V

    goto :goto_77

    .line 702
    :cond_59
    invoke-virtual/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5d} :catch_5e

    return-object p1

    :catch_5e
    move-exception p1

    .line 706
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[WXBridgeManager] callNativeModule exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 707
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_77
    return-object v2

    :cond_78
    :goto_78
    const-string p2, "[WXBridgeManager] call callNativeModule arguments is null"

    .line 677
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 678
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "callNativeModule"

    const-string p4, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, p3, p4, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 681
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 640
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v0, 0x0

    const-string v1, "callNativeModule"

    const/4 v2, 0x0

    if-nez p5, :cond_51

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_51

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_17

    goto :goto_51

    .line 648
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    :try_start_1a
    const-string p5, "dom"

    .line 656
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2d

    .line 657
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object p2

    new-array p5, v0, [J

    .line 658
    invoke-virtual {p2, p3, p4, p5}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 660
    :cond_2d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_32

    return-object p1

    :catch_32
    move-exception p2

    .line 664
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[WXBridgeManager] callNative exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 665
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 666
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-static {p1, p3, v1, p2, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    :cond_51
    :goto_51
    const-string p2, "[WXBridgeManager] call callNativeModule arguments is null"

    .line 641
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 642
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v1, p3, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 645
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public callRefreshFinish(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 867
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "callRefreshFinish"

    if-eqz v0, :cond_17

    const-string p2, "[WXBridgeManager] call callRefreshFinish arguments is null"

    .line 868
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 869
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v1

    .line 875
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 882
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p1, -0x1

    return p1

    .line 887
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 889
    new-instance v4, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;

    invoke-direct {v4, v0}, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 890
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_41

    goto :goto_50

    :catch_41
    move-exception v0

    const-string v4, "[WXBridgeManager] callRefreshFinish exception: "

    .line 893
    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 894
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 896
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-static {p1, v4, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_50
    :goto_50
    const-string v0, "undefined"

    .line 899
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_66

    .line 903
    :cond_61
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_66
    :goto_66
    return v1
.end method

.method public callRemoveChildFromRichtext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 3155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveChildFromRichtext"

    if-nez v0, :cond_4f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4f

    .line 3166
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3173
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 3177
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 3179
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRemoveChildFromRichtext;

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicActionRemoveChildFromRichtext;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_3e

    goto :goto_4d

    :catch_3e
    move-exception p2

    const-string p3, "[WXBridgeManager] callRemoveChildFromRichtext exception: "

    .line 3183
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3184
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3186
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3184
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4d
    :goto_4d
    const/4 p1, 0x1

    return p1

    .line 3156
    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_5a

    const-string p2, "[WXBridgeManager] call callRemoveChildFromRichtext arguments is null"

    .line 3157
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3160
    :cond_5a
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callRemoveElement(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 2827
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveElement"

    if-nez v0, :cond_59

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_59

    .line 2837
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2844
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 2849
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 2851
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;

    invoke-direct {v3, v0, p2}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 2852
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 2853
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->removeInActiveAddElmentAction(Ljava/lang/String;)V

    goto :goto_57

    .line 2856
    :cond_38
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    .line 2857
    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_47} :catch_48

    goto :goto_57

    :catch_48
    move-exception p2

    const-string v0, "[WXBridgeManager] callRemoveElement exception: "

    .line 2861
    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2862
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2864
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 2862
    invoke-static {p1, v0, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_57
    :goto_57
    const/4 p1, 0x1

    return p1

    .line 2828
    :cond_59
    :goto_59
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_64

    const-string p2, "[WXBridgeManager] call callRemoveElement arguments is null"

    .line 2829
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2831
    :cond_64
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 2954
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveEvent"

    if-nez v0, :cond_4c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4c

    .line 2964
    :cond_16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2972
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, -0x1

    return p1

    .line 2977
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 2979
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;

    invoke-direct {v3, v0, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;->executeActionOnRender()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_37} :catch_38

    goto :goto_47

    :catch_38
    move-exception p2

    const-string p3, "[WXBridgeManager] callRemoveEvent exception: "

    .line 2982
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2983
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2985
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 2983
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2989
    :cond_47
    :goto_47
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 2955
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_57

    const-string p2, "[WXBridgeManager] call callRemoveEvent arguments is null"

    .line 2956
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2958
    :cond_57
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callRenderSuccess(Ljava/lang/String;)I
    .registers 6

    .line 3404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRenderSuccess"

    if-eqz v0, :cond_17

    const-string v0, "[WXBridgeManager] call callRenderSuccess arguments is null"

    .line 3405
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3406
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1

    .line 3412
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3418
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p1, -0x1

    return p1

    .line 3423
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 3425
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;

    invoke-direct {v3, v0}, Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 3426
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_41

    goto :goto_50

    :catch_41
    move-exception v0

    const-string v3, "[WXBridgeManager] callRenderSuccess exception: "

    .line 3429
    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3430
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3432
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3430
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_50
    :goto_50
    const/4 p1, 0x1

    return p1
.end method

.method public callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1002
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1003
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1004
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1006
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1007
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1009
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1011
    :cond_39
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$7;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/bridge/WXBridgeManager$7;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public callReportCrashReloadPage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    const-string v0, "callReportCrashReloadPage"

    .line 909
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 912
    :try_start_8
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1c

    .line 914
    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v6

    .line 915
    invoke-virtual {v4, v5}, Lcom/taobao/weex/WXSDKInstance;->setHasException(Z)V

    move-object v11, v6

    goto :goto_1d

    :cond_1c
    move-object v11, v2

    .line 917
    :goto_1d
    new-instance v4, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    const-string v6, "weexCoreThreadStackTrace:"

    .line 918
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->getWeexCoreThreadStackTrace()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "wxStateInfo"

    .line 919
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/performance/WXStateRecord;->getStateInfo()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_ea

    const-string v6, "null"

    if-nez v1, :cond_92

    .line 923
    :try_start_45
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    invoke-virtual {v7}, Lcom/taobao/weex/bridge/WXParams;->getCrashFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "jsengine"

    .line 925
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callReportCrashReloadPage crashFile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_45 .. :try_end_76} :catchall_77

    goto :goto_7f

    :catchall_77
    move-exception v1

    .line 928
    :try_start_78
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 930
    :cond_7f
    :goto_7f
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8a

    goto :goto_8b

    :cond_8a
    move-object v6, p1

    :goto_8b
    invoke-virtual {v1, v6}, Lcom/taobao/weex/performance/WXStateRecord;->onJSCCrash(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p0, p2, p1, v11, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_ad

    .line 933
    :cond_92
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9d

    goto :goto_9e

    :cond_9d
    move-object v6, p1

    :goto_9e
    invoke-virtual {p2, v6}, Lcom/taobao/weex/performance/WXStateRecord;->onJSEngineReload(Ljava/lang/String;)V

    const-string v7, "jsBridge"

    .line 934
    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    const-string v9, "reboot jsc Engine"

    move-object v6, p0

    move-object v10, p1

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Lcom/taobao/weex/bridge/WXBridgeManager;->commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 937
    :goto_ad
    sget p2, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/16 v1, 0x32

    if-le p2, v1, :cond_ce

    const-string p2, "jsEngine"

    .line 938
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE_EXCEED_LIMIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reInitCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v1, v0, v5, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v3

    .line 942
    :cond_ce
    sget p2, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    add-int/2addr p2, v5

    sput p2, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    .line 944
    invoke-direct {p0, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 945
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    const-string p2, ""

    .line 946
    invoke-virtual {p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 948
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz p2, :cond_f0

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_e6} :catch_ea

    if-eqz p2, :cond_f0

    const/4 p1, -0x1

    return p1

    :catch_ea
    move-exception p2

    const-string v1, "[WXBridgeManager] callReportCrashReloadPage exception: "

    .line 952
    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    :cond_f0
    :try_start_f0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    if-eqz p2, :cond_122

    .line 958
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object p2

    .line 957
    invoke-virtual {p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->shouldReloadCurrentInstance(Ljava/lang/String;)Z

    move-result p2

    .line 959
    new-instance v1, Lcom/taobao/weex/ui/action/ActionReloadPage;

    invoke-direct {v1, p1, p2}, Lcom/taobao/weex/ui/action/ActionReloadPage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/ActionReloadPage;->executeAction()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_112} :catch_113

    goto :goto_122

    :catch_113
    move-exception p2

    const-string v1, "[WXBridgeManager] callReloadPage exception: "

    .line 963
    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 964
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 966
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 964
    invoke-static {p1, v1, v0, p2, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_122
    :goto_122
    return v3
.end method

.method public callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3041
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateAttrs"

    if-nez v0, :cond_4f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4f

    .line 3052
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3059
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 3064
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 3066
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;

    invoke-direct {v3, v0, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;)V

    .line 3067
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_3e

    goto :goto_4d

    :catch_3e
    move-exception p2

    const-string p3, "[WXBridgeManager] callUpdateAttrs exception: "

    .line 3070
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3071
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3073
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3071
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4d
    :goto_4d
    const/4 p1, 0x1

    return p1

    .line 3042
    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_5a

    const-string p2, "[WXBridgeManager] call callUpdateAttrs arguments is null"

    .line 3043
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3046
    :cond_5a
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callUpdateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 827
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "callUpdateFinish"

    if-eqz v0, :cond_17

    const-string p2, "[WXBridgeManager] call callUpdateFinish arguments is null"

    .line 828
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 829
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v1

    .line 835
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 842
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p1, -0x1

    return p1

    .line 847
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_3d

    :catch_2e
    move-exception v0

    const-string v4, "[WXBridgeManager] callUpdateFinish exception: "

    .line 850
    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 851
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 853
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 851
    invoke-static {p1, v4, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_3d
    if-eqz p2, :cond_5b

    .line 856
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "undefined"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_5b

    .line 860
    :cond_56
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_5b
    :goto_5b
    return v1
.end method

.method public callUpdateRichtextChildAttr(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 3231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateRichtextChildAttr"

    if-nez v0, :cond_54

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_54

    .line 3242
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3250
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 3254
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 3256
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextAttr;

    move-object v3, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextAttr;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3257
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_42} :catch_43

    goto :goto_52

    :catch_43
    move-exception p2

    const-string p3, "[WXBridgeManager] callUpdateRichtextChildAttr exception: "

    .line 3260
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3261
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3263
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3261
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_52
    :goto_52
    const/4 p1, 0x1

    return p1

    .line 3232
    :cond_54
    :goto_54
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_5f

    const-string p2, "[WXBridgeManager] call callUpdateRichtextChildAttr arguments is null"

    .line 3233
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3236
    :cond_5f
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callUpdateRichtextStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 3193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateRichtextStyle"

    if-nez v0, :cond_54

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_54

    .line 3204
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3212
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 3216
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 3218
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextStyle;

    move-object v3, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_42} :catch_43

    goto :goto_52

    :catch_43
    move-exception p2

    const-string p3, "[WXBridgeManager] callUpdateRichtextStyle exception: "

    .line 3222
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3223
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3225
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3223
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_52
    :goto_52
    const/4 p1, 0x1

    return p1

    .line 3194
    :cond_54
    :goto_54
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_5f

    const-string p2, "[WXBridgeManager] call callUpdateRichtextStyle arguments is null"

    .line 3195
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3198
    :cond_5f
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object v1, p1

    .line 2998
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "callUpdateStyle"

    if-nez v0, :cond_5a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5a

    .line 3009
    :cond_11
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-object v4, p0

    .line 3019
    iget-object v0, v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, -0x1

    return v0

    .line 3024
    :cond_21
    :try_start_21
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    if-eqz v6, :cond_58

    .line 3026
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;

    move-object v5, v0

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 3027
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_48} :catch_49

    goto :goto_58

    :catch_49
    move-exception v0

    const-string v5, "[WXBridgeManager] callUpdateStyle exception: "

    .line 3030
    invoke-static {v5, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3031
    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3033
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3031
    invoke-static {p1, v5, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_58
    :goto_58
    const/4 v0, 0x1

    return v0

    :cond_5a
    :goto_5a
    move-object v4, p0

    .line 2999
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "[WXBridgeManager] call callUpdateStyle arguments is null"

    .line 3000
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3003
    :cond_66
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v5, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v3, v5, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1391
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1368
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

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

    const/4 v0, 0x0

    .line 1377
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 7

    .line 1404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4a

    sget-boolean v0, Lio/dcloud/common/util/RuningAcitvityUtil;->isRuningActivity:Z

    if-nez v0, :cond_15

    goto :goto_4a

    .line 1409
    :cond_15
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_31

    .line 1410
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_31

    .line 1411
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_4a

    :cond_31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 1413
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "callback"

    invoke-direct {p0, p2, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 1414
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 13

    .line 1419
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v7, Lcom/taobao/weex/bridge/WXBridgeManager$15;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager$15;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public checkJsEngineMultiThread()V
    .registers 3

    .line 312
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 314
    invoke-interface {v0}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->enableBackupThread()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 317
    :goto_10
    sget-boolean v1, Lcom/taobao/weex/bridge/WXBridgeManager;->isJsEngineMultiThreadEnable:Z

    if-ne v0, v1, :cond_15

    return-void

    .line 321
    :cond_15
    sput-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isJsEngineMultiThreadEnable:Z

    .line 323
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 324
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 325
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    goto :goto_2f

    .line 327
    :cond_27
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$2;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXErrorCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4f

    if-nez p2, :cond_9

    goto :goto_4f

    .line 1504
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " commitJscCrashAlarmMonitor errMsg "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReportCrash"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string p1, "jscCrashStack"

    .line 1508
    invoke-interface {v7, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_2e

    .line 1510
    invoke-interface {v7, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1512
    :cond_2e
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 1514
    new-instance p3, Lcom/taobao/weex/common/WXJSExceptionInfo;

    const-string v5, "callReportCrash"

    const-string v6, "weex core process crash and restart exception"

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXJSExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1515
    invoke-interface {p1, p3}, Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;->onJSException(Lcom/taobao/weex/common/WXJSExceptionInfo;)V

    .line 1517
    invoke-virtual {p3}, Lcom/taobao/weex/common/WXJSExceptionInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1544
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p1, "WXBridgeManager"

    const-string p2, "createInstance failed, SDKInstance does not exist"

    .line 1546
    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1549
    :cond_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    if-eqz p2, :cond_8f

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8f

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v1, :cond_25

    goto :goto_8f

    .line 1558
    :cond_25
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_71

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v1

    if-nez v1, :cond_71

    sget v1, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_71

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    if-nez v1, :cond_71

    .line 1559
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1560
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1561
    invoke-virtual {p4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " isJSFrameworkInit=="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " reInitCount == 1"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1559
    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    new-instance p2, Lcom/taobao/weex/bridge/WXBridgeManager$17;

    invoke-direct {p2, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$17;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    const-string p3, "initFrameworkInCreateInstance"

    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void

    .line 1572
    :cond_71
    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->createDomModule(Lcom/taobao/weex/WXSDKInstance;)V

    .line 1573
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    const-string v2, "wxStartLoadBundle"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1574
    new-instance v8, Lcom/taobao/weex/bridge/WXBridgeManager$18;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager$18;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    const-string p2, "createInstance"

    invoke-virtual {p0, v8, p1, v0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void

    .line 1550
    :cond_8f
    :goto_8f
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1551
    invoke-virtual {p3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1552
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instanceId=="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " template =="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mJSHandler== "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    .line 1553
    invoke-virtual {p1}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1550
    invoke-virtual {v0, p3, p1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1539
    new-instance v0, Lcom/taobao/weex/Script;

    invoke-direct {v0, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 2517
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_7

    .line 2518
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->quit()Z

    :cond_7
    const/4 v0, 0x0

    .line 2520
    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 2521
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_11

    .line 2522
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_11
    return-void
.end method

.method public destroyInstance(Ljava/lang/String;)V
    .registers 5

    .line 1852
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 1853
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_22

    .line 1856
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_12

    .line 1857
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1860
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1861
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$19;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$19;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "destroyInstance"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public dumpIpcPageInfo()Ljava/lang/String;
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_d

    .line 466
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridge;->nativeDumpIpcPageQueueInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public execJSService(Ljava/lang/String;)V
    .registers 4

    .line 2385
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$25;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$25;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v1, "execJSService"

    invoke-virtual {p0, v0, p1, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

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

    .line 1267
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
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

    .line 1282
    invoke-virtual/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
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

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1290
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .registers 15
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
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1299
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V
    .registers 14
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
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    .line 1305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 1306
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_17

    goto :goto_78

    .line 1309
    :cond_17
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1313
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_41

    .line 1314
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v1, v2, :cond_3d

    .line 1315
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_41

    .line 1316
    :cond_3d
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_6f

    :cond_41
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-nez p7, :cond_5c

    new-array p7, v4, [Ljava/lang/Object;

    aput-object p2, p7, v3

    aput-object p3, p7, v2

    aput-object p4, p7, v1

    aput-object p5, p7, v0

    const-string p2, "fireEvent"

    .line 1319
    invoke-direct {p0, p2, p1, p6, p7}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 1320
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    goto :goto_6f

    :cond_5c
    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v3

    aput-object p3, v5, v2

    aput-object p4, v5, v1

    aput-object p5, v5, v0

    const-string v2, "fireEventSync"

    move-object v0, p0

    move-object v1, p7

    move-object v3, p1

    move-object v4, p6

    .line 1322
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    :goto_6f
    return-void

    .line 1310
    :cond_70
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string p2, "fireEvent must be called by main thread"

    invoke-direct {p1, p2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    :goto_78
    return-void
.end method

.method public forceLayout(Ljava/lang/String;)V
    .registers 3

    .line 3469
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3470
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->forceLayout(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .registers 4

    if-eqz p1, :cond_35

    .line 1802
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "bundleType"

    .line 1803
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vue"

    .line 1804
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "vue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_30

    :cond_1d
    const-string v0, "Rax"

    .line 1806
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "rax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 1807
    :cond_2d
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1

    .line 1805
    :cond_30
    :goto_30
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1

    :catchall_33
    move-exception p1

    goto :goto_3d

    :cond_35
    if-eqz p2, :cond_3a

    .line 1811
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1

    .line 1840
    :cond_3a
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_33

    return-object p1

    .line 1842
    :goto_3d
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1843
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1
.end method

.method public getFirstScreenRenderTime(Ljava/lang/String;)[J
    .registers 3

    .line 3516
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3517
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getFirstScreenRenderTime(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 3519
    fill-array-data p1, :array_14

    return-object p1

    :array_14
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getInitParams()Lcom/taobao/weex/bridge/WXParams;
    .registers 2

    .line 2303
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    return-object v0
.end method

.method public getJSLooper()Landroid/os/Looper;
    .registers 2

    .line 2700
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_9

    .line 2701
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getMeasurementFunc(Ljava/lang/String;J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .registers 5

    .line 3440
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 3442
    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->getContentBoxMeasurement(J)Lcom/taobao/weex/layout/ContentBoxMeasurement;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method public getRenderFinishTime(Ljava/lang/String;)[J
    .registers 3

    .line 3523
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3524
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getRenderFinishTime(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 3526
    fill-array-data p1, :array_14

    return-object p1

    :array_14
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getWeexCoreThreadStackTrace()Ljava/lang/String;
    .registers 10

    .line 3658
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-nez v0, :cond_7

    const-string v0, "null == mJSThread"

    return-object v0

    .line 3661
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_c
    const-string v1, "Thread Name: \'%s\'\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3664
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXThread;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "\"%s\" prio=%d tid=%d %s\n"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v6}, Lcom/taobao/weex/common/WXThread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v6}, Lcom/taobao/weex/common/WXThread;->getPriority()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v7}, Lcom/taobao/weex/common/WXThread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v7}, Lcom/taobao/weex/common/WXThread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3667
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_61
    if-ge v4, v3, :cond_81

    aget-object v6, v1, v4

    const-string v7, "\tat %s\n"

    new-array v8, v2, [Ljava/lang/Object;

    .line 3668
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v7, v8}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_76} :catch_79

    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :catch_79
    move-exception v1

    const-string v2, "weex"

    const-string v3, "getJSThreadStackTrace error:"

    .line 3671
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3673
    :cond_81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1900
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x6

    if-eq v1, v2, :cond_18

    const/4 v2, 0x7

    if-eq v1, v2, :cond_14

    goto :goto_45

    .line 1903
    :cond_14
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeInitFramework(Landroid/os/Message;)V

    goto :goto_45

    .line 1906
    :cond_18
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCallJSBatch(Landroid/os/Message;)V

    goto :goto_45

    .line 1918
    :cond_1c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_45

    .line 1919
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1920
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v1, p1}, Lcom/taobao/weex/common/IWXBridge;->takeHeapSnapshot(Ljava/lang/String;)V

    goto :goto_45

    .line 1909
    :cond_2a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;

    if-nez p1, :cond_31

    goto :goto_45

    .line 1913
    :cond_31
    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v3, 0x2

    iget-object p1, p1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->callbackId:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    new-array p1, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    aput-object v1, p1, v0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "setTimeoutCallback"

    .line 1915
    invoke-direct {p0, v2, v1, v3, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    :cond_45
    :goto_45
    return v0
.end method

.method public declared-synchronized initScriptsFramework(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 1257
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1258
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 1259
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1260
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1261
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1262
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public invokeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)I
    .registers 10

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeCreateInstanceContext instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1996
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " isJSFrameworkInit\uff1a%b"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1995
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v1, "createInstanceContext >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "function:"

    .line 1998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_55

    .line 2000
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v0, " tasks:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    :cond_55
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2002
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2004
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->createInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result p1

    return p1
.end method

.method public invokeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    .registers 8

    .line 2010
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v1, "callJS >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "function:"

    .line 2011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_22

    .line 2013
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v0, " tasks:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    :cond_22
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2015
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2017
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {p5, p1}, Lcom/taobao/weex/common/IWXBridge;->removeInstanceRenderType(Ljava/lang/String;)V

    .line 2018
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->destoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    return-void
.end method

.method public invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    .registers 15

    .line 1935
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 1944
    sget-boolean p5, Lio/dcloud/common/util/RuningAcitvityUtil;->isRuningActivity:Z

    if-nez p5, :cond_8

    return-void

    .line 1947
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1948
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p5

    if-eqz p5, :cond_61

    .line 1949
    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v2, v3, :cond_61

    .line 1951
    array-length p2, p4

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5b

    const/4 p2, 0x0

    aget-object p2, p4, p2

    iget-object p2, p2, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_5b

    const/4 p2, 0x1

    aget-object p3, p4, p2

    iget-object p3, p3, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    instance-of p3, p3, Ljava/lang/String;

    if-eqz p3, :cond_5b

    aget-object p2, p4, p2

    iget-object p2, p2, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 1953
    invoke-direct {p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->extractCallbackArgs(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_41

    goto :goto_5b

    .line 1957
    :cond_41
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/util/Pair;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Landroid/util/Pair;

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_75

    :cond_5b
    :goto_5b
    const-string p1, "invokeExecJS on data render that is not a callback call"

    .line 1954
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 1959
    :cond_61
    new-instance v8, Lcom/taobao/weex/bridge/WXBridgeManager$20;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager$20;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    const-string p1, "ExecJs"

    invoke-static {v8, p5, p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    .line 1964
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_75
    if-eqz p5, :cond_94

    .line 1967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 1968
    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string p4, "wxFSCallJsTotalNum"

    invoke-virtual {p3, p4, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    .line 1969
    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p3

    long-to-double v0, p1

    const-string p4, "wxFSCallJsTotalTime"

    invoke-virtual {p3, p4, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    .line 1970
    invoke-virtual {p5, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->callJsTime(J)V

    :cond_94
    return-void
.end method

.method public isJSFrameworkInit()Z
    .registers 2

    .line 380
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInit:Z

    return v0
.end method

.method public isJSThread()Z
    .registers 6

    .line 2418
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public jsEngineMultiThreadEnable()Z
    .registers 2

    .line 307
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isJsEngineMultiThreadEnable:Z

    return v0
.end method

.method public loadJsBundleInPreInitMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1083
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$9;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public markDirty(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 3591
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3592
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->markDirty(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method

.method public notifyLayout(Ljava/lang/String;)Z
    .registers 3

    .line 3461
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    .line 3462
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->notifyLayout(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public notifySerializeCodeCache()V
    .registers 2

    .line 2707
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$27;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$27;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTrimMemory()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onInstanceClose(Ljava/lang/String;)V
    .registers 3

    .line 3480
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3481
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->onInstanceClose(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onInteractionTimeUpdate(Ljava/lang/String;)V
    .registers 3

    .line 296
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$1;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public optionObjConvert(ZLcom/taobao/weex/bridge/WXBridgeManager$BundType;Lcom/taobao/weex/bridge/WXJSObject;)Lcom/taobao/weex/bridge/WXJSObject;
    .registers 8

    if-nez p1, :cond_3

    return-object p3

    .line 1774
    :cond_3
    :try_start_3
    iget-object p1, p3, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1775
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "env"

    .line 1777
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_39

    const-string v0, "options"

    .line 1778
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1780
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1781
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 1785
    :cond_39
    new-instance p2, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_44

    return-object p2

    :catchall_44
    move-exception p1

    .line 1787
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object p3
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0, p1, v0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .registers 6

    .line 579
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 583
    :cond_5
    invoke-static {p1, p3, p4}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 584
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 585
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postDelay(Ljava/lang/Runnable;J)V
    .registers 5

    .line 594
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 597
    :cond_5
    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .registers 4

    .line 562
    invoke-static {p1, p2, p3}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    .line 563
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

    if-eqz p2, :cond_f

    invoke-interface {p2, p1}, Lcom/taobao/weex/utils/batch/Interceptor;->take(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_f

    return-void

    .line 567
    :cond_f
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez p2, :cond_14

    return-void

    .line 570
    :cond_14
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .registers 6

    .line 1448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    if-nez p2, :cond_9

    goto :goto_19

    .line 1451
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$16;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    :goto_19
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

    .line 2366
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    .line 2367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_25

    .line 2370
    :cond_d
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$24;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$24;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;)V

    .line 2377
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 2378
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_25

    .line 2380
    :cond_22
    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3628
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3629
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 3631
    :cond_c
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
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

    if-eqz p1, :cond_1d

    .line 2348
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 2349
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2350
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_1d

    .line 2352
    :cond_14
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$23;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$23;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public reloadPageLayout(Ljava/lang/String;)V
    .registers 3

    .line 3602
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3603
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->reloadPageLayout(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public removeMessage(ILjava/lang/Object;)V
    .registers 4

    .line 631
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_1c

    .line 632
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_1c

    .line 635
    :cond_17
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 2532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportJSException >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2536
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    if-eqz p1, :cond_130

    .line 2537
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    if-eqz v3, :cond_130

    const/4 v4, 0x1

    .line 2538
    invoke-virtual {v3, v4}, Lcom/taobao/weex/WXSDKInstance;->setHasException(Z)V

    const-string v5, "createInstance"

    .line 2540
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->isContentMd5Match()Z

    move-result v6

    if-nez v6, :cond_d0

    .line 2544
    :cond_44
    :try_start_44
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v6

    if-eqz v6, :cond_6c

    sget v6, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    if-le v6, v4, :cond_6c

    sget v6, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_6c

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->isNeedReLoad()Z

    move-result v6

    if-nez v6, :cond_6c

    .line 2545
    new-instance v1, Lcom/taobao/weex/ui/action/ActionReloadPage;

    invoke-direct {v1, p1, v4}, Lcom/taobao/weex/ui/action/ActionReloadPage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/ActionReloadPage;->executeAction()V

    .line 2546
    invoke-virtual {v3, v4}, Lcom/taobao/weex/WXSDKInstance;->setNeedLoad(Z)V

    return-void

    .line 2549
    :cond_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 2550
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reportJSException >>>> instanceId:"

    .line 2551
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2553
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extInitTime:"

    .line 2554
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v6, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkTimeOrigin:J

    sub-long/2addr v1, v6

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extInitErrorMsg:"

    .line 2555
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2557
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 2558
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 2557
    invoke-virtual {v3, v2, v1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sInAliWeex:Z

    if-nez v1, :cond_c7

    .line 2562
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, p3, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_c7} :catch_c8

    :cond_c7
    return-void

    :catch_c8
    move-exception v1

    .line 2567
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2570
    :cond_d0
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    if-nez v1, :cond_e1

    .line 2571
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE:Lcom/taobao/weex/common/WXErrorCode;

    goto :goto_129

    :cond_e1
    const-string v1, "createInstanceContext"

    .line 2572
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    if-nez v1, :cond_f4

    .line 2573
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE_CONTEXT:Lcom/taobao/weex/common/WXErrorCode;

    goto :goto_129

    :cond_f4
    const-string v1, "UpdateComponentData"

    .line 2575
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_114

    const-string v1, "CreatePageWithContent"

    .line 2576
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_114

    const-string v1, "PostTaskToMsgLoop"

    .line 2577
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_114

    const-string v1, "JsfmNotInitInEagleMode"

    .line 2578
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 2579
    :cond_114
    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    if-nez v1, :cond_11f

    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_EAGLE_RENDER_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    goto :goto_129

    :cond_11f
    const-string v1, "dc_checkappkey"

    .line 2580
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 2581
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_VALIDAPPKEY:Lcom/taobao/weex/common/WXErrorCode;

    .line 2583
    :cond_129
    :goto_129
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    :cond_130
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->doReportJSException(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public restart()V
    .registers 3

    const/4 v0, 0x0

    .line 535
    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 536
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 537
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V

    .line 538
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-interface {v0, v1}, Lcom/taobao/weex/common/IWXBridge;->resetWXBridge(Z)V

    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5

    if-eqz p1, :cond_1e

    .line 623
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_1e

    .line 624
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_1e

    .line 627
    :cond_19
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setDefaultRootSize(Ljava/lang/String;FFZZ)V
    .registers 13

    .line 3492
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3493
    :cond_c
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/common/IWXBridge;->setDefaultHeightAndWidthIntoRootDom(Ljava/lang/String;FFZZ)V

    :cond_16
    return-void
.end method

.method public setDeviceDisplay(Ljava/lang/String;FFF)V
    .registers 12

    .line 3530
    new-instance v6, Lcom/taobao/weex/bridge/WXBridgeManager$28;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$28;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;FFF)V

    invoke-virtual {p0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDeviceDisplayOfPage(Ljava/lang/String;FF)V
    .registers 5

    .line 3608
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3609
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setDeviceDisplayOfPage(Ljava/lang/String;FF)V

    :cond_11
    return-void
.end method

.method public setFlexDirectionDef(Ljava/lang/String;)V
    .registers 3

    .line 3652
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3653
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->setFlexDirectionDef(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setInterceptor(Lcom/taobao/weex/utils/batch/Interceptor;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

    return-void
.end method

.method public setLogLevel(IZ)V
    .registers 4

    .line 601
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$6;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;IZ)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 6

    .line 3573
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3574
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :cond_11
    return-void
.end method

.method public setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 6

    .line 3579
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3580
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :cond_11
    return-void
.end method

.method public setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3597
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3598
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 6

    .line 3585
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3586
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :cond_11
    return-void
.end method

.method public setRenderContentWrapContentToCore(ZLjava/lang/String;)V
    .registers 4

    .line 3498
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3499
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->setRenderContainerWrapContent(ZLjava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setSandBoxContext(Z)V
    .registers 3

    .line 337
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-eq p1, v0, :cond_41

    .line 338
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    .line 340
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 p1, 0x0

    .line 342
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 343
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 345
    sget-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-nez p1, :cond_22

    .line 346
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "main.js"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    .line 348
    :cond_22
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "weex-main-jsfm.js"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 350
    :goto_2c
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 352
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 353
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    goto :goto_41

    .line 355
    :cond_39
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$3;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public declared-synchronized setStackTopInstance(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 547
    :try_start_1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$5;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 554
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    .line 3510
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3511
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_11
    return-void
.end method

.method public setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    .line 3504
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3505
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_11
    return-void
.end method

.method setTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 612
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 613
    iput v1, v0, Landroid/os/Message;->what:I

    .line 614
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;-><init>()V

    .line 615
    iput-object p1, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->callbackId:Ljava/lang/String;

    .line 616
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-long p1, p1

    iput-wide p1, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->time:J

    .line 617
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 619
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    iget-wide v1, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->time:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setUseSingleProcess(Z)V
    .registers 3

    .line 277
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    if-eq p1, v0, :cond_6

    .line 278
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    :cond_6
    return-void
.end method

.method public setViewPortWidth(Ljava/lang/String;F)V
    .registers 4

    .line 3642
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3643
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->setViewPortWidth(Ljava/lang/String;F)V

    :cond_b
    return-void
.end method

.method public shouldReloadCurrentInstance(Ljava/lang/String;)Z
    .registers 9

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 974
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v2

    if-eqz v2, :cond_4e

    const-string v3, "android_weex_ext_config"

    const-string v4, "check_biz_url"

    const-string v5, "true"

    .line 977
    invoke-interface {v2, v3, v4, v5}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 976
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 980
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check_biz_url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_4e

    .line 981
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 982
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 984
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 989
    :cond_4e
    sget-object v2, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    if-eqz v2, :cond_69

    if-eqz v2, :cond_5a

    .line 990
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_5a
    sget-wide v2, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v6, v2, v4

    if-lez v6, :cond_65

    goto :goto_69

    .line 996
    :cond_65
    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    const/4 p1, 0x0

    return p1

    .line 992
    :cond_69
    :goto_69
    sput-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    .line 993
    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    const/4 p1, 0x1

    return p1
.end method

.method public stopRemoteDebug()V
    .registers 7

    .line 472
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz v0, :cond_34

    .line 474
    :try_start_4
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string v0, "com.taobao.weex.devtools.debug.DebugServerProxy"

    .line 475
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    .line 477
    :cond_10
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-eqz v0, :cond_34

    const-string v1, "stop"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 478
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 480
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_34

    :catchall_34
    :cond_34
    return-void
.end method

.method public varargs syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/taobao/weex/bridge/EventResult;"
        }
    .end annotation

    .line 1100
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1101
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$10;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager$10;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 1109
    :try_start_11
    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x64

    .line 1110
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c

    return-object v1

    :catch_1c
    move-exception p1

    const-string p2, "syncCallJSEventWithResult"

    .line 1113
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public syncExecJsOnInstanceWithResult(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    .line 1061
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1062
    new-instance v2, Lcom/taobao/weex/bridge/WXBridgeManager$8;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager$8;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V

    .line 1070
    :try_start_d
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 p1, 0x64

    .line 1071
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1072
    invoke-virtual {v2}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 1073
    invoke-virtual {v2}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_27

    return-object p1

    :cond_26
    return-object v0

    :catchall_27
    move-exception p1

    const-string p2, "syncCallExecJsOnInstance"

    .line 1077
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public takeJSHeapSnapshot(Ljava/lang/String;)V
    .registers 3

    .line 2719
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2720
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 2721
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2722
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2723
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 3539
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3542
    :cond_7
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$29;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$29;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 3548
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$30;

    invoke-direct {p1, p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$30;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 3555
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$31;

    invoke-direct {p1, p0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager$31;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    if-eqz p4, :cond_29

    .line 3563
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$32;

    invoke-direct {p1, p0, p4}, Lcom/taobao/weex/bridge/WXBridgeManager$32;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_29
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass1 (com.taobao.weex.bridge.WXBridgeManager$1)
.class Lcom/taobao/weex/bridge/WXBridgeManager$1;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->onInteractionTimeUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3

    .line 296
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v0, :cond_17

    .line 300
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridge;->nativeOnInteractionTimeUpdate(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass10 (com.taobao.weex.bridge.WXBridgeManager$10)
.class Lcom/taobao/weex/bridge/WXBridgeManager$10;
.super Lcom/taobao/weex/bridge/EventResult;
.source "WXBridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1101
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$10;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$10;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/EventResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .registers 2

    .line 1104
    invoke-super {p0, p1}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    .line 1105
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$10;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass11 (com.taobao.weex.bridge.WXBridgeManager$11)
.class Lcom/taobao/weex/bridge/WXBridgeManager$11;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1119
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$args:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$params:Ljava/util/List;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$args:[Ljava/lang/Object;

    if-eqz v0, :cond_6c

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_6c

    .line 1127
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$args:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_1c

    aget-object v5, v1, v4

    .line 1129
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1131
    :cond_1c
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$params:Ljava/util/List;

    if-eqz v1, :cond_30

    .line 1132
    new-instance v1, Landroidx/collection/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    const-string v2, "params"

    .line 1133
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$params:Ljava/util/List;

    invoke-virtual {v1, v2, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_30
    new-instance v1, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    const-string v2, "method"

    .line 1138
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "args"

    .line 1139
    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const/4 v1, 0x2

    new-array v10, v1, [Lcom/taobao/weex/bridge/WXJSObject;

    .line 1141
    new-instance v4, Lcom/taobao/weex/bridge/WXJSObject;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$instanceId:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v4, v10, v3

    .line 1143
    invoke-static {v2}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v1

    aput-object v1, v10, v0

    .line 1144
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$instanceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "callJS"

    const/4 v9, 0x1

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    const/4 v0, 0x0

    aput-object v0, v10, v3
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6d

    goto :goto_73

    :cond_6c
    :goto_6c
    return-void

    :catch_6d
    move-exception v0

    const-string v1, "asyncCallJSEventVoidResult"

    .line 1148
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_73
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass12 (com.taobao.weex.bridge.WXBridgeManager$12)
.class Lcom/taobao/weex/bridge/WXBridgeManager$12;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/EventResult;)V
    .registers 7

    .line 1158
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$args:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$params:Ljava/util/List;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$instanceId:Ljava/lang/String;

    iput-object p6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$args:[Ljava/lang/Object;

    if-eqz v0, :cond_79

    array-length v0, v0

    if-nez v0, :cond_9

    goto/16 :goto_79

    .line 1167
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$args:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_1d

    aget-object v5, v1, v4

    .line 1169
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1171
    :cond_1d
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$params:Ljava/util/List;

    if-eqz v1, :cond_31

    .line 1172
    new-instance v1, Landroidx/collection/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    const-string v2, "params"

    .line 1173
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$params:Ljava/util/List;

    invoke-virtual {v1, v2, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_31
    new-instance v1, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    const-string v2, "method"

    .line 1178
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "args"

    .line 1179
    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const/4 v1, 0x2

    new-array v11, v1, [Lcom/taobao/weex/bridge/WXJSObject;

    .line 1181
    new-instance v4, Lcom/taobao/weex/bridge/WXJSObject;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$instanceId:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v4, v11, v3

    .line 1183
    invoke-static {v2}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v1

    aput-object v1, v11, v0

    .line 1185
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    .line 1186
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager$12;)V

    move-object v9, v0

    goto :goto_66

    :cond_65
    move-object v9, v1

    .line 1196
    :goto_66
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$instanceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "callJS"

    const/4 v10, 0x1

    move-object v8, v11

    invoke-static/range {v4 .. v10}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V

    aput-object v1, v11, v3
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_7a

    goto :goto_80

    :cond_79
    :goto_79
    return-void

    :catch_7a
    move-exception v0

    const-string v1, "asyncCallJSEventWithResult"

    .line 1200
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_80
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass12.AnonymousClass1 (com.taobao.weex.bridge.WXBridgeManager$12$1)
.class Lcom/taobao/weex/bridge/WXBridgeManager$12$1;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Lcom/taobao/weex/bridge/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/bridge/ResultCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/bridge/WXBridgeManager$12;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager$12;)V
    .registers 2

    .line 1186
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;->this$1:Lcom/taobao/weex/bridge/WXBridgeManager$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveResult(Ljava/lang/Object;)V
    .registers 2

    .line 1186
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;->onReceiveResult([B)V

    return-void
.end method

.method public onReceiveResult([B)V
    .registers 4

    .line 1189
    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->parseWsonOrJSON([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_1a

    .line 1190
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 1191
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;->this$1:Lcom/taobao/weex/bridge/WXBridgeManager$12;

    iget-object v0, v0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass13 (com.taobao.weex.bridge.WXBridgeManager$13)
.class Lcom/taobao/weex/bridge/WXBridgeManager$13;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1207
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$args:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$params:Ljava/util/List;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1210
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$args:[Ljava/lang/Object;

    if-eqz v0, :cond_73

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_73

    .line 1214
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$args:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 1216
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1218
    :cond_1b
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$params:Ljava/util/List;

    if-eqz v1, :cond_2f

    .line 1219
    new-instance v1, Landroidx/collection/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 1220
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$params:Ljava/util/List;

    const-string v3, "params"

    invoke-virtual {v1, v3, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    :cond_2f
    new-instance v1, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    .line 1225
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$method:Ljava/lang/String;

    const-string v3, "method"

    invoke-virtual {v1, v3, v2}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "args"

    .line 1226
    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/bridge/WXHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_62

    .line 1230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 1234
    :cond_62
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/bridge/WXHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    :goto_73
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass14 (com.taobao.weex.bridge.WXBridgeManager$14)
.class Lcom/taobao/weex/bridge/WXBridgeManager$14;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$domChanges:Ljava/util/Map;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$ref:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    .line 1329
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$data:Ljava/util/Map;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$ref:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$type:Ljava/lang/String;

    iput-object p6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$domChanges:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-string v0, "fireEventOnDataRenderNode"

    .line 1333
    :try_start_2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    .line 1334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1335
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fireEventOnDataRenderNode >>>> instanceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$data:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1339
    :cond_35
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v3

    instance-of v3, v3, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v3, :cond_79

    .line 1340
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/taobao/weex/bridge/WXBridge;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$ref:Ljava/lang/String;

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$data:Ljava/util/Map;
    :try_end_50
    .catchall {:try_start_2 .. :try_end_50} :catchall_82

    const-string v8, "{}"

    if-eqz v3, :cond_62

    .line 1341
    :try_start_54
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    goto :goto_62

    :cond_5b
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$data:Ljava/util/Map;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    :cond_62
    :goto_62
    move-object v3, v8

    :goto_63
    iget-object v9, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$domChanges:Ljava/util/Map;

    if-eqz v9, :cond_74

    .line 1342
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6e

    goto :goto_74

    :cond_6e
    iget-object v8, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$domChanges:Ljava/util/Map;

    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_74
    :goto_74
    move-object v9, v8

    move-object v8, v3

    .line 1340
    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/bridge/WXBridge;->fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :cond_79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V
    :try_end_81
    .catchall {:try_start_54 .. :try_end_81} :catchall_82

    goto :goto_a3

    :catchall_82
    move-exception v1

    .line 1346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WXBridgeManager] fireEventOnDataRenderNode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1347
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1350
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_a3
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass15 (com.taobao.weex.bridge.WXBridgeManager$15)
.class Lcom/taobao/weex/bridge/WXBridgeManager$15;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$keepAlive:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 1419
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$data:Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$callback:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$keepAlive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, "callbackJavascriptOnDataRender"

    .line 1423
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1424
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$data:Ljava/lang/Object;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1425
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callbackJavascriptOnDataRender >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1429
    :cond_30
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v4

    instance-of v4, v4, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v4, :cond_4b

    .line 1430
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/bridge/WXBridge;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$callback:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$keepAlive:Z

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/taobao/weex/bridge/WXBridge;->invokeCallbackOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1432
    :cond_4b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V
    :try_end_53
    .catchall {:try_start_2 .. :try_end_53} :catchall_54

    goto :goto_75

    :catchall_54
    move-exception v1

    .line 1434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WXBridgeManager] callbackJavascriptOnDataRender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1435
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1438
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_75
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass16 (com.taobao.weex.bridge.WXBridgeManager$16)
.class Lcom/taobao/weex/bridge/WXBridgeManager$16;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$jsonData:Lcom/taobao/weex/common/WXRefreshData;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .registers 4

    .line 1451
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->val$jsonData:Lcom/taobao/weex/common/WXRefreshData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1454
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->val$jsonData:Lcom/taobao/weex/common/WXRefreshData;

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$700(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass17 (com.taobao.weex.bridge.WXBridgeManager$17)
.class Lcom/taobao/weex/bridge/WXBridgeManager$17;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 1563
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$17;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1566
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$17;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$300(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass18 (com.taobao.weex.bridge.WXBridgeManager$18)
.class Lcom/taobao/weex/bridge/WXBridgeManager$18;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$instance:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$options:Ljava/util/Map;

.field final synthetic val$template:Lcom/taobao/weex/Script;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7

    .line 1574
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$template:Lcom/taobao/weex/Script;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$options:Ljava/util/Map;

    iput-object p6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1578
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instanceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    iget-wide v4, v4, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "renderTimeOrigin"

    invoke-interface {v2, v3, v5, v4}, Lcom/taobao/weex/common/IWXBridge;->setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getRenderType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/taobao/weex/common/IWXBridge;->setInstanceRenderType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$template:Lcom/taobao/weex/Script;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$options:Ljava/util/Map;

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$data:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$800(Lcom/taobao/weex/bridge/WXBridgeManager;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    .line 1581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1582
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    sub-long/2addr v2, v0

    iput-wide v2, v4, Lcom/taobao/weex/common/WXPerformance;->callCreateInstanceTime:J

    .line 1583
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v1

    iget-wide v1, v1, Lcom/taobao/weex/common/WXPerformance;->callCreateInstanceTime:J

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->communicateTime:J

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass19 (com.taobao.weex.bridge.WXBridgeManager$19)
.class Lcom/taobao/weex/bridge/WXBridgeManager$19;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->destroyInstance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3

    .line 1861
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1864
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$900(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    .line 1865
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1000(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass2 (com.taobao.weex.bridge.WXBridgeManager$2)
.class Lcom/taobao/weex/bridge/WXBridgeManager$2;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->checkJsEngineMultiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$2;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 330
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass20 (com.taobao.weex.bridge.WXBridgeManager$20)
.class Lcom/taobao/weex/bridge/WXBridgeManager$20;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$args:[Lcom/taobao/weex/bridge/WXJSObject;

.field final synthetic val$function:Ljava/lang/String;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .registers 6

    .line 1959
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$namespace:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$function:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$args:[Lcom/taobao/weex/bridge/WXJSObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1962
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$namespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$function:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$args:[Lcom/taobao/weex/bridge/WXJSObject;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass21 (com.taobao.weex.bridge.WXBridgeManager$21)
.class Lcom/taobao/weex/bridge/WXBridgeManager$21;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$js:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;ILcom/taobao/weex/bridge/EventResult;)V
    .registers 6

    .line 2022
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$js:Ljava/lang/String;

    iput p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$type:I

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2025
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$js:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$type:I

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$500(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2026
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass22 (com.taobao.weex.bridge.WXBridgeManager$22)
.class Lcom/taobao/weex/bridge/WXBridgeManager$22;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->trackComponentAndModulesTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 2204
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$22;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/taobao/weex/WXEnvironment;->sComponentsAndModulesReadyTime:J

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass23 (com.taobao.weex.bridge.WXBridgeManager$23)
.class Lcom/taobao/weex/bridge/WXBridgeManager$23;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->registerModules(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$modules:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;)V
    .registers 3

    .line 2352
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$23;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$23;->val$modules:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2355
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$23;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$23;->val$modules:Ljava/util/Map;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1100(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1200(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass24 (com.taobao.weex.bridge.WXBridgeManager$24)
.class Lcom/taobao/weex/bridge/WXBridgeManager$24;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->registerComponents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$components:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;)V
    .registers 3

    .line 2370
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$24;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$24;->val$components:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2373
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$24;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$24;->val$components:Ljava/util/List;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1300(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1400(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass25 (com.taobao.weex.bridge.WXBridgeManager$25)
.class Lcom/taobao/weex/bridge/WXBridgeManager$25;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->execJSService(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3

    .line 2385
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$25;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$25;->val$service:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2388
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$25;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$25;->val$service:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1500(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass26 (com.taobao.weex.bridge.WXBridgeManager$26)
.class final Lcom/taobao/weex/bridge/WXBridgeManager$26;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateGlobalConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2673
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-eqz v0, :cond_25

    .line 2674
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2675
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v0, :cond_25

    .line 2676
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    .line 2677
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridge;->nativeUpdateGlobalConfig(Ljava/lang/String;)V

    .line 2681
    :cond_25
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wson_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    .line 2682
    sput-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    goto :goto_38

    :cond_35
    const/4 v0, 0x1

    .line 2684
    sput-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    :goto_38
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass27 (com.taobao.weex.bridge.WXBridgeManager$27)
.class Lcom/taobao/weex/bridge/WXBridgeManager$27;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->notifySerializeCodeCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 2707
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$27;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2710
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$27;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2713
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$27;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    const-string v3, ""

    const-string v4, "notifySerializeCodeCache"

    invoke-static {v0, v3, v1, v4, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1800(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass28 (com.taobao.weex.bridge.WXBridgeManager$28)
.class Lcom/taobao/weex/bridge/WXBridgeManager$28;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplay(Ljava/lang/String;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$deviceHeight:F

.field final synthetic val$deviceWidth:F

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;FFF)V
    .registers 6

    .line 3530
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$instanceId:Ljava/lang/String;

    iput p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$deviceWidth:F

    iput p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$deviceHeight:F

    iput p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 3533
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$instanceId:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$deviceWidth:F

    iget v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$deviceHeight:F

    iget v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$scale:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/IWXBridge;->setDeviceDisplay(Ljava/lang/String;FFF)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass29 (com.taobao.weex.bridge.WXBridgeManager$29)
.class Lcom/taobao/weex/bridge/WXBridgeManager$29;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$width:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3

    .line 3542
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$29;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$29;->val$width:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3545
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$29;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$29;->val$width:Ljava/lang/String;

    const-string v2, "deviceWidth"

    invoke-interface {v0, v2, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->updateInitFrameworkParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass3 (com.taobao.weex.bridge.WXBridgeManager$3)
.class Lcom/taobao/weex/bridge/WXBridgeManager$3;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setSandBoxContext(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$3;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$3;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$100(Lcom/taobao/weex/bridge/WXBridgeManager;Z)V

    .line 359
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 361
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$200()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 362
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "main.js"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 364
    :cond_1a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "weex-main-jsfm.js"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_24
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$3;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$300(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 368
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 369
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass30 (com.taobao.weex.bridge.WXBridgeManager$30)
.class Lcom/taobao/weex/bridge/WXBridgeManager$30;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$height:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3

    .line 3548
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$30;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$30;->val$height:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3551
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$30;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$30;->val$height:Ljava/lang/String;

    const-string v2, "deviceHeight"

    invoke-interface {v0, v2, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->updateInitFrameworkParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass31 (com.taobao.weex.bridge.WXBridgeManager$31)
.class Lcom/taobao/weex/bridge/WXBridgeManager$31;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$density:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3

    .line 3555
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$31;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$31;->val$density:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3558
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$31;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$31;->val$density:Ljava/lang/String;

    const-string v2, "scale"

    invoke-interface {v0, v2, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->updateInitFrameworkParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass32 (com.taobao.weex.bridge.WXBridgeManager$32)
.class Lcom/taobao/weex/bridge/WXBridgeManager$32;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$statusHeight:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3

    .line 3563
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$32;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$32;->val$statusHeight:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3566
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$32;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$32;->val$statusHeight:Ljava/lang/String;

    const-string v2, "androidStatusBarHeight"

    invoke-interface {v0, v2, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->updateInitFrameworkParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass4 (com.taobao.weex.bridge.WXBridgeManager$4)
.class Lcom/taobao/weex/bridge/WXBridgeManager$4;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Lcom/taobao/weex/common/IWXDebugConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$4;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWXDebugJsBridge()Lcom/taobao/weex/bridge/WXDebugJsBridge;
    .registers 2

    .line 425
    new-instance v0, Lcom/taobao/weex/bridge/WXDebugJsBridge;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXDebugJsBridge;-><init>()V

    return-object v0
.end method

.method public getWXJSManager()Lcom/taobao/weex/bridge/WXBridgeManager;
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$4;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    return-object v0
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass5 (com.taobao.weex.bridge.WXBridgeManager$5)
.class Lcom/taobao/weex/bridge/WXBridgeManager$5;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setStackTopInstance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3

    .line 547
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$5;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$5;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$5;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$5;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXHashMap;->setStackTopInstance(Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass6 (com.taobao.weex.bridge.WXBridgeManager$6)
.class Lcom/taobao/weex/bridge/WXBridgeManager$6;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setLogLevel(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$isPerf:Z

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;IZ)V
    .registers 4

    .line 601
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$level:I

    iput-boolean p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$isPerf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 604
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 605
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$level:I

    int-to-float v1, v1

    iget-boolean v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$isPerf:Z

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->setLogType(FZ)V

    :cond_16
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass7 (com.taobao.weex.bridge.WXBridgeManager$7)
.class Lcom/taobao/weex/bridge/WXBridgeManager$7;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$extInfo:Ljava/util/Map;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$origin_filename:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    .line 1011
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$origin_filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$instanceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$extInfo:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1014
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$origin_filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1016
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_6c

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_7b

    .line 1019
    :try_start_1c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$origin_filename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1022
    :goto_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    const-string v4, ""

    .line 1023
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_28

    .line 1029
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 1031
    :cond_4c
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const-string v4, "jsBridge"

    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSC_CRASH:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$instanceId:Ljava/lang/String;

    iget-object v8, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$url:Ljava/lang/String;

    iget-object v9, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$extInfo:Ljava/util/Map;

    invoke-virtual/range {v3 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1032
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_62} :catch_63
    .catchall {:try_start_1c .. :try_end_62} :catchall_7b

    goto :goto_71

    :catch_63
    move-exception v1

    .line 1034
    :try_start_64
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_71

    :cond_6c
    const-string v1, "[WXBridgeManager] callReportCrash crash file is empty"

    .line 1037
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1039
    :goto_71
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-nez v1, :cond_81

    .line 1040
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_7b

    goto :goto_81

    :catchall_7b
    move-exception v0

    const-string v1, "[WXBridgeManager] callReportCrash exception: "

    .line 1043
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_81
    :goto_81
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass8 (com.taobao.weex.bridge.WXBridgeManager$8)
.class Lcom/taobao/weex/bridge/WXBridgeManager$8;
.super Lcom/taobao/weex/bridge/EventResult;
.source "WXBridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->syncExecJsOnInstanceWithResult(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1062
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/EventResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .registers 2

    .line 1065
    invoke-super {p0, p1}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    .line 1066
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass9 (com.taobao.weex.bridge.WXBridgeManager$9)
.class Lcom/taobao/weex/bridge/WXBridgeManager$9;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->loadJsBundleInPreInitMode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$js:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1083
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$js:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1086
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$js:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$500(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 1087
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$instanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3b

    .line 1088
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isPreInitMode()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1089
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    const-string v2, "wxEndLoadBundle"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v1

    const-wide/16 v3, 0x258

    add-long/2addr v1, v3

    const-string v3, "wxEndExecuteBundle"

    invoke-virtual {v0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStageWithTime(Ljava/lang/String;J)V

    :cond_3b
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.BundType (com.taobao.weex.bridge.WXBridgeManager$BundType)
.class public final enum Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
.super Ljava/lang/Enum;
.source "WXBridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/bridge/WXBridgeManager$BundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 217
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string v1, "Vue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 218
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string v3, "Rax"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 219
    new-instance v3, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string v5, "Others"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 216
    sput-object v5, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->$VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .registers 2

    .line 216
    const-class v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .registers 1

    .line 216
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->$VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    invoke-virtual {v0}, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object v0
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.TimerInfo (com.taobao.weex.bridge.WXBridgeManager$TimerInfo)
.class public Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerInfo"
.end annotation


# instance fields
.field public callbackId:Ljava/lang/String;

.field public instanceId:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
