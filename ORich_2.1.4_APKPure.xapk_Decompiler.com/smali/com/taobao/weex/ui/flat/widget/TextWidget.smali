###### Class com.taobao.weex.ui.flat.widget.TextWidget (com.taobao.weex.ui.flat.widget.TextWidget)
.class public Lcom/taobao/weex/ui/flat/widget/TextWidget;
.super Lcom/taobao/weex/ui/flat/widget/BaseWidget;
.source "TextWidget.java"


# instance fields
.field private mLayout:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/TextWidget;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_7

    .line 42
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    return-void
.end method

.method public bridge synthetic setContentBox(IIII)V
    .registers 5

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setContentBox(IIII)V

    return-void
.end method

.method public bridge synthetic setLayout(IIIIIILandroid/graphics/Point;)V
    .registers 8

    .line 30
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setLayout(IIIIIILandroid/graphics/Point;)V

    return-void
.end method

.method public updateTextDrawable(Landroid/text/Layout;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/taobao/weex/ui/flat/widget/TextWidget;->mLayout:Landroid/text/Layout;

    .line 48
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/TextWidget;->invalidate()V

    return-void
.end method
