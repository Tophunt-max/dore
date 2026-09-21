###### Class com.taobao.weex.ui.component.helper.ScrollStartEndHelper (com.taobao.weex.ui.component.helper.ScrollStartEndHelper)
.class public Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
.super Ljava/lang/Object;
.source "ScrollStartEndHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private canStart:Z

.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private handler:Landroid/os/Handler;

.field private hasScrollEnd:Z

.field private hasStart:Z

.field private minInterval:J

.field private oldState:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->canStart:Z

    .line 49
    iput v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->oldState:I

    .line 57
    iput-object p1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->handler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v0, "minscrolldelayinterval"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->minInterval:J

    return-void
.end method

.method private getScrollEvent(II)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    instance-of v1, v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;

    if-eqz v1, :cond_21

    .line 111
    check-cast v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;

    .line 112
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    if-eqz v1, :cond_4e

    .line 113
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    if-eqz v1, :cond_4e

    .line 115
    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 118
    :cond_21
    instance-of v1, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    if-eqz v1, :cond_38

    .line 119
    check-cast v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 120
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 121
    :cond_38
    instance-of v1, v0, Lcom/taobao/weex/ui/component/DCWXScroller;

    if-eqz v1, :cond_43

    .line 122
    check-cast v0, Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollEvent(II)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 123
    :cond_43
    instance-of v1, v0, Lcom/taobao/weex/ui/component/WXBaseScroller;

    if-eqz v1, :cond_4e

    .line 124
    check-cast v0, Lcom/taobao/weex/ui/component/WXBaseScroller;

    .line 125
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/WXBaseScroller;->getScrollEvent(II)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_4e
    const/4 p1, 0x0

    return-object p1
.end method

.method public static isScrollEvent(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "scroll"

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "scrollstart"

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const-string v0, "scrollend"

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onScrollStateChanged(I)V
    .registers 5

    .line 132
    iget v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->oldState:I

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 133
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->canStart:Z

    :cond_7
    if-nez p1, :cond_17

    .line 137
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->hasScrollEnd:Z

    .line 138
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->minInterval:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :cond_17
    iput p1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->oldState:I

    return-void
.end method

.method public onScrolled(II)V
    .registers 6

    .line 67
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "scrollstart"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 68
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v2, "scrollend"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 69
    :cond_1c
    iput p1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->x:I

    .line 70
    iput p2, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->y:I

    .line 71
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->hasStart:Z

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->canStart:Z

    if-eqz v0, :cond_4b

    .line 72
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->getScrollEvent(II)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_45

    .line 75
    iget-object p2, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p2, v1, p1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_45
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->hasStart:Z

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->canStart:Z

    .line 82
    :cond_4b
    iget-object p1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object p1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->handler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->minInterval:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_57
    return-void
.end method

.method public run()V
    .registers 6

    .line 90
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 93
    :cond_9
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->hasScrollEnd:Z

    if-nez v0, :cond_e

    return-void

    .line 96
    :cond_e
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->canStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 97
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget v2, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->x:I

    iget v3, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->y:I

    invoke-direct {p0, v2, v3}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v2

    const-string v3, "scrollstart"

    invoke-virtual {v0, v3, v2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->canStart:Z

    .line 100
    :cond_24
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v2, "scrollend"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 101
    iget-object v0, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget v3, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->x:I

    iget v4, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->y:I

    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->getScrollEvent(II)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    :cond_3f
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->hasStart:Z

    .line 105
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->hasScrollEnd:Z

    return-void
.end method
