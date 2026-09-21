###### Class com.taobao.weex.ui.action.GraphicActionAddEvent (com.taobao.weex.ui.action.GraphicActionAddEvent)
.class public Lcom/taobao/weex/ui/action/GraphicActionAddEvent;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionAddEvent.java"


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

    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->mEvent:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 46
    :cond_17
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tick()V

    .line 47
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 48
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->addEvent(Ljava/lang/Object;)V

    .line 50
    :cond_2f
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    const-string v0, "addEventToComponent"

    .line 51
    invoke-static {v0}, Lcom/taobao/weex/tracing/Stopwatch;->split(Ljava/lang/String;)V

    return-void
.end method
