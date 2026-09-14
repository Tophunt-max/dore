###### Class com.taobao.weex.ui.view.border.TopLeftCorner (com.taobao.weex.ui.view.border.TopLeftCorner)
.class Lcom/taobao/weex/ui/view/border/TopLeftCorner;
.super Lcom/taobao/weex/ui/view/border/BorderCorner;
.source "TopLeftCorner.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;-><init>()V

    return-void
.end method


# virtual methods
.method protected prepareOval()V
    .registers 4

    .line 32
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->hasInnerCorner()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_37

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPreBorderWidth()F

    move-result v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalLeft(F)V

    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPostBorderWidth()F

    move-result v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalTop(F)V

    .line 35
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPreBorderWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalRight(F)V

    .line 36
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPostBorderWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalBottom(F)V

    goto :goto_5b

    .line 38
    :cond_37
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalLeft(F)V

    .line 39
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalTop(F)V

    .line 40
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalRight(F)V

    .line 41
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setOvalBottom(F)V

    :goto_5b
    return-void
.end method

.method protected prepareRoundCorner()V
    .registers 4

    .line 47
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->hasOuterCorner()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_27

    .line 48
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPreBorderWidth()F

    move-result v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerStartX(F)V

    .line 49
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerStartY(F)V

    .line 51
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerEndX(F)V

    .line 52
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPostBorderWidth()F

    move-result v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerEndY(F)V

    goto :goto_3d

    .line 54
    :cond_27
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPreBorderWidth()F

    move-result v0

    div-float/2addr v0, v1

    .line 55
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getPostBorderWidth()F

    move-result v2

    div-float/2addr v2, v1

    .line 57
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerStartX(F)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerStartY(F)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerEndX(F)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->setRoundCornerEndY(F)V

    :goto_3d
    return-void
.end method

.method set(FFFLandroid/graphics/RectF;)V
    .registers 11

    const/high16 v5, 0x43610000    # 225.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->set(FFFLandroid/graphics/RectF;F)V

    return-void
.end method
