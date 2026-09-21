###### Class com.taobao.weex.ui.component.WXScroller (com.taobao.weex.ui.component.WXScroller)
.class public Lcom/taobao/weex/ui/component/WXScroller;
.super Lcom/taobao/weex/ui/component/WXBaseScroller;
.source "WXScroller.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;,
        Lcom/taobao/weex/ui/component/WXScroller$Creator;
    }
.end annotation


# static fields
.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field private static final SWIPE_MIN_DISTANCE:I = 0x5

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x12c


# instance fields
.field private handler:Landroid/os/Handler;

.field private isScrollable:Z

.field private mActiveFeature:I

.field private mAppearanceComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenLayoutOffset:I

.field private mContentHeight:I

.field private mForceLoadmoreNextTime:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasAddScrollEvent:Z

.field private mIsHostAttachedToWindow:Z

.field private mIslastDirectionRTL:Ljava/lang/Boolean;

.field private mLastReport:Landroid/graphics/Point;

.field private mOffsetAccuracy:I

.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field protected mOrientation:I

.field private mRealView:Landroid/widget/FrameLayout;

.field private mRefreshs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

.field private mScrollerView:Landroid/widget/FrameLayout;

.field private mStickyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mlastDirectionRTL:Z

.field private pageEnable:Z

.field private pageSize:I

.field private stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXBaseScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p2, 0x1

    .line 79
    iput p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 80
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    const/4 p3, 0x0

    .line 82
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    .line 83
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    const/16 v0, 0xa

    .line 84
    iput v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    .line 85
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    .line 86
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    .line 91
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    .line 99
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    .line 100
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    .line 101
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIsHostAttachedToWindow:Z

    .line 104
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mlastDirectionRTL:Z

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    .line 126
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    .line 129
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    .line 131
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    .line 140
    new-instance p2, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    invoke-direct {p2, p0}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;-><init>(Lcom/taobao/weex/ui/component/Scrollable;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    .line 141
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string p2, "wxScrollerCount"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXScroller;II)Z
    .registers 3

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXScroller;->shouldReport(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXScroller;Landroid/graphics/Rect;IIII)V
    .registers 6

    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/ui/component/WXScroller;->fireScrollEvent(Landroid/graphics/Rect;IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V
    .registers 5

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/lang/Boolean;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIslastDirectionRTL:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/WXScroller;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIslastDirectionRTL:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXScroller;)I
    .registers 1

    .line 76
    iget p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    return p0
.end method

.method static synthetic access$402(Lcom/taobao/weex/ui/component/WXScroller;I)I
    .registers 2

    .line 76
    iput p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/WXScroller;)Landroid/view/GestureDetector;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/WXScroller;)I
    .registers 1

    .line 76
    iget p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    return p0
.end method

.method static synthetic access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I
    .registers 2

    .line 76
    iput p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    return p1
.end method

