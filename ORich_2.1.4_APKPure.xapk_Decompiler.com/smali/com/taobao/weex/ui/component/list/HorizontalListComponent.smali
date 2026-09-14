###### Class com.taobao.weex.ui.component.list.HorizontalListComponent (com.taobao.weex.ui.component.list.HorizontalListComponent)
.class public Lcom/taobao/weex/ui/component/list/HorizontalListComponent;
.super Lcom/taobao/weex/ui/component/list/WXListComponent;
.source "HorizontalListComponent.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/list/WXListComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
