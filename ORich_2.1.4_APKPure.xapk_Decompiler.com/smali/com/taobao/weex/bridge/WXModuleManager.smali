###### Class com.taobao.weex.bridge.WXModuleManager (com.taobao.weex.bridge.WXModuleManager)
.class public Lcom/taobao/weex/bridge/WXModuleManager;
.super Ljava/lang/Object;
.source "WXModuleManager.java"


# static fields
.field private static mBlackModuleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDomModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/module/WXDomModule;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstanceModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/ModuleFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    .line 54
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .line 54
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    return-object v0
.end method

.method static callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .registers 14

    .line 206
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v0, v0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string p0, "[WXModuleManager] module factory not found."

    .line 208
    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object v1

    .line 211
    :cond_13
    invoke-static {p0, p1, v0}, Lcom/taobao/weex/bridge/WXModuleManager;->findModule(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/taobao/weex/common/WXModule;

    move-result-object v2

    if-nez v2, :cond_1a

    return-object v1

    .line 215
    :cond_1a
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p0

    .line 216
    iput-object p0, v2, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 217
    iput-object p0, v2, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    .line 219
    invoke-interface {v0, p2}, Lcom/taobao/weex/bridge/ModuleFactory;->getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v0

    if-eqz p0, :cond_80

    .line 222
    :try_start_2c
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 224
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v3, "errCode"

    const-string v5, "101"

    .line 225
    invoke-virtual {v9, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "arg"

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "errMsg"

    .line 227
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "invokeModule"

    const/4 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 230
    :cond_6f
    invoke-static {p0, v2, p3, v0}, Lcom/taobao/weex/bridge/WXModuleManager;->dispatchCallModuleMethod(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/common/WXModule;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/weex/bridge/Invoker;)Ljava/lang/Object;

    move-result-object p0
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_73} :catch_94
    .catchall {:try_start_2c .. :try_end_73} :catchall_92

    .line 239
    instance-of p1, v2, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez p1, :cond_7b

    instance-of p1, v2, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz p1, :cond_7f

    .line 240
    :cond_7b
    iput-object v1, v2, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 241
    iput-object v1, v2, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    :cond_7f
    return-object p0

    :cond_80
    :try_start_80
    const-string p0, "callModuleMethod >>> instance is null"

    .line 232
    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_85} :catch_94
    .catchall {:try_start_80 .. :try_end_85} :catchall_92

    .line 239
    instance-of p0, v2, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez p0, :cond_8d

    instance-of p0, v2, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz p0, :cond_91

    .line 240
    :cond_8d
    iput-object v1, v2, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 241
    iput-object v1, v2, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    :cond_91
    return-object v1

    :catchall_92
    move-exception p0

    goto :goto_c3

    :catch_94
    move-exception p0

    .line 236
    :try_start_95
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callModuleMethod >>> invoke module:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", method:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed. "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b6
    .catchall {:try_start_95 .. :try_end_b6} :catchall_92

    .line 239
    instance-of p0, v2, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez p0, :cond_be

    instance-of p0, v2, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz p0, :cond_c2

    .line 240
    :cond_be
    iput-object v1, v2, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 241
    iput-object v1, v2, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    :cond_c2
    return-object v1

    .line 239
    :goto_c3
    instance-of p1, v2, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez p1, :cond_cb

    instance-of p1, v2, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz p1, :cond_cf

    .line 240
    :cond_cb
    iput-object v1, v2, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 241
    iput-object v1, v2, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    .line 243
    :cond_cf
    throw p0
.end method

