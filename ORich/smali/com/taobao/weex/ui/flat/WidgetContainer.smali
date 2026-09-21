###### Class com.taobao.weex.ui.flat.WidgetContainer (com.taobao.weex.ui.flat.WidgetContainer)
.class public abstract Lcom/taobao/weex/ui/flat/WidgetContainer;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/flat/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method private addFlatChild(Lcom/taobao/weex/ui/flat/widget/Widget;I)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    if-nez v0, :cond_b

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_19

    .line 91
    iget-object p2, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 93
    :cond_19
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    :goto_1e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->mountFlatGUI()V

    return-void
.end method


# virtual methods
.method public createChildViewAt(I)V
    .registers 8

    .line 56
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->intendToBeFlatContainer()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 57
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/WidgetContainer;->rearrangeIndexAndGetChild(I)Landroid/util/Pair;

    move-result-object p1

    .line 58
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_6d

    .line 59
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 61
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v1

    .line 62
    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 63
    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v3

    if-eqz v3, :cond_27

    :cond_26
    move-object v2, p0

    .line 66
    :cond_27
    invoke-virtual {v1, v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/WidgetContainer;)V

    .line 68
    instance-of v3, v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v3, :cond_3d

    move-object v3, v0

    check-cast v3, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 69
    invoke-interface {v3}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v2

    goto :goto_5b

    .line 71
    :cond_3d
    new-instance v3, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-direct {v3, v1}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    .line 72
    move-object v4, v3

    check-cast v4, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v1, v0, v4}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;)V

    .line 73
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 74
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/taobao/weex/ui/flat/WidgetContainer;->addSubView(Landroid/view/View;I)V

    move-object v2, v3

    .line 78
    :goto_5b
    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->register(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 79
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/ui/flat/WidgetContainer;->addFlatChild(Lcom/taobao/weex/ui/flat/widget/Widget;I)V

    goto :goto_6d

    .line 82
    :cond_6a
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public intendToBeFlatContainer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract mountFlatGUI()V
.end method

.method protected abstract unmountFlatGUI()V
.end method
