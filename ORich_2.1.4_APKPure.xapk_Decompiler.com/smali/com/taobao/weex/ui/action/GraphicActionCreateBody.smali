###### Class com.taobao.weex.ui.action.GraphicActionCreateBody (com.taobao.weex.ui.action.GraphicActionCreateBody)
.class public Lcom/taobao/weex/ui/action/GraphicActionCreateBody;
.super Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;
.source "GraphicActionCreateBody.java"


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[F[F[F)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 47
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mComponentType:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mStyle:Ljava/util/Map;

    .line 49
    iput-object p5, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mAttributes:Ljava/util/Map;

    .line 50
    iput-object p6, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mEvents:Ljava/util/Set;

    .line 51
    iput-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mMargins:[F

    .line 52
    iput-object p8, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mPaddings:[F

    .line 53
    iput-object p9, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mBorders:[F

    .line 55
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_18

    return-void

    .line 59
    :cond_18
    new-instance p2, Lcom/taobao/weex/ui/action/BasicComponentData;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->getRef()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->mComponentType:Ljava/lang/String;

    const/4 p5, 0x0

    invoke-direct {p2, p3, p4, p5}, Lcom/taobao/weex/ui/action/BasicComponentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p5, p2}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->createComponent(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_2d

    return-void

    .line 64
    :cond_2d
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {p2, p3}, Lcom/taobao/weex/dom/transition/WXTransition;->fromMap(Ljava/util/Map;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V

    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 4

    .line 69
    invoke-super {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->executeAction()V

    .line 71
    :try_start_3
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 72
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 74
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->getWXSDKIntance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    instance-of v2, v1, Lcom/taobao/weex/ui/component/WXBaseScroller;

    if-eqz v2, :cond_2f

    .line 77
    check-cast v1, Lcom/taobao/weex/ui/component/WXBaseScroller;

    .line 78
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXBaseScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_2f

    .line 79
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXBaseScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->setRootScrollView(Landroid/widget/ScrollView;)V

    .line 83
    :cond_2f
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->onRootCreated(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 85
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ONCE:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v1, v2, :cond_46

    .line 86
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onCreateFinish()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3f} :catch_40

    goto :goto_46

    :catch_40
    move-exception v0

    const-string v1, "create body failed."

    .line 89
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    return-void
.end method
