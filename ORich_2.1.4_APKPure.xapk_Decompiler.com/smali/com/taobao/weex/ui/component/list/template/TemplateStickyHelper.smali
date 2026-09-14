###### Class com.taobao.weex.ui.component.list.template.TemplateStickyHelper (com.taobao.weex.ui.component.list.template.TemplateStickyHelper)
.class public Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;
.super Ljava/lang/Object;
.source "TemplateStickyHelper.java"


# instance fields
.field private mStickyTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

.field private stickyHolderCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private stickyPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    .line 49
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyHolderCache:Landroidx/collection/ArrayMap;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->mStickyTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getStickyPositions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    .line 244
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    return-object v0
.end method

.method public getStickyTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->mStickyTypes:Ljava/util/List;

    return-object v0
.end method

.method public onBeforeScroll(II)V
    .registers 15

    .line 57
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    if-eqz p1, :cond_2ce

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_2ce

    .line 60
    :cond_c
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .line 61
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 65
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_37

    .line 66
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 67
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_50

    .line 68
    :cond_37
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_4e

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 70
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v4

    aget v4, v4, v3

    .line 71
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v0

    aget v0, v0, v3

    move v1, v4

    goto :goto_50

    :cond_4e
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_50
    if-gez v1, :cond_53

    return-void

    .line 77
    :cond_53
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-nez v4, :cond_5c

    return-void

    .line 84
    :cond_5c
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, -0x1

    :goto_63
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_72

    goto :goto_63

    .line 88
    :cond_72
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v8, v1, :cond_81

    .line 89
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_63

    :cond_81
    const-string v5, "unsticky"

    const/4 v7, 0x0

    if-gez v6, :cond_f5

    .line 96
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-eqz v1, :cond_c3

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 99
    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeView(Landroid/view/View;)V

    .line 100
    iget-object p1, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_c3

    .line 102
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 103
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    :cond_c3
    const/4 p1, 0x0

    .line 108
    :goto_c4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_f4

    .line 109
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 110
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-nez v1, :cond_d7

    goto :goto_f1

    .line 114
    :cond_d7
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getAdapterPosition()I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    goto :goto_f1

    .line 118
    :cond_e8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_f1

    .line 119
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_f1
    :goto_f1
    add-int/lit8 p1, p1, 0x1

    goto :goto_c4

    :cond_f4
    return-void

    .line 126
    :cond_f5
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 127
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-eqz v9, :cond_113

    .line 128
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v9

    if-eq v9, v6, :cond_1d6

    .line 131
    :cond_113
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-eqz v9, :cond_152

    .line 132
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v9

    if-eq v9, v6, :cond_152

    .line 133
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 134
    iget-object v9, v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v9}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeView(Landroid/view/View;)V

    .line 135
    iget-object v9, v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 136
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v9

    if-eqz v9, :cond_152

    .line 137
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_152

    .line 138
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    .line 143
    :cond_152
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemViewType(I)I

    move-result v5

    .line 144
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyHolderCache:Landroidx/collection/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-nez v8, :cond_175

    .line 146
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v8, p2, v5}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    move-result-object v8

    .line 147
    iget-object v9, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyHolderCache:Landroidx/collection/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_175
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v5, v8, v6}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onBindViewHolder(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;I)V

    .line 150
    iget-object v5, v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 151
    iget-object v5, v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 153
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->clearPreLayout()V

    .line 154
    iget-object v2, v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1a6

    .line 155
    iget-object v2, v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 156
    iget-object v6, v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    :cond_1a6
    iget-object v2, v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2, v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 160
    iget-object p1, v8, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    .line 161
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v2, :cond_1d5

    .line 162
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    const-string v5, "sticky"

    invoke-virtual {v2, v5}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d5

    .line 163
    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    :cond_1d5
    move-object v8, p1

    .line 166
    :cond_1d6
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    const/4 v2, 0x0

    .line 167
    :goto_1dd
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v5

    const/4 v6, 0x4

    if-ge v2, v5, :cond_21e

    .line 168
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 169
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-nez v9, :cond_1f1

    goto :goto_21b

    .line 173
    :cond_1f1
    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getAdapterPosition()I

    move-result v9

    .line 174
    iget-object v10, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_202

    goto :goto_21b

    .line 177
    :cond_202
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v10

    if-ne v9, v10, :cond_212

    .line 178
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v6, :cond_21b

    .line 179
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21b

    .line 182
    :cond_212
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_21b

    .line 183
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_21b
    :goto_21b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1dd

    .line 188
    :cond_21e
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v2

    if-eqz v2, :cond_265

    .line 189
    iget-object v2, v4, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_24c

    .line 190
    iget-object v2, v4, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v6, :cond_23f

    .line 191
    iget-object v2, v4, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_23f
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_248

    .line 194
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_248
    invoke-virtual {v8}, Landroid/view/View;->bringToFront()V

    goto :goto_26e

    .line 198
    :cond_24c
    iget-object v2, v4, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_259

    .line 199
    iget-object v2, v4, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_259
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_26e

    .line 202
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_26e

    .line 206
    :cond_265
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_26e

    .line 207
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_26e
    :goto_26e
    add-int/lit8 v1, v1, 0x1

    if-lez v0, :cond_286

    move v2, v1

    :goto_273
    if-gt v2, v0, :cond_286

    .line 215
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_283

    move v1, v2

    goto :goto_286

    :cond_283
    add-int/lit8 v2, v2, 0x1

    goto :goto_273

    .line 221
    :cond_286
    :goto_286
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a2

    .line 222
    iget-object p2, p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    cmpg-float p2, p2, v7

    if-gez p2, :cond_2a1

    .line 223
    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationY(F)V

    :cond_2a1
    return-void

    .line 227
    :cond_2a2
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-eqz p2, :cond_2ce

    .line 229
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez v0, :cond_2b1

    goto :goto_2ce

    .line 232
    :cond_2b1
    iget-object p2, p2, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    iget-object v0, p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    if-gtz p2, :cond_2c9

    .line 234
    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2ce

    .line 236
    :cond_2c9
    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationY(F)V

    :cond_2ce
    :goto_2ce
    return-void
.end method
