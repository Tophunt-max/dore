###### Class io.dcloud.feature.weex_scroller.view.DCWXHorizontalScrollView (io.dcloud.feature.weex_scroller.view.DCWXHorizontalScrollView)
.class public Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "DCWXHorizontalScrollView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWXScroller;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;
    }
.end annotation


# instance fields
.field private isTouch:Z

.field private lowwer:F

.field private mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

.field private mScrollViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;",
            ">;"
        }
    .end annotation
.end field

.field mScrollX:I

.field mScrollY:I

.field private scrollable:Z

.field private scroller:Ljava/lang/reflect/Field;

.field private shouldBeTriggerLower:Z

.field private shouldBeTriggerUpper:Z

.field private upper:F

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollable:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    .line 70
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    .line 71
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 130
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    .line 131
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    .line 50
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollable:Z

    const/4 p2, 0x0

    .line 45
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    .line 70
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    .line 71
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 130
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    .line 131
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    .line 64
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setWillNotDraw(Z)V

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setOverScrollMode(I)V

    .line 57
    :try_start_8
    const-class v0, Landroid/widget/HorizontalScrollView;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method private scrollToBottom()V
    .registers 3

    .line 142
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    if-eqz v0, :cond_7

    .line 143
    invoke-interface {v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrollToBottom()V

    .line 145
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    .line 147
    invoke-interface {v1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrollToBottom()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method private scrollToTop()V
    .registers 3

    .line 108
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    if-eqz v0, :cond_7

    .line 109
    invoke-interface {v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrolltoTop()V

    .line 111
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    .line 113
    invoke-interface {v1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrolltoTop()V

    goto :goto_f

    :cond_1f
    return-void
.end method


# virtual methods
.method public addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    .line 166
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 167
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 158
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 159
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 187
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 188
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_d

    .line 189
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_d
    return v0
.end method

.method public getContentFrame()Landroid/graphics/Rect;
    .registers 5

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->computeVerticalScrollRange()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 182
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollable:Z

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 14

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 76
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollX:I

    .line 77
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollY:I

    .line 79
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_26

    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    if-nez v0, :cond_26

    .line 80
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollToTop()V

    .line 81
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    goto :goto_33

    .line 82
    :cond_26
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    .line 83
    iput-boolean v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    .line 85
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3f

    return-void

    .line 89
    :cond_3f
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 90
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->getWidth()I

    move-result v1

    iget v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollX:I

    add-int/2addr v1, v4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 91
    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    cmpg-float v4, v0, v1

    if-gtz v4, :cond_5c

    iget-boolean v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    if-nez v4, :cond_5c

    .line 92
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollToBottom()V

    .line 93
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    goto :goto_62

    :cond_5c
    cmpl-float v0, v0, v1

    if-lez v0, :cond_62

    .line 95
    iput-boolean v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    .line 97
    :cond_62
    :goto_62
    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    if-eqz v3, :cond_70

    sub-int v7, p3, p1

    sub-int v8, p4, p2

    move-object v4, p0

    move v5, p1

    move v6, p2

    .line 98
    invoke-interface/range {v3 .. v8}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;IIII)V

    .line 100
    :cond_70
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v0, :cond_90

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    sub-int v6, p3, p1

    sub-int v7, p4, p2

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 102
    invoke-interface/range {v2 .. v7}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;IIII)V

    goto :goto_78

    :cond_90
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 196
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 199
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_16

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    goto :goto_18

    :cond_12
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    goto :goto_18

    .line 201
    :cond_16
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    .line 208
    :goto_18
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public removeScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;)V
    .registers 3

    .line 172
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLowwerLength(F)V
    .registers 2

    .line 138
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    return-void
.end method

.method public setScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 225
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollable:Z

    return-void
.end method

.method public setUpperLength(F)V
    .registers 2

    .line 134
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    return-void
.end method

.method public setWAScroller(Lcom/taobao/weex/ui/component/DCWXScroller;)V
    .registers 4

    .line 232
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getViewPortWidth()I

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    .line 233
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getViewPortWidth()I

    move-result p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    return-void
.end method

.method public stopScroll()V
    .registers 5

    .line 119
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_26

    iget-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    if-nez v1, :cond_26

    .line 121
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "abortAnimation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 122
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 125
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return-void
.end method

###### Class io.dcloud.feature.weex_scroller.view.DCWXHorizontalScrollView.ScrollViewListener (io.dcloud.feature.weex_scroller.view.DCWXHorizontalScrollView$ScrollViewListener)
.class public interface abstract Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;
.super Ljava/lang/Object;
.source "DCWXHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScrollViewListener"
.end annotation


# virtual methods
.method public abstract onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;IIII)V
.end method

.method public abstract onScrollToBottom()V
.end method

.method public abstract onScrolltoTop()V
.end method
