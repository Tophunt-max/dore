###### Class com.taobao.weex.ui.component.WXSlider (com.taobao.weex.ui.component.WXSlider)
.class public Lcom/taobao/weex/ui/component/WXSlider;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXSlider.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;,
        Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;,
        Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;,
        Lcom/taobao/weex/ui/component/WXSlider$Creator;
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


# instance fields
.field private initIndex:I

.field private initRunnable:Ljava/lang/Runnable;

.field private isInfinite:Z

.field private keepIndex:Z

.field protected mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

.field protected mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

.field protected mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field protected mShowIndicators:Z

.field mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

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

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->params:Ljava/util/Map;

    const p1, 0x3dcccccd    # 0.1f

    .line 65
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->offsetXAccuracy:F

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->keepIndex:Z

    .line 96
    new-instance p1, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;-><init>(Lcom/taobao/weex/ui/component/WXSlider;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXSlider;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXSlider;)I
    .registers 1

    .line 57
    iget p0, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/component/WXSlider;I)I
    .registers 2

    .line 57
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXSlider;)I
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getInitIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXSlider;I)I
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->getRealIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/WXSlider;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXSlider;)Ljava/util/ArrayList;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/WXSlider;)Ljava/util/ArrayList;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/WXSlider;)F
    .registers 1

    .line 57
    iget p0, p0, Lcom/taobao/weex/ui/component/WXSlider;->offsetXAccuracy:F

    return p0
.end method

.method private getInitIndex()I
    .registers 3

    .line 278
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    iget v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_23

    goto :goto_33

    .line 283
    :cond_23
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v1

    if-lt v0, v1, :cond_32

    .line 284
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v1

    rem-int/2addr v0, v1

    :cond_32
    return v0

    :cond_33
    :goto_33
    const/4 v0, 0x0

    return v0
.end method

