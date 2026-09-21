###### Class com.taobao.weex.ui.component.list.BasicListComponent (com.taobao.weex.ui.component.list.BasicListComponent)
.class public abstract Lcom/taobao/weex/ui/component/list/BasicListComponent;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "BasicListComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;
.implements Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;
.implements Lcom/taobao/weex/ui/component/Scrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/list/BasicListComponent$DragTriggerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ":",
        "Lcom/taobao/weex/ui/component/list/ListComponentView;",
        ">",
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "TT;>;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener<",
        "Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;",
        ">;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
        "Lcom/taobao/weex/ui/component/Scrollable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXCLUDED:Z = false

.field private static final DEFAULT_TRIGGER_TYPE:Ljava/lang/String; = "longpress"

.field private static final DRAG_ANCHOR:Ljava/lang/String; = "dragAnchor"

.field private static final DRAG_TRIGGER_TYPE:Ljava/lang/String; = "dragTriggerType"

.field private static final EXCLUDED:Ljava/lang/String; = "dragExcluded"

.field public static final LOADMOREOFFSET:Ljava/lang/String; = "loadmoreoffset"

.field private static final MAX_VIEWTYPE_ALLOW_CACHE:I = 0x9

.field public static final TRANSFORM:Ljava/lang/String; = "transform"

.field private static mAllowCacheViewHolder:Z

.field private static mDownForBidCacheViewHolder:Z

.field private static final transformPattern:Ljava/util/regex/Pattern;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isScrollable:Z

.field private keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

.field private keepPositionCellRunnable:Ljava/lang/Runnable;

.field private keepPositionLayoutDelay:J

.field listStanceObject:Lcom/taobao/weex/ui/component/list/ListStanceCell;

.field private mAppearChangeRunnable:Ljava/lang/Runnable;

.field private mAppearChangeRunnableDelay:J

.field private mAppearComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mColumnCount:I

.field protected mColumnGap:F

.field protected mColumnWidth:F

.field private mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mLastReport:Landroid/graphics/Point;

.field protected mLayoutType:I

.field protected mLeftGap:F

.field private mListCellCount:I

.field private mOffsetAccuracy:I

.field private mRefToViewType:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mRightGap:F

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

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

.field private mTriggerType:Ljava/lang/String;

.field private mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

