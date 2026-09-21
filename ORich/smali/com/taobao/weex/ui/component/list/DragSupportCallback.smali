###### Class com.taobao.weex.ui.component.list.DragSupportCallback (com.taobao.weex.ui.component.list.DragSupportCallback)
.class Lcom/taobao/weex/ui/component/list/DragSupportCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "DragSupportCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WXListExComponent"


# instance fields
.field private dragFrom:I

.field private dragTo:I

.field private final mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

.field private mEnableDifferentViewTypeDrag:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/DragHelper;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    .line 44
    iput v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    .line 49
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    .line 50
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    return-void
.end method

.method constructor <init>(Lcom/taobao/weex/ui/component/list/DragHelper;Z)V
    .registers 4

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    .line 44
    iput v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    .line 54
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    .line 55
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6

    .line 132
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 134
    instance-of p1, p2, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    const/4 v0, -0x1

    if-eqz p1, :cond_25

    .line 135
    check-cast p2, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    .line 136
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 137
    iget p1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    if-eq p1, v0, :cond_25

    iget p1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    if-eq p1, v0, :cond_25

    .line 138
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    iget v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    iget v2, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    invoke-interface {p1, p2, v1, v2}, Lcom/taobao/weex/ui/component/list/DragHelper;->onDragEnd(Lcom/taobao/weex/ui/component/WXComponent;II)V

    .line 144
    :cond_25
    iput v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    iput v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p2, :cond_19

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_11

    goto :goto_19

    :cond_11
    const/4 p1, 0x3

    const/16 p2, 0x30

    .line 67
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_19
    :goto_19
    const/16 p1, 0xf

    const/4 p2, 0x0

    .line 63
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/DragHelper;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/DragHelper;->isLongPressDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 6

    const/4 p1, 0x0

    if-eqz p2, :cond_40

    if-nez p3, :cond_6

    goto :goto_40

    .line 77
    :cond_6
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mEnableDifferentViewTypeDrag:Z

    if-nez v0, :cond_15

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_15

    return p1

    .line 81
    :cond_15
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v0, p2}, Lcom/taobao/weex/ui/component/list/DragHelper;->isDragExcluded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return p1

    .line 86
    :cond_1e
    :try_start_1e
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 87
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    .line 89
    iget v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2d

    .line 90
    iput p2, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragFrom:I

    .line 92
    :cond_2d
    iput p3, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->dragTo:I

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v0, p2, p3}, Lcom/taobao/weex/ui/component/list/DragHelper;->onDragging(II)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_36

    const/4 p1, 0x1

    return p1

    :catch_36
    move-exception p2

    .line 97
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WXListExComponent"

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 6

    if-eqz p2, :cond_1c

    .line 119
    instance-of v0, p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    if-eqz v0, :cond_1c

    .line 120
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    .line 121
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 122
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/DragSupportCallback;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/taobao/weex/ui/component/list/DragHelper;->onDragStart(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 126
    :cond_1c
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method
