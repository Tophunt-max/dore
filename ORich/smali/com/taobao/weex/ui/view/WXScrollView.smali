###### Class com.taobao.weex.ui.view.WXScrollView (com.taobao.weex.ui.view.WXScrollView)
.class public Lcom/taobao/weex/ui/view/WXScrollView;
.super Landroid/widget/ScrollView;
.source "WXScrollView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/taobao/weex/ui/view/IWXScroller;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;
    }
.end annotation


# instance fields
.field private childHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private consumed:[I

.field private mCheckTime:I

.field private mCurrentStickyView:Landroid/view/View;

.field private mHasNotDoneActionDown:Z

.field private mInitialPosition:I

.field private mRedirectTouchToStickyView:Z

.field private mScrollRect:Landroid/graphics/Rect;

.field private mScrollViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;",
            ">;"
        }
    .end annotation
.end field

.field mScrollX:I

.field mScrollY:I

.field private mScrollerTask:Landroid/os/Handler;

.field private mStickyOffset:I

.field private mStickyP:[I

.field private mWAScroller:Lcom/taobao/weex/ui/component/WXBaseScroller;

.field private offsetInWindow:[I

.field private ox:F

.field private oy:F

.field private scrollable:Z

.field private stickyScrollerP:[I

.field private stickyViewP:[I

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 60
    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->consumed:[I

    new-array v0, p1, [I

    .line 61
    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->offsetInWindow:[I

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mHasNotDoneActionDown:Z

    const/16 v1, 0x64

    .line 76
    iput v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCheckTime:I

    new-array v1, p1, [I

    .line 80
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mStickyP:[I

    new-array v1, p1, [I

    .line 85
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyScrollerP:[I

    new-array p1, p1, [I

    .line 86
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyViewP:[I

    .line 87
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->scrollable:Z

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    .line 92
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->init()V

    :try_start_2b
    const-string p1, "mMinimumVelocity"

    const/4 v0, 0x5

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXReflectionUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_36

    goto :goto_3c

    :catch_36
    move-exception p1

    const-string v0, "[WXScrollView] WXScrollView: "

    .line 96
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 60
    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->consumed:[I

    new-array p2, p1, [I

    .line 61
    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->offsetInWindow:[I

    const/4 p2, 0x1

    .line 72
    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mHasNotDoneActionDown:Z

    const/16 v0, 0x64

    .line 76
    iput v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCheckTime:I

    new-array v0, p1, [I

    .line 80
    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mStickyP:[I

    new-array v0, p1, [I

    .line 85
    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyScrollerP:[I

    new-array p1, p1, [I

    .line 86
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyViewP:[I

    .line 87
    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->scrollable:Z

    .line 118
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 60
    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->consumed:[I

    new-array p2, p1, [I

    .line 61
    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->offsetInWindow:[I

    const/4 p2, 0x1

    .line 72
    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mHasNotDoneActionDown:Z

    const/16 p3, 0x64

    .line 76
    iput p3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCheckTime:I

    new-array p3, p1, [I

    .line 80
    iput-object p3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mStickyP:[I

    new-array p3, p1, [I

    .line 85
    iput-object p3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyScrollerP:[I

    new-array p3, p1, [I

    .line 86
    iput-object p3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyViewP:[I

    .line 87
    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->scrollable:Z

    .line 123
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXScrollView;->setOverScrollMode(I)V

    return-void
.end method

.method private init()V
    .registers 3

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->setWillNotDraw(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->startScrollerTask()V

    const/4 v0, 0x2

    .line 103
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->setOverScrollMode(I)V

    .line 104
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private procSticky(Ljava/util/Map;)Landroid/view/View;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 368
    :cond_4
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/WXBaseScroller;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXBaseScroller;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_13

    return-object v0

    .line 373
    :cond_13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 376
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 377
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 380
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyScrollerP:[I

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/WXScrollView;->getLocationOnScreen([I)V

    .line 381
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyViewP:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 383
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_59

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 384
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    goto :goto_5a

    :cond_59
    const/4 v2, 0x0

    .line 386
    :goto_5a
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 387
    iget-object v5, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyScrollerP:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    neg-int v2, v2

    .line 388
    aget v8, v5, v6

    add-int/2addr v2, v8

    add-int/2addr v2, v4

    .line 389
    iget-object v8, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyViewP:[I

    aget v9, v8, v6

    if-gt v9, v7, :cond_8a

    aget v7, v8, v6

    sub-int v4, v2, v4

    if-lt v7, v4, :cond_8a

    .line 390
    aget p1, v8, v6

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mStickyOffset:I

    .line 391
    aget p1, v8, v6

    aget v0, v5, v6

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setStickyOffset(I)V

    .line 392
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 394
    :cond_8a
    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setStickyOffset(I)V

    goto :goto_1b

    :cond_8e
    return-object v0
.end method

.method private showStickyView()V
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/WXBaseScroller;

    if-nez v0, :cond_5

    return-void

    .line 355
    :cond_5
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXBaseScroller;->getStickMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->procSticky(Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 358
    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    :goto_15
    return-void
.end method


# virtual methods
.method public addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 131
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 433
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 434
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 172
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 173
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    if-eqz v0, :cond_3d

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 175
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mStickyP:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 176
    iget v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mStickyOffset:I

    const/4 v1, 0x0

    if-gtz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 177
    :goto_18
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mStickyP:[I

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    .line 179
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 178
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 180
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3d
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .line 281
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .line 276
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 142
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mRedirectTouchToStickyView:Z

    .line 145
    :cond_9
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_49

    .line 146
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_49

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_47

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_47

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_47

    const/4 v2, 0x1

    :cond_47
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mRedirectTouchToStickyView:Z

    .line 155
    :cond_49
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_70

    .line 156
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollRect:Landroid/graphics/Rect;

    if-nez v0, :cond_5b

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollRect:Landroid/graphics/Rect;

    .line 158
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 160
    :cond_5b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyViewP:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 161
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyViewP:[I

    aget v1, v2, v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 163
    :cond_70
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_7d

    .line 165
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_7d
    return v0
.end method

.method public fling(I)V
    .registers 3

    .line 308
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 309
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    :cond_b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->startScrollerTask()V

    return-void
.end method

.method public getContentFrame()Landroid/graphics/Rect;
    .registers 5

    .line 449
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->computeVerticalScrollRange()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 402
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_3d

    .line 404
    :cond_5
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollerTask:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 405
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    :cond_d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollY()I

    move-result p1

    .line 408
    iget v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mInitialPosition:I

    sub-int/2addr v1, p1

    if-nez v1, :cond_22

    .line 409
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V

    goto :goto_3d

    .line 411
    :cond_22
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, p0, p1, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V

    .line 412
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollY()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mInitialPosition:I

    .line 413
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-eqz p1, :cond_3d

    .line 414
    iget v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCheckTime:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3d
    :goto_3d
    const/4 p1, 0x1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 267
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->scrollable:Z

    return v0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 303
    invoke-virtual {p0, p2, p3, p4}, Lcom/taobao/weex/ui/view/WXScrollView;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 297
    invoke-virtual {p0, p2, p3}, Lcom/taobao/weex/ui/view/WXScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method protected onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 6

    .line 338
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_b
    if-ge v0, p1, :cond_1b

    .line 340
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    invoke-interface {v1, p0, p2, p3}, Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;->onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 14

    .line 317
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollX:I

    .line 318
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollY:I

    .line 319
    iget v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollX:I

    invoke-virtual {p0, p0, v1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V

    .line 320
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1e

    return-void

    .line 324
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 325
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollY:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-nez v0, :cond_31

    .line 327
    iget v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollX:I

    invoke-virtual {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXScrollView;->onScrollToBottom(II)V

    .line 329
    :cond_31
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_38

    const/4 v0, 0x0

    goto :goto_3c

    :cond_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3c
    if-ge v1, v0, :cond_52

    .line 331
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;->onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 334
    :cond_52
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->showStickyView()V

    return-void
.end method

.method protected onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 6

    .line 425
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_b
    if-ge v0, p1, :cond_1b

    .line 427
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    invoke-interface {v1, p0, p2, p3}, Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;->onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method protected onScrollToBottom(II)V
    .registers 6

    .line 345
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 347
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    invoke-interface {v2, p0, p1, p2}, Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;->onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 187
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->scrollable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 190
    :cond_6
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_2e

    .line 192
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollRect:Landroid/graphics/Rect;

    if-nez v0, :cond_18

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollRect:Landroid/graphics/Rect;

    .line 194
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 196
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCurrentStickyView:Landroid/view/View;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyViewP:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 197
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->stickyViewP:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 200
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_37

    .line 201
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mHasNotDoneActionDown:Z

    .line 204
    :cond_37
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mHasNotDoneActionDown:Z

    if-eqz v0, :cond_47

    .line 205
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 207
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mHasNotDoneActionDown:Z

    .line 208
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 211
    :cond_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_5d

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->ox:F

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->oy:F

    .line 215
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/view/WXScrollView;->startNestedScroll(I)Z

    .line 218
    :cond_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_69

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_6e

    .line 219
    :cond_69
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mHasNotDoneActionDown:Z

    .line 221
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->stopNestedScroll()V

    .line 224
    :cond_6e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a8

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 227
    iget v4, p0, Lcom/taobao/weex/ui/view/WXScrollView;->ox:F

    sub-float/2addr v4, v0

    float-to-int v4, v4

    .line 228
    iget v5, p0, Lcom/taobao/weex/ui/view/WXScrollView;->oy:F

    sub-float/2addr v5, v3

    float-to-int v5, v5

    .line 230
    iget-object v6, p0, Lcom/taobao/weex/ui/view/WXScrollView;->consumed:[I

    iget-object v7, p0, Lcom/taobao/weex/ui/view/WXScrollView;->offsetInWindow:[I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/taobao/weex/ui/view/WXScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 232
    iget-object v4, p0, Lcom/taobao/weex/ui/view/WXScrollView;->consumed:[I

    aget v2, v4, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    aget v1, v4, v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    invoke-virtual {p1, v0, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 234
    :cond_9c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->ox:F

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->oy:F

    .line 238
    :cond_a8
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public removeScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 271
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->scrollable:Z

    return-void
.end method

.method public setWAScroller(Lcom/taobao/weex/ui/component/WXBaseScroller;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/WXBaseScroller;

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startScrollerTask()V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {p0}, Lcom/taobao/weex/common/WXThread;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollerTask:Landroid/os/Handler;

    .line 112
    :cond_f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mInitialPosition:I

    .line 113
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mScrollerTask:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lcom/taobao/weex/ui/view/WXScrollView;->mCheckTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXScrollView.WXScrollViewListener (com.taobao.weex.ui.view.WXScrollView$WXScrollViewListener)
.class public interface abstract Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;
.super Ljava/lang/Object;
.source "WXScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WXScrollViewListener"
.end annotation


# virtual methods
.method public abstract onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
.end method

.method public abstract onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
.end method

.method public abstract onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
.end method

.method public abstract onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
.end method
