###### Class com.taobao.weex.ui.action.GraphicActionRefreshFinish (com.taobao.weex.ui.action.GraphicActionRefreshFinish)
.class public Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionRefreshFinish.java"


# instance fields
.field private mLayoutHeight:I

.field private mLayoutWidth:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 3

    const-string v0, ""

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 38
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->mLayoutWidth:I

    .line 39
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->mLayoutHeight:I

    :cond_19
    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 4

    .line 45
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->getWXSDKIntance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 46
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_14

    .line 50
    :cond_d
    iget v1, p0, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->mLayoutWidth:I

    iget v2, p0, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;->mLayoutHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->onRefreshSuccess(II)V

    :cond_14
    :goto_14
    return-void
.end method
