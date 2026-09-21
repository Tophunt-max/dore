###### Class com.taobao.weex.ui.view.refresh.wrapper.BounceRecyclerView (com.taobao.weex.ui.view.refresh.wrapper.BounceRecyclerView)
.class public Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
.super Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;
.source "BounceRecyclerView.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/ListComponentView;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<",
        "Lcom/taobao/weex/ui/view/listview/WXRecyclerView;",
        ">;",
        "Lcom/taobao/weex/ui/component/list/ListComponentView;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_COLUMN_COUNT:I = 0x1

.field public static final DEFAULT_COLUMN_GAP:I = 0x1


# instance fields
.field private adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

.field private mColumnCount:I

.field private mColumnGap:F

.field private mLayoutType:I

.field private mOrientation:I

.field private mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 10

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;-><init>(Landroid/content/Context;IIFI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIFI)V
    .registers 7

    .line 58
    invoke-direct {p0, p1, p5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mLayoutType:I

    .line 51
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnGap:F

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mOrientation:I

    .line 59
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mLayoutType:I

    .line 60
    iput p3, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnCount:I

    .line 61
    iput p4, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnGap:F

    .line 62
    iput p5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mOrientation:I

    .line 63
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->init(Landroid/content/Context;)V

    .line 64
    new-instance p1, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 84
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 182
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .registers 2

    .line 44
    invoke-super {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    return-object v0
.end method

.method public getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getStickyHeaderHelper()Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    return-object v0
.end method

.method public notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    return-void
.end method

.method public notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V

    return-void
.end method

.method public onLoadmoreComplete()V
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    if-eqz v0, :cond_7

    .line 145
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public onRefreshingComplete()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 3

    .line 177
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    return-void
.end method

.method public bridge synthetic setInnerView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .registers 10

    .line 95
    sget v0, Lcom/taobao/weex/R$layout;->weex_recycler_layout:I

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 97
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/taobao/weex/R$layout;->weex_recycler_layout:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_13
    const/4 v3, 0x1

    .line 101
    :try_start_14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_1e

    const/4 v5, 0x2

    if-eq v4, v5, :cond_22

    if-eq v4, v3, :cond_22

    goto :goto_13

    :catch_1e
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :cond_22
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {v0, p1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v2, 0x2000000

    .line 113
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setScrollBarStyle(I)V

    .line 116
    :try_start_2c
    const-class v2, Landroid/view/View;

    const-string v4, "initializeScrollbars"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/TypedArray;

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 118
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :goto_4a
    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mOrientation:I

    if-ne v2, v3, :cond_52

    .line 123
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_5b

    .line 125
    :cond_52
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_5b

    .line 128
    :cond_56
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;-><init>(Landroid/content/Context;)V

    .line 130
    :goto_5b
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOverScrollMode(I)V

    .line 131
    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mLayoutType:I

    iget v5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnCount:I

    iget v6, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getOrientation()I

    move-result v7

    move-object v2, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    return-object v0
.end method

.method public setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    .line 73
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 74
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_11
    return-void
.end method

.method public updateStickyView(I)V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->updateStickyView(I)V

    return-void
.end method
