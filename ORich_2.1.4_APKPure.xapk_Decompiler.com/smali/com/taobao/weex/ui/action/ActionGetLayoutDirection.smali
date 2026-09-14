###### Class com.taobao.weex.ui.action.ActionGetLayoutDirection (com.taobao.weex.ui.action.ActionGetLayoutDirection)
.class public Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "ActionGetLayoutDirection.java"


# instance fields
.field private final mCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 45
    iput-object p3, p0, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;->mCallback:Ljava/lang/String;

    return-void
.end method

.method private callbackViewport(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 6

    .line 99
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object p1

    const-string v0, "result"

    if-eqz p1, :cond_20

    .line 100
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "direction"

    const-string v2, "ltr"

    .line 101
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 102
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_37

    .line 105
    :cond_20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errMsg"

    const-string v1, "Component does not exist"

    .line 107
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :goto_37
    return-void
.end method

.method private getWebPxValue(II)F
    .registers 3

    int-to-float p1, p1

    .line 114
    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FI)F

    move-result p1

    return p1
.end method


# virtual methods
.method public executeAction()V
    .registers 6

    .line 50
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;->getWXSDKIntance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 51
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_81

    .line 55
    :cond_e
    new-instance v1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;->mCallback:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "result"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "errMsg"

    const-string v3, "Illegal parameter"

    .line 60
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {v1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_81

    .line 62
    :cond_3d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string v3, "viewport"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;->callbackViewport(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/bridge/JSCallback;)V

    goto :goto_81

    .line 65
    :cond_4d
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/ActionGetLayoutDirection;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez v0, :cond_64

    return-void

    :cond_64
    const-string v2, "ltr"

    if-eqz v0, :cond_7e

    .line 72
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeRenderObjectGetLayoutDirectionFromPathNode(J)I

    move-result v0

    if-eqz v0, :cond_7c

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_79

    goto :goto_7e

    :cond_79
    const-string v2, "rtl"

    goto :goto_7e

    :cond_7c
    const-string v2, "inherit"

    .line 93
    :cond_7e
    :goto_7e
    invoke-interface {v1, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_81
    :goto_81
    return-void
.end method
