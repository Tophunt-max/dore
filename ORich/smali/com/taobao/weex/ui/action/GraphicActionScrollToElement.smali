###### Class com.taobao.weex.ui.action.GraphicActionScrollToElement (com.taobao.weex.ui.action.GraphicActionScrollToElement)
.class public Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionScrollToElement.java"


# instance fields
.field private final mOptions:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 36
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->mOptions:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 4

    .line 41
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 46
    :cond_17
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v1

    if-nez v1, :cond_1e

    return-void

    .line 50
    :cond_1e
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->mOptions:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v1, v0, v2}, Lcom/taobao/weex/ui/component/Scrollable;->scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method
