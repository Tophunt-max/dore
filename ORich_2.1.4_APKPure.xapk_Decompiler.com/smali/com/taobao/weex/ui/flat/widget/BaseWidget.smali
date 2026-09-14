###### Class com.taobao.weex.ui.flat.widget.BaseWidget (com.taobao.weex.ui.flat.widget.BaseWidget)
.class abstract Lcom/taobao/weex/ui/flat/widget/BaseWidget;
.super Ljava/lang/Object;
.source "BaseWidget.java"

# interfaces
.implements Lcom/taobao/weex/ui/flat/widget/Widget;


# instance fields
.field private backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

.field private borderBox:Landroid/graphics/Rect;

.field private bottomOffset:I

.field private final context:Lcom/taobao/weex/ui/flat/FlatGUIContext;

.field private leftOffset:I

.field private offsetOfContainer:Landroid/graphics/Point;

.field private rightOffset:I

.field private topOffset:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    .line 48
    iput-object p1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->context:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasWithinBorderBox(Lcom/taobao/weex/ui/flat/widget/Widget;Landroid/graphics/Canvas;)V

    .line 104
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_1a

    .line 106
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    :cond_1a
    iget v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->leftOffset:I

    iget v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->topOffset:I

    iget-object v2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->rightOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->bottomOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 109
    iget v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->leftOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->topOffset:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getBackgroundAndBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object v0
.end method

.method public final getBorderBox()Landroid/graphics/Rect;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getLocInFlatContainer()Landroid/graphics/Point;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    return-object v0
.end method

.method protected invalidate()V
    .registers 4

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 116
    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 118
    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->context:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getWidgetContainerView(Lcom/taobao/weex/ui/flat/widget/Widget;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 119
    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_1f
    return-void
.end method

.method public setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V
    .registers 5

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 76
    iget-object v1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 77
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setCallback(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->invalidate()V

    return-void
.end method

.method protected setCallback(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->context:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getWidgetContainerView(Lcom/taobao/weex/ui/flat/widget/Widget;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 126
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d
    return-void
.end method

.method public setContentBox(IIII)V
    .registers 5

    .line 63
    iput p1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->leftOffset:I

    .line 64
    iput p2, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->topOffset:I

    .line 65
    iput p3, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->rightOffset:I

    .line 66
    iput p4, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->bottomOffset:I

    .line 67
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->invalidate()V

    return-void
.end method

.method public setLayout(IIIIIILandroid/graphics/Point;)V
    .registers 8

    .line 53
    iput-object p7, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->offsetOfContainer:Landroid/graphics/Point;

    .line 54
    iget-object p4, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->borderBox:Landroid/graphics/Rect;

    add-int/2addr p1, p3

    add-int/2addr p2, p5

    invoke-virtual {p4, p3, p5, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    iget-object p1, p0, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->backgroundBorder:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz p1, :cond_10

    .line 56
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    .line 58
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->invalidate()V

    return-void
.end method
