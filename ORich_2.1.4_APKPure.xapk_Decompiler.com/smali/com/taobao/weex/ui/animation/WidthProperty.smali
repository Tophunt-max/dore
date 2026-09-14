###### Class com.taobao.weex.ui.animation.WidthProperty (com.taobao.weex.ui.animation.WidthProperty)
.class public Lcom/taobao/weex/ui/animation/WidthProperty;
.super Lcom/taobao/weex/ui/animation/LayoutParamsProperty;
.source "WidthProperty.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/view/View;)Ljava/lang/Integer;
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getProperty(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Integer;
    .registers 2

    .line 28
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Landroid/view/View;Ljava/lang/Integer;)V
    .registers 3

    .line 24
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->set(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

.method protected setProperty(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;)V
    .registers 3

    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
