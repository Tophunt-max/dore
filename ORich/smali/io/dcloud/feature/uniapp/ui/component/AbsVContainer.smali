###### Class io.dcloud.feature.uniapp.ui.component.AbsVContainer (io.dcloud.feature.uniapp.ui.component.AbsVContainer)
.class public abstract Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "AbsVContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p4, p5}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    return-void
.end method

.method private doViewTreeRecycleImageView(Landroid/view/ViewGroup;Z)V
    .registers 7

    .line 542
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_29

    .line 544
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 545
    instance-of v3, v2, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v3, :cond_1d

    if-eqz p2, :cond_17

    .line 547
    check-cast v2, Lcom/taobao/weex/ui/view/WXImageView;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXImageView;->autoReleaseImage()V

    goto :goto_26

    .line 549
    :cond_17
    check-cast v2, Lcom/taobao/weex/ui/view/WXImageView;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXImageView;->autoRecoverImage()V

    goto :goto_26

    .line 551
    :cond_1d
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_26

    .line 552
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->doViewTreeRecycleImageView(Landroid/view/ViewGroup;Z)V

    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_29
    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, -0x1

    .line 254
    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 6

    if-eqz p1, :cond_2b

    const/4 v0, -0x1

    if-ge p2, v0, :cond_6

    goto :goto_2b

    .line 261
    :cond_6
    iget v1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mDeepInComponentTree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 262
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget v2, p1, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setMaxDomDeep(I)V

    .line 263
    iget-object v1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1e

    const/4 p2, -0x1

    :cond_1e
    if-ne p2, v0, :cond_26

    .line 266
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 268
    :cond_26
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .registers 5

    if-eqz p1, :cond_42

    .line 301
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_42

    .line 304
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_18
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-lt p2, v0, :cond_24

    const/4 p2, -0x1

    :cond_24
    if-ne p2, v1, :cond_2e

    .line 310
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_35

    .line 312
    :cond_2e
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 314
    :goto_35
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 316
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    :cond_42
    :goto_42
    return-void
.end method

.method public appendTreeCreateFinish()V
    .registers 1

    return-void
.end method

.method public applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 6

    .line 104
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->isLazy()Z

    move-result v0

    if-nez v0, :cond_24

    if-nez p1, :cond_9

    move-object p1, p0

    .line 108
    :cond_9
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 109
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_24

    .line 111
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 112
    move-object v3, p1

    check-cast v3, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v3, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_24
    return-void
.end method

