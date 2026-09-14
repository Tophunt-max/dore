###### Class io.dcloud.feature.weex.extend.DCWXSlider (io.dcloud.feature.weex.extend.DCWXSlider)
.class public Lio/dcloud/feature/weex/extend/DCWXSlider;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "DCWXSlider.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;,
        Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;,
        Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;,
        Lio/dcloud/feature/weex/extend/DCWXSlider$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final INFINITE:Ljava/lang/String; = "infinite"

.field public static final SOURCE:Ljava/lang/String; = "source"


# instance fields
.field private initIndex:I

.field private initRunnable:Ljava/lang/Runnable;

.field protected isDrag:Z

.field private isInfinite:Z

.field private keepIndex:Z

.field protected mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

.field protected mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

.field protected mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field protected mShowIndicators:Z

.field mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

.field private offsetXAccuracy:F

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    .line 69
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->params:Ljava/util/Map;

    const p2, 0x3dcccccd    # 0.1f

    .line 70
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->offsetXAccuracy:F

    const/4 p2, -0x1

    .line 71
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    .line 72
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->keepIndex:Z

    .line 99
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    .line 101
    new-instance p1, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;-><init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isDrag:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2, p5}, Lio/dcloud/feature/weex/extend/DCWXSlider;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/extend/DCWXSlider;)I
    .registers 1

    .line 61
    iget p0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    return p0
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex/extend/DCWXSlider;I)I
    .registers 2

    .line 61
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    return p1
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/extend/DCWXSlider;)I
    .registers 1

    .line 61
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getInitIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/extend/DCWXSlider;I)I
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRealIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lio/dcloud/feature/weex/extend/DCWXSlider;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 61
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex/extend/DCWXSlider;)Ljava/util/ArrayList;
    .registers 1

    .line 61
    iget-object p0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex/extend/DCWXSlider;)Ljava/util/ArrayList;
    .registers 1

    .line 61
    iget-object p0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getInitIndex()I
    .registers 4

    .line 292
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 296
    :cond_e
    iget v2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 297
    iget-object v2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_27

    goto :goto_37

    .line 300
    :cond_27
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v1

    if-lt v0, v1, :cond_36

    .line 301
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v1

    rem-int/2addr v0, v1

    :cond_36
    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method private getRealIndex(I)I
    .registers 3

    .line 310
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_28

    .line 311
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-lt p1, v0, :cond_18

    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 312
    :cond_18
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 313
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_28
    add-int/lit8 p1, p1, 0x0

    return p1
.end method