.method private getRealIndex(I)I
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_28

    .line 294
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-lt p1, v0, :cond_18

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 295
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 296
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

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

    .line 557
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v0, :cond_9

    goto :goto_35

    .line 560
    :cond_9
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    if-eqz v1, :cond_35

    .line 561
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 562
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {v2, v3}, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 563
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    new-instance v2, Lcom/taobao/weex/ui/component/WXSlider$2;

    invoke-direct {v2, p0, v0}, Lcom/taobao/weex/ui/component/WXSlider$2;-><init>(Lcom/taobao/weex/ui/component/WXSlider;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_35

    .line 570
    :cond_2f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 160
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    const-string v0, "scroll"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 162
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-nez p1, :cond_10

    return-void

    .line 165
    :cond_10
    new-instance v0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;-><init>(Lcom/taobao/weex/ui/component/WXSlider;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_18
    return-void
.end method

.method public addIndicator(Lcom/taobao/weex/ui/component/WXIndicator;)V
    .registers 4

    .line 262
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_9

    return-void

    .line 266
    :cond_9
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    .line 267
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    if-eqz p1, :cond_1b

    .line 269
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setCircleViewPager(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    .line 271
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1b
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .registers 5

    if-eqz p1, :cond_63

    .line 182
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez p2, :cond_7

    goto :goto_63

    .line 186
    :cond_7
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    if-eqz v0, :cond_c

    return-void

    .line 189
    :cond_c
    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->addPageView(Landroid/view/View;)V

    .line 190
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXSlider;->hackTwoItemsInfiniteScroll()V

    .line 191
    iget p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3d

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result p1

    iget p2, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    if-le p1, p2, :cond_3d

    .line 192
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_2c

    .line 193
    new-instance p1, Lcom/taobao/weex/ui/component/WXSlider$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXSlider$1;-><init>(Lcom/taobao/weex/ui/component/WXSlider;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    .line 203
    :cond_2c
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 204
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXSlider;->initRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4b

    .line 206
    :cond_3d
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->keepIndex:Z

    if-nez p1, :cond_4b

    .line 207
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/WXSlider;->getRealIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(I)V

    .line 210
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz p1, :cond_63

    .line 211
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->forceLayout()V

    .line 212
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

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

    .line 172
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .registers 2

    .line 237
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 238
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_14

    .line 239
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->stopAutoScroll()V

    .line 240
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->removeAllViews()V

    .line 241
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->destory()V

    :cond_14
    return-void
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .registers 15

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_c

    .line 140
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_10

    .line 142
    :cond_c
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    :goto_10
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_2f

    .line 148
    instance-of p1, p1, Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz p1, :cond_24

    .line 149
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v0, p0

    move v2, p5

    move v3, p7

    move v4, p6

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXSlider;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    goto :goto_2f

    .line 151
    :cond_24
    move-object p4, p2

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/4 p8, 0x0

    move-object p3, p0

    invoke-virtual/range {p3 .. p8}, Lcom/taobao/weex/ui/component/WXSlider;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    :cond_2f
    :goto_2f
    return-object p2
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/BaseFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/BaseFrameLayout;
    .registers 5

    .line 109
    new-instance v0, Lcom/taobao/weex/ui/view/BaseFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 112
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "infinite"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    .line 115
    :cond_24
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 117
    new-instance v2, Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {v2, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    .line 118
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    invoke-virtual {v2, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCircle(Z)V

    .line 119
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance p1, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->isInfinite:Z

    invoke-direct {p1, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;-><init>(Z)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    .line 123
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 125
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->registerActivityStateListener()V

    return-object v0
.end method

.method public onActivityResume()V
    .registers 2

    .line 247
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onActivityResume()V

    .line 248
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 249
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->startAutoScroll()V

    :cond_12
    return-void
.end method

.method public onActivityStop()V
    .registers 2

    .line 255
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onActivityStop()V

    .line 256
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_a

    .line 257
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->pauseAutoScroll()V

    :cond_a
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 5

    if-eqz p1, :cond_1a

    .line 226
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v0, :cond_d

    goto :goto_1a

    .line 230
    :cond_d
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->removePageView(Landroid/view/View;)V

    .line 231
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXSlider;->hackTwoItemsInfiniteScroll()V

    .line 232
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

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_1a

    .line 375
    :cond_f
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->stopAutoScroll()V

    .line 376
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->startAutoScroll()V

    goto :goto_1f

    .line 373
    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->stopAutoScroll()V

    :goto_1f
    return-void
.end method

.method public setIndex(I)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "index"
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_6f

    .line 404
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-ge p1, v0, :cond_6d

    if-gez p1, :cond_11

    goto :goto_6d

    .line 409
    :cond_11
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->getRealIndex(I)I

    move-result p1

    .line 410
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(I)V

    .line 411
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    .line 412
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->getRealCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_6f

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIndex >>>> correction indicator to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setRealCurrentItem(I)V

    .line 416
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->invalidate()V

    .line 418
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6f

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v1, :cond_6f

    .line 419
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getFirst()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_6f

    .line 405
    :cond_6d
    :goto_6d
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->initIndex:I

    :cond_6f
    :goto_6f
    return-void
.end method

.method public setInterval(I)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "interval"
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_a

    if-lez p1, :cond_a

    int-to-long v1, p1

    .line 397
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setIntervalTime(J)V

    :cond_a
    return-void
.end method

.method public setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_b

    .line 219
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->isLayoutRTL()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->setLayoutDirectionRTL(Z)V

    .line 221
    :cond_b
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method public setOffsetXAccuracy(F)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetXAccuracy"
    .end annotation

    .line 433
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->offsetXAccuracy:F

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 305
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

    .line 350
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_6f
    const p1, 0x3dcccccd    # 0.1f

    .line 337
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_8a

    .line 339
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->setOffsetXAccuracy(F)V

    :cond_8a
    return v2

    .line 313
    :pswitch_8b
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 315
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->setAutoPlay(Ljava/lang/String;)V

    :cond_94
    return v2

    .line 319
    :pswitch_95
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9e

    .line 321
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->setShowIndicators(Ljava/lang/String;)V

    :cond_9e
    return v2

    .line 325
    :pswitch_9f
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_ac

    .line 327
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->setInterval(I)V

    :cond_ac
    return v2

    .line 307
    :pswitch_ad
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b6

    .line 309
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->setValue(Ljava/lang/String;)V

    :cond_b6
    return v2

    .line 331
    :pswitch_b7
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 333
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->setIndex(I)V

    :cond_c4
    return v2

    .line 343
    :pswitch_c5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 344
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->setScrollable(Z)V

    return v2

    .line 347
    :pswitch_d5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->keepIndex:Z

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

    .line 426
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v1, :cond_b

    .line 427
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setScrollable(Z)V

    :cond_b
    return-void
.end method

.method public setShowIndicators(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showIndicators"
    .end annotation

    .line 382
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

    .line 385
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mShowIndicators:Z

    goto :goto_16

    :cond_13
    :goto_13
    const/4 p1, 0x0

    .line 383
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mShowIndicators:Z

    .line 388
    :goto_16
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-nez p1, :cond_1b

    return-void

    .line 391
    :cond_1b
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXSlider;->mShowIndicators:Z

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

    .line 356
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_17

    .line 361
    :cond_9
    :try_start_9
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_11

    .line 367
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->setIndex(I)V

    return-void

    :catch_11
    move-exception p1

    const-string v0, ""

    .line 363
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_17
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXSlider.AnonymousClass1 (com.taobao.weex.ui.component.WXSlider$1)
.class Lcom/taobao/weex/ui/component/WXSlider$1;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSlider;->addSubView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSlider;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSlider;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXSlider;->access$100(Lcom/taobao/weex/ui/component/WXSlider;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$002(Lcom/taobao/weex/ui/component/WXSlider;I)I

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$000(Lcom/taobao/weex/ui/component/WXSlider;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/component/WXSlider;->access$200(Lcom/taobao/weex/ui/component/WXSlider;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(I)V

    .line 198
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$002(Lcom/taobao/weex/ui/component/WXSlider;I)I

    .line 199
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$302(Lcom/taobao/weex/ui/component/WXSlider;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXSlider.AnonymousClass2 (com.taobao.weex.ui.component.WXSlider$2)
.class Lcom/taobao/weex/ui/component/WXSlider$2;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSlider;->hackTwoItemsInfiniteScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSlider;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSlider;Landroid/view/GestureDetector;)V
    .registers 3

    .line 563
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$2;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXSlider$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 566
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

###### Class com.taobao.weex.ui.component.WXSlider.Creator (com.taobao.weex.ui.component.WXSlider$Creator)
.class public Lcom/taobao/weex/ui/component/WXSlider$Creator;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
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

    .line 73
    new-instance v0, Lcom/taobao/weex/ui/component/WXSlider;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXSlider;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method

###### Class com.taobao.weex.ui.component.WXSlider.FlingGestureListener (com.taobao.weex.ui.component.WXSlider$FlingGestureListener)
.class Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WXSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSlider;
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

    .line 576
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    sput v0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_MIN_DISTANCE:I

    const/high16 v0, 0x437a0000    # 250.0f

    .line 577
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    sput v0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_MAX_OFF_PATH:I

    const/high16 v0, 0x43480000    # 200.0f

    .line 578
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    sput v0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    return-void
.end method

.method constructor <init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .registers 3

    .line 581
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 582
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->pagerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    .line 587
    iget-object p4, p0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->pagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/4 v0, 0x0

    if-nez p4, :cond_c

    return v0

    .line 593
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_MAX_OFF_PATH:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_21

    return v0

    .line 597
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_MIN_DISTANCE:I

    int-to-float v3, v2

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_47

    .line 598
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_47

    .line 599
    invoke-virtual {p4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v1

    if-ne v1, v4, :cond_47

    .line 601
    invoke-virtual {p4, v0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(IZ)V

    return v4

    .line 603
    :cond_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6a

    .line 604
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6a

    .line 605
    invoke-virtual {p4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result p1

    if-nez p1, :cond_6a

    .line 607
    invoke-virtual {p4, v4, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(IZ)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_69} :catch_6a

    return v4

    :catch_6a
    :cond_6a
    return v0
.end method

###### Class com.taobao.weex.ui.component.WXSlider.SliderOnScrollListener (com.taobao.weex.ui.component.WXSlider$SliderOnScrollListener)
.class public Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SliderOnScrollListener"
.end annotation


# instance fields
.field private lastPositionOffset:F

.field private selectedPosition:I

.field private target:Lcom/taobao/weex/ui/component/WXSlider;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXSlider;)V
    .registers 3

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c60000    # 99.0f

    .line 493
    iput v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 498
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    .line 499
    iget-object p1, p1, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_19

    .line 547
    :cond_6
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    const-string v0, "scrollstart"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;)V

    goto :goto_19

    :cond_e
    const/high16 p1, 0x42c60000    # 99.0f

    .line 543
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 544
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    const-string v0, "scrollend"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 7

    .line 504
    iget p3, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_b

    .line 505
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    return-void

    :cond_b
    sub-float p3, p2, p3

    .line 511
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXSlider;->access$600(Lcom/taobao/weex/ui/component/WXSlider;)F

    move-result v0

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_4f

    .line 512
    iget p3, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

    const-string v0, "scroll"

    const-string v1, "offsetXRatio"

    const/4 v2, 0x1

    if-ne p1, p3, :cond_37

    .line 514
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    neg-float p3, p2

    .line 515
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {p3, v0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4d

    :cond_37
    if-ge p1, p3, :cond_4d

    .line 519
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    .line 520
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {p3, v0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 523
    :cond_4d
    :goto_4d
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    :cond_4f
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 529
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXSlider.SliderPageChangeListener (com.taobao.weex.ui.component.WXSlider$SliderPageChangeListener)
.class public Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SliderPageChangeListener"
.end annotation


# instance fields
.field private lastPos:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSlider;


# direct methods
.method protected constructor <init>(Lcom/taobao/weex/ui/component/WXSlider;)V
    .registers 2

    .line 436
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 438
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 485
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_d

    .line 487
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

    .line 447
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    if-ne v0, v1, :cond_d

    return-void

    .line 450
    :cond_d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected >>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lastPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 453
    :cond_39
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_e8

    .line 457
    :cond_4b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$400(Lcom/taobao/weex/ui/component/WXSlider;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_e8

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$500(Lcom/taobao/weex/ui/component/WXSlider;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_69

    goto/16 :goto_e8

    .line 462
    :cond_69
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXSlider;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v1

    if-nez v1, :cond_76

    return-void

    .line 465
    :cond_76
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXSlider;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    .line 466
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXSlider;->getRef()Ljava/lang/String;

    move-result-object v5

    const-string v2, "change"

    .line 467
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->onScreenArea(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 468
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXSlider;->params:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "index"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 471
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 472
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attrs"

    .line 473
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXSlider;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v7, v0, Lcom/taobao/weex/ui/component/WXSlider;->params:Ljava/util/Map;

    const-string v6, "change"

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 478
    :cond_cc
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->requestLayout()V

    .line 479
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 480
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    :cond_e8
    :goto_e8
    return-void
.end method