.field private mViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "([a-z]+)\\(([0-9\\.]+),?([0-9\\.]+)?\\)"

    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->transformPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    .line 113
    sput-boolean v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAllowCacheViewHolder:Z

    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const-string p1, "BasicListComponent"

    .line 98
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    .line 100
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z

    .line 103
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    const/4 p2, 0x0

    .line 104
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    .line 105
    iput-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    const/4 p3, 0x1

    .line 107
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isScrollable:Z

    .line 110
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    .line 117
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLayoutType:I

    .line 118
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnCount:I

    const/4 p3, 0x0

    .line 119
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnGap:F

    .line 120
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnWidth:F

    .line 121
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLeftGap:F

    .line 122
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRightGap:F

    const/16 p3, 0xa

    .line 124
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

    .line 125
    new-instance p3, Landroid/graphics/Point;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    .line 126
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mHasAddScrollEvent:Z

    .line 160
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    .line 171
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    .line 172
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x96

    .line 173
    iput-wide p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    .line 178
    new-instance p1, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;-><init>(Lcom/taobao/weex/ui/component/Scrollable;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Ljava/lang/Runnable;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/list/BasicListComponent;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/list/DragHelper;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/list/BasicListComponent;II)Z
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->shouldReport(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method private bindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 5

    .line 1150
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateViewType(Lcom/taobao/weex/common/IWXObject;)I

    move-result v0

    .line 1152
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-nez v1, :cond_f

    .line 1153
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    .line 1156
    :cond_f
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_23

    .line 1159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1162
    :cond_23
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkRecycledViewPool(I)V
    .registers 5

    .line 1055
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-le v0, v1, :cond_d

    .line 1056
    sput-boolean v2, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAllowCacheViewHolder:Z

    .line 1058
    :cond_d
    sget-boolean v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z

    if-eqz v0, :cond_38

    .line 1059
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1060
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 1062
    :cond_38
    sget-boolean p1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z

    if-nez p1, :cond_84

    .line 1063
    sget-boolean p1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAllowCacheViewHolder:Z

    if-nez p1, :cond_84

    .line 1064
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_84

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_84

    const/4 p1, 0x0

    .line 1065
    :goto_55
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_79

    .line 1066
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_55

    :cond_79
    const/4 p1, 0x1

    .line 1068
    sput-boolean p1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_7d

    goto :goto_84

    .line 1073
    :catch_7d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v0, "Clear recycledViewPool error!"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void
.end method

.method private createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .registers 5

    .line 1316
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 1317
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1318
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1319
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {v1, v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private createVHForRefreshComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .registers 6

    .line 1324
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1325
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1326
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {v1, v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private findComponentByAnchorName(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 11

    .line 1091
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    .line 1095
    :goto_d
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 1096
    invoke-interface {v2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_15
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    const-string v3, "ms"

    const-string v4, "dragPerf"

    const/4 v5, 0x0

    if-nez p1, :cond_78

    .line 1098
    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_61

    .line 1100
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_61

    const-string v6, "true"

    .line 1103
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 1104
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_60

    .line 1105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findComponentByAnchorName time: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return-object p1

    .line 1110
    :cond_61
    instance-of v3, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_15

    .line 1111
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v3, 0x0

    .line 1112
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v4

    :goto_6c
    if-ge v3, v4, :cond_15

    .line 1113
    invoke-virtual {p1, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v5

    .line 1114
    invoke-interface {v2, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 1119
    :cond_78
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 1120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findComponentByAnchorName elapsed time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    return-object v5
.end method

.method private findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 4

    if-eqz p1, :cond_13

    .line 412
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 416
    :cond_9
    instance-of v1, v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;

    if-eqz v1, :cond_e

    return-object p1

    .line 420
    :cond_e
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private fireScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5

    .line 1392
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1393
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object p1

    const-string p2, "scroll"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_f
    return-void
.end method

.method private generateViewType(Lcom/taobao/weex/common/IWXObject;)I
    .registers 7

    const-wide/16 v0, -0x1

    .line 1186
    :try_start_2
    instance-of v2, p1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    if-eqz v2, :cond_7

    goto :goto_5c

    .line 1188
    :cond_7
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_5c

    .line 1189
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 1190
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 1191
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXAttr;->getScope()Ljava/lang/String;

    move-result-object p1

    .line 1193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 1194
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    if-nez v4, :cond_2f

    .line 1195
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    .line 1197
    :cond_2f
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 1198
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, p1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    :cond_40
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_4c} :catch_4f

    goto :goto_5c

    :cond_4d
    move-wide v0, v2

    goto :goto_5c

    :catch_4f
    move-exception p1

    .line 1205
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1207
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v2, "getItemViewType: NO ID, this will crash the whole render system of WXListRecyclerView"

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    long-to-int p1, v0

    return p1
.end method

.method private getListChildLayoutHeight(I)F
    .registers 3

    .line 1568
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1570
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    if-eqz v0, :cond_d

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1b

    .line 1572
    :cond_d
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_1a

    .line 1573
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_1a

    .line 1575
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private getListStanceCell(Ljava/lang/String;)Lcom/taobao/weex/common/IWXObject;
    .registers 3

    .line 1555
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->listStanceObject:Lcom/taobao/weex/ui/component/list/ListStanceCell;

    if-nez v0, :cond_b

    .line 1556
    new-instance v0, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/component/list/ListStanceCell;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->listStanceObject:Lcom/taobao/weex/ui/component/list/ListStanceCell;

    .line 1558
    :cond_b
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->listStanceObject:Lcom/taobao/weex/ui/component/list/ListStanceCell;

    return-object p1
.end method

.method private getTriggerType(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;
    .registers 5

    const-string v0, "longpress"

    if-nez p1, :cond_5

    return-object v0

    .line 1131
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v1, "dragTriggerType"

    invoke-virtual {p1, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "pan"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_23

    :cond_22
    move-object v0, p1

    .line 1136
    :goto_23
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 1137
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trigger type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    return-object v0
.end method

.method private relocateAppearanceHelper()V
    .registers 5

    .line 799
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 800
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 801
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 802
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 803
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 804
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 805
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setCellPosition(I)V

    goto :goto_a

    :cond_2e
    return-void
.end method

.method private setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V
    .registers 6

    .line 493
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    if-eqz v0, :cond_12

    .line 495
    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    goto :goto_34

    :cond_12
    if-nez p3, :cond_15

    goto :goto_34

    .line 499
    :cond_15
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p3

    .line 500
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_34

    .line 502
    new-instance v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    invoke-direct {v0, p1, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    const/4 p3, 0x1

    .line 503
    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    .line 504
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    :goto_34
    return-void
.end method

.method private shouldReport(II)Z
    .registers 7

    .line 1423
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_17

    .line 1424
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1425
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v1

    .line 1429
    :cond_17
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1430
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1432
    iget v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

    if-ge v0, v3, :cond_32

    if-lt v2, v3, :cond_30

    goto :goto_32

    :cond_30
    const/4 p1, 0x0

    return p1

    .line 1433
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1434
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v1
.end method

.method private unBindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 1166
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateViewType(Lcom/taobao/weex/common/IWXObject;)I

    move-result v0

    .line 1168
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-nez v1, :cond_9

    return-void

    .line 1170
    :cond_9
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_12

    return-void

    .line 1174
    :cond_12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, -0x1

    .line 699
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 10

    .line 714
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    if-eqz p1, :cond_120

    const/4 v0, -0x1

    if-ge p2, v0, :cond_a

    goto/16 :goto_120

    .line 718
    :cond_a
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_13

    const/4 p2, -0x1

    .line 720
    :cond_13
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->bindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V

    const/4 v1, 0x1

    if-ne p2, v0, :cond_21

    .line 722
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_22

    :cond_21
    move v2, p2

    .line 723
    :goto_22
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_11d

    .line 726
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_45

    .line 727
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string v6, "insertAnimation"

    invoke-virtual {v4, v6}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "default"

    .line 728
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    if-eqz v4, :cond_55

    .line 733
    move-object v4, v3

    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v6}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_60

    .line 735
    :cond_55
    move-object v4, v3

    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 738
    :goto_60
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v4

    if-eqz v4, :cond_87

    .line 739
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v4, "keepScrollPosition"

    invoke-virtual {p1, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 740
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_87

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChildCount()I

    move-result p1

    if-gt p2, p1, :cond_87

    if-le p2, v0, :cond_87

    const/4 v5, 0x1

    :cond_87
    const/16 p1, 0x14

    if-eqz v5, :cond_110

    .line 745
    move-object p2, v3

    check-cast p2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_fa

    .line 746
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_e1

    .line 747
    invoke-interface {p2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 748
    invoke-interface {p2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    if-eqz v0, :cond_be

    .line 750
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    .line 752
    :cond_be
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_e1

    .line 753
    invoke-interface {p2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isLayoutFrozen()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 754
    invoke-interface {p2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutFrozen(Z)V

    .line 756
    :cond_d3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_da

    .line 757
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 759
    :cond_da
    new-instance v0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;

    invoke-direct {v0, p0, v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    .line 782
    :cond_e1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_fa

    .line 783
    invoke-interface {p2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-interface {p2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollToPosition(I)V

    .line 786
    :cond_fa
    invoke-interface {p2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemRangeInserted(II)V

    .line 787
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_11d

    .line 788
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 789
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    invoke-virtual {v3, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11d

    .line 792
    :cond_110
    check-cast v3, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v3}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 795
    :cond_11d
    :goto_11d
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->relocateAppearanceHelper()V

    :cond_120
    :goto_120
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 1337
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    .line 1338
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 1339
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 1340
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mHasAddScrollEvent:Z

    if-nez p1, :cond_38

    const/4 p1, 0x1

    .line 1342
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mHasAddScrollEvent:Z

    .line 1343
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    .line 1344
    new-instance v0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_38
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 511
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 512
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_10

    .line 513
    new-instance p1, Lcom/taobao/weex/ui/component/list/BasicListComponent$4;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$4;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 522
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 523
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 524
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    return-void
.end method

.method public bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x1

    .line 530
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    return-void
.end method

.method public bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method

.method public calcContentOffset(Landroidx/recyclerview/widget/RecyclerView;)I
    .registers 7

    .line 1444
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 1445
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    .line 1446
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_14

    return v2

    .line 1451
    :cond_14
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1454
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    const/4 v3, 0x0

    :goto_21
    if-ge v2, v0, :cond_2d

    int-to-float v3, v3

    .line 1459
    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChildLayoutHeight(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1462
    :cond_2d
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_38

    .line 1463
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    .line 1464
    div-int/2addr v3, p1

    :cond_38
    add-int/2addr v3, v1

    return v3

    .line 1469
    :cond_3a
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_6a

    .line 1470
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v3

    const/4 v4, 0x0

    .line 1471
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    aget v0, v0, v2

    if-ne v0, v1, :cond_4f

    return v2

    .line 1476
    :cond_4f
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 1479
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_5b

    :cond_5a
    const/4 p1, 0x0

    :goto_5b
    const/4 v1, 0x0

    :goto_5c
    if-ge v2, v0, :cond_68

    int-to-float v1, v1

    .line 1484
    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChildLayoutHeight(I)F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1487
    :cond_68
    div-int/2addr v1, v3

    add-int/2addr v1, p1

    :cond_6a
    return v1
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .registers 4

    .line 863
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 864
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 265
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 268
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 269
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->clearOnScrollListeners()V

    .line 271
    :cond_3b
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 272
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_45

    .line 273
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 274
    :cond_45
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v0, :cond_4c

    .line 275
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 276
    :cond_4c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_53

    .line 277
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    :cond_53
    return-void
.end method

.method abstract generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)TT;"
        }
    .end annotation
.end method

.method public getChildCount()I
    .registers 4

    const/4 v0, 0x0

    .line 1523
    invoke-super {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1525
    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    .line 1526
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    iget v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnCount:I

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0

    .line 1528
    :cond_19
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .registers 15

    .line 283
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    instance-of p1, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    .line 285
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_27

    :cond_12
    if-nez p2, :cond_1a

    .line 287
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_27

    .line 289
    :cond_1a
    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 290
    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p5

    move v4, p6

    .line 292
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    :goto_27
    return-object p2
.end method

.method protected getChildrenLayoutTopOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1219
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 5

    const-wide/16 v0, -0x1

    .line 1234
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object p1

    .line 1235
    instance-of v2, p1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    if-eqz v2, :cond_b

    goto :goto_24

    .line 1237
    :cond_b
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_24

    .line 1238
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_24

    :catch_1a
    move-exception p1

    .line 1241
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 1085
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateViewType(Lcom/taobao/weex/common/IWXObject;)I

    move-result p1

    return p1
.end method

.method public getListChild(I)Lcom/taobao/weex/common/IWXObject;
    .registers 6

    const/4 v0, 0x0

    .line 1537
    invoke-super {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    if-eqz v0, :cond_2b

    .line 1541
    instance-of v1, v0, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v1, :cond_2b

    iget v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2b

    sub-int v3, p1, v1

    if-gez v3, :cond_24

    .line 1543
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListStanceCell(Ljava/lang/String;)Lcom/taobao/weex/common/IWXObject;

    move-result-object p1

    return-object p1

    :cond_24
    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 1546
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    .line 1549
    :cond_2b
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1
.end method

.method public getOrientation()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1398
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1399
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->calcContentOffset(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    neg-int p3, p3

    .line 1401
    :cond_c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1403
    :goto_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_28

    int-to-float v4, v4

    .line 1404
    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChildLayoutHeight(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1407
    :cond_28
    new-instance v3, Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1408
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1409
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v5}, Ljava/util/HashMap;-><init>(I)V

    int-to-float v0, v0

    .line 1411
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v5

    invoke-static {v0, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v5, "width"

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v0, v4

    .line 1412
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v4

    invoke-static {v0, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v4, "height"

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p2, p2

    .line 1414
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "x"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p2, p3

    .line 1415
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "y"

    invoke-interface {v7, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "contentSize"

    .line 1416
    invoke-interface {v3, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "contentOffset"

    .line 1417
    invoke-interface {v3, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, v1, :cond_a3

    goto :goto_a4

    :cond_a3
    const/4 v1, 0x0

    :goto_a4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isDragging"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .registers 2

    .line 1496
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_b

    .line 1497
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 1499
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .registers 2

    .line 685
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_14

    .line 686
    :cond_a
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollX()I

    move-result v0

    :goto_14
    return v0
.end method

.method public getScrollY()I
    .registers 2

    .line 679
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_14

    .line 680
    :cond_a
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollY()I

    move-result v0

    :goto_14
    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object p1

    const-string v0, "transform"

    .line 303
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 305
    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v2

    invoke-static {v2, v0}, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->parseTransforms(ILjava/lang/String;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 307
    :cond_22
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "keepPositionLayoutDelay"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 308
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    .line 310
    :cond_40
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "appearActionDelay"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 311
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    .line 314
    :cond_5e
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 316
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;)V

    const/4 v2, 0x1

    .line 317
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->setHasStableIds(Z)V

    .line 318
    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V

    .line 321
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 322
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "hasFixedSize"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 323
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 324
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHasFixedSize(Z)V

    .line 327
    :cond_a8
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 376
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method

.method public isScrollable()Z
    .registers 2

    .line 488
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isScrollable:Z

    return v0
.end method

.method protected markComponentUsable()V
    .registers 4

    .line 989
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v2, 0x0

    .line 990
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setUsing(Z)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .registers 3

    .line 255
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object p1

    return-object p1
.end method

.method public notifyAppearStateChange(IIII)V
    .registers 10

    .line 1274
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 1275
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1276
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 1279
    :cond_12
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-lez p4, :cond_21

    const-string p2, "up"

    goto :goto_25

    :cond_21
    if-gez p4, :cond_25

    const-string p2, "down"

    .line 1282
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result p4

    if-nez p4, :cond_34

    if-eqz p3, :cond_34

    if-lez p3, :cond_32

    const-string p2, "left"

    goto :goto_34

    :cond_32
    const-string p2, "right"

    .line 1286
    :cond_34
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9b

    .line 1287
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 1288
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p4

    .line 1290
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_34

    .line 1295
    :cond_4b
    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_52

    goto :goto_34

    .line 1300
    :cond_52
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_62

    .line 1301
    invoke-virtual {p3, v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isViewVisible(Z)Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    .line 1303
    :goto_63
    invoke-virtual {p3, v0}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_34

    .line 1307
    :cond_6a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    const-string v3, "appear"

    if-eqz v2, :cond_92

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getCellPositionINScollable()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " result "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    if-ne v0, v1, :cond_95

    goto :goto_97

    :cond_95
    const-string v3, "disappear"

    .line 1310
    :goto_97
    invoke-virtual {p4, v3, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_9b
    return-void
.end method

.method public onBeforeScroll(II)V
    .registers 13

    .line 590
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 591
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_133

    if-nez p1, :cond_e

    goto/16 :goto_133

    .line 594
    :cond_e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1b

    return-void

    .line 598
    :cond_1b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    .line 602
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 603
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 604
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_24

    .line 606
    instance-of v3, v2, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v3, :cond_24

    .line 608
    move-object v3, v2

    check-cast v3, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 609
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_46

    return-void

    :cond_46
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 614
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v4, v4, [I

    .line 616
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/Scrollable;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 617
    aget v5, v5, v2

    aget v4, v4, v2

    sub-int/2addr v5, v4

    .line 623
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    .line 624
    instance-of v6, v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v7, 0x0

    if-nez v6, :cond_b6

    instance-of v6, v4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v6, :cond_7d

    goto :goto_b6

    .line 639
    :cond_7d
    instance-of v6, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v6, :cond_b3

    const/4 v6, 0x3

    new-array v6, v6, [I

    .line 641
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v8

    aget v8, v8, v7

    .line 642
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v4

    aget v4, v4, v7

    .line 643
    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-le v6, v8, :cond_ae

    .line 645
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v9

    if-lez v9, :cond_ab

    if-ge v8, v6, :cond_ab

    if-gt v6, v4, :cond_ab

    .line 646
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    if-gt v5, v4, :cond_ab

    goto :goto_ae

    :cond_ab
    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_df

    :cond_ae
    :goto_ae
    if-le v6, v1, :cond_b1

    move v1, v6

    :cond_b1
    :goto_b1
    const/4 v4, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v4, 0x0

    :goto_b4
    const/4 v6, 0x0

    goto :goto_df

    .line 625
    :cond_b6
    :goto_b6
    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v6

    .line 626
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    .line 627
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 628
    invoke-virtual {v3, v8}, Lcom/taobao/weex/ui/component/list/WXCell;->setScrollPositon(I)V

    if-le v8, v6, :cond_db

    .line 630
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v9

    if-lez v9, :cond_ab

    if-ge v6, v8, :cond_ab

    if-gt v8, v4, :cond_ab

    .line 631
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    if-gt v5, v4, :cond_ab

    :cond_db
    if-le v8, v1, :cond_b1

    move v1, v8

    goto :goto_b1

    :goto_df
    if-eqz v4, :cond_f1

    .line 657
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getLocationFromStart()I

    move-result v4

    if-ltz v4, :cond_f1

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    if-gt v5, v4, :cond_f1

    if-ltz p2, :cond_f1

    const/4 v4, 0x1

    goto :goto_f2

    :cond_f1
    const/4 v4, 0x0

    .line 658
    :goto_f2
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getLocationFromStart()I

    move-result v8

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v9

    if-gt v8, v9, :cond_105

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v8

    if-le v5, v8, :cond_105

    if-gtz p2, :cond_105

    goto :goto_106

    :cond_105
    const/4 v2, 0x0

    :goto_106
    if-eqz v4, :cond_10f

    .line 660
    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2, v3}, Lcom/taobao/weex/ui/component/list/ListComponentView;->notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V

    goto :goto_119

    :cond_10f
    if-nez v2, :cond_113

    if-eqz v6, :cond_119

    .line 662
    :cond_113
    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2, v3}, Lcom/taobao/weex/ui/component/list/ListComponentView;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 664
    :cond_119
    :goto_119
    invoke-virtual {v3, v5}, Lcom/taobao/weex/ui/component/list/WXCell;->setLocationFromStart(I)V

    goto/16 :goto_24

    :cond_11e
    if-ltz v1, :cond_126

    .line 669
    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1, v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->updateStickyView(I)V

    goto :goto_133

    .line 671
    :cond_126
    instance-of p2, p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz p2, :cond_133

    .line 672
    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getStickyHeaderHelper()Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->clearStickyHeaders()V

    :cond_133
    :goto_133
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 94
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 901
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->setComponentUsing(Z)V

    .line 902
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object v1

    .line 903
    instance-of v2, v1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_31

    .line 904
    check-cast v1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/ListStanceCell;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p2

    .line 905
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 906
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 907
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 909
    :cond_31
    instance-of v2, v1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_175

    .line 910
    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v1, :cond_103

    .line 911
    instance-of v2, v1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-nez v2, :cond_103

    instance-of v2, v1, Lcom/taobao/weex/ui/component/WXLoading;

    if-nez v2, :cond_103

    .line 914
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v2

    if-eqz v2, :cond_49

    goto/16 :goto_103

    .line 937
    :cond_49
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v2, :cond_175

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v2, :cond_175

    .line 938
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 939
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 940
    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->onRenderFinish(I)V

    .line 942
    :cond_63
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    if-eqz v1, :cond_102

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/DragHelper;->isDraggable()Z

    move-result v1

    if-nez v1, :cond_6f

    goto/16 :goto_102

    .line 945
    :cond_6f
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    const-string v2, "longpress"

    if-nez v1, :cond_76

    move-object v1, v2

    :cond_76
    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    .line 947
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 949
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v5, "dragExcluded"

    .line 950
    invoke-virtual {v3, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 952
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v5, p1, v3}, Lcom/taobao/weex/ui/component/list/DragHelper;->setDragExcluded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 955
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    const-string v6, "pan"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 956
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v0, v4}, Lcom/taobao/weex/ui/component/list/DragHelper;->setLongPressDragEnabled(Z)V

    const-string v0, "dragAnchor"

    .line 958
    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findComponentByAnchorName(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_c6

    .line 960
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c6

    if-nez v3, :cond_c6

    .line 961
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    .line 962
    new-instance v0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_175

    .line 972
    :cond_c6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_175

    if-nez v3, :cond_d7

    .line 974
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string p2, "[error] onBindViewHolder: the anchor component or view is not found"

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_175

    .line 976
    :cond_d7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is drag excluded"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_175

    .line 981
    :cond_f4
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_175

    .line 982
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/component/list/DragHelper;->setLongPressDragEnabled(Z)V

    goto :goto_175

    :cond_102
    :goto_102
    return-void

    .line 916
    :cond_103
    :goto_103
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_11f

    .line 917
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind WXRefresh & WXLoading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_11f
    instance-of p2, v1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p2, :cond_175

    .line 920
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_175

    .line 921
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string v0, "holderBackground"

    invoke-virtual {p2, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_141

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p2

    const-string v2, "backgroundColor"

    invoke-virtual {p2, v2}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_175

    .line 922
    :cond_141
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_154

    .line 925
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p2

    goto :goto_160

    .line 927
    :cond_154
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/WXStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p2

    .line 929
    :goto_160
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 930
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 931
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_175
    :goto_175
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .registers 7

    int-to-long v0, p2

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    .line 1005
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForRefreshComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    .line 1007
    :cond_c
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    if-eqz p1, :cond_83

    .line 1008
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-nez p1, :cond_19

    .line 1009
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    .line 1010
    :cond_19
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1011
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->checkRecycledViewPool(I)V

    if-nez p1, :cond_29

    .line 1013
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    :cond_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1015
    :goto_2b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_83

    .line 1016
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_80

    .line 1018
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isUsing()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_80

    .line 1021
    :cond_40
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 1022
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    .line 1024
    :cond_4b
    instance-of p1, v2, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz p1, :cond_6b

    .line 1025
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 1026
    new-instance p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {p1, v2, p2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-object p1

    .line 1028
    :cond_5b
    invoke-virtual {v2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    .line 1029
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 1030
    invoke-virtual {v2, v2}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 1031
    new-instance p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    const/4 v0, 0x1

    invoke-direct {p1, v2, p2, v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    return-object p1

    .line 1033
    :cond_6b
    instance-of p1, v2, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p1, :cond_74

    .line 1034
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForRefreshComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    .line 1036
    :cond_74
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v0, "List cannot include element except cell\u3001header\u3001fixed\u3001refresh and loading"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    :cond_80
    :goto_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1042
    :cond_83
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 1043
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find request viewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_9f
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 94
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z
    .registers 5

    .line 1224
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1225
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 94
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onHostViewInitialized(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onHostViewInitialized(Landroid/view/ViewGroup;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 214
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->onHostViewInitialized(Landroid/view/View;)V

    .line 216
    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 217
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_59

    .line 221
    :cond_12
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "prefetchGapDisable"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 222
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 223
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setItemPrefetchEnabled(Z)V

    .line 227
    :cond_38
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_44

    .line 228
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v0, "children is null"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_44
    new-instance v0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    new-instance v2, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;-><init>(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/taobao/weex/ui/component/list/EventTrigger;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    .line 239
    invoke-direct {p0, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getTriggerType(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    return-void

    .line 218
    :cond_59
    :goto_59
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v0, "RecyclerView is not found or Adapter is not bound"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadMore(I)V
    .registers 5

    const-string v0, "loadmore"

    .line 1250
    :try_start_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v1

    .line 1252
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v1, "0"

    .line 1257
    :cond_12
    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    int-to-float p1, p1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_66

    .line 1259
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 1260
    iget p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_40

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_66

    .line 1262
    :cond_40
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireEvent(Ljava/lang/String;)V

    .line 1263
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    const/4 p1, 0x0

    .line 1264
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    goto :goto_66

    :catch_4f
    move-exception p1

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onLoadMore :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 94
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .registers 7

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 877
    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->setComponentUsing(Z)V

    if-eqz p1, :cond_24

    .line 879
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->canRecycled()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 880
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 881
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isUsing()Z

    move-result v2

    if-nez v2, :cond_24

    .line 882
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->recycled()V

    goto :goto_2b

    .line 885
    :cond_24
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v2, "this holder can not be allowed to  recycled"

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :goto_2b
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 888
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recycle holder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  Thread:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 7

    .line 830
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p2, :cond_b

    .line 832
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->detachViewAndClearPreInfo()Landroid/view/View;

    .line 834
    :cond_b
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->unBindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 836
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_17

    return-void

    .line 842
    :cond_17
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string v3, "deleteAnimation"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "default"

    .line 843
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 847
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_41

    .line 849
    :cond_36
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 852
    :goto_41
    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemRemoved(I)V

    .line 853
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 854
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeChild child at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    :cond_66
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public resetLoadmore()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1331
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z

    const/4 v0, 0x0

    .line 1332
    iput v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    return-void
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .registers 7
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

    .line 549
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

    .line 550
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v2, :cond_55

    .line 553
    :try_start_2b
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

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

    .line 555
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

    :cond_55
    :goto_55
    float-to-int p2, v1

    .line 562
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_5f

    return-void

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    if-eqz p1, :cond_6f

    .line 570
    instance-of v3, p1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v3, :cond_6a

    .line 571
    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    goto :goto_6f

    .line 574
    :cond_6a
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    goto :goto_60

    :cond_6f
    :goto_6f
    if-eqz v2, :cond_88

    .line 578
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_7b

    return-void

    .line 583
    :cond_7b
    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    .line 584
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V

    :cond_88
    return-void
.end method

.method public scrollTo(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1594
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "scrollTop"

    .line 1595
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1596
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    .line 1597
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_23

    return-void

    .line 1601
    :cond_23
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 1602
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3a

    float-to-int p1, p1

    .line 1603
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v3, p1, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    goto :goto_42

    :cond_3a
    float-to-int p1, p1

    .line 1605
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    :goto_42
    if-eqz p2, :cond_53

    .line 1628
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "success"

    .line 1629
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_53
    return-void
.end method

.method public setBounce(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "bounce"
    .end annotation

    .line 1583
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 1584
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    .line 1586
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOverScrollMode(I)V

    goto :goto_1f

    :cond_1b
    const/4 p1, 0x2

    .line 1588
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOverScrollMode(I)V

    :goto_1f
    return-void
.end method

.method public setDraggable(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "draggable"
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    if-eqz v0, :cond_7

    .line 467
    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/component/list/DragHelper;->setDraggable(Z)V

    .line 469
    :cond_7
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set draggable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 205
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 206
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isLayoutRTL()Z

    move-result v0

    .line 207
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 209
    :cond_11
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method public setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .registers 8

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_10

    .line 184
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 186
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_30

    .line 188
    :cond_10
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2d

    .line 189
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x35

    .line 191
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 192
    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_30

    :cond_25
    const/16 v1, 0x33

    .line 194
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 195
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_30

    .line 198
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

    .line 460
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    .line 461
    iput p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_8e

    goto :goto_44

    :sswitch_e
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_44

    :cond_17
    const/4 v3, 0x4

    goto :goto_44

    :sswitch_19
    const-string v0, "offsetAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_44

    :cond_22
    const/4 v3, 0x3

    goto :goto_44

    :sswitch_24
    const-string v0, "loadmoreoffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_44

    :cond_2d
    const/4 v3, 0x2

    goto :goto_44

    :sswitch_2f
    const-string v0, "showScrollbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_44

    :cond_38
    const/4 v3, 0x1

    goto :goto_44

    :sswitch_3a
    const-string v0, "draggable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    packed-switch v3, :pswitch_data_a4

    .line 446
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 429
    :pswitch_4c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 430
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setScrollable(Z)V

    return v2

    :pswitch_5c
    const/16 p1, 0xa

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 434
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setOffsetAccuracy(I)V

    :pswitch_6d
    return v2

    :pswitch_6e
    const/4 p1, 0x0

    .line 441
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_7c

    .line 443
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setShowScrollbar(Z)V

    :cond_7c
    return v2

    .line 437
    :pswitch_7d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 438
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setDraggable(Z)V

    return v2

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x12260273 -> :sswitch_3a
        -0xd52a857 -> :sswitch_2f
        -0x6b59672 -> :sswitch_24
        -0x55c154 -> :sswitch_19
        0x3f94da7 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_6e
        :pswitch_6d
        :pswitch_5c
        :pswitch_4c
    .end packed-switch
.end method

.method public setScrollLeft(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollLeft"
    .end annotation

    .line 1647
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_9

    return-void

    .line 1651
    :cond_9
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 1652
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    .line 1653
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    return-void
.end method

.method public setScrollTop(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollTop"
    .end annotation

    .line 1636
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_9

    return-void

    .line 1640
    :cond_9
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 1641
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    const/4 v1, 0x0

    float-to-int p1, p1

    .line 1642
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    .line 451
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isScrollable:Z

    .line 452
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 454
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setScrollable(Z)V

    :cond_13
    return-void
.end method

.method public setShowScrollbar(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showScrollbar"
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_3b

    .line 479
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 480
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_3b

    .line 482
    :cond_2c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public setSpecialEffects(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1504
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz v0, :cond_8e

    if-eqz p1, :cond_7e

    const-string v0, "id"

    .line 1505
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1506
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1507
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 1508
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isNestParent"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "instanceId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "listParentId"

    .line 1510
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V

    const-string v0, "headerHeight"

    .line 1512
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    .line 1513
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->callBackNestParent(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_8e

    .line 1515
    :cond_7e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x0

    .line 535
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    return-void
.end method

.method public unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 540
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    return-void
.end method

.method public unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    .line 402
    const-class v0, Lcom/taobao/weex/ui/component/WXHeader;

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXHeader;

    if-eqz p1, :cond_22

    .line 403
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 404
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    :cond_22
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.BasicListComponent.AnonymousClass1 (com.taobao.weex.ui.component.list.BasicListComponent$1)
.class Lcom/taobao/weex/ui/component/list/BasicListComponent$1;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/EventTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->onHostViewInitialized(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public triggerEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.BasicListComponent.AnonymousClass2 (com.taobao.weex.ui.component.list.BasicListComponent$2)
.class Lcom/taobao/weex/ui/component/list/BasicListComponent$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BasicListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 9

    .line 330
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 331
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrollStateChanged(I)V

    .line 332
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_41

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_41

    .line 337
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_29

    goto :goto_41

    .line 340
    :cond_29
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v4, :cond_3e

    .line 342
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3e

    .line 344
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 345
    invoke-interface {v4, p1, v2, v5, p2}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrollStateChanged(Landroid/view/View;III)V

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_41
    :goto_41
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 9

    .line 354
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 355
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 356
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 358
    :try_start_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v1, :cond_19

    .line 360
    instance-of v2, v1, Lcom/taobao/weex/common/ICheckBindingScroller;

    if-eqz v2, :cond_3f

    .line 361
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/common/ICheckBindingScroller;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/taobao/weex/common/ICheckBindingScroller;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 362
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V

    goto :goto_19

    .line 365
    :cond_3f
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_42} :catch_43

    goto :goto_19

    :catch_43
    move-exception p1

    .line 370
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_47
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.BasicListComponent.AnonymousClass3 (com.taobao.weex.ui.component.list.BasicListComponent$3)
.class Lcom/taobao/weex/ui/component/list/BasicListComponent$3;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .line 381
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    return-void

    .line 383
    :cond_b
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$000(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 384
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2a

    .line 385
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_31

    .line 387
    :cond_2a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_31
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.BasicListComponent.AnonymousClass4 (com.taobao.weex.ui.component.list.BasicListComponent$4)
.class Lcom/taobao/weex/ui/component/list/BasicListComponent$4;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$4;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 516
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$4;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$100(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 517
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$4;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->notifyAppearStateChange(IIII)V

    :cond_e
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.BasicListComponent.AnonymousClass5 (com.taobao.weex.ui.component.list.BasicListComponent$5)
.class Lcom/taobao/weex/ui/component/list/BasicListComponent$5;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroid/view/ViewGroup;)V
    .registers 3

    .line 759
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 762
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 763
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v0

    .line 765
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 766
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    if-lez v1, :cond_43

    .line 769
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->val$view:Landroid/view/ViewGroup;

    check-cast v3, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v3}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_52

    .line 771
    :cond_43
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->val$view:Landroid/view/ViewGroup;

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 774
    :goto_52
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->val$view:Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutFrozen(Z)V

    .line 775
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$202(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    .line 776
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$302(Lcom/taobao/weex/ui/component/list/BasicListComponent;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_68
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.BasicListComponent.AnonymousClass6 (com.taobao.weex.ui.component.list.BasicListComponent$6)
.class Lcom/taobao/weex/ui/component/list/BasicListComponent$6;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

.field final synthetic val$holder:Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .registers 3

    .line 962
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;->val$holder:Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 965
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result p1

    if-nez p1, :cond_11

    .line 966
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$400(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/list/DragHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;->val$holder:Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-interface {p1, p2}, Lcom/taobao/weex/ui/component/list/DragHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

###### Class com.taobao.weex.ui.component.list.BasicListComponent.AnonymousClass7 (com.taobao.weex.ui.component.list.BasicListComponent$7)
.class Lcom/taobao/weex/ui/component/list/BasicListComponent$7;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BasicListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFirstEvent:Z

.field private offsetXCorrection:I

.field private offsetYCorrection:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V
    .registers 2

    .line 1344
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x1

    .line 1346
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->mFirstEvent:Z

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 7

    .line 1350
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1356
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 1357
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_17

    if-nez p3, :cond_17

    .line 1360
    iput v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->offsetXCorrection:I

    .line 1361
    iput v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->offsetYCorrection:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1d

    .line 1365
    :cond_17
    iget p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->offsetXCorrection:I

    sub-int/2addr v0, p2

    .line 1366
    iget p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->offsetYCorrection:I

    sub-int/2addr v1, p2

    .line 1368
    :goto_1d
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 1369
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p2

    const-string p3, "scroll"

    invoke-virtual {p2, p3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    return-void

    .line 1372
    :cond_35
    iget-boolean p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->mFirstEvent:Z

    if-eqz p2, :cond_3c

    .line 1374
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->mFirstEvent:Z

    return-void

    .line 1378
    :cond_3c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 1379
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p2

    if-nez p2, :cond_47

    return-void

    .line 1383
    :cond_47
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {p2, v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$500(Lcom/taobao/weex/ui/component/list/BasicListComponent;II)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 1384
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-static {p2, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->access$600(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_54
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.BasicListComponent.DragTriggerType (com.taobao.weex.ui.component.list.BasicListComponent$DragTriggerType)
.class interface abstract Lcom/taobao/weex/ui/component/list/BasicListComponent$DragTriggerType;
.super Ljava/lang/Object;
.source "BasicListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DragTriggerType"
.end annotation


# static fields
.field public static final LONG_PRESS:Ljava/lang/String; = "longpress"

.field public static final PAN:Ljava/lang/String; = "pan"
