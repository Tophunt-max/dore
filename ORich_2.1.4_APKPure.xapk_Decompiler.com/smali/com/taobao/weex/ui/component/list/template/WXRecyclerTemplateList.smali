###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList)
.class public Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;
.implements Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;
.implements Lcom/taobao/weex/ui/component/Scrollable;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;",
        ">;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener<",
        "Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;",
        ">;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
        "Lcom/taobao/weex/ui/component/Scrollable;"
    }
.end annotation


# static fields
.field private static final APPEAR_CHANGE_RUNNABLE_DELAY:J = 0x32L

.field private static final EMPTY_HOLDER_TEMPLATE_KEY:Ljava/lang/String; = ""

.field public static final ENABLE_TRACE_LOG:Z = false

.field private static final NAME_HAS_FIXED_SIZE:Ljava/lang/String; = "hasFixedSize"

.field private static final NAME_ITEM_VIEW_CACHE_SIZE:Ljava/lang/String; = "itemViewCacheSize"

.field private static final NAME_TEMPLATE_CACHE_SIZE:Ljava/lang/String; = "templateCacheSize"

.field public static final TAG:Ljava/lang/String; = "WXRecyclerTemplateList"


# instance fields
.field private cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

.field private cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

.field private defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

.field private defaultTemplateKey:Ljava/lang/String;

.field private hasAppendTreeDone:Z

.field private hasLayoutDone:Z

.field private isScrollable:Z

.field private listDataIndexKey:Ljava/lang/String;

.field private listDataItemKey:Ljava/lang/String;

.field private listDataKey:Ljava/lang/String;

.field private listDataTemplateKey:Ljava/lang/String;

.field private listUpdateRunnable:Ljava/lang/Runnable;

.field private mAppearChangeRunnable:Ljava/lang/Runnable;

.field private mAppearHelpers:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mColumnCount:I

.field protected mColumnGap:F

.field protected mColumnWidth:F

.field private mDisAppearWatchList:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mLastReport:Landroid/graphics/Point;

.field protected mLayoutType:I

.field private mListCellCount:I

.field private mOffsetAccuracy:I

.field private mPaddingLeft:F

.field private mPaddingRight:F

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

.field private mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

.field private mTemplateSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateViewTypes:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/template/TemplateCache;",
            ">;"
        }
    .end annotation
.end field

.field private mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

.field private orientation:I

