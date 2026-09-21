###### Class com.taobao.weex.RenderContainer (com.taobao.weex.RenderContainer)
.class public Lcom/taobao/weex/RenderContainer;
.super Lcom/taobao/weex/render/WXAbstractRenderContainer;
.source "RenderContainer.java"

# interfaces
.implements Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;


# instance fields
.field private mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method


# virtual methods
.method public OnVSync()V
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 92
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->OnVSync()V

    :cond_17
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 3

    .line 77
    invoke-super {p0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->dispatchWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_f

    .line 79
    iget-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz p1, :cond_18

    .line 80
    invoke-virtual {p1}, Lcom/taobao/weex/WeexFrameRateControl;->stop()V

    goto :goto_18

    :cond_f
    if-nez p1, :cond_18

    .line 83
    iget-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz p1, :cond_18

    .line 84
    invoke-virtual {p1}, Lcom/taobao/weex/WeexFrameRateControl;->start()V

    :cond_18
    :goto_18
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 62
    invoke-super {p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->onAttachedToWindow()V

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_a

    .line 64
    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->start()V

    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 70
    invoke-super {p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->onDetachedFromWindow()V

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_a

    .line 72
    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->stop()V

    :cond_a
    return-void
.end method
