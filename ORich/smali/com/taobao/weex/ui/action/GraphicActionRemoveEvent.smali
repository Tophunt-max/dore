###### Class com.taobao.weex.ui.action.GraphicActionRemoveEvent (com.taobao.weex.ui.action.GraphicActionRemoveEvent)
.class public Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionRemoveEvent.java"


# instance fields
.field private final mEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 36
    invoke-static {p3}, Lcom/taobao/weex/dom/WXEvent;->getEventName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;->mEvent:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 46
    :cond_17
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tick()V

    .line 47
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->removeEvent(Ljava/lang/String;)V

    const-string v0, "removeEventFromComponent"

    .line 48
    invoke-static {v0}, Lcom/taobao/weex/tracing/Stopwatch;->split(Ljava/lang/String;)V

    return-void
.end method
