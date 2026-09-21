###### Class com.taobao.weex.ui.component.WXA (com.taobao.weex.ui.component.WXA)
.class public Lcom/taobao/weex/ui/component/WXA;
.super Lcom/taobao/weex/ui/component/WXDiv;
.source "WXA.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXA;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 29
    check-cast p1, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXA;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXFrameLayout;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXFrameLayout;)V
    .registers 3

    .line 43
    new-instance v0, Lcom/taobao/weex/ui/component/WXA$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXA$1;-><init>(Lcom/taobao/weex/ui/component/WXA;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXA;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    .line 53
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXDiv;->onHostViewInitialized(Landroid/view/View;)V

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "href"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 62
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXDiv;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

###### Class com.taobao.weex.ui.component.WXA.AnonymousClass1 (com.taobao.weex.ui.component.WXA$1)
.class Lcom/taobao/weex/ui/component/WXA$1;
.super Ljava/lang/Object;
.source "WXA.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXA;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXA;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXA;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXA$1;->this$0:Lcom/taobao/weex/ui/component/WXA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXA$1;->this$0:Lcom/taobao/weex/ui/component/WXA;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXA;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "href"

    .line 48
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    .line 49
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXA$1;->this$0:Lcom/taobao/weex/ui/component/WXA;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXA;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/taobao/weex/utils/ATagUtil;->onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method