.method public bindComponentData(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 6

    .line 155
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->isLazy()Z

    move-result v0

    if-nez v0, :cond_24

    if-nez p1, :cond_9

    move-object p1, p0

    .line 159
    :cond_9
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponentData(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 160
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_24

    .line 162
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v3, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_24
    return-void
.end method

.method public childCount()I
    .registers 2

    .line 238
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public createChildViewAt(I)V
    .registers 4

    .line 277
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->rearrangeIndexAndGetChild(I)Landroid/util/Pair;

    move-result-object p1

    .line 278
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_24

    .line 279
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 280
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 281
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v1

    if-nez v1, :cond_24

    .line 282
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->addSubView(Landroid/view/View;I)V

    :cond_24
    return-void
.end method

.method public createViewImpl()V
    .registers 4

    .line 189
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    .line 190
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_11

    .line 192
    invoke-virtual {p0, v2}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->createChildViewAt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 194
    :cond_11
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 195
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_20
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 201
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 204
    iget-object v2, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 206
    :cond_19
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    :cond_1e
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    return-void
.end method

.method public detachViewAndClearPreInfo()Landroid/view/View;
    .registers 5

    .line 227
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->detachViewAndClearPreInfo()Landroid/view/View;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d

    .line 229
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1d

    .line 231
    iget-object v3, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->detachViewAndClearPreInfo()Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method public abstract getBoxShadowHost(Z)Landroid/view/View;
.end method

.method public getChild(I)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 3

    .line 242
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    if-ltz p1, :cond_16

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_16

    .line 246
    :cond_d
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    return-object p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    .line 250
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    return v0
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .registers 15

    if-eqz p2, :cond_7

    .line 123
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-nez p1, :cond_10

    .line 127
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_23

    .line 129
    :cond_10
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_23

    .line 132
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v0, p0

    move v2, p5

    move v3, p7

    move v4, p6

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    :cond_23
    :goto_23
    return-object p1
.end method

.method protected getChildrenLayoutTopOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .registers 3

    .line 140
    instance-of v0, p0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v0, :cond_8

    .line 141
    move-object v0, p0

    check-cast v0, Lcom/taobao/weex/ui/component/Scrollable;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    .line 143
    :goto_9
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 144
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getFirstScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v1

    if-eqz v1, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .registers 2

    .line 184
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public ignoreFocus()V
    .registers 3

    .line 79
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 83
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    :cond_12
    return-void
.end method

.method public final indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I
    .registers 3

    .line 273
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public interceptFocus()V
    .registers 3

    .line 66
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    const/high16 v1, 0x20000

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_17
    return-void
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 354
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    goto :goto_34

    .line 358
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 359
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_30

    const-string p1, "disappear"

    .line 362
    :cond_30
    invoke-virtual {v1, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_34
    :goto_34
    return-void
.end method

.method public onActivityBack()Z
    .registers 5

    .line 433
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityBack()Z

    .line 435
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    .line 437
    invoke-virtual {p0, v2}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityBack()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    return v1
.end method

.method public onActivityCreate()V
    .registers 4

    .line 371
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityCreate()V

    .line 373
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 375
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityCreate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityDestroy()V
    .registers 4

    .line 422
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityDestroy()V

    .line 424
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 426
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityDestroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityPause()V
    .registers 4

    .line 392
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    .line 394
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 396
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 444
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResult(IILandroid/content/Intent;)V

    .line 446
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 448
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResult(IILandroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityResume()V
    .registers 4

    .line 402
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    .line 404
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 406
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityStart()V
    .registers 4

    .line 381
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStart()V

    .line 383
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 385
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onActivityStop()V
    .registers 4

    .line 412
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStop()V

    .line 414
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 416
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    .line 454
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 456
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    .line 458
    invoke-virtual {p0, v2}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    return v1
.end method

.method public onRenderFinish(I)V
    .registers 7

    const/4 v0, 0x0

    .line 476
    :goto_1
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 477
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 479
    iget-object v2, v1, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-object v3, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v3, v3, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiQueueTime:J

    iput-wide v3, v2, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiQueueTime:J

    .line 480
    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onRenderFinish(I)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 483
    :cond_1b
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onRenderFinish(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    .line 466
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 468
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 470
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method protected rearrangeIndexAndGetChild(I)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-gez p1, :cond_8

    .line 290
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_8
    if-gez p1, :cond_15

    .line 294
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 296
    :cond_15
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public recoverImageList(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 514
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 515
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 516
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_19

    goto :goto_69

    :cond_19
    const/4 v0, 0x0

    .line 519
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 521
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->doViewTreeRecycleImageView(Landroid/view/ViewGroup;Z)V

    goto :goto_69

    .line 523
    :cond_32
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v1

    :goto_36
    if-ge v0, v1, :cond_69

    .line 525
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 526
    instance-of v3, v2, Lcom/taobao/weex/ui/component/WXImage;

    if-eqz v3, :cond_5d

    move-object v3, v2

    check-cast v3, Lcom/taobao/weex/ui/component/WXImage;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v3, :cond_5d

    .line 527
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v2, :cond_66

    .line 528
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 529
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXImageView;->autoRecoverImage()V

    goto :goto_66

    .line 531
    :cond_5d
    instance-of v3, v2, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_66

    .line 532
    check-cast v2, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v2, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->recoverImageList(Ljava/lang/String;)V

    :cond_66
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_69
    :goto_69
    return-void
.end method

.method public recycled()V
    .registers 4

    .line 215
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->isFixed()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->canRecycled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 216
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2b

    .line 218
    iget-object v2, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->recycled()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 221
    :cond_2b
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->recycled()V

    return-void
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 6

    if-nez p1, :cond_3

    move-object p1, p0

    .line 172
    :cond_3
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 173
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1e

    .line 175
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v3, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1e
    return-void
.end method

.method public releaseImageList(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 488
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 489
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 490
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_19

    goto :goto_6a

    :cond_19
    const/4 v0, 0x0

    .line 493
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 495
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->doViewTreeRecycleImageView(Landroid/view/ViewGroup;Z)V

    goto :goto_6a

    .line 497
    :cond_33
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v1

    :goto_37
    if-ge v0, v1, :cond_6a

    .line 499
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 500
    instance-of v3, v2, Lcom/taobao/weex/ui/component/WXImage;

    if-eqz v3, :cond_5e

    move-object v3, v2

    check-cast v3, Lcom/taobao/weex/ui/component/WXImage;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v3, :cond_5e

    .line 501
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v2, :cond_67

    .line 502
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 503
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXImageView;->autoReleaseImage()V

    goto :goto_67

    .line 505
    :cond_5e
    instance-of v3, v2, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_67

    .line 506
    check-cast v2, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v2, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->releaseImageList(Ljava/lang/String;)V

    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_6a
    :goto_6a
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 5

    if-eqz p1, :cond_7c

    .line 321
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_7c

    .line 325
    :cond_e
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 327
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 328
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 329
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->removeFixedView(Landroid/view/View;)V

    goto :goto_77

    .line 330
    :cond_35
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 331
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v0

    if-nez v0, :cond_74

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/component/WXBaseScroller;

    if-eqz v1, :cond_58

    .line 334
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 335
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :cond_58
    if-eqz v0, :cond_68

    .line 338
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_68

    .line 339
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_77

    .line 341
    :cond_68
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_77

    .line 344
    :cond_74
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeVirtualComponent()V

    :cond_77
    :goto_77
    if-eqz p2, :cond_7c

    .line 348
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public abstract removeBoxShadowHost()V
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    .line 559
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v0, :cond_12

    .line 560
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isRequestDisallowInterceptTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 563
    :cond_d
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setRequestDisallowInterceptTouchEvent(Z)V

    .line 565
    :cond_12
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 566
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1f
    return-void
.end method
