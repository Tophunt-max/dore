###### Class io.dcloud.feature.weex.adapter.FrescoImageView (io.dcloud.feature.weex.adapter.FrescoImageView)
.class public Lio/dcloud/feature/weex/adapter/FrescoImageView;
.super Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;
.source "FrescoImageView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# instance fields
.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 55
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 60
    invoke-super {p0, p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 61
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_d

    .line 62
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_d
    return v0
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public setFadeShow(Z)V
    .registers 3

    .line 69
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    if-eqz v0, :cond_39

    if-eqz p1, :cond_22

    .line 71
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setFadeDuration(I)V

    .line 72
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->getTopLevelDrawable()Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;->setRefresh(Z)V

    goto :goto_39

    .line 74
    :cond_22
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setFadeDuration(I)V

    .line 75
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->getTopLevelDrawable()Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCRootDrawable;->setRefresh(Z)V

    :cond_39
    :goto_39
    return-void
.end method
