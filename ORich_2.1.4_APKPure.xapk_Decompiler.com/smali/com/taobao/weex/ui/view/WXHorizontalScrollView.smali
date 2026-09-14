###### Class com.taobao.weex.ui.view.WXHorizontalScrollView (com.taobao.weex.ui.view.WXHorizontalScrollView)
.class public Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "WXHorizontalScrollView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWXScroller;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;
    }
.end annotation


# instance fields
.field private mScrollViewListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

.field private mScrollViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollable:Z

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    .line 41
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    .line 51
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setWillNotDraw(Z)V

    const/4 v0, 0x2

    .line 46
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public addScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    .line 80
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public destroy()V
    .registers 1

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 101
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_d

    .line 103
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_d
    return v0
.end method

.method public getContentFrame()Landroid/graphics/Rect;
    .registers 5

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->computeVerticalScrollRange()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 13

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 57
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    if-eqz v0, :cond_f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 58
    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;->onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V

    .line 60
    :cond_f
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v0, :cond_2d

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 62
    invoke-interface/range {v2 .. v7}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;->onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V

    goto :goto_17

    :cond_2d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 110
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 113
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public removeScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->mScrollViewListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollable:Z

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXHorizontalScrollView.ScrollViewListener (com.taobao.weex.ui.view.WXHorizontalScrollView$ScrollViewListener)
.class public interface abstract Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;
.super Ljava/lang/Object;
.source "WXHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScrollViewListener"
.end annotation


# virtual methods
.method public abstract onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V
.end method
