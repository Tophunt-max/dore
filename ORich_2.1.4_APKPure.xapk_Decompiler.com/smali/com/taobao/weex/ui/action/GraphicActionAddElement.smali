###### Class com.taobao.weex.ui.action.GraphicActionAddElement (com.taobao.weex.ui.action.GraphicActionAddElement)
.class public Lcom/taobao/weex/ui/action/GraphicActionAddElement;
.super Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;
.source "GraphicActionAddElement.java"


# instance fields
.field private child:Lcom/taobao/weex/ui/component/WXComponent;

.field private isLayoutRTL:Z

.field private layoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

.field private layoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

.field private parent:Lcom/taobao/weex/ui/component/WXVContainer;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
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

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 64
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mComponentType:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mParentRef:Ljava/lang/String;

    .line 66
    iput p5, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mIndex:I

    .line 67
    iput-object p6, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mStyle:Ljava/util/Map;

    .line 68
    iput-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mAttributes:Ljava/util/Map;

    .line 69
    iput-object p8, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mEvents:Ljava/util/Set;

    .line 70
    iput-object p10, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mPaddings:[F

    .line 71
    iput-object p9, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mMargins:[F

    .line 72
    iput-object p11, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mBorders:[F

    .line 74
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p4

    if-nez p4, :cond_1c

    return-void

    .line 77
    :cond_1c
    invoke-static {}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isInteractionLogOpen()Z

    move-result p4

    if-eqz p4, :cond_4a

    .line 78
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "[client][addelementStart]"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ","

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "wxInteractionAnalyzer"

    invoke-static {p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 p4, 0x0

    const/4 p5, 0x1

    .line 81
    :try_start_4c
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p6

    invoke-virtual {p6}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p6

    .line 82
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->getPageId()Ljava/lang/String;

    move-result-object p7

    iget-object p8, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mParentRef:Ljava/lang/String;

    invoke-virtual {p6, p7, p8}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p6

    check-cast p6, Lcom/taobao/weex/ui/component/WXVContainer;

    iput-object p6, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 83
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide p6

    .line 84
    new-instance p8, Lcom/taobao/weex/ui/action/BasicComponentData;

    iget-object p9, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mComponentType:Ljava/lang/String;

    iget-object p10, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mParentRef:Ljava/lang/String;

    invoke-direct {p8, p2, p9, p10}, Lcom/taobao/weex/ui/action/BasicComponentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {p0, p1, p2, p8}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->createComponent(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    .line 87
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p8

    iget-object p9, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {p8, p9}, Lcom/taobao/weex/dom/transition/WXTransition;->fromMap(Ljava/util/Map;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p8

    invoke-virtual {p2, p8}, Lcom/taobao/weex/ui/component/WXComponent;->setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V

    .line 88
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide p8

    sub-long/2addr p8, p6

    .line 89
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p2

    iget-wide p6, p2, Lcom/taobao/weex/performance/WXInstanceApm;->componentCreateTime:J

    add-long/2addr p6, p8

    iput-wide p6, p2, Lcom/taobao/weex/performance/WXInstanceApm;->componentCreateTime:J

    .line 90
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz p2, :cond_9e

    iget-boolean p2, p2, Lcom/taobao/weex/ui/component/WXVContainer;->isIgnoreInteraction:Z

    if-eqz p2, :cond_9e

    .line 91
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iput-boolean p5, p2, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    .line 93
    :cond_9e
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iget-boolean p2, p2, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    if-nez p2, :cond_eb

    const/4 p2, 0x0

    .line 95
    iget-object p6, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p6

    if-eqz p6, :cond_b9

    .line 96
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string p6, "ignoreInteraction"

    invoke-virtual {p2, p6}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_b9
    const-string p6, "false"

    .line 98
    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_e7

    const-string p6, "0"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_ca

    goto :goto_e7

    :cond_ca
    const-string p6, "1"

    .line 100
    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_e2

    const-string p6, "true"

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e2

    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result p2

    if-eqz p2, :cond_eb

    .line 101
    :cond_e2
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iput-boolean p5, p2, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    goto :goto_eb

    .line 99
    :cond_e7
    :goto_e7
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iput-boolean p4, p2, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    .line 104
    :cond_eb
    :goto_eb
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object p2

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p6

    const-string p7, "addElement"

    invoke-virtual {p2, p6, p7}, Lcom/taobao/weex/performance/WXStateRecord;->recordAction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/ClassCastException; {:try_start_4c .. :try_end_f8} :catch_fa

    goto/16 :goto_25f

    :catch_fa
    nop

    .line 107
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 108
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p6

    invoke-virtual {p6}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p6

    .line 109
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->getPageId()Ljava/lang/String;

    move-result-object p7

    iget-object p8, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mParentRef:Ljava/lang/String;

    invoke-virtual {p6, p7, p8}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p6

    .line 111
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mStyle:Ljava/util/Map;

    if-eqz p7, :cond_129

    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mStyle:Ljava/util/Map;

    invoke-interface {p7}, Ljava/util/Map;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_129

    .line 112
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mStyle:Ljava/util/Map;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    const-string p8, "child.style"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_129
    if-eqz p6, :cond_148

    .line 114
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p7

    if-eqz p7, :cond_148

    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p7

    invoke-virtual {p7}, Lcom/taobao/weex/dom/WXStyle;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_148

    .line 115
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p7

    invoke-virtual {p7}, Lcom/taobao/weex/dom/WXStyle;->toString()Ljava/lang/String;

    move-result-object p7

    const-string p8, "parent.style"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_148
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mAttributes:Ljava/util/Map;

    if-eqz p7, :cond_15f

    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mAttributes:Ljava/util/Map;

    invoke-interface {p7}, Ljava/util/Map;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_15f

    .line 119
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mAttributes:Ljava/util/Map;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    const-string p8, "child.attr"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15f
    if-eqz p6, :cond_17e

    .line 121
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p7

    if-eqz p7, :cond_17e

    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p7

    invoke-virtual {p7}, Lcom/taobao/weex/dom/WXAttr;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_17e

    .line 122
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p7

    invoke-virtual {p7}, Lcom/taobao/weex/dom/WXAttr;->toString()Ljava/lang/String;

    move-result-object p7

    const-string p8, "parent.attr"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_17e
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mEvents:Ljava/util/Set;

    if-eqz p7, :cond_195

    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mEvents:Ljava/util/Set;

    invoke-interface {p7}, Ljava/util/Set;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_195

    .line 126
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mEvents:Ljava/util/Set;

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    const-string p8, "child.event"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_195
    if-eqz p6, :cond_1b4

    .line 128
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p7

    if-eqz p7, :cond_1b4

    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p7

    invoke-virtual {p7}, Lcom/taobao/weex/dom/WXEvent;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_1b4

    .line 129
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p7

    invoke-virtual {p7}, Lcom/taobao/weex/dom/WXEvent;->toString()Ljava/lang/String;

    move-result-object p7

    const-string p8, "parent.event"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1b4
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mMargins:[F

    if-eqz p7, :cond_1c8

    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mMargins:[F

    array-length p7, p7

    if-lez p7, :cond_1c8

    .line 133
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mMargins:[F

    invoke-static {p7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p7

    const-string p8, "child.margin"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c8
    if-eqz p6, :cond_1dd

    .line 135
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p7

    if-eqz p7, :cond_1dd

    .line 136
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p7

    invoke-virtual {p7}, Lcom/taobao/weex/dom/CSSShorthand;->toString()Ljava/lang/String;

    move-result-object p7

    const-string p8, "parent.margin"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1dd
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mPaddings:[F

    if-eqz p7, :cond_1f1

    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mPaddings:[F

    array-length p7, p7

    if-lez p7, :cond_1f1

    .line 140
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mPaddings:[F

    invoke-static {p7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p7

    const-string p8, "child.padding"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f1
    if-eqz p6, :cond_206

    .line 142
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p7

    if-eqz p7, :cond_206

    .line 143
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p7

    invoke-virtual {p7}, Lcom/taobao/weex/dom/CSSShorthand;->toString()Ljava/lang/String;

    move-result-object p7

    const-string p8, "parent.padding"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_206
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mBorders:[F

    if-eqz p7, :cond_21a

    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mBorders:[F

    array-length p7, p7

    if-lez p7, :cond_21a

    .line 147
    iget-object p7, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mBorders:[F

    invoke-static {p7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p7

    const-string p8, "child.border"

    invoke-interface {p2, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21a
    if-eqz p6, :cond_22f

    .line 149
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p7

    if-eqz p7, :cond_22f

    .line 150
    invoke-virtual {p6}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p6

    invoke-virtual {p6}, Lcom/taobao/weex/dom/CSSShorthand;->toString()Ljava/lang/String;

    move-result-object p6

    const-string p7, "parent.border"

    invoke-interface {p2, p7, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_22f
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    sget-object p6, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_CONTAINER_TYPE:Lcom/taobao/weex/common/WXErrorCode;

    sget-object p7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p8, 0x2

    new-array p8, p8, [Ljava/lang/Object;

    aput-object p3, p8, p4

    .line 158
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->getPageId()Ljava/lang/String;

    move-result-object p4

    iget-object p9, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mParentRef:Ljava/lang/String;

    invoke-virtual {p3, p4, p9}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p8, p5

    const-string p3, "You are trying to add a %s to a %2$s, which is illegal as %2$s is not a container"

    .line 156
    invoke-static {p7, p3, p8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "GraphicActionAddElement"

    .line 153
    invoke-static {p1, p6, p4, p3, p2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_25f
    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 7

    .line 190
    invoke-super {p0}, Lcom/taobao/weex/ui/action/GraphicActionAbstractAddElement;->executeAction()V

    .line 192
    :try_start_3
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mComponentType:Ljava/lang/String;

    const-string v1, "video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mComponentType:Ljava/lang/String;

    const-string v1, "videoplus"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 193
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 195
    :cond_1c
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iget v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 197
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->parent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    .line 199
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    iget-boolean v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->isLayoutRTL:Z

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setIsLayoutRTL(Z)V

    .line 200
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-eqz v2, :cond_44

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-eqz v3, :cond_44

    .line 201
    iget-object v4, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4, v3, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setDemission(Lcom/taobao/weex/ui/action/GraphicSize;Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 203
    :cond_44
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v2}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 204
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v2}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 205
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 206
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->getWXSDKIntance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 207
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->getWXSDKIntance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    iget-wide v4, v0, Lcom/taobao/weex/performance/WXInstanceApm;->viewCreateTime:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/taobao/weex/performance/WXInstanceApm;->viewCreateTime:J
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_66} :catch_67

    goto :goto_6d

    :catch_67
    move-exception v0

    const-string v1, "add component failed."

    .line 211
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 185
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->mIndex:I

    return-void
.end method

.method public setPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    return-void
.end method

.method public setRTL(Z)V
    .registers 2

    .line 167
    iput-boolean p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->isLayoutRTL:Z

    return-void
.end method

.method public setSize(Lcom/taobao/weex/ui/action/GraphicSize;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->layoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    return-void
.end method
