###### Class com.taobao.weex.ui.action.GraphicActionBatchEnd (com.taobao.weex.ui.action.GraphicActionBatchEnd)
.class public Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionBatchEnd.java"


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;->mActionType:I

    return-void
.end method


# virtual methods
.method public executeAction()V
    .registers 1

    return-void
.end method
