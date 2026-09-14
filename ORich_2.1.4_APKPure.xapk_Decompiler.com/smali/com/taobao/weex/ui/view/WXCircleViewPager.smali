###### Class com.taobao.weex.ui.view.WXCircleViewPager (com.taobao.weex.ui.view.WXCircleViewPager)
.class public Lcom/taobao/weex/ui/view/WXCircleViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "WXCircleViewPager.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# instance fields
.field private final SCROLL_TO_NEXT:I

.field private intervalTime:J

.field private isAutoScroll:Z

.field private mAutoScrollHandler:Landroid/os/Handler;

.field private mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

.field private mState:I

.field private needLoop:Z

.field private scrollable:Z

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 67
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->SCROLL_TO_NEXT:I

    const-wide/16 v0, 0xbb8

    .line 47
    iput-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    .line 49
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    .line 50
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    .line 52
    new-instance p1, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    .line 68
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 135
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->SCROLL_TO_NEXT:I

    const-wide/16 v0, 0xbb8

    .line 47
    iput-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    .line 49
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    .line 50
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    .line 52
    new-instance p1, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    .line 136
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->showNextItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/WXCircleViewPager;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/view/WXCircleViewPager;I)I
    .registers 2

    .line 42
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    return p1
.end method

.method static synthetic access$301(Lcom/taobao/weex/ui/view/WXCircleViewPager;)I
    .registers 1

    .line 42
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/WXCircleViewPager;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setOverScrollMode(I)V

    .line 74
    new-instance v0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 107
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->postInitViewPager()V

    return-void
.end method

.method private postInitViewPager()V
    .registers 6

    .line 115
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 119
    :cond_7
    :try_start_7
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    const-class v2, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "sInterpolator"

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 125
    new-instance v1, Lcom/taobao/weex/ui/view/WXSmoothScroller;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-direct {v1, v3, v2}, Lcom/taobao/weex/ui/view/WXSmoothScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

    .line 127
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_34

    goto :goto_3a

    :catch_34
    move-exception v0

    const-string v1, "[CircleViewPager] postInitViewPager: "

    .line 129
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3a
    return-void
.end method

.method private setRealCurrentItem(I)V
    .registers 3

    .line 286
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getFirst()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void
.end method

.method private showNextItem()V
    .registers 5

    .line 333
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    if-eqz v0, :cond_34

    .line 334
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 337
    :cond_1b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-nez v0, :cond_2b

    .line 338
    invoke-direct {p0, v2, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    goto :goto_5d

    .line 340
    :cond_2b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    goto :goto_5d

    .line 343
    :cond_34
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_44

    return-void

    .line 346
    :cond_44
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    if-ne v0, v1, :cond_55

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_55

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    goto :goto_5d

    .line 349
    :cond_55
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    :goto_5d
    return-void
.end method

.method private superSetCurrentItem(IZ)V
    .registers 5

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result v0

    sub-int v0, p1, v0

    .line 293
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2c

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_2c

    add-int/lit8 v0, p1, -0x2

    const/4 v1, 0x0

    .line 294
    invoke-super {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_2c

    :catch_2a
    move-exception v0

    goto :goto_30

    .line 297
    :catch_2c
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_2f} :catch_2a

    goto :goto_47

    .line 299
    :goto_30
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 301
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 302
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    goto :goto_24

    .line 250
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 251
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_24

    .line 246
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 256
    :cond_24
    :goto_24
    :try_start_24
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_31

    .line 258
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_32

    or-int/2addr v0, p1

    :cond_31
    return v0

    :catch_32
    const/4 p1, 0x0

    return p1
.end method

.method public getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;
    .registers 2

    .line 209
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .registers 2

    .line 141
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result v0

    return v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public getIntervalTime()J
    .registers 3

    .line 225
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-wide v0
.end method

.method public getRealCount()I
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    return v0
.end method

.method public getRealCurrentItem()I
    .registers 3

    .line 281
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 282
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    return v0
.end method

.method public getmScroller()Lcom/taobao/weex/ui/view/WXSmoothScroller;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

    return-object v0
.end method

.method public isAutoScroll()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 325
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x0

    .line 151
    :try_start_1
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-eqz v1, :cond_c

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_12
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_9} :catch_d

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_16

    :catch_12
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_16
    return v0
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 314
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1c

    :catch_4
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 318
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 319
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 162
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pauseAutoScroll()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public scrollTo(II)V
    .registers 5

    .line 170
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 171
    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    :cond_c
    return-void
.end method

.method public setCircle(Z)V
    .registers 2

    .line 238
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    return-void
.end method

.method public setCirclePageAdapter(Lcom/taobao/weex/ui/view/WXCirclePageAdapter;)V
    .registers 2

    .line 216
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 2

    .line 202
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setRealCurrentItem(I)V

    return-void
.end method

.method public setIntervalTime(J)V
    .registers 3

    .line 234
    iput-wide p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 329
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    return-void
.end method

.method public startAutoScroll()V
    .registers 5

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    .line 180
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopAutoScroll()V
    .registers 3

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    .line 193
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public superGetCurrentItem()I
    .registers 2

    .line 145
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

###### Class com.taobao.weex.ui.view.WXCircleViewPager.AnonymousClass1 (com.taobao.weex.ui.view.WXCircleViewPager$1)
.class Lcom/taobao/weex/ui/view/WXCircleViewPager$1;
.super Landroid/os/Handler;
.source "WXCircleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXCircleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V
    .registers 3

    .line 52
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const-string p1, "[CircleViewPager] trigger auto play action"

    .line 56
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$000(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    .line 58
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$100(Lcom/taobao/weex/ui/view/WXCircleViewPager;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 61
    :cond_19
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXCircleViewPager.AnonymousClass2 (com.taobao.weex.ui.view.WXCircleViewPager$2)
.class Lcom/taobao/weex/ui/view/WXCircleViewPager$2;
.super Ljava/lang/Object;
.source "WXCircleViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 7

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$202(Lcom/taobao/weex/ui/view/WXCircleViewPager;I)I

    .line 88
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$301(Lcom/taobao/weex/ui/view/WXCircleViewPager;)I

    move-result v1

    .line 90
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$400(Lcom/taobao/weex/ui/view/WXCircleViewPager;)Z

    move-result v2

    if-eqz v2, :cond_80

    if-nez p1, :cond_80

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_80

    .line 91
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, p1, :cond_4b

    .line 92
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {p1, v2, v4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V

    .line 93
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 94
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_80

    :cond_4b
    if-nez v1, :cond_80

    .line 96
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {p1, v1, v4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V

    .line 98
    :try_start_58
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 99
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_80} :catch_80

    :catch_80
    :cond_80
    :goto_80
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method