.method private hackTwoItemsInfiniteScroll()V
    .registers 5

    .line 651
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v0, :cond_9

    goto :goto_35

    .line 654
    :cond_9
    iget-boolean v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    if-eqz v1, :cond_35

    .line 655
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 656
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;

    iget-object v3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-direct {v2, v3}, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 657
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXSlider$2;

    invoke-direct {v2, p0, v0}, Lio/dcloud/feature/weex/extend/DCWXSlider$2;-><init>(Lio/dcloud/feature/weex/extend/DCWXSlider;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_35

    .line 664
    :cond_2f
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 166
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    const-string v0, "scroll"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 168
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-nez p1, :cond_10

    return-void

    .line 171
    :cond_10
    new-instance v0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;-><init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_18
    return-void
.end method

.method public addIndicator(Lcom/taobao/weex/ui/component/WXIndicator;)V
    .registers 4

    .line 275
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_9

    return-void

    .line 279
    :cond_9
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    .line 280
    iget-boolean v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/component/WXIndicator;->setShowIndicators(Z)V

    .line 281
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    if-eqz p1, :cond_20

    .line 283
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setCircleViewPager(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    .line 285
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_20
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .registers 5

    if-eqz p1, :cond_63

    .line 188
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez p2, :cond_7

    goto :goto_63

    .line 192
    :cond_7
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    if-eqz v0, :cond_c

    return-void

    .line 195
    :cond_c
    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->addPageView(Landroid/view/View;)V

    .line 196
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->hackTwoItemsInfiniteScroll()V

    .line 197
    iget p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3d

    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result p1

    iget p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    if-le p1, p2, :cond_3d

    .line 198
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_2c

    .line 199
    new-instance p1, Lio/dcloud/feature/weex/extend/DCWXSlider$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/extend/DCWXSlider$1;-><init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    .line 209
    :cond_2c
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 210
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4b

    .line 212
    :cond_3d
    iget-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->keepIndex:Z

    if-nez p1, :cond_4b

    .line 213
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRealIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setCurrentItem(I)V

    .line 216
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz p1, :cond_63

    .line 217
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->forceLayout()V

    .line 218
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->requestLayout()V

    :cond_63
    :goto_63
    return-void
.end method

.method public containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z
    .registers 2

    .line 178
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .registers 2

    .line 243
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 244
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_14

    .line 245
    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->stopAutoScroll()V

    .line 246
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->removeAllViews()V

    .line 247
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->destory()V

    :cond_14
    return-void
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .registers 15

    .line 144
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_c

    .line 146
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_10

    .line 148
    :cond_c
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    :goto_10
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_2f

    .line 154
    instance-of p1, p1, Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz p1, :cond_24

    .line 155
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v0, p0

    move v2, p5

    move v3, p7

    move v4, p6

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    goto :goto_2f

    .line 157
    :cond_24
    move-object p4, p2

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/4 p8, 0x0

    move-object p3, p0

    invoke-virtual/range {p3 .. p8}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    :cond_2f
    :goto_2f
    return-object p2
.end method

.method public getCurrentIndex()I
    .registers 2

    .line 268
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_9

    .line 269
    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .registers 2

    .line 59
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .registers 2

    .line 183
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/BaseFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/BaseFrameLayout;
    .registers 5

    .line 115
    new-instance v0, Lcom/taobao/weex/ui/view/BaseFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 118
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "infinite"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 119
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    .line 121
    :cond_24
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-direct {v2, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    .line 124
    iget-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    invoke-virtual {v2, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setCircle(Z)V

    .line 125
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance p1, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    iget-boolean v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    invoke-direct {p1, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;-><init>(Z)V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    .line 129
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v1, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 131
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 134
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->registerActivityStateListener()V

    return-object v0
.end method

.method public onActivityResume()V
    .registers 2

    .line 253
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onActivityResume()V

    .line 254
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 255
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->startAutoScroll()V

    :cond_12
    return-void
.end method

.method public onActivityStop()V
    .registers 2

    .line 261
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onActivityStop()V

    .line 262
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_a

    .line 263
    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->pauseAutoScroll()V

    :cond_a
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 5

    if-eqz p1, :cond_1a

    .line 232
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v0, :cond_d

    goto :goto_1a

    .line 236
    :cond_d
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->removePageView(Landroid/view/View;)V

    .line 237
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->hackTwoItemsInfiniteScroll()V

    .line 238
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setAutoPlay(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoPlay"
    .end annotation

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_1a

    .line 392
    :cond_f
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->stopAutoScroll()V

    .line 393
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->startAutoScroll()V

    goto :goto_1f

    .line 390
    :cond_1a
    :goto_1a
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->stopAutoScroll()V

    :goto_1f
    return-void
.end method

.method public setIndex(I)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "index"
    .end annotation

    .line 427
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_6f

    .line 428
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-ge p1, v0, :cond_6d

    if-gez p1, :cond_11

    goto :goto_6d

    .line 433
    :cond_11
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRealIndex(I)I

    move-result p1

    .line 434
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setCurrentItem(I)V

    .line 435
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    .line 436
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->getRealCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_6f

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIndex >>>> correction indicator to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setRealCurrentItem(I)V

    .line 440
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->invalidate()V

    .line 441
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6f

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v1, :cond_6f

    .line 442
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getFirst()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_6f

    .line 429
    :cond_6d
    :goto_6d
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    :cond_6f
    :goto_6f
    return-void
.end method

.method public setInterval(I)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "interval"
    .end annotation

    .line 420
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_a

    if-lez p1, :cond_a

    int-to-long v1, p1

    .line 421
    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setIntervalTime(J)V

    :cond_a
    return-void
.end method

.method public setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 224
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_b

    .line 225
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->isLayoutRTL()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->setLayoutDirectionRTL(Z)V

    .line 227
    :cond_b
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method public setOffsetXAccuracy(F)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetXAccuracy"
    .end annotation

    .line 456
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->offsetXAccuracy:F

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_e4

    goto/16 :goto_66

    :sswitch_f
    const-string v0, "offsetXAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_66

    :cond_18
    const/4 v3, 0x7

    goto :goto_66

    :sswitch_1a
    const-string v0, "autoPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_66

    :cond_23
    const/4 v3, 0x6

    goto :goto_66

    :sswitch_25
    const-string v0, "showIndicators"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_66

    :cond_2e
    const/4 v3, 0x5

    goto :goto_66

    :sswitch_30
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_66

    :cond_39
    const/4 v3, 0x4

    goto :goto_66

    :sswitch_3b
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_66

    :cond_44
    const/4 v3, 0x3

    goto :goto_66

    :sswitch_46
    const-string v0, "index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_66

    :cond_4f
    const/4 v3, 0x2

    goto :goto_66

    :sswitch_51
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_66

    :cond_5a
    const/4 v3, 0x1

    goto :goto_66

    :sswitch_5c
    const-string v0, "keepIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_66

    :cond_65
    const/4 v3, 0x0

    :goto_66
    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_106

    .line 367
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_6f
    const p1, 0x3dcccccd    # 0.1f

    .line 354
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_8a

    .line 356
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setOffsetXAccuracy(F)V

    :cond_8a
    return v2

    .line 330
    :pswitch_8b
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 332
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setAutoPlay(Ljava/lang/String;)V

    :cond_94
    return v2

    .line 336
    :pswitch_95
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9e

    .line 338
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setShowIndicators(Ljava/lang/String;)V

    :cond_9e
    return v2

    .line 342
    :pswitch_9f
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_ac

    .line 344
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setInterval(I)V

    :cond_ac
    return v2

    .line 324
    :pswitch_ad
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b6

    .line 326
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setValue(Ljava/lang/String;)V

    :cond_b6
    return v2

    .line 348
    :pswitch_b7
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 350
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setIndex(I)V

    :cond_c4
    return v2

    .line 360
    :pswitch_c5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 361
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setScrollable(Z)V

    return v2

    .line 364
    :pswitch_d5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->keepIndex:Z

    return v2

    :sswitch_data_e4
    .sparse-switch
        -0x696287b3 -> :sswitch_5c
        0x3f94da7 -> :sswitch_51
        0x5fb28d2 -> :sswitch_46
        0x6ac9171 -> :sswitch_3b
        0x21ffe4c5 -> :sswitch_30
        0x3b6be321 -> :sswitch_25
        0x55bf6d83 -> :sswitch_1a
        0x5d56563e -> :sswitch_f
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_c5
        :pswitch_b7
        :pswitch_ad
        :pswitch_9f
        :pswitch_95
        :pswitch_8b
        :pswitch_6f
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    .line 449
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v1, :cond_b

    .line 450
    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setScrollable(Z)V

    :cond_b
    return-void
.end method

.method public setShowIndicators(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showIndicators"
    .end annotation

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_13

    :cond_f
    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    goto :goto_16

    :cond_13
    :goto_13
    const/4 p1, 0x0

    .line 407
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    .line 412
    :goto_16
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-nez p1, :cond_1b

    return-void

    .line 415
    :cond_1b
    iget-boolean v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXIndicator;->setShowIndicators(Z)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "value"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_17

    .line 373
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_17

    .line 378
    :cond_9
    :try_start_9
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_11

    .line 384
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setIndex(I)V

    return-void

    :catch_11
    move-exception p1

    const-string v0, ""

    .line 380
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public setVertical(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "vertical"
    .end annotation

    .line 399
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_7

    .line 400
    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setVertical(Z)V

    :cond_7
    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCWXSlider.AnonymousClass1 (io.dcloud.feature.weex.extend.DCWXSlider$1)
.class Lio/dcloud/feature/weex/extend/DCWXSlider$1;
.super Ljava/lang/Object;
.source "DCWXSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCWXSlider;->addSubView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$1;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 202
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$1;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-static {v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->access$100(Lio/dcloud/feature/weex/extend/DCWXSlider;)I

    move-result v1

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->access$002(Lio/dcloud/feature/weex/extend/DCWXSlider;I)I

    .line 203
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$1;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v0, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$1;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-static {v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->access$000(Lio/dcloud/feature/weex/extend/DCWXSlider;)I

    move-result v2

    invoke-static {v1, v2}, Lio/dcloud/feature/weex/extend/DCWXSlider;->access$200(Lio/dcloud/feature/weex/extend/DCWXSlider;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setCurrentItem(I)V

    .line 204
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$1;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->access$002(Lio/dcloud/feature/weex/extend/DCWXSlider;I)I

    .line 205
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$1;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->access$302(Lio/dcloud/feature/weex/extend/DCWXSlider;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCWXSlider.AnonymousClass2 (io.dcloud.feature.weex.extend.DCWXSlider$2)
.class Lio/dcloud/feature/weex/extend/DCWXSlider$2;
.super Ljava/lang/Object;
.source "DCWXSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCWXSlider;->hackTwoItemsInfiniteScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCWXSlider;Landroid/view/GestureDetector;)V
    .registers 3

    .line 657
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$2;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 660
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.dcloud.feature.weex.extend.DCWXSlider.Creator (io.dcloud.feature.weex.extend.DCWXSlider$Creator)
.class public Lio/dcloud/feature/weex/extend/DCWXSlider$Creator;
.super Ljava/lang/Object;
.source "DCWXSlider.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/extend/DCWXSlider;
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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 78
    new-instance v0, Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-direct {v0, p1, p2, p3}, Lio/dcloud/feature/weex/extend/DCWXSlider;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method

###### Class io.dcloud.feature.weex.extend.DCWXSlider.FlingGestureListener (io.dcloud.feature.weex.extend.DCWXSlider$FlingGestureListener)
.class Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DCWXSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/extend/DCWXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingGestureListener"
.end annotation


# static fields
.field private static final SWIPE_MAX_OFF_PATH:I

.field private static final SWIPE_MIN_DISTANCE:I

.field private static final SWIPE_THRESHOLD_VELOCITY:I


# instance fields
.field private pagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/view/WXCircleViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x42480000    # 50.0f

    .line 670
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    sput v0, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;->SWIPE_MIN_DISTANCE:I

    const/high16 v0, 0x437a0000    # 250.0f

    .line 671
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    sput v0, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;->SWIPE_MAX_OFF_PATH:I

    const/high16 v0, 0x43480000    # 200.0f

    .line 672
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    sput v0, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    return-void
.end method

.method constructor <init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .registers 3

    .line 675
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 676
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;->pagerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    .line 681
    iget-object p4, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;->pagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/4 v0, 0x0

    if-nez p4, :cond_c

    return v0

    .line 687
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;->SWIPE_MAX_OFF_PATH:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_21

    return v0

    .line 691
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;->SWIPE_MIN_DISTANCE:I

    int-to-float v3, v2

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_47

    .line 692
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_47

    .line 693
    invoke-virtual {p4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v1

    if-ne v1, v4, :cond_47

    .line 695
    invoke-virtual {p4, v0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(IZ)V

    return v4

    .line 697
    :cond_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6a

    .line 698
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6a

    .line 699
    invoke-virtual {p4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result p1

    if-nez p1, :cond_6a

    .line 701
    invoke-virtual {p4, v4, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(IZ)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_69} :catch_6a

    return v4

    :catch_6a
    :cond_6a
    return v0
.end method

###### Class io.dcloud.feature.weex.extend.DCWXSlider.SliderOnScrollListener (io.dcloud.feature.weex.extend.DCWXSlider$SliderOnScrollListener)
.class public Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;
.super Ljava/lang/Object;
.source "DCWXSlider.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/extend/DCWXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SliderOnScrollListener"
.end annotation


# instance fields
.field private lastPositionOffset:F

.field private lastValue:F

.field private pageSelected:Z

.field private preScrollstate:I

.field private scrollState:I

.field private selectedPosition:I

.field private target:Lio/dcloud/feature/weex/extend/DCWXSlider;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V
    .registers 3

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c60000    # 99.0f

    .line 519
    iput v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    const/4 v0, 0x0

    .line 523
    iput v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    .line 524
    iput v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    .line 526
    iput-boolean v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    const/4 v0, 0x0

    .line 527
    iput v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    .line 530
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    .line 531
    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->superGetCurrentItem()I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    .line 626
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_2e

    .line 640
    :cond_8
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iput-boolean v0, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;->isDrag:Z

    .line 641
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    const-string v0, "scrollstart"

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;)V

    goto :goto_2e

    :cond_14
    const/high16 p1, 0x42c60000    # 99.0f

    .line 629
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 630
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    .line 631
    iget p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    return-void

    :cond_20
    const/4 p1, 0x0

    .line 635
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    .line 636
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iput-boolean p1, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isDrag:Z

    .line 637
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    const-string v0, "scrollend"

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 12

    .line 543
    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_d

    .line 544
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 545
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    return-void

    :cond_d
    sub-float p3, p2, p3

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_17

    .line 552
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    return-void

    .line 555
    :cond_17
    iget v2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_45

    .line 557
    iput-boolean v4, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    cmpl-float p3, p2, v0

    if-nez p3, :cond_25

    return-void

    .line 561
    :cond_25
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p3, p3, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->superGetCurrentItem()I

    move-result p3

    if-ne p1, p3, :cond_35

    .line 562
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto/16 :goto_9c

    .line 563
    :cond_35
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p3, p3, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->superGetCurrentItem()I

    move-result p3

    if-ge p1, p3, :cond_4a

    .line 564
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :cond_43
    :goto_43
    neg-float p1, p1

    goto :goto_9c

    :cond_45
    if-eq v2, v3, :cond_4c

    if-nez v2, :cond_4a

    goto :goto_4c

    :cond_4a
    move p1, p2

    goto :goto_9c

    :cond_4c
    :goto_4c
    const/4 p1, -0x1

    cmpl-float v2, p2, v0

    if-nez v2, :cond_6d

    .line 569
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v1, p3

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    cmpl-double p3, v1, v6

    if-lez p3, :cond_65

    iget-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    if-eqz p1, :cond_6a

    const/4 p1, 0x1

    goto :goto_6b

    :cond_65
    iget-boolean p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    if-eqz p3, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 p1, 0x0

    :goto_6b
    int-to-float p1, p1

    goto :goto_7f

    .line 571
    :cond_6d
    iget-boolean p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    if-lez v1, :cond_74

    if-eqz p3, :cond_78

    goto :goto_77

    :cond_74
    if-eqz p3, :cond_77

    goto :goto_78

    :cond_77
    :goto_77
    const/4 p1, 0x1

    :cond_78
    :goto_78
    int-to-float p1, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float p1, p1, p3

    .line 574
    :goto_7f
    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    if-ne p3, v3, :cond_9c

    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    if-ne p3, v3, :cond_9c

    cmpl-float p3, p1, v0

    if-lez p3, :cond_91

    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    cmpg-float p3, p3, v0

    if-ltz p3, :cond_43

    :cond_91
    cmpg-float p3, p1, v0

    if-gez p3, :cond_9c

    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    cmpl-float p3, p3, v0

    if-lez p3, :cond_9c

    goto :goto_43

    :cond_9c
    :goto_9c
    cmpg-float p3, p1, v0

    if-gez p3, :cond_aa

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p1, p3

    if-lez p3, :cond_aa

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p1, p3

    neg-float p1, p1

    .line 582
    :cond_aa
    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    if-ne p3, v3, :cond_c4

    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    if-ne p3, v5, :cond_c4

    .line 583
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p3, p3, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getmScroller()Lcom/taobao/weex/ui/view/WXSmoothScroller;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/taobao/weex/ui/view/WXSmoothScroller;->forceFinished(Z)V

    .line 584
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    const-string v0, "scrollend"

    invoke-virtual {p3, v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;)V

    .line 586
    :cond_c4
    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    iput p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    .line 587
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    .line 588
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p3, p3, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isVertical()Z

    move-result p3

    const-string v0, "scroll"

    const-string v1, "drag"

    if-eqz p3, :cond_101

    .line 591
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, v5}, Ljava/util/HashMap;-><init>(I)V

    neg-float p1, p1

    .line 592
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "offsetYRatio"

    invoke-interface {p3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getPointCounr()I

    move-result p1

    if-lez p1, :cond_f2

    const/4 v4, 0x1

    :cond_f2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {p1, v0, p3}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 596
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    goto :goto_129

    .line 601
    :cond_101
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, v5}, Ljava/util/HashMap;-><init>(I)V

    neg-float p1, p1

    .line 602
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "offsetXRatio"

    invoke-interface {p3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getPointCounr()I

    move-result p1

    if-lez p1, :cond_11b

    const/4 v4, 0x1

    :cond_11b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {p1, v0, p3}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 606
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    :goto_129
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    .line 614
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->selectedPosition:I

    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCWXSlider.SliderPageChangeListener (io.dcloud.feature.weex.extend.DCWXSlider$SliderPageChangeListener)
.class public Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;
.super Ljava/lang/Object;
.source "DCWXSlider.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/extend/DCWXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SliderPageChangeListener"
.end annotation


# instance fields
.field private lastPos:I

.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;


# direct methods
.method protected constructor <init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V
    .registers 2

    .line 459
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 461
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->lastPos:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 511
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_d

    .line 513
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_d
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 11

    .line 470
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v0, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    iget v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->lastPos:I

    if-ne v0, v1, :cond_d

    return-void

    .line 473
    :cond_d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected >>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v1, v1, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lastPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->lastPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 476
    :cond_39
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v0, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_112

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v0, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_112

    .line 480
    :cond_4b
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v0, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    .line 481
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-static {v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->access$400(Lio/dcloud/feature/weex/extend/DCWXSlider;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_112

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-static {v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->access$500(Lio/dcloud/feature/weex/extend/DCWXSlider;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_69

    goto/16 :goto_112

    .line 485
    :cond_69
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v1

    if-nez v1, :cond_76

    return-void

    .line 488
    :cond_76
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    .line 489
    iget-object v2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {v2}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRef()Ljava/lang/String;

    move-result-object v5

    const-string v2, "change"

    .line 490
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->onScreenArea(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 491
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v1, v1, Lio/dcloud/feature/weex/extend/DCWXSlider;->params:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "index"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v1, v1, Lio/dcloud/feature/weex/extend/DCWXSlider;->params:Ljava/util/Map;

    iget-object v2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-boolean v2, v2, Lio/dcloud/feature/weex/extend/DCWXSlider;->isDrag:Z

    const-string v4, "touch"

    const-string v6, "autoplay"

    if-eqz v2, :cond_b3

    move-object v2, v4

    goto :goto_b4

    :cond_b3
    move-object v2, v6

    :goto_b4
    const-string v7, "source"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 494
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 495
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-boolean v0, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isDrag:Z

    if-eqz v0, :cond_d1

    goto :goto_d2

    :cond_d1
    move-object v4, v6

    :goto_d2
    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attrs"

    .line 497
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->putAll(Ljava/util/Map;)V

    .line 500
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v7, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->params:Ljava/util/Map;

    const-string v6, "change"

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 504
    :cond_f6
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v0, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->requestLayout()V

    .line 505
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 506
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object v0, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;->lastPos:I

    :cond_112
    :goto_112
    return-void
.end method
