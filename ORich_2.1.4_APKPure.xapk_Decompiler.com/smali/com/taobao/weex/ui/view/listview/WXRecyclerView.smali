###### Class com.taobao.weex.ui.view.listview.WXRecyclerView (com.taobao.weex.ui.view.listview.WXRecyclerView)
.class public Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "WXRecyclerView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# static fields
.field public static final TYPE_GRID_LAYOUT:I = 0x2

.field public static final TYPE_LINEAR_LAYOUT:I = 0x1

.field public static final TYPE_STAGGERED_GRID_LAYOUT:I = 0x3


# instance fields
.field private NestInfo:Lcom/alibaba/fastjson/JSONObject;

.field private hasTouch:Z

.field private headerHeight:F

.field public isNestParent:Z

.field isStartFling:Z

.field private lastY:Ljava/lang/Float;

.field mChildScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mCurrentDy:I

.field private mFlingHelper:Lio/dcloud/weex/FlingHelper;

.field private mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private mInstanceId:Ljava/lang/String;

.field mParentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private scrollable:Z

.field private totalDy:I

.field private velocityY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 166
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 58
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    .line 59
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 67
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 72
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 74
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->headerHeight:F

    .line 79
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 171
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    const/4 p2, 0x0

    .line 57
    iput-object p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 58
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    .line 59
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    const/4 p2, 0x0

    .line 66
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 67
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 72
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 74
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->headerHeight:F

    .line 79
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I
    .registers 2

    .line 48
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->dispatchChildFling()V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)I
    .registers 1

    .line 48
    iget p0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    return p0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I
    .registers 2

    .line 48
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    return p1
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->dispatchParentFling()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->canParentScrollVertically(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$501(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private canParentScrollVertically(IZ)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    if-ne p1, v0, :cond_32

    .line 261
    :try_start_5
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_32

    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz p1, :cond_32

    .line 263
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    if-nez p1, :cond_14

    return v0

    .line 268
    :cond_14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 269
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 270
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getHeight()I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    if-nez v2, :cond_2d

    .line 272
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2e

    if-nez p1, :cond_2d

    const/4 p1, 0x0

    return p1

    :cond_2d
    return v0

    :catch_2e
    move-exception p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    return p2
.end method

.method private childFling(I)V
    .registers 4

    .line 588
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 590
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    :cond_a
    return-void
.end method

.method private dispatchChildFling()V
    .registers 7

    .line 561
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    if-eqz v0, :cond_22

    .line 562
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    invoke-virtual {v1, v0}, Lio/dcloud/weex/FlingHelper;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 563
    iget v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_22

    .line 564
    iget-object v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    int-to-double v4, v2

    sub-double/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lio/dcloud/weex/FlingHelper;->getVelocityByDistance(D)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->childFling(I)V

    :cond_22
    const/4 v0, 0x0

    .line 567
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 568
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    return-void
.end method

.method private dispatchParentFling()V
    .registers 9

    .line 573
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getParentRecyclerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 575
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    if-eqz v1, :cond_34

    .line 577
    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    invoke-virtual {v2, v1}, Lio/dcloud/weex/FlingHelper;->getSplineFlingDistance(I)D

    move-result-wide v1

    .line 578
    iget v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x0

    cmpl-double v6, v1, v3

    if-lez v6, :cond_30

    .line 579
    iget-object v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    iget v4, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    int-to-double v6, v4

    add-double/2addr v1, v6

    invoke-virtual {v3, v1, v2}, Lio/dcloud/weex/FlingHelper;->getVelocityByDistance(D)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v5, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->fling(II)Z

    .line 581
    :cond_30
    iput v5, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 582
    iput v5, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    :cond_34
    return-void
.end method

.method private getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6e

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v1, :cond_6e

    const-string v1, "isSwipelist"

    .line 459
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 460
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "swipeId"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponentById(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 463
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getDCWXSliderComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lio/dcloud/feature/weex/extend/DCWXSlider;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 464
    instance-of v1, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;

    if-eqz v1, :cond_53

    .line 465
    check-cast v0, Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getCurrentIndex()I

    move-result v1

    .line 466
    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    goto :goto_53

    .line 470
    :cond_3d
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "nestChildRef"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6e

    .line 474
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 475
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 476
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    return-object v0

    :cond_6e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getParentRecyclerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .registers 4

    .line 442
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-nez v1, :cond_37

    const-string v1, "listParentId"

    .line 443
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponentById(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 446
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 447
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 448
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    return-object v0

    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method private isScrollEnd()Z
    .registers 3

    const/4 v0, 0x1

    .line 557
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->canScrollVertically(I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public callBackNestParent(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 8

    .line 154
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getParentRecyclerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 156
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x1

    .line 157
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isNestParent"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "instanceId"

    .line 158
    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "nestChildRef"

    .line 159
    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "headerHeight"

    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_2b
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    .line 344
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_34

    .line 345
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_19

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    .line 348
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 349
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->stopScroll()V

    :cond_19
    if-eqz p1, :cond_34

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    const/4 v0, 0x0

    .line 353
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    goto :goto_34

    :cond_2a
    if-eqz p1, :cond_34

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_34

    .line 357
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 362
    :cond_34
    :goto_34
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 363
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_41

    .line 364
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_41
    return v0
.end method

.method public fling(II)Z
    .registers 6

    .line 522
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 523
    :cond_8
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    .line 524
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_2e

    .line 525
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    if-eqz p1, :cond_1f

    if-gtz p2, :cond_1a

    goto :goto_1f

    .line 529
    :cond_1a
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 530
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    goto :goto_2e

    .line 527
    :cond_1f
    :goto_1f
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    goto :goto_2e

    :cond_22
    if-eqz p1, :cond_2c

    if-ltz p2, :cond_27

    goto :goto_2c

    .line 538
    :cond_27
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 539
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    goto :goto_2e

    .line 535
    :cond_2c
    :goto_2c
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    :cond_2e
    :goto_2e
    return p1
.end method

.method public getCurrentDy()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    return v0
.end method

.method public getDCWXSliderComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lio/dcloud/feature/weex/extend/DCWXSlider;
    .registers 4

    .line 503
    instance-of v0, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    if-eqz v0, :cond_7

    .line 504
    check-cast p1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    return-object p1

    .line 506
    :cond_7
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_28

    .line 507
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 508
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    .line 509
    :goto_14
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 510
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getDCWXSliderComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lio/dcloud/feature/weex/extend/DCWXSlider;

    move-result-object v1

    if-eqz v1, :cond_25

    return-object v1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;
    .registers 4

    .line 485
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    if-eqz v0, :cond_7

    .line 486
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    return-object p1

    .line 488
    :cond_7
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_28

    .line 489
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 490
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    .line 491
    :goto_14
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 492
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-result-object v1

    if-eqz v1, :cond_25

    return-object v1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public initView(Landroid/content/Context;II)V
    .registers 10

    const/4 v3, 0x1

    const/high16 v4, 0x42000000    # 32.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 183
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    return-void
.end method

.method public initView(Landroid/content/Context;IIFI)V
    .registers 13

    const/4 p4, 0x2

    if-ne p2, p4, :cond_13

    .line 196
    new-instance p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IIZI)V

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_30

    :cond_13
    const/4 p4, 0x3

    if-ne p2, p4, :cond_1f

    .line 216
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;

    invoke-direct {p1, p0, p3, p5, p5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_30

    :cond_1f
    const/4 p3, 0x1

    if-ne p2, p3, :cond_30

    .line 236
    new-instance p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IZI)V

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public isNestScroll()Z
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isScrollTop()Z
    .registers 2

    const/4 v0, -0x1

    .line 552
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 372
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    .line 639
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 642
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 7

    .line 648
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_33

    .line 649
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_1b

    .line 650
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-gez p2, :cond_28

    if-eqz p1, :cond_28

    .line 651
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    if-nez v2, :cond_2e

    if-nez p1, :cond_2e

    return v1

    :cond_2e
    float-to-int p1, p3

    .line 655
    invoke-virtual {p0, v1, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->fling(II)Z

    return v0

    .line 658
    :cond_33
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 7

    .line 623
    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_2f

    .line 624
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-lez p3, :cond_18

    .line 626
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-gez p3, :cond_25

    if-eqz p1, :cond_25

    .line 628
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    if-nez v1, :cond_2a

    if-eqz p1, :cond_2f

    .line 631
    :cond_2a
    invoke-virtual {p0, v0, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollBy(II)V

    .line 632
    aput p3, p4, p2

    :cond_2f
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 614
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_17

    if-eqz p2, :cond_17

    .line 615
    instance-of v0, p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    if-eqz v0, :cond_17

    move-object v0, p2

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-boolean v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-nez v0, :cond_17

    const/4 p1, 0x1

    return p1

    .line 619
    :cond_17
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 318
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_4b

    .line 322
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_23

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 325
    :cond_23
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 327
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 329
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz v1, :cond_41

    const/4 v2, 0x0

    .line 331
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 335
    :cond_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 338
    :cond_4b
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public scrollTo(III)V
    .registers 5

    .line 408
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scrollTo(ZIII)V
    .registers 5

    if-nez p1, :cond_1c

    .line 377
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 378
    instance-of p4, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p4, :cond_11

    .line 380
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    neg-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_29

    .line 381
    :cond_11
    instance-of p4, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p4, :cond_29

    .line 382
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    neg-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_29

    .line 386
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollToPosition(I)V

    if-eqz p3, :cond_29

    .line 388
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    invoke-direct {p1, p0, p4, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;II)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public scrollToPosition(I)V
    .registers 5

    .line 596
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1c

    .line 598
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 600
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 602
    :cond_11
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1f

    .line 609
    :cond_1c
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_1f
    return-void
.end method

.method public setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4

    .line 83
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_55

    const-string v0, "isNestParent"

    .line 85
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    const-string v0, "instanceId"

    .line 86
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    if-nez v0, :cond_23

    .line 88
    new-instance v0, Lio/dcloud/weex/FlingHelper;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/weex/FlingHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    .line 90
    :cond_23
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_47

    const/high16 v0, 0x20000

    .line 92
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setDescendantFocusability(I)V

    .line 93
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mParentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez v0, :cond_55

    const-string v0, "headerHeight"

    .line 94
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->headerHeight:F

    .line 95
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mParentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 118
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_55

    .line 121
    :cond_47
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mChildScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez p1, :cond_55

    .line 122
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mChildScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 143
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    .registers 3

    .line 428
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 179
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass1 (com.taobao.weex.ui.view.listview.WXRecyclerView$1)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 98
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_10

    .line 100
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 101
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$100(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    :cond_10
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 108
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 109
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-boolean p1, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    if-eqz p1, :cond_18

    .line 110
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 111
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput-boolean p2, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 114
    :cond_18
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$200(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass2 (com.taobao.weex.ui.view.listview.WXRecyclerView$2)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 5

    if-nez p2, :cond_d

    .line 126
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 127
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$300(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    .line 129
    :cond_d
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 135
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 136
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-boolean p1, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    if-eqz p1, :cond_18

    .line 137
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 138
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput-boolean p2, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 140
    :cond_18
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$200(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass3 (com.taobao.weex.ui.view.listview.WXRecyclerView$3)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IIZI)V
    .registers 7

    .line 196
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p6, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->val$orientation:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 4

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->val$orientation:I

    invoke-super {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3

    .line 209
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass4 (com.taobao.weex.ui.view.listview.WXRecyclerView$4)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;
.super Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V
    .registers 5

    .line 216
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p4, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->val$orientation:I

    invoke-direct {p0, p2, p3}, Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;-><init>(II)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 4

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->val$orientation:I

    invoke-super {p0}, Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;->canScrollVertically()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3

    .line 229
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass5 (com.taobao.weex.ui.view.listview.WXRecyclerView$5)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IZI)V
    .registers 6

    .line 236
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p5, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;->val$orientation:I

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 4

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;->val$orientation:I

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3

    .line 249
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass6 (com.taobao.weex.ui.view.listview.WXRecyclerView$6)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;
.super Ljava/lang/Object;
.source "WXRecyclerView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$offset:I

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;II)V
    .registers 4

    .line 388
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$orientation:I

    iput p3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass6.AnonymousClass1 (com.taobao.weex.ui.view.listview.WXRecyclerView$6$1)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;
.super Ljava/lang/Object;
.source "WXRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 394
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 395
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget v2, v2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$offset:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollBy(II)V

    goto :goto_1f

    .line 397
    :cond_14
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget v2, v2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$offset:I

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollBy(II)V

    :goto_1f
    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass7 (com.taobao.weex.ui.view.listview.WXRecyclerView$7)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;
.super Ljava/lang/Object;
.source "WXRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$orientation:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V
    .registers 5

    .line 408
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$orientation:I

    iput p3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$y:I

    iput p4, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 413
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 414
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$y:I

    goto :goto_10

    .line 416
    :cond_e
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$x:I

    .line 418
    :goto_10
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 419
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_26

    .line 420
    :cond_1c
    instance-of v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_26

    .line 421
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_26
    :goto_26
    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass8 (com.taobao.weex.ui.view.listview.WXRecyclerView$8)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    .registers 3

    .line 428
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput-object p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;->val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    if-nez p2, :cond_c

    .line 432
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 433
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;->val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    if-eqz p1, :cond_c

    .line 434
    invoke-interface {p1}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;->onStop()V

    :cond_c
    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass9 (com.taobao.weex.ui.view.listview.WXRecyclerView$9)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;
.super Ljava/lang/Object;
.source "WXRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V
    .registers 3

    .line 602
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;->val$position:I

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$501(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V

    return-void
.end method
