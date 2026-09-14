###### Class com.taobao.weex.ui.action.GraphicPosition (com.taobao.weex.ui.action.GraphicPosition)
.class public Lcom/taobao/weex/ui/action/GraphicPosition;
.super Ljava/lang/Object;
.source "GraphicPosition.java"


# instance fields
.field private mBottom:F

.field private mLeft:F

.field private mRight:F

.field private mTop:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    .line 30
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    .line 31
    iput p3, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    .line 32
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return-void
.end method


# virtual methods
.method public getBottom()F
    .registers 2

    .line 60
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return v0
.end method

.method public getLeft()F
    .registers 2

    .line 36
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    return v0
.end method

.method public getRight()F
    .registers 2

    .line 52
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return v0
.end method

.method public getTop()F
    .registers 2

    .line 44
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    return v0
.end method

.method public setBottom(F)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return-void
.end method

.method public setLeft(F)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    return-void
.end method

.method public setRight(F)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return-void
.end method

.method public setTop(F)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    return-void
.end method

.method public update(FFFF)V
    .registers 5

    .line 69
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    .line 70
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    .line 71
    iput p3, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    .line 72
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return-void
.end method
