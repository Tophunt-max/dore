###### Class com.taobao.weex.ui.action.GraphicActionUpdateRichtextAttr (com.taobao.weex.ui.action.GraphicActionUpdateRichtextAttr)
.class public Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextAttr;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionUpdateRichtextAttr.java"


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p5}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextAttr;->getPageId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, p5}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/richtext/WXRichText;

    if-eqz p1, :cond_22

    .line 35
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-interface {p4, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    invoke-virtual {p1, p2, p4}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->updateChildNodeAttrs(Ljava/lang/String;Ljava/util/Map;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 1

    return-void
.end method