.field private templateCacheSize:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 7

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 v0, 0x1

    .line 115
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    .line 116
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    const/4 v1, 0x0

    .line 117
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    .line 118
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnWidth:F

    .line 122
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    const/4 v1, 0x0

    .line 123
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    .line 124
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z

    .line 130
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    .line 135
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->isScrollable:Z

    const/16 v0, 0xa

    .line 136
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    .line 137
    new-instance v0, Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    .line 138
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mHasAddScrollEvent:Z

    const-string v0, "listData"

    .line 142
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    const-string v2, "case"

    .line 149
    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    const/4 v2, 0x2

    .line 152
    iput v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    const-string v2, "@default_template_cell"

    .line 159
    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 176
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    .line 184
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    .line 186
    new-instance v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    invoke-direct {v2}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    .line 188
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 194
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    .line 199
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    .line 203
    invoke-direct {p0, p1, p3, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initRecyclerTemplateList(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/action/BasicComponentData;Lcom/taobao/weex/ui/component/WXVContainer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/CellDataManager;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Ljava/lang/Runnable;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Z)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->checkAppendDone(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;II)Z
    .registers 3

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->shouldReport(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method private calcContentSize()I
    .registers 4

    .line 1766
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 1769
    :goto_9
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1770
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v2

    if-eqz v2, :cond_20

    int-to-float v0, v0

    .line 1772
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutHeight()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_23
    return v0
.end method

.method private checkAppendDone(Z)V
    .registers 3

    .line 809
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 812
    :cond_9
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 813
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 814
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_2c
    const/4 p1, 0x1

    .line 818
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    .line 819
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    if-eqz p1, :cond_36

    .line 820
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_36
    return-void
.end method

.method public static doCreateCellViewBindData(Lcom/taobao/weex/ui/component/list/WXCell;Ljava/lang/String;Z)V
    .registers 3

    .line 1971
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isLazy()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_16

    .line 1972
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 p1, 0x0

    .line 1973
    invoke-static {p0, p1}, Lcom/taobao/weex/ui/component/binding/Statements;->initLazyComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 1974
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    :cond_16
    return-void
.end method

.method private doRenderTemplate(Lcom/taobao/weex/ui/component/list/WXCell;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            "I)",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->clear()V

    .line 1442
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1443
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v1, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v1

    .line 1444
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iput-object v1, v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 1445
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iput-object p0, v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 1446
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iput p2, v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->position:I

    .line 1448
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 1449
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iget-object v3, v3, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->map:Ljava/util/Map;

    .line 1450
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_5c

    .line 1451
    invoke-virtual {v2, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 1452
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v5, v5, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1454
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    new-instance v5, Lcom/taobao/weex/ui/component/list/template/PositionRef;

    invoke-direct {v5, v1}, Lcom/taobao/weex/ui/component/list/template/PositionRef;-><init>(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    :cond_4b
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 1457
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 1459
    :cond_59
    invoke-virtual {v2, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 1462
    :cond_5c
    :goto_5c
    iget-wide v2, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_67

    .line 1463
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemId(I)J

    .line 1465
    :cond_67
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/binding/Statements;->doRender(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;)Ljava/util/List;

    move-result-object p1

    .line 1466
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->isDirty()Z

    move-result p2

    if-eqz p2, :cond_76

    .line 1467
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->resetDirty()V

    :cond_76
    return-object p1
.end method

.method private findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;
    .registers 3

    .line 439
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v0, :cond_7

    .line 440
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    return-object p1

    :cond_7
    if-eqz p1, :cond_15

    .line 443
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_15

    .line 446
    :cond_10
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private fireScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1199
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object p1

    const-string p2, "scroll"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private getCellTemplateFromCache(Ljava/lang/String;)Lcom/taobao/weex/ui/component/list/WXCell;
    .registers 7

    .line 1907
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    if-eqz v0, :cond_1f

    .line 1909
    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 1910
    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    if-eqz v0, :cond_26

    .line 1912
    iget-boolean v2, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    if-nez v2, :cond_5f

    :cond_26
    if-nez v0, :cond_32

    .line 1914
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateCache;-><init>()V

    .line 1915
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    const/4 v2, 0x1

    .line 1917
    iput-boolean v2, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    .line 1918
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v0, :cond_5f

    .line 1920
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "preload"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1922
    new-instance v2, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    invoke-direct {v2, p1, v0, p0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;-><init>(Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    .line 1923
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->startTask()V

    :cond_5f
    return-object v1
.end method

.method private getCellTemplateItemType(Lcom/taobao/weex/ui/component/list/WXCell;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 1528
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1529
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "case"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 1530
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1531
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-ne p1, v2, :cond_1f

    .line 1532
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 1534
    :cond_1f
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_28

    return v0

    :cond_28
    return p1

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method private initRecyclerTemplateList(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/action/BasicComponentData;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .registers 5

    .line 209
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 211
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    const/4 p3, 0x0

    .line 212
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p1, v0, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    .line 214
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 215
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    .line 216
    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXAttr;->getOrientation()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    .line 217
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string p2, "switch"

    invoke-virtual {p1, p2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "case"

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string p2, "alias"

    invoke-virtual {p1, p2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string p2, "index"

    invoke-virtual {p1, p2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    .line 220
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    .line 221
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string p3, "listData"

    invoke-virtual {p2, p3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->parseListDataToJSONArray(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    iput-object p2, p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method private parseListDataToJSONArray(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;
    .registers 4

    .line 2006
    :try_start_0
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_7

    .line 2007
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    return-object p1

    .line 2009
    :cond_7
    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_39

    .line 2010
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v0, "listData"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p1

    :catch_1e
    move-exception p1

    .line 2014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseListDataException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WXRecyclerTemplateList"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    :cond_39
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    return-object p1
.end method

.method private removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1276
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_e

    .line 1277
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_1b

    .line 1278
    :cond_e
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_1b

    .line 1279
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private declared-synchronized renderTemplateCellWithData(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .registers 5

    monitor-enter p0

    .line 1946
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRenderData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_54

    .line 1947
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 1948
    monitor-enter p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_56

    .line 1949
    :try_start_18
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRenderData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 1950
    invoke-static {p1}, Lcom/taobao/weex/ui/component/binding/Statements;->parseStatementsToken(Lcom/taobao/weex/ui/component/WXComponent;)V

    const/4 v0, 0x0

    .line 1951
    :goto_22
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 1952
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v1

    if-ne p1, v1, :cond_4c

    .line 1953
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1954
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doRenderTemplate(Lcom/taobao/weex/ui/component/list/WXCell;I)Ljava/util/List;

    .line 1955
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getLayoutWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getLayoutHeight()F

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutSync(Lcom/taobao/weex/ui/component/list/WXCell;FF)V

    .line 1956
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/component/list/WXCell;->setRenderData(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1961
    :cond_4f
    :goto_4f
    monitor-exit p0

    goto :goto_54

    :catchall_51
    move-exception p1

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_18 .. :try_end_53} :catchall_51

    :try_start_53
    throw p1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_56

    .line 1964
    :cond_54
    :goto_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private safeGetListData(I)Ljava/lang/Object;
    .registers 3

    .line 1746
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    const-string p1, "{}"

    .line 1747
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V
    .registers 11

    .line 450
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_71

    .line 452
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_71

    .line 455
    :cond_15
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v0

    .line 456
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellTemplateItemType(Lcom/taobao/weex/ui/component/list/WXCell;)I

    move-result v0

    if-gez v0, :cond_20

    return-void

    .line 460
    :cond_20
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_3c

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    const/4 v2, 0x0

    .line 466
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 467
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    move-object v2, v4

    :cond_60
    if-eqz v2, :cond_66

    .line 473
    invoke-virtual {v2, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    goto :goto_71

    .line 475
    :cond_66
    new-instance v2, Lcom/taobao/weex/ui/component/AppearanceHelper;

    invoke-direct {v2, p1, v0}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 476
    invoke-virtual {v2, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    .line 477
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_71
    :goto_71
    return-void
.end method

.method private setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 7

    .line 1250
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 1251
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 1252
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v4, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;

    invoke-direct {v4, p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v4}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 1261
    :cond_2c
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 1262
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 1263
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v4, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;

    invoke-direct {v4, p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v4}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_55
    const/4 p1, 0x0

    return p1
.end method

.method private shouldReport(II)Z
    .registers 7

    .line 1225
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_17

    .line 1226
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1227
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v1

    .line 1231
    :cond_17
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1232
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1234
    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    if-ge v0, v3, :cond_32

    if-lt v2, v3, :cond_30

    goto :goto_32

    :cond_30
    const/4 p1, 0x0

    return p1

    .line 1235
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1236
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v1
.end method

.method private updateRecyclerAttr()V
    .registers 9

    .line 933
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getLayoutType()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    .line 934
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    if-gtz v0, :cond_67

    .line 935
    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_67

    .line 936
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 937
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getComponentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "componentType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "attribute"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stackTrace"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_LIST_INVALID_COLUMN_COUNT:Lcom/taobao/weex/common/WXErrorCode;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    .line 944
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "You are trying to set the list/recycler/vlist/waterfall\'s column to %d, which is illegal. The column count should be a positive integer"

    .line 942
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "columnCount"

    .line 940
    invoke-static {v2, v3, v5, v4, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 946
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    .line 948
    :cond_67
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getColumnGap()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    .line 949
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getColumnWidth()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnWidth:F

    .line 950
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingLeft:F

    .line 951
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingRight:F

    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, -0x1

    .line 736
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 6

    .line 749
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v0, :cond_7

    .line 750
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 752
    :cond_7
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p2, :cond_c

    return-void

    :cond_c
    if-eqz v0, :cond_9b

    .line 756
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    if-eqz p2, :cond_91

    .line 757
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string v0, "case"

    invoke-virtual {p2, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    .line 758
    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 759
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "switch"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 760
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v1, :cond_72

    .line 761
    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 762
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 763
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    goto :goto_72

    .line 765
    :cond_41
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 766
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 770
    :cond_4b
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v1, :cond_5b

    .line 771
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 772
    :cond_5b
    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 773
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 774
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    goto :goto_72

    .line 776
    :cond_69
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 777
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    :goto_72
    if-eqz p2, :cond_91

    .line 788
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_91

    .line 790
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :cond_91
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    new-instance p2, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;

    invoke-direct {p2, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/list/WXCell;->setCellAppendTreeListener(Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;)V

    :cond_9b
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 1150
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    .line 1151
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 1152
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 1153
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mHasAddScrollEvent:Z

    if-nez p1, :cond_36

    const/4 p1, 0x1

    .line 1155
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mHasAddScrollEvent:Z

    .line 1156
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 1157
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_36
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public appendData(Lcom/alibaba/fastjson/JSONArray;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-eqz p1, :cond_3f

    .line 1025
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3f

    .line 1028
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_18

    .line 1029
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 1031
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-gez v0, :cond_23

    const/4 v0, 0x0

    .line 1035
    :cond_23
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_2e

    .line 1036
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 1038
    :cond_2e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemRangeInserted(II)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public appendRange(ILcom/alibaba/fastjson/JSONArray;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1060
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->insertRange(ILcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 483
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 484
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_10

    .line 485
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 494
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 495
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 496
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    return-void
.end method

.method public bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 5

    const/4 v0, 0x1

    .line 502
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 503
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_f

    .line 504
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 513
    :cond_f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 514
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 515
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2d
    return-void
.end method

.method public bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 411
    const-class v0, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findParentType(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 415
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-nez v0, :cond_e

    return-void

    .line 418
    :cond_e
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 419
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_2c
    return-void
.end method

.method public calcContentOffset(Landroidx/recyclerview/widget/RecyclerView;)I
    .registers 7

    .line 1779
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 1780
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 1781
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    :goto_11
    if-ge v1, v0, :cond_24

    .line 1784
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_21

    :cond_1a
    int-to-float v2, v2

    .line 1788
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutHeight()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1791
    :cond_24
    instance-of v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_30

    .line 1792
    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 1793
    div-int/2addr v2, v1

    .line 1795
    :cond_30
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 1797
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3b
    return v2

    .line 1800
    :cond_3c
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_6f

    .line 1801
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v2

    const/4 v3, 0x0

    .line 1802
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    aget v0, v0, v1

    const/4 v3, 0x0

    :goto_4f
    if-ge v1, v0, :cond_62

    .line 1805
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v4

    if-nez v4, :cond_58

    goto :goto_5f

    :cond_58
    int-to-float v3, v3

    .line 1809
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutHeight()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 1811
    :cond_62
    div-int/2addr v3, v2

    .line 1813
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 1815
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr v3, p1

    :cond_6e
    return v3

    :cond_6f
    const/4 p1, -0x1

    return p1
.end method

.method public closest(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    const/4 v0, 0x4

    :try_start_1
    const-string v1, "@"

    .line 585
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 586
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 587
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 588
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findVirtualComponentByVRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_1c

    return-void

    .line 592
    :cond_1c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_54

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_54

    .line 595
    :cond_2f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 596
    invoke-static {p1, p2, v4}, Lcom/taobao/weex/ui/component/list/template/Selector;->closest(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/util/List;)V

    .line 597
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4b

    .line 598
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3, v1, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->toMap(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_63

    .line 600
    :cond_4b
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_55

    goto :goto_63

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception p1

    .line 603
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    const-string p2, "WXRecyclerTemplateList"

    .line 604
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_63
    return-void
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .registers 4

    .line 875
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 876
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public copyComponentFromSourceCell(Lcom/taobao/weex/ui/component/list/WXCell;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 2

    .line 1935
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->renderTemplateCellWithData(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 1936
    invoke-static {p1}, Lcom/taobao/weex/ui/component/binding/Statements;->copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    return-object p1
.end method

.method public copyStack(Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Lcom/taobao/weex/el/parse/ArrayStack;)Lcom/taobao/weex/el/parse/ArrayStack;
    .registers 6

    .line 1473
    new-instance p1, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {p1}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    const/4 v0, 0x0

    .line 1474
    :goto_6
    invoke-virtual {p2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 1475
    invoke-virtual {p2, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1476
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1c

    .line 1477
    new-instance v2, Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    .line 1479
    :cond_1c
    invoke-virtual {p1, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_22
    return-object p1
.end method

.method public createChildViewAt(I)V
    .registers 3

    if-gez p1, :cond_b

    .line 853
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->childCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_b

    return-void

    .line 858
    :cond_b
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    .line 859
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v0, :cond_19

    .line 860
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 861
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    :cond_19
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 1302
    monitor-enter p0

    .line 1303
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 1304
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    .line 1305
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1306
    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 1308
    :cond_19
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1309
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1310
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1313
    :cond_3f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_4a

    .line 1314
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->setListData(Lcom/alibaba/fastjson/JSONArray;)V

    .line 1316
    :cond_4a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-eqz v0, :cond_50

    .line 1317
    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    .line 1319
    :cond_50
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_57

    .line 1320
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1322
    :cond_57
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    if-eqz v0, :cond_5e

    .line 1323
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1325
    :cond_5e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_65

    .line 1326
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1328
    :cond_65
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_6c

    .line 1329
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1331
    :cond_6c
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 1332
    monitor-exit p0

    return-void

    :catchall_71
    move-exception v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_71

    throw v0
.end method

.method public findChildByAttrsRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    .line 1884
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-object p1

    .line 1887
    :cond_17
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_32

    .line 1888
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    .line 1889
    :goto_1e
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 1890
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByAttrsRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    if-eqz v1, :cond_2f

    return-object v1

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method

.method public findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    .line 1840
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 1843
    :cond_b
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_26

    .line 1844
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    .line 1845
    :goto_12
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 1846
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public findChildListByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    .line 1859
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 1863
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1865
    instance-of v2, v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    if-nez v2, :cond_32

    const/4 p1, 0x0

    .line 1866
    :goto_18
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_35

    .line 1867
    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 1868
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1869
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 1873
    :cond_32
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    return-object v0
.end method

.method public findParentType(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 4

    .line 1826
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 1829
    :cond_b
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1830
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCellDataManager()Lcom/taobao/weex/ui/component/list/template/CellDataManager;
    .registers 2

    .line 2000
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    return-object v0
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .registers 15

    .line 1285
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1286
    instance-of p1, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    .line 1287
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_27

    :cond_12
    if-nez p2, :cond_1a

    .line 1289
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_27

    .line 1291
    :cond_1a
    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1292
    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p5

    move v4, p6

    .line 1294
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    :goto_27
    return-object p2
.end method

.method protected getChildrenLayoutTopOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .registers 4

    .line 1545
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1548
    :cond_6
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    if-nez v0, :cond_b

    return v1

    .line 1551
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_12

    return v1

    .line 1554
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1e

    goto :goto_32

    .line 1557
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_32

    .line 1560
    :cond_29
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public getItemId(I)J
    .registers 8

    .line 1576
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v0

    .line 1577
    iget-wide v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_45

    .line 1578
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v1

    .line 1579
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1582
    :cond_1b
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->safeGetListData(I)Ljava/lang/Object;

    move-result-object v1

    .line 1583
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_35

    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "keyItemId"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1584
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    goto :goto_45

    .line 1586
    :cond_35
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x18

    shl-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 1588
    iput-wide v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    .line 1591
    :cond_45
    :goto_45
    iget-wide v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1428
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object p1

    .line 1429
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_14

    .line 1431
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    :cond_14
    return p1
.end method

.method public getOrientation()I
    .registers 2

    .line 724
    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    return v0
.end method

.method public getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;
    .registers 10
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

    .line 1203
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->calcContentOffset(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    neg-int p3, p3

    .line 1204
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    add-int/2addr v0, v1

    .line 1205
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->calcContentSize()I

    move-result v1

    .line 1207
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1208
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1209
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    int-to-float v0, v0

    .line 1211
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "width"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v0, v1

    .line 1212
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p2, p2

    .line 1214
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v0, "x"

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p2, p3

    .line 1215
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "y"

    invoke-interface {v5, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "contentSize"

    .line 1216
    invoke-interface {v2, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "contentOffset"

    .line 1217
    invoke-interface {v2, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 p2, 0x0

    :goto_8f
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isDragging"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .registers 2

    .line 1981
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_b

    .line 1982
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 1984
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .registers 2

    .line 719
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_14

    .line 720
    :cond_a
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollX()I

    move-result v0

    :goto_14
    return v0
.end method

.method public getScrollY()I
    .registers 2

    .line 713
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_14

    .line 714
    :cond_a
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollY()I

    move-result v0

    :goto_14
    return v0
.end method

.method public getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;
    .registers 3

    .line 1515
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object p1

    .line 1516
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    return-object p1
.end method

.method public getTemplateCacheSize()I
    .registers 2

    .line 1988
    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    return v0
.end method

.method public getTemplateKey(I)Ljava/lang/String;
    .registers 2

    .line 1489
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->safeGetListData(I)Ljava/lang/Object;

    move-result-object p1

    .line 1490
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateKey(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1498
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_d

    .line 1499
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 1501
    :goto_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1502
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz p1, :cond_1b

    .line 1503
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    goto :goto_1d

    :cond_1b
    const-string p1, ""

    :cond_1d
    :goto_1d
    return-object p1
.end method

.method public getTemplatesCache()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/template/TemplateCache;",
            ">;"
        }
    .end annotation

    .line 1992
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_b

    .line 1993
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1995
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .registers 10

    .line 254
    new-instance v6, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;-><init>(Landroid/content/Context;IIFI)V

    .line 255
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v0, "transform"

    .line 256
    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 258
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v2

    invoke-static {v2, v0}, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->parseTransforms(ILjava/lang/String;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 260
    :cond_30
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const-string v0, "templateCacheSize"

    .line 262
    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 263
    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    :cond_58
    const-string v0, "itemViewCacheSize"

    .line 268
    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_6e

    .line 269
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x2

    :goto_6f
    const-string v1, "hasFixedSize"

    .line 271
    invoke-virtual {p1, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_89

    .line 272
    invoke-virtual {p1, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_8a

    :cond_89
    const/4 p1, 0x0

    .line 274
    :goto_8a
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;)V

    const/4 v3, 0x1

    .line 275
    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->setHasStableIds(Z)V

    .line 276
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    if-eq v0, v2, :cond_a8

    .line 278
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v5, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemViewCacheSize(I)V

    .line 280
    :cond_a8
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 281
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v5, "nestedScrollingEnabled"

    invoke-virtual {v0, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 282
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setNestedScrollingEnabled(Z)V

    .line 285
    :cond_cd
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHasFixedSize(Z)V

    .line 286
    invoke-virtual {v6, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V

    .line 287
    invoke-virtual {v6, v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOverScrollMode(I)V

    .line 288
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->clearOnScrollListeners()V

    .line 289
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 290
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 332
    invoke-virtual {v6}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 347
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    return-object v6
.end method

.method public insertData(ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-le p1, v0, :cond_14

    goto :goto_2d

    .line 1050
    :cond_14
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->insertData(ILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 1052
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    goto :goto_2d

    .line 1054
    :cond_20
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemInserted(I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public insertRange(ILcom/alibaba/fastjson/JSONArray;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-eqz p2, :cond_37

    .line 1071
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_37

    .line 1074
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-le p1, v0, :cond_1a

    goto :goto_37

    .line 1077
    :cond_1a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->insertRange(ILcom/alibaba/fastjson/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1079
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    goto :goto_37

    .line 1081
    :cond_26
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemRangeInserted(II)V

    :cond_37
    :goto_37
    return-void
.end method

.method public isScrollable()Z
    .registers 2

    .line 729
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->isScrollable:Z

    return v0
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .registers 5

    .line 402
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 403
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v0, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    if-le p2, v0, :cond_1a

    .line 404
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAbsoluteY()I

    move-result p2

    sub-int p2, v1, p2

    .line 405
    :cond_1a
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object p1

    return-object p1
.end method

.method public notifyAppearStateChange(IIII)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1632
    iget-object v2, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    if-eqz v2, :cond_1fc

    .line 1633
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->size()I

    move-result v2

    if-gtz v2, :cond_10

    goto/16 :goto_1fc

    .line 1636
    :cond_10
    iget-object v2, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v4, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1638
    iput-object v3, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    :cond_22
    if-lez p4, :cond_27

    const-string v2, "up"

    goto :goto_2d

    :cond_27
    if-gez p4, :cond_2c

    const-string v2, "down"

    goto :goto_2d

    :cond_2c
    move-object v2, v3

    .line 1642
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v4

    if-nez v4, :cond_3c

    if-eqz p3, :cond_3c

    if-lez p3, :cond_3a

    const-string v2, "left"

    goto :goto_3c

    :cond_3a
    const-string v2, "right"

    .line 1645
    :cond_3c
    :goto_3c
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    move/from16 v5, p1

    :goto_4a
    const/4 v6, 0x0

    const-string v7, "disappear"

    if-gt v5, v1, :cond_167

    .line 1647
    invoke-virtual {v0, v5}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemViewType(I)I

    move-result v8

    .line 1648
    iget-object v9, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_63

    goto/16 :goto_163

    .line 1652
    :cond_63
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_67
    :goto_67
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_163

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 1653
    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v10

    if-nez v10, :cond_7a

    goto :goto_67

    .line 1656
    :cond_7a
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v10

    check-cast v10, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-eqz v10, :cond_163

    .line 1657
    invoke-virtual {v10}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v11

    if-nez v11, :cond_8a

    goto/16 :goto_163

    .line 1660
    :cond_8a
    invoke-virtual {v10}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v10

    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildListByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_163

    .line 1661
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_a4

    goto/16 :goto_163

    .line 1665
    :cond_a4
    iget-object v11, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    if-nez v11, :cond_c0

    .line 1667
    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1668
    iget-object v12, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    :cond_c0
    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    if-nez v12, :cond_e0

    .line 1673
    new-instance v12, Landroidx/collection/ArrayMap;

    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1674
    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e0
    const/4 v11, 0x0

    .line 1677
    :goto_e1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_67

    .line 1678
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/weex/ui/component/WXComponent;

    .line 1679
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_f4

    goto :goto_15f

    .line 1682
    :cond_f4
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isViewVisible(Landroid/view/View;)Z

    move-result v14

    .line 1683
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v15

    if-eqz v14, :cond_14b

    .line 1685
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15f

    const-string v14, "appear"

    .line 1686
    invoke-virtual {v13, v14, v2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v14

    if-eqz v14, :cond_142

    .line 1689
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v14

    if-eqz v14, :cond_142

    .line 1690
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_142

    .line 1691
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    goto :goto_143

    :cond_142
    move-object v13, v3

    .line 1693
    :goto_143
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15f

    .line 1696
    :cond_14b
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15f

    .line 1697
    invoke-virtual {v13, v7, v2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15f
    :goto_15f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e1

    :cond_163
    :goto_163
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4a

    .line 1706
    :cond_167
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemCount()I

    move-result v3

    :goto_16b
    if-ge v6, v3, :cond_1fc

    move/from16 v4, p1

    if-lt v6, v4, :cond_177

    if-gt v6, v1, :cond_177

    add-int/lit8 v6, v1, 0x1

    goto/16 :goto_1f8

    .line 1712
    :cond_177
    iget-object v5, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_187

    goto/16 :goto_1f8

    .line 1716
    :cond_187
    iget-object v8, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-virtual {v0, v6}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v8, :cond_196

    return-void

    .line 1720
    :cond_196
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 1721
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19e
    :goto_19e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1ef

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1722
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1723
    invoke-virtual {v0, v8, v10}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v10

    if-nez v10, :cond_1b7

    goto :goto_19e

    .line 1727
    :cond_1b7
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_19e

    .line 1728
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_1c6

    goto :goto_19e

    .line 1731
    :cond_1c6
    invoke-virtual {v10}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v11

    .line 1732
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 1733
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1d2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1eb

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1734
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-virtual {v11, v7, v13}, Lcom/taobao/weex/dom/WXEvent;->putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V

    .line 1735
    invoke-virtual {v10, v7, v2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d2

    .line 1737
    :cond_1eb
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    goto :goto_19e

    .line 1739
    :cond_1ef
    iget-object v5, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16b

    :cond_1fc
    :goto_1fc
    return-void
.end method

.method public notifyUpdateList()V
    .registers 6

    .line 1751
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1752
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_17

    goto :goto_4b

    .line 1756
    :cond_17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_46

    .line 1757
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1758
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b

    .line 1760
    :cond_46
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onBeforeScroll(II)V
    .registers 4

    .line 1596
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-eqz v0, :cond_7

    .line 1597
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->onBeforeScroll(II)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 97
    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onBindViewHolder(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1345
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplate()Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 1349
    :cond_a
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v1

    if-ltz v1, :cond_1d

    .line 1350
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "_detach_slot"

    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1352
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1353
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->setHolderPosition(I)V

    .line 1354
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1355
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v2, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v2

    .line 1356
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRenderData()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_50

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->isDirty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 1357
    :cond_3f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 1361
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "_attach_slot"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 1364
    :cond_50
    invoke-direct {p0, v0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doRenderTemplate(Lcom/taobao/weex/ui/component/list/WXCell;I)Ljava/util/List;

    move-result-object p2

    .line 1365
    invoke-static {p2}, Lcom/taobao/weex/ui/component/binding/Statements;->doInitCompontent(Ljava/util/List;)V

    .line 1366
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/list/WXCell;->setRenderData(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 1367
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutAsync(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;Z)V

    .line 1368
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .registers 7

    .line 1377
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, p2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1378
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 1380
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1381
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1382
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Landroid/view/View;I)V

    return-object v0

    .line 1384
    :cond_2a
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellTemplateFromCache(Ljava/lang/String;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v2

    if-nez v2, :cond_41

    .line 1388
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed()Z

    move-result v3

    if-nez v3, :cond_41

    const/4 v2, 0x1

    .line 1389
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/list/WXCell;->setSourceUsed(Z)V

    .line 1390
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->renderTemplateCellWithData(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 1392
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-object v2, v0

    :cond_41
    if-nez v2, :cond_50

    .line 1398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1399
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->copyComponentFromSourceCell(Lcom/taobao/weex/ui/component/list/WXCell;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 1400
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 1404
    :cond_50
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->isLazy()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5d

    goto :goto_61

    .line 1410
    :cond_5d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    goto :goto_68

    .line 1405
    :cond_61
    :goto_61
    invoke-static {v2, p1, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doCreateCellViewBindData(Lcom/taobao/weex/ui/component/list/WXCell;Ljava/lang/String;Z)V

    .line 1406
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result p1

    .line 1415
    :goto_68
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-direct {p1, p0, v2, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/list/WXCell;I)V

    return-object p1
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 97
    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onFailedToRecycleView(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 97
    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onHostViewInitialized(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;)V
    .registers 3

    .line 385
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->onHostViewInitialized(Landroid/view/View;)V

    .line 386
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    if-eqz p1, :cond_13

    .line 387
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_13

    :cond_12
    return-void

    :cond_13
    :goto_13
    const-string p1, "WXRecyclerTemplateList"

    const-string v0, "RecyclerView is not found or Adapter is not bound"

    .line 388
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadMore(I)V
    .registers 4

    .line 1604
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v0

    .line 1606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "0"

    .line 1609
    :cond_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    int-to-float p1, p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_5b

    .line 1611
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_5b

    .line 1612
    iget p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ne p1, v0, :cond_3c

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_5b

    :cond_3c
    const-string p1, "loadmore"

    .line 1614
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireEvent(Ljava/lang/String;)V

    .line 1615
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    const/4 p1, 0x0

    .line 1616
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_5b

    :catch_4f
    move-exception p1

    .line 1620
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "WXRecyclerTemplateList onLoadMore : "

    .line 1621
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 97
    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onViewRecycled(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V
    .registers 2

    return-void
.end method

.method public queryElement(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    const/4 v0, 0x4

    :try_start_1
    const-string v1, "@"

    .line 533
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 534
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 535
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 536
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findVirtualComponentByVRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_1c

    return-void

    .line 540
    :cond_1c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_54

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_54

    .line 543
    :cond_2f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    invoke-static {p1, p2, v4}, Lcom/taobao/weex/ui/component/list/template/Selector;->queryElementAll(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/util/List;)V

    .line 545
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4b

    .line 546
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3, v1, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->toMap(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_63

    .line 548
    :cond_4b
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_55

    goto :goto_63

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception p1

    .line 551
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    const-string p2, "WXRecyclerTemplateList"

    .line 552
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_63
    return-void
.end method

.method public queryElementAll(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "@"

    .line 560
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 561
    aget-object v2, v1, v2

    const/4 v3, 0x1

    .line 562
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 563
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findVirtualComponentByVRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_20

    return-void

    .line 567
    :cond_20
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_58

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_33

    goto :goto_58

    .line 570
    :cond_33
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 571
    invoke-static {p1, p2, v3}, Lcom/taobao/weex/ui/component/list/template/Selector;->queryElementAll(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/util/List;)V

    .line 572
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/component/WXComponent;

    .line 573
    invoke-static {v2, v1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->toMap(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 575
    :cond_54
    invoke-interface {p3, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_57} :catch_59

    goto :goto_62

    :cond_58
    :goto_58
    return-void

    :catch_59
    move-exception p1

    .line 577
    invoke-interface {p3, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    const-string p2, "WXRecyclerTemplateList"

    .line 578
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_62
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 3

    .line 867
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 868
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public removeData(II)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1104
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 1105
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_11

    goto :goto_34

    :cond_11
    if-gtz p2, :cond_14

    const/4 p2, 0x1

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-lez p2, :cond_2f

    .line 1112
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2f

    .line 1113
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->removeData(Ljava/lang/Integer;)V

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2f
    if-lez v0, :cond_34

    .line 1118
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_34
    :goto_34
    return-void
.end method

.method public resetLoadmore()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1125
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z

    const/4 v0, 0x0

    .line 1126
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    return-void
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .registers 11
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

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_6b

    const-string v3, "offset"

    .line 664
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_10

    const-string v3, "0"

    goto :goto_18

    :cond_10
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_18
    const-string v4, "animated"

    .line 665
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v3, :cond_56

    .line 668
    :try_start_2c
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v5

    invoke-static {v3, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3c} :catch_3d

    goto :goto_56

    :catch_3d
    move-exception v3

    .line 670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Float parseFloat error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_56
    :goto_56
    const-string v3, "cellIndex"

    .line 673
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v3

    const-string v5, "typeIndex"

    .line 674
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6d

    :cond_6b
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 676
    :goto_6d
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object p2

    if-ltz v0, :cond_b5

    .line 678
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v5, v5, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_b5

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b5

    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 680
    :goto_81
    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v6, v6, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge p1, v6, :cond_a9

    .line 681
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v6

    if-nez v6, :cond_92

    goto :goto_a6

    .line 685
    :cond_92
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    add-int/lit8 v5, v5, 0x1

    :cond_a2
    if-le v5, v0, :cond_a6

    move v3, p1

    goto :goto_a9

    :cond_a6
    :goto_a6
    add-int/lit8 p1, p1, 0x1

    goto :goto_81

    :cond_a9
    :goto_a9
    if-gez v3, :cond_b5

    .line 694
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    :cond_b5
    float-to-int p1, v2

    .line 700
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez p2, :cond_bf

    return-void

    :cond_bf
    if-ltz v3, :cond_ce

    .line 706
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 707
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v0

    invoke-virtual {p2, v4, v3, p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V

    :cond_ce
    return-void
.end method

.method public scrollTo(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

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

    const-string v0, "offset"

    const-string v1, "animated"

    const/16 v2, 0x40

    .line 620
    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1a

    const-string v2, "@"

    .line 621
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 622
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1f

    .line 624
    :cond_1a
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    :goto_1f
    if-ltz p1, :cond_9f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_81

    .line 630
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 631
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3d

    const-string v0, "0"

    goto :goto_45

    :cond_3d
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_45
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_55} :catch_99

    if-eqz v0, :cond_81

    .line 635
    :try_start_57
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_67} :catch_68

    goto :goto_81

    :catch_68
    move-exception p2

    .line 637
    :try_start_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Float parseFloat error :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_81
    :goto_81
    float-to-int p2, v2

    .line 644
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_8b

    return-void

    .line 648
    :cond_8b
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 649
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_98} :catch_99

    goto :goto_9f

    :catch_99
    move-exception p1

    const-string p2, "WXRecyclerTemplateList"

    .line 652
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public scrollToElement(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

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

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->scrollTo(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setColumnCount(I)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnCount"
    .end annotation

    .line 989
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXAttr;->getColumnCount()I

    move-result p1

    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    if-eq p1, v0, :cond_2d

    .line 990
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 991
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 992
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_2d
    return-void
.end method

.method public setColumnGap(F)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnGap"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 998
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXAttr;->getColumnGap()F

    move-result p1

    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2f

    .line 999
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 1000
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 1001
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_2f
    return-void
.end method

.method public setColumnWidth(I)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnWidth"
    .end annotation

    .line 968
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXAttr;->getColumnWidth()F

    move-result p1

    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnWidth:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2f

    .line 969
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 970
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 971
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_2f
    return-void
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 8

    .line 97
    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual/range {p0 .. p7}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setHostLayoutParams(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;IIIIII)V
    .registers 8

    .line 826
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXVContainer;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 827
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    if-nez p1, :cond_f

    const/4 p1, 0x1

    .line 828
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    .line 829
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    .line 830
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_f
    return-void
.end method

.method public setListData(Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1013
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->parseListDataToJSONArray(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 1014
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eq v0, p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 1015
    :goto_d
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 1017
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->setListData(Lcom/alibaba/fastjson/JSONArray;)V

    .line 1018
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_1d
    return-void
.end method

.method public setOffsetAccuracy(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetAccuracy"
    .end annotation

    int-to-float p1, p1

    .line 927
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    .line 928
    iput p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 8

    .line 881
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "case"

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_fc

    goto/16 :goto_9e

    :sswitch_12
    const-string v0, "scrollDirection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_9e

    :cond_1c
    const/16 v4, 0xb

    goto/16 :goto_9e

    :sswitch_20
    const-string v0, "listData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_9e

    :cond_2a
    const/16 v4, 0xa

    goto/16 :goto_9e

    :sswitch_2e
    const-string v0, "index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_9e

    :cond_38
    const/16 v4, 0x9

    goto/16 :goto_9e

    :sswitch_3c
    const-string v0, "alias"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_9e

    :cond_46
    const/16 v4, 0x8

    goto :goto_9e

    :sswitch_49
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_9e

    :cond_52
    const/4 v4, 0x7

    goto :goto_9e

    :sswitch_54
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_9e

    :cond_5b
    const/4 v4, 0x6

    goto :goto_9e

    :sswitch_5d
    const-string v0, "offsetAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_9e

    :cond_66
    const/4 v4, 0x5

    goto :goto_9e

    :sswitch_68
    const-string v0, "loadmoreoffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_9e

    :cond_71
    const/4 v4, 0x4

    goto :goto_9e

    :sswitch_73
    const-string v0, "showScrollbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_9e

    :cond_7c
    const/4 v4, 0x3

    goto :goto_9e

    :sswitch_7e
    const-string v0, "hasFixedSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto :goto_9e

    :cond_87
    const/4 v4, 0x2

    goto :goto_9e

    :sswitch_89
    const-string v0, "itemViewCacheSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto :goto_9e

    :cond_92
    const/4 v4, 0x1

    goto :goto_9e

    :sswitch_94
    const-string v0, "switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto :goto_9e

    :cond_9d
    const/4 v4, 0x0

    :goto_9e
    packed-switch v4, :pswitch_data_12e

    .line 921
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_a6
    if-eqz p2, :cond_af

    .line 904
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setScrollDirection(Ljava/lang/String;)V

    :cond_af
    return v3

    .line 883
    :pswitch_b0
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setListData(Ljava/lang/Object;)V

    return v3

    .line 890
    :pswitch_b4
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    return v3

    .line 887
    :pswitch_bd
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    return v3

    .line 899
    :pswitch_c6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 900
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setScrollable(Z)V

    return v3

    .line 917
    :pswitch_d6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 918
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setOffsetAccuracy(I)V

    :pswitch_e5
    return v3

    :pswitch_e6
    const/4 p1, 0x0

    .line 908
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_f4

    .line 910
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setShowScrollbar(Z)V

    :cond_f4
    :pswitch_f4
    return v3

    .line 894
    :pswitch_f5
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    return v3

    :sswitch_data_fc
    .sparse-switch
        -0x350448cc -> :sswitch_94
        -0x2a89f2d5 -> :sswitch_89
        -0x142fc3e5 -> :sswitch_7e
        -0xd52a857 -> :sswitch_73
        -0x6b59672 -> :sswitch_68
        -0x55c154 -> :sswitch_5d
        0x2e7b30 -> :sswitch_54
        0x3f94da7 -> :sswitch_49
        0x5899650 -> :sswitch_3c
        0x5fb28d2 -> :sswitch_2e
        0x502d9568 -> :sswitch_20
        0x603e9732 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_f4
        :pswitch_f4
        :pswitch_e6
        :pswitch_e5
        :pswitch_d6
        :pswitch_f5
        :pswitch_c6
        :pswitch_bd
        :pswitch_b4
        :pswitch_b0
        :pswitch_a6
    .end packed-switch
.end method

.method public setScrollDirection(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollDirection"
    .end annotation

    .line 958
    iget p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getOrientation()I

    move-result v0

    if-eq p1, v0, :cond_37

    .line 959
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXAttr;->getOrientation()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    .line 960
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 961
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 962
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_37
    return-void
.end method

.method public setScrollLeft(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollLeft"
    .end annotation

    .line 2032
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_9

    return-void

    .line 2036
    :cond_9
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 2037
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    .line 2038
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getOrientation()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    return-void
.end method

.method public setScrollTop(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollTop"
    .end annotation

    .line 2021
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_9

    return-void

    .line 2025
    :cond_9
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 2026
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    const/4 v1, 0x0

    float-to-int p1, p1

    .line 2027
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    .line 1007
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 1008
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setScrollable(Z)V

    return-void
.end method

.method public setShowScrollbar(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showScrollbar"
    .end annotation

    .line 977
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_39

    .line 980
    :cond_13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 981
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_39

    .line 983
    :cond_2a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    :cond_39
    :goto_39
    return-void
.end method

.method public unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x0

    .line 521
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    return-void
.end method

.method public unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 526
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    return-void
.end method

.method public unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 426
    const-class v0, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findParentType(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 427
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-nez v0, :cond_d

    goto :goto_2b

    .line 431
    :cond_d
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 432
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public updateData(ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 1091
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    goto :goto_2d

    .line 1094
    :cond_14
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, p2, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->updateData(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1096
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_2d

    .line 1098
    :cond_2a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1132
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->updateProperties(Ljava/util/Map;)V

    const-string v0, "padding"

    .line 1133
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "paddingLeft"

    .line 1134
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "paddingRight"

    .line 1135
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 1137
    :cond_1b
    iget p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingLeft:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3b

    iget p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingRight:F

    .line 1138
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_5c

    .line 1139
    :cond_3b
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 1140
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 1141
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_5c
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass1 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$1)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerTemplateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 7

    .line 293
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 294
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrollStateChanged(I)V

    .line 295
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 296
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v1, :cond_22

    const/4 v2, 0x0

    .line 299
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 301
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 302
    invoke-interface {v1, p1, v2, v3, p2}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrollStateChanged(Landroid/view/View;III)V

    goto :goto_22

    :cond_3f
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 9

    .line 311
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 312
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 313
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 315
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

    .line 317
    instance-of v2, v1, Lcom/taobao/weex/common/ICheckBindingScroller;

    if-eqz v2, :cond_3f

    .line 318
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/common/ICheckBindingScroller;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/taobao/weex/common/ICheckBindingScroller;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 319
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V

    goto :goto_19

    .line 322
    :cond_3f
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_42} :catch_43

    goto :goto_19

    :catch_43
    move-exception p1

    .line 327
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_47
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass2 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$2)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .line 337
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_b

    return-void

    .line 339
    :cond_b
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$000(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 340
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_29

    .line 341
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_30

    .line 343
    :cond_29
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_30
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass3 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$3)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 354
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 355
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyPositions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 356
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$200(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    .line 357
    :goto_30
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$200(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 358
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v1

    if-nez v1, :cond_47

    goto :goto_5e

    .line 362
    :cond_47
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/WXCell;->isSticky()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 363
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyPositions()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 369
    :cond_61
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 370
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyDataSetChanged()V

    .line 372
    :cond_86
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass4 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$4)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 485
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$300(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 489
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyAppearStateChange(IIII)V

    :cond_e
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass5 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$5)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 504
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 507
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$300(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 508
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyAppearStateChange(IIII)V

    :cond_e
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass6 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$6)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 795
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppendTreeDone()V
    .registers 3

    .line 798
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$400(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Z)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass7 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$7)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerTemplateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFirstEvent:Z

.field private offsetXCorrection:I

.field private offsetYCorrection:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 1157
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x1

    .line 1159
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->mFirstEvent:Z

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 7

    .line 1163
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1164
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 1168
    :cond_e
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 1169
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_22

    if-nez p3, :cond_22

    .line 1172
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetXCorrection:I

    .line 1173
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetYCorrection:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_28

    .line 1177
    :cond_22
    iget p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetXCorrection:I

    sub-int/2addr v0, p2

    .line 1178
    iget p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetYCorrection:I

    sub-int/2addr v1, p2

    .line 1180
    :goto_28
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 1181
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p2

    const-string p3, "scroll"

    invoke-virtual {p2, p3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_40

    return-void

    .line 1184
    :cond_40
    iget-boolean p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->mFirstEvent:Z

    if-eqz p2, :cond_47

    .line 1186
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->mFirstEvent:Z

    return-void

    .line 1190
    :cond_47
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {p2, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$500(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;II)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 1191
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {p2, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$600(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_54
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass8 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$8)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1252
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1255
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass9 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$9)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1263
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1266
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method
