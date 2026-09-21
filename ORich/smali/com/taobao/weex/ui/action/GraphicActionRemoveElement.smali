###### Class com.taobao.weex.ui.action.GraphicActionRemoveElement (com.taobao.weex.ui.action.GraphicActionRemoveElement)
.class public Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionRemoveElement.java"


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method

.method private clearRegistryForComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 5

    .line 53
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->unregisterComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 55
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->removeAllEvent()V

    .line 56
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->removeStickyStyle()V

    .line 58
    :cond_1c
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_34

    .line 59
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 60
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_28
    if-ltz v0, :cond_34

    .line 62
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->clearRegistryForComponent(Lcom/taobao/weex/ui/component/WXComponent;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_34
    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 5

    .line 36
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 37
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_56

    .line 40
    :cond_23
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;->clearRegistryForComponent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 41
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoplus"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 45
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_52
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v0, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    :cond_56
    :goto_56
    return-void
.end method
