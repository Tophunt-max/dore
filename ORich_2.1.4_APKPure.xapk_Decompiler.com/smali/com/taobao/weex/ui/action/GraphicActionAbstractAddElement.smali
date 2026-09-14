###### Class com.taobao.weex.ui.action.GraphicActionAbstractAddElement (com.taobao.weex.ui.action.GraphicActionAbstractAddElement)
.class public abstract Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionAbstractAddElement.java"


# instance fields
.field protected mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mBorders:[F

.field protected mComponentType:Ljava/lang/String;

.field protected mEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndex:I

.field protected mMargins:[F

.field protected mPaddings:[F

.field protected mParentRef:Ljava/lang/String;

.field protected mStyle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mIndex:I

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->startTime:J

    return-void
.end method


# virtual methods
.method protected createComponent(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 8

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p3, :cond_2a

    .line 53
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    invoke-virtual {p3, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addStyle(Ljava/util/Map;)V

    .line 54
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mAttributes:Ljava/util/Map;

    invoke-virtual {p3, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addAttr(Ljava/util/Map;)V

    .line 55
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mEvents:Ljava/util/Set;

    invoke-virtual {p3, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->addEvent(Ljava/util/Set;)V

    .line 56
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mMargins:[F

    sget-object v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {p3, v2, v3}, Lcom/taobao/weex/ui/action/BasicComponentData;->addShorthand([FLio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;)V

    .line 57
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mPaddings:[F

    sget-object v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {p3, v2, v3}, Lcom/taobao/weex/ui/action/BasicComponentData;->addShorthand([FLio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;)V

    .line 58
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mBorders:[F

    sget-object v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {p3, v2, v3}, Lcom/taobao/weex/ui/action/BasicComponentData;->addShorthand([FLio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;)V

    .line 61
    :cond_2a
    invoke-static {p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponentFactory;->newInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    .line 62
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3, p2}, Lcom/taobao/weex/ui/WXRenderManager;->registerComponent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 63
    iget-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    if-eqz p3, :cond_70

    const-string v2, "transform"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_70

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p3

    if-nez p3, :cond_70

    .line 64
    new-instance p3, Landroidx/collection/ArrayMap;

    const/4 v3, 0x2

    invoke-direct {p3, v3}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 65
    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    const-string v3, "transformOrigin"

    .line 67
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->addAnimationForElement(Ljava/util/Map;)V

    .line 70
    :cond_70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, p2, v2, v3}, Lcom/taobao/weex/WXSDKInstance;->onComponentCreate(Lcom/taobao/weex/ui/component/WXComponent;J)V

    return-object p2
.end method

.method public executeAction()V
    .registers 6

    .line 76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->getWXSDKIntance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->callActionAddElementTime(J)V

    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getComponentType()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mComponentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mEvents:Ljava/util/Set;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mIndex:I

    return v0
.end method

.method public getParentRef()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mParentRef:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->mStyle:Ljava/util/Map;

    return-object v0
.end method
