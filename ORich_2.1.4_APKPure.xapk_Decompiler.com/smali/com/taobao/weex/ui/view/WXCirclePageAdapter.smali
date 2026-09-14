###### Class com.taobao.weex.ui.view.WXCirclePageAdapter (com.taobao.weex.ui.view.WXCirclePageAdapter)
.class public Lcom/taobao/weex/ui/view/WXCirclePageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "WXCirclePageAdapter.java"


# instance fields
.field public isRTL:Z

.field private needLoop:Z

.field private originalViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private shadow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    .line 48
    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 66
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    .line 67
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    return-void
.end method

.method private ensureShadow()V
    .registers 6

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_51

    .line 176
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 178
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 179
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 181
    :cond_43
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 183
    :cond_47
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 185
    :cond_51
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    :goto_56
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 188
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public addPageView(Landroid/view/View;)V
    .registers 4

    .line 71
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "onPageSelected >>>> addPageView"

    .line 72
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 75
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    if-eqz v0, :cond_1b

    .line 77
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_20

    .line 79
    :cond_1b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_20
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    .line 139
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected >>>> destroyItem >>>>> position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 142
    :cond_1a
    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    if-nez p2, :cond_23

    .line 143
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_23
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFirst()I
    .registers 3

    .line 202
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getItemIndex(Ljava/lang/Object;)I
    .registers 3

    .line 162
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_b

    .line 163
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x2

    return p1
.end method

.method public getPagePosition(Landroid/view/View;)I
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getRealCount()I
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRealPosition(I)I
    .registers 3

    if-ltz p1, :cond_16

    .line 194
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_16

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_16
    :goto_16
    const/4 p1, -0x1

    return p1
.end method

.method public getViews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    .line 121
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_4a

    .line 122
    :try_start_9
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected >>>> instantiateItem >>>>> position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",position % getRealCount()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v2

    rem-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 125
    :cond_30
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_3a

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_51

    .line 128
    :cond_3a
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_46} :catch_47

    goto :goto_51

    :catch_47
    move-exception p1

    move-object v0, v1

    goto :goto_4b

    :catch_4a
    move-exception p1

    :goto_4b
    const-string p2, "[CirclePageAdapter] instantiateItem: "

    .line 132
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_51
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public removePageView(Landroid/view/View;)V
    .registers 3

    .line 85
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "onPageSelected >>>> removePageView"

    .line 86
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    return-void
.end method

.method public replacePageView(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 94
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "onPageSelected >>>> replacePageView"

    .line 95
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 98
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    .line 103
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public setLayoutDirectionRTL(Z)V
    .registers 4

    .line 52
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 53
    :cond_5
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->originalViews:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    if-eqz p1, :cond_15

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 58
    :cond_15
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    return-void
.end method
