###### Class com.taobao.weex.ui.component.WXDiv (com.taobao.weex.ui.component.WXDiv)
.class public Lcom/taobao/weex/ui/component/WXDiv;
.super Lcom/taobao/weex/ui/flat/WidgetContainer;
.source "WXDiv.java"

# interfaces
.implements Lcom/taobao/weex/ui/flat/FlatComponent;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXDiv$Ceator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/flat/WidgetContainer<",
        "Lcom/taobao/weex/ui/view/WXFrameLayout;",
        ">;",
        "Lcom/taobao/weex/ui/flat/FlatComponent<",
        "Lcom/taobao/weex/ui/flat/widget/WidgetGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/flat/WidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/WidgetGroup;
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    if-nez v0, :cond_23

    .line 83
    new-instance v0, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    const/4 v0, 0x0

    .line 84
    :goto_14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 85
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXDiv;->createChildViewAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 87
    :cond_20
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->mountFlatGUI()V

    .line 89
    :cond_23
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXDiv;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .registers 3

    .line 61
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->holdComponent(Lcom/taobao/weex/ui/component/WXDiv;)V

    return-object v0
.end method

.method public intendToBeFlatContainer()Z
    .registers 3

    .line 115
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-class v0, Lcom/taobao/weex/ui/component/WXDiv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public isVirtualComponent()Z
    .registers 3

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXDiv;->promoteToView(Z)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected mountFlatGUI()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    if-nez v0, :cond_b

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    :cond_b
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXDiv;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 98
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 99
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->mountFlatGUI(Ljava/util/List;)V

    goto :goto_2b

    .line 102
    :cond_24
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;->replaceAll(Ljava/util/List;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public promoteToView(Z)Z
    .registers 5

    .line 68
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 69
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->intendToBeFlatContainer()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 70
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    const-class v2, Lcom/taobao/weex/ui/component/WXDiv;

    invoke-virtual {v0, p0, p1, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->promoteToView(Lcom/taobao/weex/ui/component/WXComponent;ZLjava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_22

    :cond_21
    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public unmountFlatGUI()V
    .registers 2

    .line 108
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 109
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->unmountFlatGUI()V

    :cond_f
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXDiv.Ceator (com.taobao.weex.ui.component.WXDiv$Ceator)
.class public Lcom/taobao/weex/ui/component/WXDiv$Ceator;
.super Ljava/lang/Object;
.source "WXDiv.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXDiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ceator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/taobao/weex/ui/component/WXDiv;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method
