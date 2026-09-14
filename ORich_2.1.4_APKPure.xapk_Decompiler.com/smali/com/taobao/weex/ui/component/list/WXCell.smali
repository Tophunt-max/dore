###### Class com.taobao.weex.ui.component.list.WXCell (com.taobao.weex.ui.component.list.WXCell)
.class public Lcom/taobao/weex/ui/component/list/WXCell;
.super Lcom/taobao/weex/ui/flat/WidgetContainer;
.source "WXCell.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;,
        Lcom/taobao/weex/ui/component/list/WXCell$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/flat/WidgetContainer<",
        "Lcom/taobao/weex/ui/view/WXFrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

.field private isAppendTreeDone:Z

.field private isSourceUsed:Z

.field private mFlatUIEnabled:Z

.field private mHeadView:Landroid/view/View;

.field private mLastLocationY:I

.field private mRealView:Landroid/view/ViewGroup;

.field private mScrollPosition:I

.field private mTempStickyView:Landroid/view/View;

.field private renderData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/flat/WidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    const/4 p2, -0x1

    .line 64
    iput p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    .line 65
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z

    .line 70
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6

    const-string p3, "flat"

    .line 91
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/flat/WidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p2, 0x0

    .line 58
    iput p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    const/4 p4, -0x1

    .line 64
    iput p4, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    .line 65
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z

    .line 70
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    const/4 p4, 0x1

    .line 92
    invoke-virtual {p0, p4}, Lcom/taobao/weex/ui/component/list/WXCell;->lazy(Z)V

    .line 93
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p4, v0, :cond_40

    .line 96
    :try_start_19
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p4

    .line 97
    invoke-virtual {p4, p3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 98
    invoke-virtual {p4, p3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_35} :catch_36

    goto :goto_40

    :catch_36
    move-exception p2

    .line 101
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Cell"

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->canRecycled()Z

    move-result p2

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    if-nez p2, :cond_51

    .line 105
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p2

    const-string v0, "wxCellDataUnRecycleCount"

    invoke-virtual {p2, v0, p3, p4}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 107
    :cond_51
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/WXAttr;->getScope()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_68

    .line 108
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string p2, "wxCellUnReUseCount"

    invoke-virtual {p1, p2, p3, p4}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    :cond_68
    return-void
.end method


# virtual methods
.method public appendTreeCreateFinish()V
    .registers 2

    .line 262
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->appendTreeCreateFinish()V

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone:Z

    .line 264
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

    if-eqz v0, :cond_d

    .line 265
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;->onAppendTreeDone()V

    :cond_d
    return-void
.end method

.method public createViewImpl()V
    .registers 2

    .line 283
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    return-void

    .line 286
    :cond_11
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->createViewImpl()V

    return-void
.end method

.method public getLocationFromStart()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .registers 2

    .line 54
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRenderData()Ljava/lang/Object;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->renderData:Ljava/lang/Object;

    return-object v0
.end method

.method public getScrollPositon()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    return v0
.end method

.method public getStickyOffset()I
    .registers 3

    .line 232
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "stickyOffset"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 235
    :cond_e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 236
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getViewPortWidthForFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/WXCell;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .registers 6

    .line 128
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isSticky()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1e

    instance-of v0, p0, Lcom/taobao/weex/ui/component/WXHeader;

    if-eqz v0, :cond_d

    goto :goto_1e

    .line 138
    :cond_d
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    .line 139
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFlatUIEnabled()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 141
    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1d
    return-object v0

    .line 129
    :cond_1e
    :goto_1e
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v3, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v3, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    .line 131
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/view/WXFrameLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFlatUIEnabled()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 134
    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_36
    return-object v0
.end method

.method public intendToBeFlatContainer()Z
    .registers 3

    .line 228
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-class v0, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isSticky()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public isAppendTreeDone()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone:Z

    return v0
.end method

.method public isFlatUIEnabled()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z

    return v0
.end method

.method public isLazy()Z
    .registers 2

    .line 114
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFixed()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isSourceUsed()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    return v0
.end method

.method protected mountFlatGUI()V
    .registers 3

    .line 211
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 212
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->widgets:Ljava/util/List;

    if-nez v0, :cond_11

    .line 213
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->widgets:Ljava/util/List;

    .line 215
    :cond_11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->mountFlatGUI(Ljava/util/List;)V

    :cond_1c
    return-void
.end method

.method public recoverySticky()V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_5c

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-lez v2, :cond_19

    .line 193
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 196
    :cond_19
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_26

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_26
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 200
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 202
    :cond_3b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mTempStickyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->removeView(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 205
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5c
    return-void
.end method

.method public removeSticky()V
    .registers 6

    .line 169
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_85

    .line 170
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v2, v0, [I

    new-array v0, v0, [I

    .line 173
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v3, v2}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getLocationOnScreen([I)V

    .line 174
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v3

    invoke-interface {v3}, Lcom/taobao/weex/ui/component/Scrollable;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 175
    aget v2, v2, v1

    aget v0, v0, v1

    sub-int/2addr v2, v0

    .line 176
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 177
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/view/WXFrameLayout;->removeView(Landroid/view/View;)V

    .line 178
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    .line 179
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mTempStickyView:Landroid/view/View;

    .line 180
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutWidth()F

    move-result v3

    float-to-int v3, v3

    .line 181
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mTempStickyView:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_85
    return-void
.end method

.method public setCellAppendTreeListener(Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;)V
    .registers 3

    .line 270
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

    .line 271
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone:Z

    if-eqz v0, :cond_9

    .line 272
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;->onAppendTreeDone()V

    :cond_9
    return-void
.end method

.method public setLocationFromStart(I)V
    .registers 2

    .line 152
    iput p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    return-void
.end method

.method public setRenderData(Ljava/lang/Object;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->renderData:Ljava/lang/Object;

    return-void
.end method

.method setScrollPositon(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    return-void
.end method

.method public setSourceUsed(Z)V
    .registers 2

    .line 252
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    return-void
.end method

.method public unmountFlatGUI()V
    .registers 2

    .line 221
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 222
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->unmountFlatGUI()V

    :cond_f
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.WXCell.CellAppendTreeListener (com.taobao.weex.ui.component.list.WXCell$CellAppendTreeListener)
.class public interface abstract Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;
.super Ljava/lang/Object;
.source "WXCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/list/WXCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CellAppendTreeListener"
.end annotation


# virtual methods
.method public abstract onAppendTreeDone()V
.end method

###### Class com.taobao.weex.ui.component.list.WXCell.Creator (com.taobao.weex.ui.component.list.WXCell$Creator)
.class public Lcom/taobao/weex/ui/component/list/WXCell$Creator;
.super Ljava/lang/Object;
.source "WXCell.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/list/WXCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/taobao/weex/ui/component/list/WXCell;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/taobao/weex/ui/component/list/WXCell;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method
