###### Class com.taobao.weex.ui.view.listview.ExtendedLinearLayoutManager (com.taobao.weex.ui.view.listview.ExtendedLinearLayoutManager)
.class public Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "ExtendedLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;,
        Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;
    }
.end annotation


# instance fields
.field private onScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

.field private smoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;)Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->onScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->onScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    return-object p1
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3

    .line 53
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4

    .line 63
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setOnScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->onScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 4

    .line 74
    iget-object p2, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->smoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-nez p2, :cond_f

    .line 75
    new-instance p2, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;-><init>(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->smoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 77
    :cond_f
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->smoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 78
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->smoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.taobao.weex.ui.view.listview.ExtendedLinearLayoutManager.OnSmoothScrollEndListener (com.taobao.weex.ui.view.listview.ExtendedLinearLayoutManager$OnSmoothScrollEndListener)
.class public interface abstract Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;
.super Ljava/lang/Object;
.source "ExtendedLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSmoothScrollEndListener"
.end annotation


# virtual methods
.method public abstract onStop()V
.end method

###### Class com.taobao.weex.ui.view.listview.ExtendedLinearLayoutManager.TopSnappedSmoothScroller (com.taobao.weex.ui.view.listview.ExtendedLinearLayoutManager$TopSnappedSmoothScroller)
.class Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ExtendedLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopSnappedSmoothScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;Landroid/content/Context;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    .line 83
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    .line 90
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getVerticalSnapPreference()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected onStop()V
    .registers 3

    .line 100
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    .line 101
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->access$000(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;)Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 102
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->access$000(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;)Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;->onStop()V

    .line 103
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$TopSnappedSmoothScroller;->this$0:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;->access$002(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    :cond_1a
    return-void
.end method
