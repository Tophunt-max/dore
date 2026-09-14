###### Class com.taobao.weex.ui.component.WXVContainer (com.taobao.weex.ui.component.WXVContainer)
.class public abstract Lcom/taobao/weex/ui/component/WXVContainer;
.super Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;
.source "WXVContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lio/dcloud/feature/uniapp/ui/component/AbsVContainer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WXVContainer"


# instance fields
.field private mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/ui/component/WXVContainer<",
            "TT;>.BoxShadowHost;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6

    .line 43
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method


# virtual methods
.method public getBoxShadowHost(Z)Landroid/view/View;
    .registers 14

    const-string v0, "BoxShadow"

    if-eqz p1, :cond_7

    .line 66
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    return-object p1

    .line 69
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez p1, :cond_11

    return-object v1

    .line 75
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getComponentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "div"

    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "view"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 77
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Draw box-shadow with BoxShadowHost on div: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    if-nez v2, :cond_54

    .line 79
    new-instance v2, Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;-><init>(Lcom/taobao/weex/ui/component/WXVContainer;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    .line 80
    invoke-static {v2, v1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 82
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_54
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    .line 88
    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 89
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 90
    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 91
    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 93
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    neg-int v8, v3

    neg-int v9, v4

    neg-int v10, v5

    neg-int v11, v1

    move-object v6, p0

    move-object v7, v2

    .line 94
    invoke-virtual/range {v6 .. v11}, Lcom/taobao/weex/ui/component/WXVContainer;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 96
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;
    :try_end_b7
    .catchall {:try_start_11 .. :try_end_b7} :catchall_b8

    return-object p1

    :catchall_b8
    move-exception v1

    .line 103
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_bc
    return-object p1
.end method

.method protected getChildrenLayoutTopOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public removeBoxShadowHost()V
    .registers 4

    .line 109
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_9

    return-void

    .line 114
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getComponentType()Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    if-eqz v2, :cond_26

    const-string v2, "div"

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "view"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 117
    :cond_21
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVContainer;->mBoxShadowHost:Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_26

    :catchall_26
    :cond_26
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXVContainer.BoxShadowHost (com.taobao.weex.ui.component.WXVContainer$BoxShadowHost)
.class Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;
.super Landroid/view/View;
.source "WXVContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXVContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoxShadowHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVContainer;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXVContainer;Landroid/content/Context;)V
    .registers 3

    .line 126
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;->this$0:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 127
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method
