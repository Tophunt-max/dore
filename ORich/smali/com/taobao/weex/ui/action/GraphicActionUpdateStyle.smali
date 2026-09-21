###### Class com.taobao.weex.ui.action.GraphicActionUpdateStyle (com.taobao.weex.ui.action.GraphicActionUpdateStyle)
.class public Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionUpdateStyle.java"


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private mIsBorderSet:Z

.field private mIsCausedByPesudo:Z

.field private mStyle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/dom/CSSShorthand;",
            "Lcom/taobao/weex/dom/CSSShorthand;",
            "Lcom/taobao/weex/dom/CSSShorthand;",
            "Z)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 54
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    .line 55
    iput-boolean p7, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsCausedByPesudo:Z

    .line 57
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->getPageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->getRef()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p1, p2, p7}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_20

    return-void

    .line 61
    :cond_20
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    if-eqz p2, :cond_54

    .line 62
    iget-boolean p7, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsCausedByPesudo:Z

    invoke-virtual {p1, p2, p7}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyle(Ljava/util/Map;Z)V

    const-string p1, "transform"

    .line 63
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p2

    if-nez p2, :cond_54

    .line 64
    new-instance p2, Landroidx/collection/ArrayMap;

    const/4 p7, 0x2

    invoke-direct {p2, p7}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 65
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-interface {p2, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "transformOrigin"

    .line 67
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->addAnimationForElement(Ljava/util/Map;)V

    :cond_54
    if-eqz p4, :cond_5b

    .line 73
    iget-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1, p4}, Lcom/taobao/weex/ui/component/WXComponent;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    :cond_5b
    if-eqz p5, :cond_62

    .line 77
    iget-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1, p5}, Lcom/taobao/weex/ui/component/WXComponent;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    :cond_62
    if-eqz p6, :cond_6c

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsBorderSet:Z

    .line 82
    iget-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1, p6}, Lcom/taobao/weex/ui/component/WXComponent;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    :cond_6c
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 45
    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 92
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    .line 93
    iput-boolean p7, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsCausedByPesudo:Z

    .line 95
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->getPageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->getRef()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p1, p2, p7}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_20

    return-void

    .line 99
    :cond_20
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    const/4 p7, 0x1

    if-eqz p2, :cond_68

    .line 100
    iget-boolean v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsCausedByPesudo:Z

    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addStyle(Ljava/util/Map;Z)V

    const-string p1, "transform"

    .line 101
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_68

    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p2

    if-nez p2, :cond_68

    .line 102
    new-instance p2, Landroidx/collection/ArrayMap;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 103
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "transformOrigin"

    .line 104
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->addAnimationForElement(Ljava/util/Map;)V

    .line 106
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p7}, Lcom/taobao/weex/bridge/WXBridgeManager;->markDirty(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_68
    if-eqz p4, :cond_6f

    .line 111
    iget-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1, p4}, Lcom/taobao/weex/ui/component/WXComponent;->addShorthand(Ljava/util/Map;)V

    :cond_6f
    if-eqz p5, :cond_76

    .line 115
    iget-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1, p5}, Lcom/taobao/weex/ui/component/WXComponent;->addShorthand(Ljava/util/Map;)V

    :cond_76
    if-eqz p6, :cond_7f

    .line 119
    iput-boolean p7, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsBorderSet:Z

    .line 120
    iget-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1, p6}, Lcom/taobao/weex/ui/component/WXComponent;->addShorthand(Ljava/util/Map;)V

    :cond_7f
    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_58

    .line 127
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    if-eqz v0, :cond_4f

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 129
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->updateTranstionParams(Ljava/util/Map;)V

    .line 130
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->hasTransitionProperty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 131
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/transition/WXTransition;->startTransition(Ljava/util/Map;)V

    goto :goto_58

    .line 134
    :cond_3c
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/taobao/weex/dom/transition/WXTransition;->fromMap(Ljava/util/Map;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V

    .line 135
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mStyle:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyles(Ljava/util/Map;)V

    goto :goto_58

    .line 137
    :cond_4f
    iget-boolean v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->mIsBorderSet:Z

    if-eqz v0, :cond_58

    .line 138
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_58
    :goto_58
    return-void
.end method