.method public static createDomModule(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 4

    if-eqz p0, :cond_10

    .line 467
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/module/WXDomModule;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/module/WXDomModule;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public static destoryDomModule(Ljava/lang/String;)V
    .registers 2

    .line 472
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static destroyInstanceModules(Ljava/lang/String;)V
    .registers 3

    .line 448
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_3b

    .line 450
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_17

    goto :goto_3b

    .line 453
    :cond_17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 455
    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 456
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 457
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXModule;

    .line 458
    instance-of v1, v0, Lcom/taobao/weex/common/Destroyable;

    if-eqz v1, :cond_1f

    .line 459
    check-cast v0, Lcom/taobao/weex/common/Destroyable;

    invoke-interface {v0}, Lcom/taobao/weex/common/Destroyable;->destroy()V

    goto :goto_1f

    :cond_3b
    :goto_3b
    return-void
.end method

.method private static dispatchCallModuleMethod(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/common/WXModule;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/weex/bridge/Invoker;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 249
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 252
    :cond_f
    invoke-interface {p3}, Lcom/taobao/weex/bridge/Invoker;->isRunOnUIThread()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 257
    :cond_17
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static findModule(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/taobao/weex/common/WXModule;
    .registers 5

    .line 267
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXModule;

    if-nez v0, :cond_5d

    .line 271
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1e

    .line 273
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 274
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_1e
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    if-nez v1, :cond_5c

    .line 280
    :try_start_26
    instance-of v1, p2, Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    if-eqz v1, :cond_39

    .line 281
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p0

    .line 282
    check-cast p2, Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    invoke-virtual {p2, p0}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->buildInstance(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXModule;

    move-result-object p0

    goto :goto_3d

    .line 284
    :cond_39
    invoke-interface {p2}, Lcom/taobao/weex/bridge/ModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;

    move-result-object p0

    .line 286
    :goto_3d
    invoke-virtual {p0, p1}, Lcom/taobao/weex/common/WXModule;->setModuleName(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_45

    .line 291
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    goto :goto_5d

    :catch_45
    move-exception p0

    .line 288
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " module build instace failed."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_5c
    move-object v0, v1

    :cond_5d
    :goto_5d
    return-object v0
.end method

.method private static getBlackList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 567
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    if-nez v0, :cond_41

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "webview"

    .line 569
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "animation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "binding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "bindingx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "instanceWrap"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "navigator"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "expressionBinding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_41
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;
    .registers 2

    .line 476
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/module/WXDomModule;

    return-object p0
.end method

.method public static getRegisterJsModules()Lcom/alibaba/fastjson/JSONObject;
    .registers 5

    .line 544
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_64

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_64

    .line 545
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 546
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 548
    :try_start_27
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->getBlackList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_1b

    .line 551
    :cond_36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v3, v3, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    if-eqz v3, :cond_1b

    .line 552
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v3, v3, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-interface {v3}, Lcom/taobao/weex/bridge/ModuleFactory;->getMethods()[Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v4, v4, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v3, v4}, Lcom/taobao/weex/bridge/WXModuleManager;->modulesToJSONArray([Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 554
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_62

    goto :goto_1b

    :catchall_62
    nop

    goto :goto_1b

    :cond_64
    const/4 v0, 0x0

    :cond_65
    return-object v0
.end method

.method public static hasModule(Ljava/lang/String;)Z
    .registers 2

    .line 262
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static modulesToJSONArray([Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/alibaba/fastjson/JSONArray;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4f

    .line 584
    array-length v1, p0

    if-lez v1, :cond_4f

    const/4 v1, 0x0

    .line 585
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_4f

    if-nez v0, :cond_11

    .line 587
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 591
    :cond_11
    aget-object v2, p0, v1

    const-string v3, "addEventListener"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    aget-object v2, p0, v1

    const-string v3, "removeAllEventListeners"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 592
    aget-object v2, p0, v1

    .line 593
    invoke-interface {p1, v2}, Lcom/taobao/weex/bridge/ModuleFactory;->getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/weex/bridge/Invoker;->isRunOnUIThread()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_40

    const-string v2, ":sync"

    goto :goto_42

    :cond_40
    const-string v2, ":async"

    :goto_42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4f
    return-object v0
.end method

.method public static onActivityBack(Ljava/lang/String;)Z
    .registers 5

    .line 389
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_45

    .line 391
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2b

    .line 394
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityBack()Z

    move-result p0

    return p0

    .line 396
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreate can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method public static onActivityCreate(Ljava/lang/String;)V
    .registers 5

    .line 303
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_44

    .line 305
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 308
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityCreate()V

    goto :goto_12

    .line 310
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreate can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_44
    return-void
.end method

.method public static onActivityDestroy(Ljava/lang/String;)V
    .registers 5

    .line 375
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_44

    .line 377
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 380
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityDestroy()V

    goto :goto_12

    .line 382
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityDestroy can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_44
    return-void
.end method

.method public static onActivityPause(Ljava/lang/String;)V
    .registers 5

    .line 333
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_44

    .line 335
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 338
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityPause()V

    goto :goto_12

    .line 340
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityPause can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_44
    return-void
.end method

.method public static onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 8

    .line 405
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_44

    .line 407
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 408
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 410
    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/common/WXModule;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_12

    .line 412
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_44
    return-void
.end method

.method public static onActivityResume(Ljava/lang/String;)V
    .registers 5

    .line 347
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_44

    .line 349
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 350
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 352
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityResume()V

    goto :goto_12

    .line 354
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResume can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_44
    return-void
.end method

.method public static onActivityStart(Ljava/lang/String;)V
    .registers 5

    .line 319
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_44

    .line 321
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 322
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 324
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityStart()V

    goto :goto_12

    .line 326
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityStart can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_44
    return-void
.end method

.method public static onActivityStop(Ljava/lang/String;)V
    .registers 5

    .line 361
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_44

    .line 363
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 364
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 366
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityStop()V

    goto :goto_12

    .line 368
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityStop can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_44
    return-void
.end method

.method public static onCreateOptionsMenu(Ljava/lang/String;Landroid/view/Menu;)Z
    .registers 6

    .line 419
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_44

    .line 421
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 424
    invoke-virtual {v2, p1}, Lcom/taobao/weex/common/WXModule;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_12

    .line 426
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public static onRequestPermissionsResult(Ljava/lang/String;I[Ljava/lang/String;[I)V
    .registers 8

    .line 434
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_44

    .line 436
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 439
    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/common/WXModule;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_12

    .line 441
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult can not find the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_44
    return-void
.end method

.method static registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    .registers 3

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    invoke-interface {p1}, Lcom/taobao/weex/bridge/ModuleFactory;->getMethods()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKManager;->registerModules(Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    if-nez p1, :cond_6

    goto :goto_2d

    :cond_6
    const-string v1, "dom"

    .line 132
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string p0, "Cannot registered module with name \'dom\'."

    .line 133
    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return v0

    .line 137
    :cond_14
    invoke-static {}, Lcom/taobao/weex/utils/cache/RegisterCache;->getInstance()Lcom/taobao/weex/utils/cache/RegisterCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/weex/utils/cache/RegisterCache;->cacheModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    return v1

    .line 142
    :cond_20
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v2, Lcom/taobao/weex/bridge/WXModuleManager$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/taobao/weex/bridge/WXModuleManager$2;-><init>(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)V

    .line 143
    invoke-virtual {v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return v1

    :cond_2d
    :goto_2d
    return v0
.end method

.method public static registerModule(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;",
            ">;)Z"
        }
    .end annotation

    .line 72
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 75
    :cond_8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 76
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v2, Lcom/taobao/weex/bridge/WXModuleManager$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/bridge/WXModuleManager$1;-><init>(Ljava/util/Iterator;)V

    .line 77
    invoke-virtual {v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return v1
.end method

.method static registerNativeModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 184
    :cond_4
    :try_start_4
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 185
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    invoke-direct {v1, p1}, Lcom/taobao/weex/bridge/ModuleFactoryImpl;-><init>(Lcom/taobao/weex/bridge/ModuleFactory;)V

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/ArrayStoreException; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_3b

    :catch_17
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/ArrayStoreException;->printStackTrace()V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXModuleManager] registerNativeModule Error moduleName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Error:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ArrayStoreException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    return p0
.end method

.method public static registerWhenCreateInstance()V
    .registers 3

    .line 495
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_40

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_40

    .line 496
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 498
    :try_start_22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-boolean v2, v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    if-nez v2, :cond_16

    .line 499
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v1, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v2, v1}, Lcom/taobao/weex/bridge/WXModuleManager;->registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3e

    goto :goto_16

    :catchall_3e
    nop

    goto :goto_16

    :cond_40
    return-void
.end method

.method public static reload()V
    .registers 3

    .line 480
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_36

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 481
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 483
    :try_start_22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v1, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v2, v1}, Lcom/taobao/weex/bridge/WXModuleManager;->registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_34

    goto :goto_16

    :catchall_34
    nop

    goto :goto_16

    :cond_36
    return-void
.end method

.method public static resetAllModuleState()V
    .registers 3

    .line 512
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 513
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 514
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    goto :goto_16

    :cond_2c
    return-void
.end method

.method public static resetModuleState(Ljava/lang/String;Z)V
    .registers 5

    .line 525
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 526
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 528
    :try_start_22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 529
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iput-boolean p1, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_3d

    goto :goto_16

    :catchall_3d
    nop

    goto :goto_16

    :cond_3f
    return-void
.end method

###### Class com.taobao.weex.bridge.WXModuleManager.AnonymousClass1 (com.taobao.weex.bridge.WXModuleManager$1)
.class final Lcom/taobao/weex/bridge/WXModuleManager$1;
.super Ljava/lang/Object;
.source "WXModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXModuleManager;->registerModule(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXModuleManager$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    :goto_5
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 83
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;

    .line 85
    iget-object v2, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->name:Ljava/lang/String;

    const-string v3, "dom"

    .line 86
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v1, "Cannot registered module with name \'dom\'."

    .line 87
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 91
    :cond_2b
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    if-eqz v3, :cond_4f

    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WXComponentRegistry Duplicate the Module name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 94
    :cond_4f
    iget-object v3, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->factory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 96
    :try_start_51
    invoke-static {v2, v3}, Lcom/taobao/weex/bridge/WXModuleManager;->registerNativeModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_54
    .catch Lcom/taobao/weex/common/WXException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_6a

    :catch_55
    move-exception v4

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerNativeModule"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 101
    :goto_6a
    iget-boolean v1, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->global:Z

    if-eqz v1, :cond_92

    .line 103
    :try_start_6e
    invoke-interface {v3}, Lcom/taobao/weex/bridge/ModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v2}, Lcom/taobao/weex/common/WXModule;->setModuleName(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$100()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7c} :catch_7d

    goto :goto_92

    :catch_7d
    move-exception v1

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " class must have a default constructor without params. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_92
    :goto_92
    :try_start_92
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    new-instance v4, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    invoke-direct {v4, v3}, Lcom/taobao/weex/bridge/ModuleFactoryImpl;-><init>(Lcom/taobao/weex/bridge/ModuleFactory;)V

    invoke-interface {v1, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_9e

    .line 116
    :catchall_9e
    invoke-interface {v3}, Lcom/taobao/weex/bridge/ModuleFactory;->getMethods()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 118
    :cond_a7
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKManager;->registerModules(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXModuleManager.AnonymousClass2 (com.taobao.weex.bridge.WXModuleManager$2)
.class final Lcom/taobao/weex/bridge/WXModuleManager$2;
.super Ljava/lang/Object;
.source "WXModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXModuleManager;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

.field final synthetic val$global:Z

.field final synthetic val$moduleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)V
    .registers 4

    .line 143
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    iput-boolean p3, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$global:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 146
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WXComponentRegistry Duplicate the Module name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 150
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXModuleManager;->registerNativeModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_2f
    .catch Lcom/taobao/weex/common/WXException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_45

    :catch_30
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNativeModule"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 155
    :goto_45
    iget-boolean v0, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$global:Z

    if-eqz v0, :cond_75

    .line 157
    :try_start_49
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-interface {v0}, Lcom/taobao/weex/bridge/ModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXModule;->setModuleName(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$100()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5d} :catch_5e

    goto :goto_75

    :catch_5e
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class must have a default constructor without params. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXModuleManager;->registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z

    .line 168
    :try_start_7c
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    new-instance v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-direct {v2, v3}, Lcom/taobao/weex/bridge/ModuleFactoryImpl;-><init>(Lcom/taobao/weex/bridge/ModuleFactory;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_8c

    :catchall_8c
    return-void
.end method
