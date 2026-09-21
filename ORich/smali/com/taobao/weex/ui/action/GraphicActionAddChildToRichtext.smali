###### Class com.taobao.weex.ui.action.GraphicActionAddChildToRichtext (com.taobao.weex.ui.action.GraphicActionAddChildToRichtext)
.class public Lcom/taobao/weex/ui/action/GraphicActionAddChildToRichtext;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionAddChildToRichtext.java"


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p5}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    if-eqz p1, :cond_30

    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 35
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddChildToRichtext;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p5}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/richtext/WXRichText;

    if-eqz v0, :cond_30

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v4, p6

    move-object v5, p7

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->AddChildNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_30
    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 1

    return-void
.end method
