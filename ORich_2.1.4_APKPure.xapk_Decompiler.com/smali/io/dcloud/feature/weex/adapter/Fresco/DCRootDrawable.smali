###### Class io.dcloud.feature.weex.adapter.Fresco.DCRootDrawable (io.dcloud.feature.weex.adapter.Fresco.DCRootDrawable)
.class public Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;
.super Lcom/facebook/drawee/generic/RootDrawable;
.source "DCRootDrawable.java"


# instance fields
.field private isRefresh:Z

.field private mVisibilityCallback:Lcom/facebook/drawee/drawable/VisibilityCallback;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/drawee/generic/RootDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;->isRefresh:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 41
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 44
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;->mVisibilityCallback:Lcom/facebook/drawee/drawable/VisibilityCallback;

    if-eqz v0, :cond_e

    .line 45
    invoke-interface {v0}, Lcom/facebook/drawee/drawable/VisibilityCallback;->onDraw()V

    .line 47
    :cond_e
    invoke-super {p0, p1}, Lcom/facebook/drawee/generic/RootDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRefresh(Z)V
    .registers 2

    .line 18
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;->isRefresh:Z

    return-void
.end method

.method public setVisibilityCallback(Lcom/facebook/drawee/drawable/VisibilityCallback;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;->mVisibilityCallback:Lcom/facebook/drawee/drawable/VisibilityCallback;

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    .line 28
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;->mVisibilityCallback:Lcom/facebook/drawee/drawable/VisibilityCallback;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;->isRefresh:Z

    if-eqz v1, :cond_b

    .line 30
    :try_start_8
    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/VisibilityCallback;->onVisibilityChange(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_b

    .line 35
    :catch_b
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/generic/RootDrawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method
