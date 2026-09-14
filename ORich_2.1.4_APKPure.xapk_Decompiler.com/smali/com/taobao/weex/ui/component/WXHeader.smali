###### Class com.taobao.weex.ui.component.WXHeader (com.taobao.weex.ui.component.WXHeader)
.class public Lcom/taobao/weex/ui/component/WXHeader;
.super Lcom/taobao/weex/ui/component/list/WXCell;
.source "WXHeader.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXHeader;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/list/WXCell;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 40
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXVContainer;->getComponentType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "list"

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    const-string p2, "recycle-list"

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 43
    :cond_17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXHeader;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string p2, "position"

    const-string p3, "sticky"

    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, p3}, Lcom/taobao/weex/ui/component/WXHeader;->setSticky(Ljava/lang/String;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public canRecycled()Z
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXHeader;->isSticky()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLazy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
