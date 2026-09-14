###### Class com.taobao.weex.ui.component.WXBaseRefresh (com.taobao.weex.ui.component.WXBaseRefresh)
.class public Lcom/taobao/weex/ui/component/WXBaseRefresh;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXBaseRefresh.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "Lcom/taobao/weex/ui/view/WXFrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoadingIndicator:Lcom/taobao/weex/ui/component/WXLoadingIndicator;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method private checkLoadingIndicator(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 59
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoadingIndicator;

    if-eqz v0, :cond_8

    .line 60
    check-cast p1, Lcom/taobao/weex/ui/component/WXLoadingIndicator;

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXBaseRefresh;->mLoadingIndicator:Lcom/taobao/weex/ui/component/WXLoadingIndicator;

    :cond_8
    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 43
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseRefresh;->checkLoadingIndicator(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 3

    .line 54
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseRefresh;->checkLoadingIndicator(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseRefresh;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .registers 3

    .line 49
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
