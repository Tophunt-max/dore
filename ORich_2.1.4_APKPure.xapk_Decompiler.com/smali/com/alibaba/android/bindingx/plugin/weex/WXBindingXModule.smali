###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule)
.class public Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXBindingXModule.java"


# instance fields
.field private mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

.field private mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/alibaba/android/bindingx/core/BindingXCore;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lcom/alibaba/android/bindingx/core/BindingXCore;)Lcom/alibaba/android/bindingx/core/BindingXCore;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    return-object p1
.end method

.method static createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;
    .registers 3

    if-nez p0, :cond_5

    const/16 p0, 0x2ee

    goto :goto_9

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result p0

    .line 274
    :goto_9
    new-instance v0, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;-><init>()V

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$7;

    invoke-direct {v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$7;-><init>()V

    .line 275
    invoke-virtual {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withViewFinder(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$6;

    invoke-direct {v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$6;-><init>()V

    .line 286
    invoke-virtual {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withViewUpdater(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;-><init>(I)V

    .line 318
    invoke-virtual {v0, v1}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withDeviceResolutionTranslator(Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->build()Lcom/alibaba/android/bindingx/core/PlatformManager;

    move-result-object p0

    return-object p0
.end method

.method private prepareInternal()V
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    if-nez v0, :cond_c

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    .line 81
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-nez v0, :cond_2f

    .line 82
    new-instance v0, Lcom/alibaba/android/bindingx/core/BindingXCore;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/core/BindingXCore;-><init>(Lcom/alibaba/android/bindingx/core/PlatformManager;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    .line 84
    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const-string v2, "scroll"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const-string v2, "pan"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public bind(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)Ljava/util/Map;
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_12

    :cond_c
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 110
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_12
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v3, :cond_17

    goto :goto_1d

    :cond_17
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 111
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    :goto_1d
    if-nez p1, :cond_23

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_23
    move-object v3, p1

    new-instance v4, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lcom/taobao/weex/bridge/JSCallback;)V

    const/4 p1, 0x0

    new-array v5, p1, [Ljava/lang/Object;

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doBind(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "token"

    .line 122
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public bindAsync(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->bind(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)Ljava/util/Map;

    move-result-object p1

    if-eqz p3, :cond_b

    if-eqz p1, :cond_b

    .line 130
    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 258
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public getComputedStyle(Ljava/lang/String;)Ljava/util/Map;
    .registers 19
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V

    .line 164
    iget-object v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {v1}, Lcom/alibaba/android/bindingx/core/PlatformManager;->getResolutionTranslator()Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;

    move-result-object v1

    .line 166
    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-static {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 170
    :cond_1e
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_29

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 175
    :cond_29
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v5

    float-to-double v5, v5

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "width"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "height"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "padding-left"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "padding-top"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "padding-right"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "padding-bottom"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "margin-left"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "margin-top"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "margin-right"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "margin-bottom"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "translateX"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v5

    float-to-double v5, v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6, v8}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "translateY"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getRotationX()F

    move-result v5

    invoke-static {v5}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizeRotation(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "rotateX"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getRotationY()F

    move-result v5

    invoke-static {v5}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizeRotation(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "rotateY"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v5

    invoke-static {v5}, Lcom/alibaba/android/bindingx/core/internal/Utils;->normalizeRotation(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "rotateZ"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "scaleX"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "scaleY"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "opacity"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_1e3

    .line 204
    instance-of v11, v5, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v11, :cond_1e3

    .line 205
    check-cast v5, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 206
    new-instance v11, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v11}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Landroid/graphics/RectF;)[F

    move-result-object v5

    .line 207
    array-length v11, v5

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1e3

    .line 208
    aget v9, v5, v7

    float-to-double v9, v9

    .line 209
    aget v11, v5, v8

    float-to-double v11, v11

    const/4 v13, 0x6

    .line 210
    aget v13, v5, v13

    float-to-double v13, v13

    .line 211
    aget v5, v5, v6

    move-wide v15, v9

    float-to-double v8, v5

    move-wide v5, v8

    move-wide v9, v15

    goto :goto_1e6

    :cond_1e3
    move-wide v5, v9

    move-wide v11, v5

    move-wide v13, v11

    :goto_1e6
    new-array v15, v7, [Ljava/lang/Object;

    .line 214
    invoke-interface {v1, v9, v10, v15}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "border-top-left-radius"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v7, [Ljava/lang/Object;

    .line 215
    invoke-interface {v1, v11, v12, v9}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "border-top-right-radius"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v7, [Ljava/lang/Object;

    .line 216
    invoke-interface {v1, v13, v14, v9}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "border-bottom-left-radius"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v7, [Ljava/lang/Object;

    .line 217
    invoke-interface {v1, v5, v6, v9}, Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v5, "border-bottom-right-radius"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x3

    const-string v6, "rgba(%d,%d,%d,%f)"

    const-wide v9, 0x406fe00000000000L    # 255.0

    const/4 v11, 0x1

    if-eqz v1, :cond_293

    const/high16 v1, -0x1000000

    .line 221
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    instance-of v12, v12, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v12, :cond_246

    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    goto :goto_258

    .line 223
    :cond_246
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    instance-of v12, v12, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v12, :cond_258

    .line 224
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getColor()I

    move-result v1

    .line 227
    :cond_258
    :goto_258
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v12, v9

    .line 228
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 229
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 230
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v14, 0x2

    aput-object v1, v10, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v10, v5

    invoke-static {v8, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "background-color"

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_293
    instance-of v1, v2, Lcom/taobao/weex/ui/component/WXText;

    if-eqz v1, :cond_307

    instance-of v1, v3, Lcom/taobao/weex/ui/view/WXTextView;

    if-eqz v1, :cond_307

    .line 235
    check-cast v3, Lcom/taobao/weex/ui/view/WXTextView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_307

    .line 237
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_307

    .line 238
    instance-of v2, v1, Landroid/text/SpannableString;

    if-eqz v2, :cond_307

    .line 239
    move-object v2, v1

    check-cast v2, Landroid/text/SpannableString;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2, v7, v1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_307

    .line 240
    array-length v2, v1

    if-ne v2, v11, :cond_307

    .line 241
    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    .line 243
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v12, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v12

    .line 244
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 245
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 246
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v9, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, v5

    invoke-static {v12, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_307
    return-object v4
.end method

.method public getComputedStyleAsync(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 155
    invoke-virtual {p0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->getComputedStyle(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_9

    .line 157
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onActivityPause()V
    .registers 4

    .line 337
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResume()V
    .registers 4

    .line 349
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public prepare(Ljava/util/Map;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V

    return-void
.end method

.method public supportFeatures()Ljava/util/List;
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pan"

    const-string v1, "orientation"

    const-string v2, "timing"

    const-string v3, "scroll"

    const-string v4, "experimentalGestureFeatures"

    .line 150
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public unbind(Ljava/util/Map;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_7

    .line 137
    invoke-virtual {v0, p1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doUnbind(Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public unbindAll()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_7

    .line 144
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doRelease()V

    :cond_7
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
        "Lcom/alibaba/android/bindingx/core/IEventHandler;",
        "Landroid/content/Context;",
        "Lcom/alibaba/android/bindingx/core/PlatformManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;
    .registers 5

    .line 88
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 85
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;->createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass2 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$2)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
        "Lcom/alibaba/android/bindingx/core/IEventHandler;",
        "Landroid/content/Context;",
        "Lcom/alibaba/android/bindingx/core/PlatformManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;
    .registers 5

    .line 95
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 92
    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/alibaba/android/bindingx/core/PlatformManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;->createWith(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)Lcom/alibaba/android/bindingx/core/IEventHandler;

    move-result-object p1

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass3 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$3)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->bind(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 113
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Object;)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_7

    .line 117
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass4 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$4)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doRelease()V

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$002(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lcom/alibaba/android/bindingx/core/BindingXCore;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    .line 265
    :cond_17
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->clearCallbacks()V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass5 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$5)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$viewPort:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 318
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;->val$viewPort:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs nativeToWeb(D[Ljava/lang/Object;)D
    .registers 4

    double-to-float p1, p1

    .line 326
    iget p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;->val$viewPort:I

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public varargs webToNative(D[Ljava/lang/Object;)D
    .registers 4

    double-to-float p1, p1

    .line 321
    iget p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;->val$viewPort:I

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass6 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$6)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$6;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs synchronouslyUpdateViewOnUIThread(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;[Ljava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p6, :cond_50

    .line 295
    array-length v0, p6

    const/4 v1, 0x2

    if-lt v0, v1, :cond_50

    const/4 v0, 0x0

    aget-object v1, p6, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_50

    const/4 v1, 0x1

    aget-object v2, p6, v1

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_15

    goto :goto_50

    .line 301
    :cond_15
    aget-object v0, p6, v0

    check-cast v0, Ljava/lang/String;

    .line 302
    aget-object p6, p6, v1

    check-cast p6, Ljava/lang/String;

    .line 304
    invoke-static {p6, v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-nez v2, :cond_45

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unexpected error. component not found [ref:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",instanceId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return-void

    .line 309
    :cond_45
    invoke-static {p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->findUpdater(Ljava/lang/String;)Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;

    move-result-object v1

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;->update(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;Ljava/lang/Object;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Ljava/util/Map;)V

    :cond_50
    :goto_50
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass7 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$7)
.class final Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$7;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/android/bindingx/core/PlatformManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;
    .registers 5

    .line 279
    array-length v0, p2

    if-lez v0, :cond_14

    const/4 v0, 0x0

    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_14

    .line 282
    :cond_b
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/String;

    .line 283
    invoke-static {p2, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findViewByRef(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass8 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$8)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->onActivityPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->onActivityPause()V

    :cond_11
    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModule.AnonymousClass9 (com.alibaba.android.bindingx.plugin.weex.WXBindingXModule$9)
.class Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->onActivityResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$9;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lcom/alibaba/android/bindingx/core/BindingXCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->onActivityResume()V

    :cond_11
    return-void
.end method
