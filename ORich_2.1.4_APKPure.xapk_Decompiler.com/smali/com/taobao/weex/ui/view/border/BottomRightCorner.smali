###### Class com.taobao.weex.ui.view.border.BottomRightCorner (com.taobao.weex.ui.view.border.BottomRightCorner)
.class Lcom/taobao/weex/ui/view/border/BottomRightCorner;
.super Lcom/taobao/weex/ui/view/border/BorderCorner;
.source "BottomRightCorner.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;-><init>()V

    return-void
.end method


# virtual methods
.method protected prepareOval()V
    .registers 5

    .line 32
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->hasInnerCorner()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_5b

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getPreBorderWidth()F

    move-result v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setOvalLeft(F)V

    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getPostBorderWidth()F

    move-result v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setOvalTop(F)V

    .line 35
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getPreBorderWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setOvalRight(F)V

    .line 36
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getPostBorderWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setOvalBottom(F)V

    goto :goto_a3

    .line 38
    :cond_5b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setOvalLeft(F)V

    .line 39
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setOvalTop(F)V

    .line 40
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setOvalRight(F)V

    .line 41
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setOvalBottom(F)V

    :goto_a3
    return-void
.end method

.method protected prepareRoundCorner()V
    .registers 5

    .line 47
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->hasOuterCorner()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_4b

    .line 48
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getPreBorderWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setRoundCornerStartX(F)V

    .line 49
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setRoundCornerStartY(F)V

    .line 51
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setRoundCornerEndX(F)V

    .line 52
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getPostBorderWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setRoundCornerEndY(F)V

    goto :goto_73

    .line 54
    :cond_4b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getPreBorderWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 55
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getBorderBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getPostBorderWidth()F

    move-result v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 57
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setRoundCornerStartX(F)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setRoundCornerStartY(F)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setRoundCornerEndX(F)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->setRoundCornerEndY(F)V

    :goto_73
    return-void
.end method

.method set(FFFLandroid/graphics/RectF;)V
    .registers 11

    const/high16 v5, 0x42340000    # 45.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->set(FFFLandroid/graphics/RectF;F)V

    return-void
.end method
