###### Class com.taobao.weex.ui.action.GraphicActionMoveElement (com.taobao.weex.ui.action.GraphicActionMoveElement)
.class public Lcom/taobao/weex/ui/action/GraphicActionMoveElement;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionMoveElement.java"


# instance fields
.field private mIndex:I

.field private mParentref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 35
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mParentref:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mIndex:I

    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 9

    .line 41
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 45
    :cond_17
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->getPageId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mParentref:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v1, :cond_9b

    if-eqz v2, :cond_9b

    .line 47
    instance-of v3, v2, Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v3, :cond_36

    goto :goto_9b

    .line 52
    :cond_36
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "videoplus"

    const-string v6, "video"

    if-eqz v3, :cond_5e

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e

    new-array v3, v4, [I

    .line 54
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_5e
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v0, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 59
    check-cast v2, Lcom/taobao/weex/ui/component/WXVContainer;

    iget v1, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mIndex:I

    invoke-virtual {v2, v0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 61
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8c

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8c

    new-array v1, v4, [I

    .line 63
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 66
    :cond_8c
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 67
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;->mIndex:I

    invoke-virtual {v2, v0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->addSubView(Landroid/view/View;I)V

    :cond_9b
    :goto_9b
    return-void
.end method