.method static synthetic access$702(Lcom/taobao/weex/ui/component/WXScroller;Z)Z
    .registers 2

    .line 76
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIsHostAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXScroller;->dispatchDisappearEvent()V

    return-void
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/util/ArrayList;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkItemVisibleInScroller(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-eqz p1, :cond_60

    .line 917
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXScroller;

    if-nez v2, :cond_60

    .line 918
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/ui/component/WXScroller;

    if-eqz v2, :cond_5b

    .line 919
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3a

    .line 920
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 921
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_38

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getLayoutWidth()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_38

    :goto_36
    const/4 v1, 0x1

    goto :goto_5b

    :cond_38
    const/4 v1, 0x0

    goto :goto_5b

    .line 923
    :cond_3a
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 924
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_38

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getLayoutHeight()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_38

    goto :goto_36

    .line 927
    :cond_5b
    :goto_5b
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    goto :goto_2

    :cond_60
    return v1
.end method

.method private checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 7

    .line 337
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 338
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 339
    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$3;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$3;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 345
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 349
    :goto_2a
    instance-of v4, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v4, :cond_4f

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 350
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 351
    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$4;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 357
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    :cond_4f
    move v1, v0

    :goto_50
    return v1
.end method

.method private dispatchDisappearEvent()V
    .registers 5

    .line 936
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 937
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 938
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_a

    :cond_23
    const/4 v2, 0x0

    .line 941
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result v2

    if-eqz v2, :cond_a

    .line 943
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    const-string v2, "appear"

    goto :goto_36

    :cond_34
    const-string v2, "disappear"

    :goto_36
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_3c
    return-void
.end method

.method private fireScrollEvent(Landroid/graphics/Rect;IIII)V
    .registers 6

    .line 229
    invoke-virtual {p0, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollEvent(II)Ljava/util/Map;

    move-result-object p1

    const-string p2, "scroll"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/WXScroller;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private procAppear(IIII)V
    .registers 6

    .line 885
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIsHostAttachedToWindow:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sub-int/2addr p2, p4

    sub-int/2addr p1, p3

    if-lez p2, :cond_c

    const-string p2, "up"

    goto :goto_12

    :cond_c
    if-gez p2, :cond_11

    const-string p2, "down"

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    .line 890
    :goto_12
    iget p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-nez p3, :cond_20

    if-eqz p1, :cond_20

    if-lez p1, :cond_1d

    const-string p1, "right"

    goto :goto_1f

    :cond_1d
    const-string p1, "left"

    :goto_1f
    move-object p2, p1

    .line 894
    :cond_20
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 895
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 897
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result p4

    if-nez p4, :cond_43

    goto :goto_2a

    .line 900
    :cond_43
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/taobao/weex/ui/component/WXScroller;->checkItemVisibleInScroller(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result p4

    .line 902
    invoke-virtual {p3, p4}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result p4

    if-eqz p4, :cond_2a

    .line 904
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_5b

    const-string p4, "appear"

    goto :goto_5d

    :cond_5b
    const-string p4, "disappear"

    :goto_5d
    invoke-virtual {p3, p4, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_61
    return-void
.end method

.method private setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 6

    .line 742
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    if-nez v0, :cond_1c

    .line 744
    new-instance v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    invoke-direct {v0, p2}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 745
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_1c
    invoke-virtual {v0, p1, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    const/4 p1, 0x0

    .line 751
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    return-void
.end method

.method private shouldReport(II)Z
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_17

    .line 258
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 259
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v2

    .line 263
    :cond_17
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p1, v0

    .line 264
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    if-lt v0, v1, :cond_32

    .line 265
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 266
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v2

    .line 270
    :cond_32
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-ne v0, v2, :cond_4d

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p2, v0

    .line 271
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    if-lt v0, v1, :cond_4d

    .line 272
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 273
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v2

    :cond_4d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 4

    .line 322
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v0, :cond_f

    .line 323
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 324
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXBaseScroller;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 179
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseScroller;->addEvent(Ljava/lang/String;)V

    .line 180
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 181
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    if-nez p1, :cond_43

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    .line 183
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    instance-of p1, p1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz p1, :cond_2d

    .line 184
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXScroller$1;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    goto :goto_43

    .line 211
    :cond_2d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    instance-of p1, p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz p1, :cond_43

    .line 212
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXScroller$2;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .registers 5

    if-eqz p1, :cond_21

    .line 285
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    goto :goto_21

    .line 289
    :cond_7
    instance-of v1, p1, Lcom/taobao/weex/ui/view/WXBaseRefreshLayout;

    if-eqz v1, :cond_c

    return-void

    .line 293
    :cond_c
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-lt p2, v0, :cond_14

    const/4 p2, -0x1

    :cond_14
    if-ne p2, v1, :cond_1c

    .line 296
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_21

    .line 298
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_21
    :goto_21
    return-void
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 738
    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x1

    .line 759
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 725
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method

.method public createViewImpl()V
    .registers 3

    .line 155
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXBaseScroller;->createViewImpl()V

    const/4 v0, 0x0

    .line 156
    :goto_4
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 157
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 158
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    .line 159
    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 375
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXBaseScroller;->destroy()V

    .line 376
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 377
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 379
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_11

    .line 380
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 382
    :cond_11
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 383
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 385
    :cond_24
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/IWXScroller;

    if-eqz v0, :cond_3b

    .line 386
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/IWXScroller;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWXScroller;->destroy()V

    :cond_3b
    return-void
.end method

.method protected getChildrenLayoutTopOffset()I
    .registers 5

    .line 304
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    if-nez v0, :cond_23

    .line 306
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    .line 309
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    .line 310
    iget v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutTopOffsetForSibling()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 314
    :cond_23
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    return v0
.end method

.method public getInnerView()Landroid/view/ViewGroup;
    .registers 2

    .line 167
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    if-eqz v0, :cond_1d

    .line 171
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 173
    :cond_1d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 658
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .registers 2

    .line 74
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getScrollEvent(II)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_18

    .line 235
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_2a

    .line 236
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v1, :cond_2a

    .line 237
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 239
    :cond_2a
    :goto_2a
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 240
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 241
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 243
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "width"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v5, "height"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p1

    .line 248
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "x"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p2

    .line 249
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "y"

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentSize"

    .line 251
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentOffset"

    .line 252
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .registers 2

    .line 1004
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_b

    .line 1005
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 1007
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .registers 2

    .line 653
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    :goto_10
    return v0
.end method

.method public getScrollY()I
    .registers 2

    .line 648
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    :goto_10
    return v0
.end method

.method public getStickMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 7

    .line 448
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    const-string v0, "vertical"

    goto :goto_56

    .line 451
    :cond_f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getScrollDirection()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "pagingEnabled"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 455
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x1

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    .line 457
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "pageSize"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 459
    invoke-static {v3}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v3

    .line 462
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_56

    float-to-int v3, v3

    .line 464
    iput v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    :cond_56
    :goto_56
    const-string v3, "horizontal"

    .line 471
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_ac

    .line 472
    iput v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 473
    new-instance v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 474
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 475
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$5;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXScroller$5;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    .line 481
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 483
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 485
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    .line 487
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$6;

    invoke-direct {p1, p0, v0, p0}, Lcom/taobao/weex/ui/component/WXScroller$6;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;Lcom/taobao/weex/ui/component/WXScroller;)V

    .line 514
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/taobao/weex/ui/component/WXScroller$7;

    invoke-direct {v2, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$7;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 527
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    if-eqz p1, :cond_f5

    .line 528
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V

    invoke-direct {p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 529
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$8;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/WXScroller$8;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_f5

    .line 557
    :cond_ac
    iput v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 558
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    invoke-direct {v0, p1, v1, p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;-><init>(Landroid/content/Context;ILcom/taobao/weex/ui/component/WXBaseScroller;)V

    .line 559
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 560
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    .line 561
    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 562
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 564
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    .line 565
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/view/WXScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 567
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v3, "nestedScrollingEnabled"

    invoke-virtual {v1, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->setNestedScrollingEnabled(Z)V

    .line 568
    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXScroller$9;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 613
    :cond_f5
    :goto_f5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXScroller$10;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 629
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$11;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXScroller$11;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 642
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 719
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    return v0
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .registers 7

    .line 428
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;-><init>()V

    .line 429
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v2, -0x1

    if-nez v1, :cond_24

    .line 430
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 431
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexWidth(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v3

    :goto_1c
    if-le p1, v1, :cond_1f

    const/4 p1, -0x1

    .line 432
    :cond_1f
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 434
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    goto :goto_3d

    .line 436
    :cond_24
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 437
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v1, :cond_35

    goto :goto_36

    :cond_35
    move v1, v3

    :goto_36
    if-le p2, v1, :cond_39

    const/4 p2, -0x1

    .line 438
    :cond_39
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    .line 440
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    :goto_3d
    return-object v0
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "appear"

    .line 866
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXScroller;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "disappear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXScroller;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 867
    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "direction"

    .line 868
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1d
    return-void
.end method

.method protected onLoadMore(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 6

    .line 973
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/WXAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object p2

    .line 974
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 977
    :cond_f
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p2

    float-to-int p2, p2

    const/4 v0, 0x0

    .line 979
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 980
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXScrollView;->getHeight()I

    move-result p1

    sub-int p3, v1, p3

    sub-int/2addr p3, p1

    if-ge p3, p2, :cond_64

    .line 983
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 984
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[WXScroller-onScroll] offScreenY :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 986
    :cond_4c
    iget p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    if-ne p1, v1, :cond_54

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_64

    :cond_54
    const-string p1, "loadmore"

    .line 987
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->fireEvent(Ljava/lang/String;)V

    .line 988
    iput v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    .line 989
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_64

    :catch_5e
    move-exception p1

    const-string p2, "[WXScroller-onScroll] "

    .line 993
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    .line 961
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->onLoadMore(Lcom/taobao/weex/ui/view/WXScrollView;II)V

    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .registers 6

    .line 861
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 3

    .line 365
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXBaseScroller;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 366
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz p2, :cond_11

    .line 367
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_1e

    .line 368
    :cond_11
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz p2, :cond_1e

    .line 369
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public resetLoadmore()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1000
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    return-void
.end method

.method public scrollBy(II)V
    .registers 4

    const/4 v0, 0x0

    .line 829
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V

    return-void
.end method

.method public scrollBy(IIZ)V
    .registers 6

    .line 833
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 837
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$12;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/taobao/weex/ui/component/WXScroller$12;-><init>(Lcom/taobao/weex/ui/component/WXScroller;ZII)V

    const-wide/16 p1, 0x10

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_55

    const-string v2, "offset"

    .line 784
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_f

    const-string v2, "0"

    goto :goto_17

    :cond_f
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_17
    const-string v3, "animated"

    .line 785
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v2, :cond_55

    .line 788
    :try_start_2b
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_3c

    goto :goto_55

    :catch_3c
    move-exception p2

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Float parseFloat error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 795
    :cond_55
    :goto_55
    iget-boolean p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    if-eqz p2, :cond_61

    .line 796
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    .line 799
    :cond_61
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteY()I

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteY()I

    move-result v2

    sub-int/2addr p2, v2

    .line 801
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 803
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    if-eqz v2, :cond_b2

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    if-ne v2, p0, :cond_b2

    .line 804
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_a7

    .line 805
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 806
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 807
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteX()I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr v2, p1

    sub-int/2addr v2, v3

    goto :goto_cb

    .line 809
    :cond_a7
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteX()I

    move-result v2

    sub-int v2, p1, v2

    goto :goto_cb

    .line 812
    :cond_b2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 813
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteX()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result p1

    float-to-int p1, p1

    add-int v2, v3, p1

    :goto_cb
    neg-float v1, v1

    goto :goto_d7

    .line 817
    :cond_cd
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteX()I

    move-result v2

    sub-int v2, p1, v2

    .line 819
    :goto_d7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result p1

    sub-int/2addr v2, p1

    float-to-int p1, v1

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr p2, p1

    invoke-virtual {p0, v2, p2, v0}, Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V

    return-void
.end method

.method public setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 414
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 415
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 416
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_35

    .line 419
    :cond_21
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 420
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isLayoutRTL()Z

    move-result v0

    .line 421
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 423
    :cond_32
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseScroller;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .registers 8

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_10

    .line 393
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 394
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 395
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_30

    .line 397
    :cond_10
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2d

    .line 398
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 399
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x35

    .line 400
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 401
    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_30

    :cond_25
    const/16 v1, 0x33

    .line 403
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 404
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_30

    .line 407
    :cond_2d
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_30
    return-void
.end method

.method public setOffsetAccuracy(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetAccuracy"
    .end annotation

    int-to-float p1, p1

    .line 713
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    .line 714
    iput p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 667
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_66

    goto :goto_2d

    :sswitch_d
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "offsetAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v2, 0x1

    goto :goto_2d

    :sswitch_23
    const-string v0, "showScrollbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    packed-switch v2, :pswitch_data_74

    .line 685
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXBaseScroller;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 675
    :pswitch_35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 676
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->setScrollable(Z)V

    return v1

    :pswitch_45
    const/16 p1, 0xa

    .line 679
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 680
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->setOffsetAccuracy(I)V

    return v1

    :pswitch_57
    const/4 p1, 0x0

    .line 669
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 671
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->setShowScrollbar(Z)V

    :cond_65
    return v1

    :sswitch_data_66
    .sparse-switch
        -0xd52a857 -> :sswitch_23
        -0x55c154 -> :sswitch_18
        0x3f94da7 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_57
        :pswitch_45
        :pswitch_35
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    .line 702
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    .line 703
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 704
    instance-of v1, v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v1, :cond_10

    .line 705
    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setScrollable(Z)V

    goto :goto_19

    .line 706
    :cond_10
    instance-of v1, v0, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_19

    .line 707
    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXScrollView;->setScrollable(Z)V

    :cond_19
    :goto_19
    return-void
.end method

.method public setShowScrollbar(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showScrollbar"
    .end annotation

    .line 690
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 693
    :cond_7
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 694
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1b

    .line 696
    :cond_14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    :goto_1b
    return-void
.end method

.method public unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x0

    .line 767
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 775
    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 730
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass1 (com.taobao.weex.ui.component.WXScroller$1)
.class Lcom/taobao/weex/ui/component/WXScroller$1;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .registers 13

    .line 187
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 188
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 191
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$000(Lcom/taobao/weex/ui/component/WXScroller;II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 192
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/taobao/weex/ui/component/WXScroller;->access$100(Lcom/taobao/weex/ui/component/WXScroller;Landroid/graphics/Rect;IIII)V

    :cond_2d
    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass10 (com.taobao.weex.ui.component.WXScroller$10)
.class Lcom/taobao/weex/ui/component/WXScroller$10;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 613
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$10;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$10;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V

    .line 619
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$10;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 622
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1d

    .line 623
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_24

    .line 625
    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_24
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass11 (com.taobao.weex.ui.component.WXScroller$11)
.class Lcom/taobao/weex/ui/component/WXScroller$11;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 629
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 6

    .line 632
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->access$702(Lcom/taobao/weex/ui/component/WXScroller;Z)Z

    .line 633
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/taobao/weex/ui/component/WXScroller;->access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 638
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->access$702(Lcom/taobao/weex/ui/component/WXScroller;Z)Z

    .line 639
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$800(Lcom/taobao/weex/ui/component/WXScroller;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass12 (com.taobao.weex.ui.component.WXScroller$12)
.class Lcom/taobao/weex/ui/component/WXScroller$12;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$smooth:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;ZII)V
    .registers 5

    .line 837
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$smooth:Z

    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$y:I

    iput p4, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 840
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iget v0, v0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    .line 841
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$smooth:Z

    if-eqz v0, :cond_1a

    .line 842
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/WXScrollView;->smoothScrollBy(II)V

    goto :goto_47

    .line 844
    :cond_1a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/WXScrollView;->scrollBy(II)V

    goto :goto_47

    .line 847
    :cond_28
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$smooth:Z

    if-eqz v0, :cond_3a

    .line 848
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$x:I

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_47

    .line 850
    :cond_3a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$x:I

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollBy(II)V

    .line 853
    :goto_47
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass2 (com.taobao.weex.ui.component.WXScroller$2)
.class Lcom/taobao/weex/ui/component/WXScroller$2;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V
    .registers 13

    .line 215
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 216
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 219
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$000(Lcom/taobao/weex/ui/component/WXScroller;II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 220
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/taobao/weex/ui/component/WXScroller;->access$100(Lcom/taobao/weex/ui/component/WXScroller;Landroid/graphics/Rect;IIII)V

    :cond_2d
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass3 (com.taobao.weex.ui.component.WXScroller$3)
.class Lcom/taobao/weex/ui/component/WXScroller$3;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 339
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$3;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$3;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$3;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$3;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass4 (com.taobao.weex.ui.component.WXScroller$4)
.class Lcom/taobao/weex/ui/component/WXScroller$4;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 351
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$4;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$4;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$4;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$4;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass5 (com.taobao.weex.ui.component.WXScroller$5)
.class Lcom/taobao/weex/ui/component/WXScroller$5;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$5;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V
    .registers 6

    .line 478
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$5;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/WXScroller;->access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass6 (com.taobao.weex.ui.component.WXScroller$6)
.class Lcom/taobao/weex/ui/component/WXScroller$6;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$component:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 4

    .line 487
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$component:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    .line 491
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    new-instance p3, Lcom/taobao/weex/ui/component/WXScroller$6$1;

    move-object v0, p3

    move-object v1, p0

    move v2, p8

    move v3, p6

    move v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXScroller$6$1;-><init>(Lcom/taobao/weex/ui/component/WXScroller$6;IIII)V

    invoke-virtual {p1, p3}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass6.AnonymousClass1 (com.taobao.weex.ui.component.WXScroller$6$1)
.class Lcom/taobao/weex/ui/component/WXScroller$6$1;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller$6;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

.field final synthetic val$left:I

.field final synthetic val$oldLeft:I

.field final synthetic val$oldRight:I

.field final synthetic val$right:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller$6;IIII)V
    .registers 6

    .line 491
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iput p2, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$oldRight:I

    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$oldLeft:I

    iput p4, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$right:I

    iput p5, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$left:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 494
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXScroller;->access$300(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->isLayoutRTL()Z

    move-result v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXScroller;->access$300(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_57

    .line 496
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 498
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 499
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v3, v3, Lcom/taobao/weex/ui/component/WXScroller$6;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$component:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollTo(II)V

    goto :goto_7d

    .line 500
    :cond_57
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 502
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$oldRight:I

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$oldLeft:I

    sub-int/2addr v0, v1

    .line 503
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$right:I

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-eqz v1, :cond_7d

    .line 506
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/WXScroller$6;->val$component:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollBy(II)V

    .line 509
    :cond_7d
    :goto_7d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    new-instance v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXScroller;->isLayoutRTL()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/WXScroller;->access$302(Lcom/taobao/weex/ui/component/WXScroller;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass7 (com.taobao.weex.ui.component.WXScroller$7)
.class Lcom/taobao/weex/ui/component/WXScroller$7;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$listener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 3

    .line 514
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$7;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$7;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$7;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$7;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass8 (com.taobao.weex.ui.component.WXScroller$8)
.class Lcom/taobao/weex/ui/component/WXScroller$8;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V
    .registers 3

    .line 529
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 532
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result v0

    if-nez v0, :cond_11

    .line 533
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$402(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 536
    :cond_11
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$500(Lcom/taobao/weex/ui/component/WXScroller;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    return v0

    .line 539
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    .line 540
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result p1

    .line 541
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p2

    .line 542
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    div-int/lit8 v3, p2, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, p2

    invoke-static {v2, p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 543
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p1

    mul-int p1, p1, p2

    .line 544
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {p2, p1, v1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->smoothScrollTo(II)V

    return v0
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass9 (com.taobao.weex.ui.component.WXScroller$9)
.class Lcom/taobao/weex/ui/component/WXScroller$9;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 568
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 9

    .line 594
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 595
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_40

    .line 596
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v1, :cond_16

    .line 598
    instance-of v2, v1, Lcom/taobao/weex/common/ICheckBindingScroller;

    if-eqz v2, :cond_3c

    .line 599
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/common/ICheckBindingScroller;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXScroller;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/taobao/weex/common/ICheckBindingScroller;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 600
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V

    goto :goto_16

    .line 603
    :cond_3c
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V

    goto :goto_16

    :cond_40
    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .registers 6

    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 7

    .line 581
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 582
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 583
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v2, :cond_17

    .line 585
    invoke-interface {v2, p1, p2, p3, v1}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrollStateChanged(Landroid/view/View;III)V

    goto :goto_17

    .line 589
    :cond_29
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrollStateChanged(I)V

    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.Creator (com.taobao.weex.ui.component.WXScroller$Creator)
.class public Lcom/taobao/weex/ui/component/WXScroller$Creator;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 106
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

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p1, v0}, Lcom/taobao/weex/WXSDKInstance;->setUseScroller(Z)V

    .line 111
    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method

###### Class com.taobao.weex.ui.component.WXScroller.MyGestureDetector (com.taobao.weex.ui.component.WXScroller$MyGestureDetector)
.class Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WXScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureDetector"
.end annotation


# instance fields
.field private final scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V
    .registers 3

    .line 1018
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1019
    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    return-void
.end method


# virtual methods
.method public getScrollView()Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    return-object v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    .line 1024
    iget-object p4, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/WXScroller;->access$900(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    .line 1027
    :try_start_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4d

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4d

    .line 1028
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p1

    .line 1029
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    sub-int/2addr p4, v4

    if-ge p3, p4, :cond_3c

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    add-int/lit8 p4, p3, 0x1

    :cond_3c
    invoke-static {p2, p4}, Lcom/taobao/weex/ui/component/WXScroller;->access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 1030
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    mul-int p3, p3, p1

    invoke-virtual {p2, p3, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->smoothScrollTo(II)V

    return v4

    .line 1034
    :cond_4d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    cmpl-float p1, p2, v3

    if-lez p1, :cond_a3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_a3

    .line 1035
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p1

    .line 1036
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    if-lez p3, :cond_78

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    sub-int/2addr p3, v4

    goto :goto_79

    :cond_78
    const/4 p3, 0x0

    :goto_79
    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 1037
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    mul-int p3, p3, p1

    invoke-virtual {p2, p3, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->smoothScrollTo(II)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_89} :catch_8a

    return v4

    :catch_8a
    move-exception p1

    .line 1041
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "There was an error processing the Fling event:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_a3
    return v0
.end method
