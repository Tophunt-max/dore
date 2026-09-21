###### Class com.taobao.weex.ui.action.GraphicActionUpdateAttr (com.taobao.weex.ui.action.GraphicActionUpdateAttr)
.class public Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionUpdateAttr.java"


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private mAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 35
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->mAttrs:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->getPageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->getRef()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_1e

    return-void

    .line 41
    :cond_1e
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->mAttrs:Ljava/util/Map;

    if-eqz p2, :cond_25

    .line 42
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->addAttr(Ljava/util/Map;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 50
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCWXAd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 51
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->mergeAttr()V

    .line 52
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->mAttrs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateAttrs(Ljava/util/Map;)V

    :cond_2c
    return-void

    .line 56
    :cond_2d
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_38

    goto :goto_48

    .line 59
    :cond_38
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->mergeAttr()V

    .line 60
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;->mAttrs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateAttrs(Ljava/util/Map;)V

    :cond_48
    :goto_48
    return-void
.end method
