###### Class com.taobao.weex.render.WXAbstractRenderContainer (com.taobao.weex.render.WXAbstractRenderContainer)
.class public Lcom/taobao/weex/render/WXAbstractRenderContainer;
.super Landroid/widget/FrameLayout;
.source "WXAbstractRenderContainer.java"


# instance fields
.field protected mHasConsumeEvent:Z

.field protected mSDKInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mHasConsumeEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mHasConsumeEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mHasConsumeEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mHasConsumeEvent:Z

    return-void
.end method


# virtual methods
.method public createInstanceRenderView(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mHasConsumeEvent:Z

    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public hasConsumeEvent()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mHasConsumeEvent:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 61
    iget-object p3, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/WXSDKInstance;

    if-eqz p3, :cond_12

    .line 63
    invoke-virtual {p3, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->setSize(II)V

    :cond_12
    return-void
.end method

.method public setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    return-void
.end method
