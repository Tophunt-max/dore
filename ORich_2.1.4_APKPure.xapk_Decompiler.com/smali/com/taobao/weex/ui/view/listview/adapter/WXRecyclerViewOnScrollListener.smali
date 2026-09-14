###### Class com.taobao.weex.ui.view.listview.adapter.WXRecyclerViewOnScrollListener (com.taobao.weex.ui.view.listview.adapter.WXRecyclerViewOnScrollListener)
.class public Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerViewOnScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    }
.end annotation


# instance fields
.field protected layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentScrollState:I

.field private mDy:I

.field private mFirstPositions:[I

.field private mFirstVisibleItemPosition:I

.field private mLastPositions:[I

.field private mLastVisibleItemPosition:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    .line 67
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private findMax([I)I
    .registers 6

    const/4 v0, 0x0

    .line 170
    aget v1, p1, v0

    .line 171
    array-length v2, p1

    :goto_4
    if-ge v0, v2, :cond_e

    aget v3, p1, v0

    if-le v3, v1, :cond_b

    move v1, v3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return v1
.end method

.method private findMin([I)I
    .registers 6

    const/4 v0, 0x0

    .line 180
    aget v1, p1, v0

    .line 181
    array-length v2, p1

    :goto_4
    if-ge v0, v2, :cond_e

    aget v3, p1, v0

    if-ge v3, v1, :cond_b

    move v1, v3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return v1
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 6

    .line 77
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 78
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    .line 79
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 80
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 81
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    if-eqz v0, :cond_5a

    .line 83
    iget v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    div-int/2addr v1, v0

    if-lez v0, :cond_5a

    .line 84
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    if-nez v0, :cond_5a

    .line 85
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 87
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p2

    add-int/lit8 p2, p2, 0x32

    .line 89
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_41

    return-void

    .line 92
    :cond_3a
    iget p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    if-eqz p1, :cond_5a

    if-gez p1, :cond_41

    goto :goto_5a

    .line 96
    :cond_41
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 97
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    invoke-interface {p1, v1}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onLoadMore(I)V

    :cond_56
    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    nop

    :cond_5a
    :goto_5a
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 7

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 107
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_c

    return-void

    .line 111
    :cond_c
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    if-eqz v0, :cond_a6

    .line 115
    invoke-interface {v0, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onBeforeScroll(II)V

    .line 116
    iput p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    .line 117
    instance-of v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_34

    .line 118
    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 119
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 120
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 121
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 122
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V

    goto/16 :goto_a6

    .line 126
    :cond_34
    instance-of v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_4e

    .line 127
    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 128
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 129
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 130
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V

    goto :goto_a6

    .line 135
    :cond_4e
    instance-of v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_9e

    .line 136
    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 137
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 138
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    if-eqz v2, :cond_63

    array-length v2, v2

    if-eq v1, v2, :cond_67

    .line 140
    :cond_63
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    .line 142
    :cond_67
    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    if-eqz v2, :cond_6e

    array-length v2, v2

    if-eq v1, v2, :cond_72

    .line 143
    :cond_6e
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    .line 147
    :cond_72
    :try_start_72
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 148
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->findMin([I)I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstVisibleItemPosition:I

    .line 149
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 150
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->findMax([I)I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 151
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstVisibleItemPosition:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_91} :catch_92

    goto :goto_a6

    :catch_92
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_a6

    .line 163
    :cond_9e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a6
    :goto_a6
    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.adapter.WXRecyclerViewOnScrollListener.LAYOUT_MANAGER_TYPE (com.taobao.weex.ui.view.listview.adapter.WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE)
.class public final enum Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
.super Ljava/lang/Enum;
.source "WXRecyclerViewOnScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LAYOUT_MANAGER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field public static final enum GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field public static final enum LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field public static final enum STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 190
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 191
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const-string v3, "GRID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 192
    new-instance v3, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const-string v5, "STAGGERED_GRID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 189
    sput-object v5, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->$VALUES:[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    .registers 2

    .line 189
    const-class v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    .registers 1

    .line 189
    sget-object v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->$VALUES:[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    return-object v0
.end method
