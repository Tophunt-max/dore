###### Class io.dcloud.feature.weex_scroller.view.DCWXScrollView (io.dcloud.feature.weex_scroller.view.DCWXScrollView)
.class public Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;
.super Landroid/widget/ScrollView;
.source "DCWXScrollView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/taobao/weex/ui/view/IWXScroller;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;
    }
.end annotation


# instance fields
.field private childHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private consumed:[I

.field private decelerationRate:F

.field private isExecScrollerTask:Z

.field private isTouch:Z

.field private lowwer:F

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
            "Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;",
            ">;"
        }
    .end annotation
.end field

.field mScrollX:I

.field mScrollY:I

.field private mScrollerTask:Landroid/os/Handler;

.field private mStickyOffset:I

.field private mStickyP:[I

.field private mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

.field private offsetInWindow:[I

.field private ox:F

.field private oy:F

.field private scrollable:Z

.field private scroller:Ljava/lang/reflect/Field;

.field private shouldBeTriggerLower:Z

.field private shouldBeTriggerUpper:Z

.field private stickyScrollerP:[I

.field private stickyViewP:[I

.field private upper:F

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 65
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    new-array v0, p1, [I

    .line 66
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->offsetInWindow:[I

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    const/16 v1, 0x64

    .line 81
    iput v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    new-array v1, p1, [I

    .line 85
    iput-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    new-array v1, p1, [I

    .line 90
    iput-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    new-array p1, p1, [I

    .line 91
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    .line 92
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    .line 133
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 376
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    .line 387
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 388
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 422
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    .line 423
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    .line 100
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->init()V

    :try_start_41
    const-string p1, "mMinimumVelocity"

    const/4 v0, 0x5

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXReflectionUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_52

    :catch_4c
    move-exception p1

    const-string v0, "[WXScrollView] WXScrollView: "

    .line 104
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 65
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    new-array p2, p1, [I

    .line 66
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->offsetInWindow:[I

    const/4 p2, 0x1

    .line 77
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    const/16 v0, 0x64

    .line 81
    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    new-array v0, p1, [I

    .line 85
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    new-array v0, p1, [I

    .line 90
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    new-array p1, p1, [I

    .line 91
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    .line 92
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    .line 133
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 376
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    .line 387
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 388
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 422
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    .line 423
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    .line 146
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 65
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    new-array p2, p1, [I

    .line 66
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->offsetInWindow:[I

    const/4 p2, 0x1

    .line 77
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    const/16 p3, 0x64

    .line 81
    iput p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    new-array p3, p1, [I

    .line 85
    iput-object p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    new-array p3, p1, [I

    .line 90
    iput-object p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    new-array p3, p1, [I

    .line 91
    iput-object p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    .line 92
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    const/4 p3, 0x0

    .line 94
    iput-object p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 p3, 0x0

    .line 95
    iput-boolean p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    .line 133
    iput-boolean p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    const/high16 p3, 0x3f800000    # 1.0f

    .line 376
    iput p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    .line 387
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 388
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    const/high16 p2, 0x42480000    # 50.0f

    .line 422
    iput p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    .line 423
    iput p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    .line 151
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setOverScrollMode(I)V

    return-void
.end method

.method private init()V
    .registers 4

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setWillNotDraw(Z)V

    const/4 v0, 0x2

    .line 111
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setOverScrollMode(I)V

    .line 112
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 116
    :try_start_13
    const-class v0, Landroid/widget/ScrollView;

    const-string v2, "mScroller"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_20

    :catch_20
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

    .line 471
    :cond_4
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_13

    return-object v0

    .line 476
    :cond_13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 479
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 480
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 483
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    invoke-virtual {p0, v2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getLocationOnScreen([I)V

    .line 484
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 486
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_59

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 487
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    goto :goto_5a

    :cond_59
    const/4 v2, 0x0

    .line 489
    :goto_5a
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 490
    iget-object v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    neg-int v2, v2

    .line 491
    aget v8, v5, v6

    add-int/2addr v2, v8

    add-int/2addr v2, v4

    .line 492
    iget-object v8, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    aget v9, v8, v6

    if-gt v9, v7, :cond_8a

    aget v7, v8, v6

    sub-int v4, v2, v4

    if-lt v7, v4, :cond_8a

    .line 493
    aget p1, v8, v6

    sub-int/2addr p1, v2

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyOffset:I

    .line 494
    aget p1, v8, v6

    aget v0, v5, v6

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setStickyOffset(I)V

    .line 495
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 497
    :cond_8a
    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setStickyOffset(I)V

    goto :goto_1b

    :cond_8e
    return-object v0
.end method

.method private showStickyView()V
    .registers 2

    .line 455
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

    if-nez v0, :cond_5

    return-void

    .line 458
    :cond_5
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getStickMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->procSticky(Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 461
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    .line 463
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    :goto_15
    return-void
.end method


# virtual methods
.method public addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;)V
    .registers 3

    .line 158
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 159
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 537
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 538
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 539
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 221
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 222
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    if-eqz v0, :cond_3d

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 224
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 225
    iget v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyOffset:I

    const/4 v1, 0x0

    if-gtz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 226
    :goto_18
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    .line 228
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 227
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 229
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3d
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .line 352
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .line 357
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .line 347
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .line 342
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

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

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 191
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    .line 194
    :cond_9
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_49

    .line 195
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_49

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_47

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_47

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_47

    const/4 v2, 0x1

    :cond_47
    iput-boolean v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    .line 204
    :cond_49
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_70

    .line 205
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    if-nez v0, :cond_5b

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    .line 207
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 209
    :cond_5b
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 210
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    aget v1, v2, v1

    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 212
    :cond_70
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 213
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_7d

    .line 214
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_7d
    return v0
.end method

.method public fling(I)V
    .registers 3

    int-to-float p1, p1

    .line 380
    iget v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 381
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-eqz p1, :cond_11

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    :cond_11
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->startScrollerTask()V

    return-void
.end method

.method public getContentFrame()Landroid/graphics/Rect;
    .registers 5

    .line 554
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->computeVerticalScrollRange()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 550
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 505
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_3f

    .line 507
    :cond_5
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 508
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    :cond_d
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result p1

    .line 511
    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mInitialPosition:I

    sub-int/2addr v1, p1

    if-nez v1, :cond_24

    .line 512
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    .line 513
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    goto :goto_3f

    .line 515
    :cond_24
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, p0, p1, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    .line 516
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mInitialPosition:I

    .line 517
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-eqz p1, :cond_3f

    .line 518
    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3f
    :goto_3f
    const/4 p1, 0x1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 329
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 314
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 333
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 169
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 369
    invoke-virtual {p0, p2, p3, p4}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 363
    invoke-virtual {p0, p2, p3}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method protected onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .registers 6

    .line 434
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_b
    if-ge v0, p1, :cond_1b

    .line 436
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    invoke-interface {v1, p0, p2, p3}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 16

    .line 392
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->startScrollerTask()V

    .line 393
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollX:I

    .line 394
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollY:I

    .line 395
    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollX:I

    invoke-virtual {p0, p0, v1, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    .line 396
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_21

    return-void

    .line 400
    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 401
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollY:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 402
    iget v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    const/4 v4, 0x0

    cmpg-float v5, v0, v2

    if-gtz v5, :cond_41

    iget-boolean v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    if-nez v5, :cond_41

    .line 403
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    .line 404
    iget v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollX:I

    invoke-virtual {p0, v0, v3}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScrollToBottom(II)V

    goto :goto_47

    :cond_41
    cmpl-float v0, v0, v2

    if-lez v0, :cond_47

    .line 406
    iput-boolean v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    .line 408
    :cond_47
    :goto_47
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_60

    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    if-nez v0, :cond_60

    .line 409
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 410
    iget v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollX:I

    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScrollToTop(II)V

    goto :goto_6d

    .line 411
    :cond_60
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6d

    .line 412
    iput-boolean v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 414
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    if-nez v0, :cond_73

    const/4 v0, 0x0

    goto :goto_77

    :cond_73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_77
    if-ge v4, v0, :cond_8f

    .line 416
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    sub-int v9, p3, p1

    sub-int v10, p4, p2

    move-object v6, p0

    move v7, p1

    move v8, p2

    invoke-interface/range {v5 .. v10}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 419
    :cond_8f
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->showStickyView()V

    return-void
.end method

.method protected onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .registers 6

    .line 529
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_b
    if-ge v0, p1, :cond_1b

    .line 531
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    invoke-interface {v1, p0, p2, p3}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method protected onScrollToBottom(II)V
    .registers 6

    .line 441
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 443
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    invoke-interface {v2, p0, p1, p2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScrollToBottom(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method protected onScrollToTop(II)V
    .registers 6

    .line 448
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 450
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    invoke-interface {v2, p0, p1, p2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScrollToTop(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 236
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 239
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    if-eq v0, v1, :cond_13

    if-eq v0, v2, :cond_13

    goto :goto_18

    .line 245
    :cond_13
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    goto :goto_18

    .line 241
    :cond_16
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    .line 248
    :goto_18
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_40

    .line 250
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2a

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    .line 252
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 254
    :cond_2a
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    iget-object v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 255
    iget-object v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    aget v4, v4, v1

    iget-object v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 258
    :cond_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_48

    .line 259
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    .line 262
    :cond_48
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    if-eqz v0, :cond_58

    .line 263
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 265
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    .line 266
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 269
    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6d

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->ox:F

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->oy:F

    .line 273
    invoke-virtual {p0, v2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->startNestedScroll(I)Z

    .line 276
    :cond_6d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_79

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_80

    .line 277
    :cond_79
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    .line 278
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    .line 280
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stopNestedScroll()V

    .line 290
    :cond_80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c0

    const/16 v0, 0x13

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_c0

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 293
    iget v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->ox:F

    sub-float/2addr v4, v0

    float-to-int v4, v4

    .line 294
    iget v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->oy:F

    sub-float/2addr v5, v2

    float-to-int v5, v5

    .line 296
    iget-object v6, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    iget-object v7, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->offsetInWindow:[I

    invoke-virtual {p0, v4, v5, v6, v7}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 298
    iget-object v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    aget v3, v4, v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    aget v1, v4, v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 300
    :cond_b4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->ox:F

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->oy:F

    .line 304
    :cond_c0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public removeScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;)V
    .registers 3

    .line 164
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLowwerLength(F)V
    .registers 2

    .line 430
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 309
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setRate(F)V
    .registers 2

    .line 373
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 337
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    return-void
.end method

.method public setUpperLength(F)V
    .registers 2

    .line 426
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    return-void
.end method

.method public setWAScroller(Lcom/taobao/weex/ui/component/DCWXScroller;)V
    .registers 3

    .line 571
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

    .line 572
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getViewPortWidth()I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    .line 573
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getViewPortWidth()I

    move-result p1

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .line 319
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startScrollerTask()V
    .registers 5

    .line 135
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    .line 137
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-nez v0, :cond_17

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-static {p0}, Lcom/taobao/weex/common/WXThread;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    .line 140
    :cond_17
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mInitialPosition:I

    .line 141
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 324
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopScroll()V
    .registers 5

    .line 122
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_26

    iget-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    if-nez v1, :cond_26

    .line 124
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "abortAnimation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 125
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 128
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

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

###### Class io.dcloud.feature.weex_scroller.view.DCWXScrollView.WXScrollViewListener (io.dcloud.feature.weex_scroller.view.DCWXScrollView$WXScrollViewListener)
.class public interface abstract Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;
.super Ljava/lang/Object;
.source "DCWXScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WXScrollViewListener"
.end annotation


# virtual methods
.method public abstract onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
.end method

.method public abstract onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;IIII)V
.end method

.method public abstract onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
.end method

.method public abstract onScrollToBottom(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
.end method

.method public abstract onScrollToTop(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
.end method
